class GooglesqlExecuteQuery < Formula
  desc "Run SQL queries with the GoogleSQL reference implementation"
  homepage "https://github.com/google/googlesql"
  version "2026.11.2"
  license "Apache-2.0"

  # Upstream only ships an arm64 binary for macOS and an x86_64 one for Linux.
  on_macos do
    on_arm do
      url "https://github.com/google/googlesql/releases/download/2026.11.2/execute_query_macos"
      sha256 "0e5858a8a56603122aabf6e949a3b87e73d6d5198e2bed89061301918ea915d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/google/googlesql/releases/download/2026.11.2/execute_query_linux"
      sha256 "b7839f9a5f465673e7aaca69caf10427df0da2faf239eb1a45a7b2bcb48c7706"
    end
  end

  def install
    binary = OS.mac? ? "execute_query_macos" : "execute_query_linux"
    bin.install binary => "execute_query"
    # The release assets are uncompressed binaries, downloaded without the
    # executable bit set.
    chmod 0555, bin/"execute_query"
  end
end
