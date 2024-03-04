class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.28.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.28.1/luau-lsp-macos.zip"
        sha256 "2e6ee111eea95643abe1e22927a0c1daadb5f342c5668dfd4eb090e9407c93e5"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.28.1/luau-lsp-linux.zip"
            sha256 "f332716a1ead1d5a9e352d6c836d8e50b5556710c110b0590acba656689c5041"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
