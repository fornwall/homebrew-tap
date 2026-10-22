class GooglesqlExecuteQuery < Formula
  desc "Run SQL queries with the GoogleSQL reference implementation"
  homepage "https://github.com/google/googlesql"
  version "2026.10.3"
  license "Apache-2.0"

  # Upstream only ships an arm64 binary for macOS and an x86_64 one for Linux.
  on_macos do
    on_arm do
      url "https://github.com/google/googlesql/releases/download/2026.10.3/execute_query_macos"
      sha256 "d54ef2cb6dacf626d0291c679d0173a2d66608b84179de933fa43171e002ed08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/google/googlesql/releases/download/2026.10.3/execute_query_linux"
      sha256 "2ae22e017e31badcffc77cf51662b281315bf6a0991df107d89422bf837ca912"
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
