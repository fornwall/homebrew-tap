class GooglesqlExecuteQuery < Formula
  desc "Run SQL queries with the GoogleSQL reference implementation"
  homepage "https://github.com/google/googlesql"
  version "2026.11.1"
  license "Apache-2.0"

  # Upstream only ships an arm64 binary for macOS and an x86_64 one for Linux.
  on_macos do
    on_arm do
      url "https://github.com/google/googlesql/releases/download/2026.11.1/execute_query_macos"
      sha256 "fc555255afdb0a01e17c751d907cb8092c5e762aa1c8622ac3132c6e4c6906ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/google/googlesql/releases/download/2026.11.1/execute_query_linux"
      sha256 "5e654aeec9c4bc41231991ab5b6a003ae51e08148ac4e64b30d438c6ae4218d9"
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
