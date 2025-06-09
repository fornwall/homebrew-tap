class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.49.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.49.1/luau-lsp-macos.zip"
        sha256 "f9219a52dc5f6acffee9d5dc3c2f49b7726b9f8d19dda361f963b0262a48d849"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.49.1/luau-lsp-linux.zip"
            sha256 "3fd242fbf913dfba7c24191d4acacdc55924f0a96e651756ebdb7a8c59c62cc8"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
