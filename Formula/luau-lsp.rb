class LuauLsp < Formula
  desc "Language Server Implementation for Luau"
  homepage "https://github.com/JohnnyMorganz/luau-lsp"
  version "1.70.0"
  license "MIT"

  # The macOS release is a universal binary, used for both architectures.
  on_macos do
    on_arm do
      url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.70.0/luau-lsp-macos.zip"
      sha256 "b0491a64f441a37f187b34f01c932ddcfc7f3603cefd043cd5a385da33ba7de8"
    end
    on_intel do
      url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.70.0/luau-lsp-macos.zip"
      sha256 "b0491a64f441a37f187b34f01c932ddcfc7f3603cefd043cd5a385da33ba7de8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.70.0/luau-lsp-linux-x86_64.zip"
      sha256 "4ff08890ea0d4b6d9de25fdff1a4c87e0dc9f2e45d782c894e83475e51d55813"
    end
  end

  def install
    bin.install "luau-lsp"
  end
end
