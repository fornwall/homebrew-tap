class GooglesqlExecuteQuery < Formula
  desc "Run SQL queries with the GoogleSQL reference implementation"
  homepage "https://github.com/google/googlesql"
  version "2026.9.1"
  license "Apache-2.0"

  # Upstream only ships an arm64 binary for macOS and an x86_64 one for Linux.
  on_macos do
    on_arm do
      url "https://github.com/google/googlesql/releases/download/2026.9.1/execute_query_macos"
      sha256 "4237e700ddedbdc331bda4f2715ba97879b5fe4ab5bfdfd8812dbcc8cfbfc7c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/google/googlesql/releases/download/2026.9.1/execute_query_linux"
      sha256 "67d8bbca4c5466abd58dd0c990ec62dd8a58c3cfba7f0d7df0ce6980b11bd287"
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
