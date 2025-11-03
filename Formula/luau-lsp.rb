class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.56.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.56.0/luau-lsp-macos.zip"
        sha256 "44547998c4695baf35e01518c127e48e7a74dfab99d8b7cf01c77f63ff8ca60d"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.56.0/luau-lsp-linux-x86_64.zip"
            sha256 "3d8078a0918b3383cd2c4c3bce76531b52df19c1ed9816e61c54d63a191b6d8b"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
