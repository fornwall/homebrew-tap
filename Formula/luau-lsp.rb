class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.62.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.62.0/luau-lsp-macos.zip"
        sha256 "498b18e48fcbc8a11f2bd0e387129dadcb959b64050ead3da800ac622fdcff76"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.62.0/luau-lsp-linux-x86_64.zip"
            sha256 "a59edafc862b39042d32cdcf9d85e462a7a68c1bdbdd64fcb7b8dcb1d3cae88d"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
