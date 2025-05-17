class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.47.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.47.0/luau-lsp-macos.zip"
        sha256 "6f9890828d5ef4c9dc4fd948a2b730a4eab8beea6a256d9fe36b935386850338"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.47.0/luau-lsp-linux.zip"
            sha256 "06980c0ef5dce40dddd87cd9b905a8cf922f8d5d1e3f176b9257217ee9b10136"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
