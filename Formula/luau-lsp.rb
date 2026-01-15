class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.60.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.60.1/luau-lsp-macos.zip"
        sha256 "c96bd03b8f8e651277814d9d8920339fc02d3dd6d8b82a8de8f743b2fc1d3d64"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.60.1/luau-lsp-linux-x86_64.zip"
            sha256 "b9d5ded5d4ccd37e35d54e8671b57f92b6c68e58a60b03f60df39aab72b86501"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
