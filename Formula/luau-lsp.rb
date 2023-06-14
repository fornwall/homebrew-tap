class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.21.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.21.0/luau-lsp-macos.zip"
        sha256 "17f14d8b6f4e84b6842035378822c2398c4415744de7c6885c8c18a285686a1a"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.21.0/luau-lsp-linux.zip"
            sha256 "b96f9c0a51829a0df344638a9050e19127ee2e02dceeb58766a06ca265ee3dac"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
