class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.39.2"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.39.2/luau-lsp-macos.zip"
        sha256 "a8807ef9b5bf6f97038270035a3948d7d9a1321a29d3469c5046a6565b2fdf87"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.39.2/luau-lsp-linux.zip"
            sha256 "ddf4659780f605c1b64c512201c5b75f2ae236c7861e079fa929a2c3dfda61bc"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
