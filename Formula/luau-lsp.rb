class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.60.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.60.0/luau-lsp-macos.zip"
        sha256 "fcc718667db1e13b9ccee0c58b95d4e531ac7dfbc3bed4c248a4b0cd312068a9"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.60.0/luau-lsp-linux-x86_64.zip"
            sha256 "5270223b27cdec508da139b85a28e17b05d8458f0101e6528479115848541b1a"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
