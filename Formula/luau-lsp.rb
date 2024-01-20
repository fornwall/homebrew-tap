class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.27.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.27.1/luau-lsp-macos.zip"
        sha256 "a0d1b300ec1275f5c5d9c245cf0fb12809218022b911f5f036665f2a390c9500"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.27.1/luau-lsp-linux.zip"
            sha256 "f3d075f629b6e93f7cf367999e63a2ad4ccca6c427b417b8ed6be390c3da95ca"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
