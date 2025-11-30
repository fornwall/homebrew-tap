class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.57.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.57.1/luau-lsp-macos.zip"
        sha256 "e0c7f3aa362d82a3c1825988ddde8c007993b11f61d72eba81ea7831c85fe5ad"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.57.1/luau-lsp-linux-x86_64.zip"
            sha256 "52d34139287941d32dafcd665b5a76c70acae206ac4358cd73edd9790702fcd0"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
