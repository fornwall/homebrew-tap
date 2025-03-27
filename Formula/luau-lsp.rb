class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.42.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.42.0/luau-lsp-macos.zip"
        sha256 "4e999aa2a38e9252111cc003b6b7e71b877a3fc5442f3221697c00b99d6fc278"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.42.0/luau-lsp-linux.zip"
            sha256 "5ea0d93fa6984c988f77446f70a17d6a6e7d1876a0f8b42083b78cc4e81b2667"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
