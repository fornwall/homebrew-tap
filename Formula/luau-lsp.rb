class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.39.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.39.0/luau-lsp-macos.zip"
        sha256 "9a235d5a8d0c0464cdc1c4d5e9ca9cef4eb543d739277be9da4281d34d1ca1d8"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.39.0/luau-lsp-linux.zip"
            sha256 "8952809605dc4034412814faa3ecbc7483dba435c8c762f4325740e78781cdf1"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
