class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.45.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.45.0/luau-lsp-macos.zip"
        sha256 "1c8cc003768d9a43e56262ab58f05a2328414ad583bf40f82ad8156727efa3b2"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.45.0/luau-lsp-linux.zip"
            sha256 "39bad4b236fe82dab6452e86b553129b238cd00401ca262fa6c677cc06290d04"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
