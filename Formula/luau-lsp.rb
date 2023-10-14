class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.25.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.25.0/luau-lsp-macos.zip"
        sha256 "d87f256cca9c0ef0d1ceab5c1740bde2b6f66f441270174333e4ba694020b577"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.25.0/luau-lsp-linux.zip"
            sha256 "d947ed57abf935eaa6a4bb473fbe6114a15bee8dedd6148a52e2b42fdc9950bf"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
