class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.61.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.61.0/luau-lsp-macos.zip"
        sha256 "e13583b27101007cb174be850946a343515630aa0c23a66e1df0c1c2797e87d7"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.61.0/luau-lsp-linux-x86_64.zip"
            sha256 "d3f49c70bec25c5d84a77a925d0d1e6b6f21c43c0057a3aa610aac7da46929f9"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
