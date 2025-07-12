class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.52.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.52.1/luau-lsp-macos.zip"
        sha256 "10bb80fd65dd7f9abf59193ba2156edcc117a6d9856e2a57cd9f6f70fe7e42a3"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.52.1/luau-lsp-linux.zip"
            sha256 "ecb2404ef9a2d86b23cf9cc0508bd4d1f895ccf772b70dc79a6ce9b4c0d386b5"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
