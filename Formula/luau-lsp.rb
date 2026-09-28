class LuauLsp < Formula
  desc "Language Server Implementation for Luau"
  homepage "https://github.com/JohnnyMorganz/luau-lsp"
  version "1.70.1"
  license "MIT"

  # The macOS release is a universal binary, used for both architectures.
  on_macos do
    on_arm do
      url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.70.1/luau-lsp-macos.zip"
      sha256 "7d3936e8dec6dc77547abd061d2e950da392562a5f94858b880f23dba50d84cd"
    end
    on_intel do
      url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.70.1/luau-lsp-macos.zip"
      sha256 "7d3936e8dec6dc77547abd061d2e950da392562a5f94858b880f23dba50d84cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.70.1/luau-lsp-linux-x86_64.zip"
      sha256 "1a2ea1ae4f98f8946cefd970a4b54853e11ab4775e6932faa7f60cf920346567"
    end
  end

  def install
    bin.install "luau-lsp"
  end
end
