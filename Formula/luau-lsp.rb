class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.16.2"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.16.2/luau-lsp-macos.zip"
        sha256 "74c0f62c7e708d39bab8c9cafeb841fac52e750d2d23e61bfa060bce1ec50be3"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.16.2/luau-lsp-linux.zip"
            sha256 "22d276116b284e73c491066092bab356575fec3ab451bd98aa224e2671470c4a"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
