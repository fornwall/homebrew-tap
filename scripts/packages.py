"""Definitions of the packages in this tap.

This is the single source of truth used both to check for new upstream releases
(scripts/check-update.py) and to generate the formulas (scripts/regenerate.py).

Each package names the GitHub repository to watch for releases, the release
assets to download and checksum, and a template for the generated formula. The
template is rendered with `$version` plus a `$<asset>_url` and `$<asset>_sha256`
pair for every declared asset.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
from string import Template

REPOSITORY_ROOT = Path(__file__).resolve().parent.parent


@dataclass(frozen=True)
class Package:
    """A formula in this tap, generated from a GitHub release."""

    name: str
    repository: str
    """GitHub "owner/name" whose latest release provides the version."""
    assets: dict[str, str]
    """Template placeholder prefix -> release asset file name."""
    template: str
    """Formula source, as a string.Template."""

    @property
    def formula_path(self) -> Path:
        return REPOSITORY_ROOT / "Formula" / f"{self.name}.rb"

    def asset_url(self, asset: str, version: str) -> str:
        file_name = Template(self.assets[asset]).substitute(version=version)
        return (
            f"https://github.com/{self.repository}"
            f"/releases/download/{version}/{file_name}"
        )

    def render(self, version: str, checksums: dict[str, str]) -> str:
        """Render the formula for `version` given a sha256 per asset."""
        values = {"version": version}
        for asset in self.assets:
            values[f"{asset}_url"] = self.asset_url(asset, version)
            values[f"{asset}_sha256"] = checksums[asset]
        return Template(self.template).substitute(values)


PACKAGES = [
    Package(
        name="advent-of-code",
        repository="fornwall/advent-of-code",
        assets={
            "mac_arm": "advent-of-code-mac-aarch64.tar.xz",
            "mac_intel": "advent-of-code-mac-x86_64.tar.xz",
            "linux_arm": "advent-of-code-linux-aarch64.tar.xz",
            "linux_intel": "advent-of-code-linux-x86_64.tar.xz",
        },
        template="""class AdventOfCode < Formula
  desc "CLI to solve Advent of Code problems"
  homepage "https://aoc.fornwall.net"
  version "$version"

  on_macos do
    on_arm do
      url "$mac_arm_url"
      sha256 "$mac_arm_sha256"
    end
    on_intel do
      url "$mac_intel_url"
      sha256 "$mac_intel_sha256"
    end
  end

  on_linux do
    on_arm do
      url "$linux_arm_url"
      sha256 "$linux_arm_sha256"
    end
    on_intel do
      url "$linux_intel_url"
      sha256 "$linux_intel_sha256"
    end
  end

  def install
    bin.install "advent-of-code"
    man1.install "advent-of-code.1"
  end
end
""",
    ),
    Package(
        name="googlesql-execute-query",
        repository="google/googlesql",
        assets={
            "mac_arm": "execute_query_macos",
            "linux_intel": "execute_query_linux",
        },
        template="""class GooglesqlExecuteQuery < Formula
  desc "Run SQL queries with the GoogleSQL reference implementation"
  homepage "https://github.com/google/googlesql"
  version "$version"
  license "Apache-2.0"

  # Upstream only ships an arm64 binary for macOS and an x86_64 one for Linux.
  on_macos do
    on_arm do
      url "$mac_arm_url"
      sha256 "$mac_arm_sha256"
    end
  end

  on_linux do
    on_intel do
      url "$linux_intel_url"
      sha256 "$linux_intel_sha256"
    end
  end

  def install
    binary = OS.mac? ? "execute_query_macos" : "execute_query_linux"
    bin.install binary => "googlesql-execute-query"
    # The release assets are uncompressed binaries, downloaded without the
    # executable bit set.
    chmod 0555, bin/"googlesql-execute-query"
  end
end
""",
    ),
    Package(
        name="luau-lsp",
        repository="JohnnyMorganz/luau-lsp",
        assets={
            "macos": "luau-lsp-macos.zip",
            "linux_intel": "luau-lsp-linux-x86_64.zip",
        },
        template="""class LuauLsp < Formula
  desc "Language Server Implementation for Luau"
  homepage "https://github.com/JohnnyMorganz/luau-lsp"
  version "$version"
  license "MIT"

  # The macOS release is a universal binary, used for both architectures.
  on_macos do
    on_arm do
      url "$macos_url"
      sha256 "$macos_sha256"
    end
    on_intel do
      url "$macos_url"
      sha256 "$macos_sha256"
    end
  end

  on_linux do
    on_intel do
      url "$linux_intel_url"
      sha256 "$linux_intel_sha256"
    end
  end

  def install
    bin.install "luau-lsp"
  end
end
""",
    ),
]

PACKAGES_BY_NAME = {package.name: package for package in PACKAGES}
