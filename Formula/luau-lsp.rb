class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.53.2"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.2/luau-lsp-macos.zip"
        sha256 "3a80b17b4a8ae1259ca0cd66981ec0ca2333fe6e74abf46898546fef85e82634"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.2/luau-lsp-linux-x86_64.zip"
            sha256 "91d5aac924dee4ddbead01bb78a7750050e9bb6d5fee581bd2f080b209d179b3"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
