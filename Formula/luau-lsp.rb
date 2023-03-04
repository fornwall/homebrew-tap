class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.17.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.17.1/luau-lsp-macos.zip"
        sha256 "b01a6c2670c84b278c264e3b9ef48da4400adaa7892ecd614d80bf5dbf8e6c21"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.17.1/luau-lsp-linux.zip"
            sha256 "f437f8885c955a8b646dcc04762b3124e4edb0dd28975199330372c1282cd66e"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
