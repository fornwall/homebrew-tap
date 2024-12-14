class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.37.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.37.0/luau-lsp-macos.zip"
        sha256 "814a2c12afe8ded0f3f12113011cec3c3339b96f4c5363c5e30fdd8cbbd4b316"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.37.0/luau-lsp-linux.zip"
            sha256 "169ea813fa8957fee9d34463f2a780a7b31c700bf135c6881d697b384a5cc9df"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
