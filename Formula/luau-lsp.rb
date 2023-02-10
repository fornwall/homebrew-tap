class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.16.4"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.16.4/luau-lsp-macos.zip"
        sha256 "e7af6db8d1682b2de0caad52e56b86ccbf5aa30b1812a8f7bde07c695c9d37ac"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.16.4/luau-lsp-linux.zip"
            sha256 "ab8e51fafaedcdd9a92750687c97bd3e9609a6b17fcd260b0d8f48abd06d6a79"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
