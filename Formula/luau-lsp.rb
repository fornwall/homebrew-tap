class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.49.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.49.0/luau-lsp-macos.zip"
        sha256 "a86440513c284d3e9fbf865ff34b99ed23405c94816bf85d9febb35d208f9b11"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.49.0/luau-lsp-linux.zip"
            sha256 "5553ce77e8e62abf4197ed69c32d0395df6bd163dc58fe45cbc15892a7af8786"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
