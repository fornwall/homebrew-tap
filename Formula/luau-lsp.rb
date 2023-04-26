class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.19.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.19.0/luau-lsp-macos.zip"
        sha256 "91e3593a7f0f6381366472e693d3bff2589a2cd28c72b960948322c21bd1dd98"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.19.0/luau-lsp-linux.zip"
            sha256 "be171c00f7229745e5d672e71fbcf5655157d031f993abf223b8d903bf8ed043"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
