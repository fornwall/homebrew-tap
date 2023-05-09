class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.20.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.20.1/luau-lsp-macos.zip"
        sha256 "1c2eebb73fd6d78d05f603876bfd9213ea2af77f4fa0eaa2de8792e12186f7f5"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.20.1/luau-lsp-linux.zip"
            sha256 "b4948af1794e23713dedf50d7c8c77ee7b9c4a44c73b3d00093690feaddb549f"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
