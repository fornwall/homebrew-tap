class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.16.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.16.1/luau-lsp-macos.zip"
        sha256 "4621a52dd98854c503076976a93a3c6b2f59c673fcd2af5c54342296f3e0ae0c"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.16.1/luau-lsp-linux.zip"
            sha256 "a67b41e899b426c2cdd2916ee63dbbe18e2979de2c13e722e8fcf488ca826bb7"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
