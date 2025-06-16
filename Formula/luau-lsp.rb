class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.50.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.50.0/luau-lsp-macos.zip"
        sha256 "4dc2de9a9ab6d15b2efa3889f5b03f21258ef690b1beabef8df507961e9dcdf1"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.50.0/luau-lsp-linux.zip"
            sha256 "0bfda09e9dc47069bdea8456b58861f381e34c55a6ad61c0dc9fa2bd8f04e88f"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
