class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.58.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.58.0/luau-lsp-macos.zip"
        sha256 "79a7f08b63abc620ce94c65c70ae39e95d2b69ee1fd6166b43d0160f225447e1"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.58.0/luau-lsp-linux-x86_64.zip"
            sha256 "8f5343203b823bff90cf00e769ad28b9d15be3323633902c3092c8b6af363e79"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
