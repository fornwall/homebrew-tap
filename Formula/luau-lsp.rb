class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.66.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.66.0/luau-lsp-macos.zip"
        sha256 "9202a725d495dfd1ce397d2a79abb250d6dbf60160723b4b7e8c5fceceadc60c"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.66.0/luau-lsp-linux-x86_64.zip"
            sha256 "1985779706dcebd58abcd2ac8be56a3d77d2590e34db1969cbaa9cf618255adf"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
