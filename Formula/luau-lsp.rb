class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.51.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.51.0/luau-lsp-macos.zip"
        sha256 "ee8142c23d2e5ea6238e30fe5fd35b70b120caf4200e0cfd76210da76d2ef100"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.51.0/luau-lsp-linux.zip"
            sha256 "6dbd7ef6c1a21b5bf461210e1c20d22d529f0ae9bf526b3174d6088fd84e7d77"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
