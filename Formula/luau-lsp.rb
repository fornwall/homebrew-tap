class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.22.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.22.1/luau-lsp-macos.zip"
        sha256 "355a3b5cdf990f0e75731bbc1bffbc088f58473e155c865b16e3c6b8ace738c5"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.22.1/luau-lsp-linux.zip"
            sha256 "fdb969435c6620b030481658da10aeacbc4cb4909ff1e9dbe8836641efa5ec9b"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
