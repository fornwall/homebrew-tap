class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.41.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.41.0/luau-lsp-macos.zip"
        sha256 "5b798231f32a69acdb9bd80e65e9ceeb9af60a07b015f86ad20f510baa03fab3"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.41.0/luau-lsp-linux.zip"
            sha256 "76889290c1be47239ccc613c61ec1bb2772a0342583ddbdb4d565107f9f525d7"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
