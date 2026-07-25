#!/usr/bin/env python3
"""Regenerate the Homebrew formula for a package in this tap.

Usage:
    scripts/regenerate.py <formula> [<version>]
    scripts/regenerate.py --check

The version defaults to the FORMULA_NEW_VERSION environment variable. With
--check, no network access is used: every formula is re-rendered from the
version and checksums it already records, which catches formulas that have
drifted from their template in scripts/packages.py.
"""

from __future__ import annotations

import argparse
import difflib
import os
import re
import sys
import urllib.error
import urllib.request
from hashlib import sha256

from packages import PACKAGES, PACKAGES_BY_NAME, REPOSITORY_ROOT, Package

USER_AGENT = "fornwall/homebrew-tap"

VERSION_PATTERN = re.compile(r'^\s*version "(.+)"$', re.MULTILINE)
CHECKSUM_PATTERN = re.compile(r'url "(\S+)"\s*\n\s*sha256 "(\w+)"')


def open_url(url: str):
    """Open `url`, authenticating against the GitHub API when possible."""
    request = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    token = os.environ.get("GITHUB_TOKEN")
    if token and url.startswith("https://api.github.com/"):
        request.add_header("Authorization", f"Bearer {token}")
    return urllib.request.urlopen(request)


def download_sha256(url: str) -> str:
    """Return the sha256 of `url`, without holding it all in memory."""
    digest = sha256()
    with open_url(url) as response:
        for chunk in iter(lambda: response.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def current_version(package: Package) -> str:
    """The version currently recorded in the checked-in formula."""
    match = VERSION_PATTERN.search(package.formula_path.read_text())
    if not match:
        raise ValueError(f"No version found in {package.formula_path}")
    return match.group(1)


def regenerate(package: Package, version: str) -> None:
    """Download the release assets and write the formula for `version`."""
    checksums = {
        asset: download_sha256(package.asset_url(asset, version))
        for asset in package.assets
    }
    package.formula_path.write_text(package.render(version, checksums))


def check(package: Package) -> bool:
    """Re-render the checked-in formula from its own version and checksums."""
    existing = package.formula_path.read_text()
    version = current_version(package)
    recorded = dict(CHECKSUM_PATTERN.findall(existing))
    checksums = {
        asset: recorded.get(package.asset_url(asset, version), "<missing>")
        for asset in package.assets
    }
    expected = package.render(version, checksums)
    if existing == expected:
        return True

    name = str(package.formula_path.name)
    diff = difflib.unified_diff(
        existing.splitlines(keepends=True),
        expected.splitlines(keepends=True),
        fromfile=f"{name} (checked in)",
        tofile=f"{name} (generated)",
    )
    sys.stdout.writelines(diff)
    return False


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--check",
        action="store_true",
        help="verify the checked-in formulas match their templates",
    )
    parser.add_argument(
        "formula", nargs="?", choices=sorted(PACKAGES_BY_NAME), help="formula to update"
    )
    parser.add_argument(
        "version",
        nargs="?",
        default=os.environ.get("FORMULA_NEW_VERSION"),
        help="version to update to [default: $FORMULA_NEW_VERSION]",
    )
    args = parser.parse_args()

    if args.check:
        if args.formula:
            parser.error("--check takes no formula argument")
        outdated = [package.name for package in PACKAGES if not check(package)]
        if outdated:
            print(
                f"\nRun scripts/regenerate.py for: {', '.join(outdated)}",
                file=sys.stderr,
            )
            return 1
        print(f"{len(PACKAGES)} formulas match their templates")
        return 0

    if not args.formula:
        parser.error("a formula is required unless --check is given")
    if not args.version:
        parser.error("no version given and FORMULA_NEW_VERSION is unset")

    package = PACKAGES_BY_NAME[args.formula]
    try:
        regenerate(package, args.version)
    except urllib.error.HTTPError as error:
        print(f"{error.url}: {error}", file=sys.stderr)
        return 1
    print(f"Wrote {package.formula_path.relative_to(REPOSITORY_ROOT)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
