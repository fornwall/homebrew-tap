class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.23.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.23.0/luau-lsp-macos.zip"
        sha256 "bbbeacfb6765d84bb041bb2f851762dada3b3abb7b30d904560a3cee5540cc98"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.23.0/luau-lsp-linux.zip"
            sha256 "b44943481b04e50a8c60bb09d570c0d93aa69415393da3d1408e0b33f885fb06"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
