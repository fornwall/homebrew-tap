class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.36.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.36.0/luau-lsp-macos.zip"
        sha256 "983785bcaa03d63fd60b1f0a9f18715a574ac6516250e438d8182a3e25e9908d"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.36.0/luau-lsp-linux.zip"
            sha256 "3cf9777dc861af16743afeb5d4ede84cf88fc17fde485de40135bd3ae6d349ef"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
