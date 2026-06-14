class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.68.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.68.1/luau-lsp-macos.zip"
        sha256 "e32a71823ee47471d931a03e4186ced2b4c43bb785c8fe05de901fe54c6ebe21"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.68.1/luau-lsp-linux-x86_64.zip"
            sha256 "ddb5fe8fd503bbcb76ee439fbd6522efbfe9f0098be5a233401e493c579fc4a9"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
