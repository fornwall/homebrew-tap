class GooglesqlExecuteQuery < Formula
  desc "Run SQL queries with the GoogleSQL reference implementation"
  homepage "https://github.com/google/googlesql"
  version "2026.7.2"
  license "Apache-2.0"

  # Upstream only ships an arm64 binary for macOS and an x86_64 one for Linux.
  on_macos do
    on_arm do
      url "https://github.com/google/googlesql/releases/download/2026.7.2/execute_query_macos"
      sha256 "f0e9532a6a6285f97fc684461825fb481c07879f08dd28c25e2322d52f99ac29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/google/googlesql/releases/download/2026.7.2/execute_query_linux"
      sha256 "d362b2469f7077db5c8029f594dd4c435efb162fce0f50c51c9b85695fe98041"
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
