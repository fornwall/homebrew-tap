class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.69.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.69.0/luau-lsp-macos.zip"
        sha256 "4e93204901d892b227a4de15c9d4742176c15e9461d208cadafa1bcd58ec1ae3"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.69.0/luau-lsp-linux-x86_64.zip"
            sha256 "4457aeb690d3c22e04567f38c6259ac259a1673ec022758b9cb81af2a0e66c41"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
