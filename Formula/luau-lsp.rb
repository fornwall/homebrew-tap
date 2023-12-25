class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.27.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.27.0/luau-lsp-macos.zip"
        sha256 "23f324f5de692e97a8f9f45cf85aee936333aab5d7ab7e34842cb2723d6a3b1b"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.27.0/luau-lsp-linux.zip"
            sha256 "bc96271b28e494c1469365b01efabb381ddec8a3f7dc06f36a6b2979d4d027b3"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
