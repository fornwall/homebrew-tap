class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.17.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.17.0/luau-lsp-macos.zip"
        sha256 "1acb1edd08d2c989b39c2b8decb42df1cda2171c123526af9bb6b60f41a0f9e4"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.17.0/luau-lsp-linux.zip"
            sha256 "f25c6df5af7db915bd1e46e5ddf0356436dabae23a10b895404f9f5090623892"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
