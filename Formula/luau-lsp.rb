class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.56.2"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.56.2/luau-lsp-macos.zip"
        sha256 "00924274750ece7261cd6b4e6daccb668c5770b43c42bbc939b3e274ac35ed77"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.56.2/luau-lsp-linux-x86_64.zip"
            sha256 "49ad624aa5e701306752cac97ead4f7e9790a34f1d33cb94b28ecf989e2d9222"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
