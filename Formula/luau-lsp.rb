class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.65.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.65.0/luau-lsp-macos.zip"
        sha256 "0191867f95d5b12ca6720427763e49554cf0b7b554b4a59f8a3354bb5f3cade7"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.65.0/luau-lsp-linux-x86_64.zip"
            sha256 "ea7c7937dacd05bf83b7cdd3532e9c5b1ec8fec64d867b60d3d90501f2d7472c"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
