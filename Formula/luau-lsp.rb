class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.52.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.52.0/luau-lsp-macos.zip"
        sha256 "0cd65e03bd644a1082c41a62815141ddd2ea7de501408d692e61049dd1ad5a76"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.52.0/luau-lsp-linux.zip"
            sha256 "f5458dabf82485d1f14999caab6e8abbfd353f2f9c3c2de9acd96f80c48c21a1"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
