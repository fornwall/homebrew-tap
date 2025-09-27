class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.54.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.54.0/luau-lsp-macos.zip"
        sha256 "2e4095c205d514d60afc788ce637b3eafbf2dbc9296013aa32115c5e84956486"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.54.0/luau-lsp-linux-x86_64.zip"
            sha256 "ccc60f37c277f1682c9221f9c8a20649204c3d045347be23e312caf426c4d3e2"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
