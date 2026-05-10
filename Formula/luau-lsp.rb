class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.67.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.67.0/luau-lsp-macos.zip"
        sha256 "552d904459c5faa7728e2221ecdf752daa6ffbc64c2437de036f218189883f29"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.67.0/luau-lsp-linux-x86_64.zip"
            sha256 "4d48844926179388f994f3492614ef4f00203348d5dbc8c2d9d5e9f3cb9af8a3"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
