class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.38.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.38.1/luau-lsp-macos.zip"
        sha256 "0056fe491a4c679c3450afeb980b91ba3de5ae2b363f5df20d9a6128d9e868ef"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.38.1/luau-lsp-linux.zip"
            sha256 "cffb86dedc95d78db6bdaf095cb0b72ffbf9a763a68423c26810f63791579344"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
