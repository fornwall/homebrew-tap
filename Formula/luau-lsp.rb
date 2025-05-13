class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.46.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.46.0/luau-lsp-macos.zip"
        sha256 "196ec9d5554e2f6eff0490e732aba6e0fd78e15dae597e8bf6afbc9c7ab8f0bc"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.46.0/luau-lsp-linux.zip"
            sha256 "36404592887761b57235b57464efb4360bd5f8de16cd018756c56a344a92e1c5"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
