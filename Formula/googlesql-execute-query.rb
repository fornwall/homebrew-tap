class GooglesqlExecuteQuery < Formula
  desc "Run SQL queries with the GoogleSQL reference implementation"
  homepage "https://github.com/google/googlesql"
  version "2026.10.1"
  license "Apache-2.0"

  # Upstream only ships an arm64 binary for macOS and an x86_64 one for Linux.
  on_macos do
    on_arm do
      url "https://github.com/google/googlesql/releases/download/2026.10.1/execute_query_macos"
      sha256 "92f17f3e24bbd57a0fae4cbef7382a250ad114d13cef56a59fc86c92bf6f50de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/google/googlesql/releases/download/2026.10.1/execute_query_linux"
      sha256 "5c0772e5f367e7fe0310a80533cfd13bfe6734ac1162fbd43a136cd7e19b3707"
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
