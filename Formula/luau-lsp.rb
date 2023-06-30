class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.22.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.22.0/luau-lsp-macos.zip"
        sha256 "17c196f4ee695242c3bebb844417af93d4d5acff0136f7a4b71ac68613e593a5"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.22.0/luau-lsp-linux.zip"
            sha256 "e6416a29019e33be31a075860000e7f4c10fe6e0bdf99374c98281910962ca7f"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
