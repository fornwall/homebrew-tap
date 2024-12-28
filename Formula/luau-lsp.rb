class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.38.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.38.0/luau-lsp-macos.zip"
        sha256 "c83dbc5bd9dda91d828cab2dab4678bdcce3fb70d1620caac11b33d83aefb600"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.38.0/luau-lsp-linux.zip"
            sha256 "9033ca1524a9562602ca0022deca95ee88af38ca224a230ba5742d2c5b4ee01e"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
