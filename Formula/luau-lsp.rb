class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.59.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.59.0/luau-lsp-macos.zip"
        sha256 "fce03b6e57180528eb793a4fc1b9f199e83c7573ded4b2b0d4807a17a4a101c4"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.59.0/luau-lsp-linux-x86_64.zip"
            sha256 "3715762e208e054a77adcf3ac9ba57514d74a4a56b9a170190bfbcc36df5fd8b"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
