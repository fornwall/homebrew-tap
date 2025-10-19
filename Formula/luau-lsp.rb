class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.55.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.55.0/luau-lsp-macos.zip"
        sha256 "74376d9a8f3d3762c760199f9fc584bcbf6b39623538f9e5eb3620ec69f66313"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.55.0/luau-lsp-linux-x86_64.zip"
            sha256 "c0169d8709e8b5e7cde7e2d621802100779579acb1ca7841fc83985c21e596dd"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
