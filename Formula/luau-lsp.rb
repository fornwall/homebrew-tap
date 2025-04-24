class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.44.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.44.1/luau-lsp-macos.zip"
        sha256 "60dc52d0923b12cd6aeb9e8fd98a74cb745b75cb1524f84a9981b9050453a5ec"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.44.1/luau-lsp-linux.zip"
            sha256 "152517c42ef58d1165bcebc4239f5ea4a7d07d28e501028f48de7c4aeaae7d8e"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
