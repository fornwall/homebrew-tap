class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.28.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.28.0/luau-lsp-macos.zip"
        sha256 "ac908e6fb940e63fc6c61fc462c5d54b2926af27aba3da583b18e903f9bcacac"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.28.0/luau-lsp-linux.zip"
            sha256 "13d729444e87ee6d232da063d812dcb15921e936631134561161a123258ca8c3"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
