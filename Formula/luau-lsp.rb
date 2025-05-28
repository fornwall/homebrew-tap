class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.48.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.48.0/luau-lsp-macos.zip"
        sha256 "a425cd97d5a2c61a87cf607399fde9d8a780629a284be310567b5039074ccb81"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.48.0/luau-lsp-linux.zip"
            sha256 "8a83813e26ed21441aae2ee9ac3ca97184c8d252c73e207746a7bb3bb93650b4"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
