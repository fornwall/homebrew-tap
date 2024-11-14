class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.35.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.35.0/luau-lsp-macos.zip"
        sha256 "2b4a1f43fc95bbf5027b8635c134d7e8f3d59f7ff4c35562d1765e9ec11c54e8"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.35.0/luau-lsp-linux.zip"
            sha256 "53b0b4287d161743151a8eeb62465575dc58a5142eaaca9f58de591baaf7ca7f"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
