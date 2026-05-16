class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.68.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.68.0/luau-lsp-macos.zip"
        sha256 "fff45d60ec5e020d4ec7bfbe6132c3b834f092cd8faafa68e786197f0fb8bfdb"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.68.0/luau-lsp-linux-x86_64.zip"
            sha256 "b86d4ecf28cf8356a8f8c8e0826ce0e43607847a4cfad3ef34e170dee76103a8"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
