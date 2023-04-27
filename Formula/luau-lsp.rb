class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.19.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.19.1/luau-lsp-macos.zip"
        sha256 "7439b076a11c964cf0a85755ea3c32348e0c541909df9051f3035da56f2fe826"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.19.1/luau-lsp-linux.zip"
            sha256 "bcfc3ce8a2db3f81eb16265f45f37368557be988f2fd3ca285b93999f87d7b9b"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
