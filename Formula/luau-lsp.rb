class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.20.2"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.20.2/luau-lsp-macos.zip"
        sha256 "ffadef2f3cf15cf891dc068911612e81a323edf9ae87a9f9d730a485611c23e8"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.20.2/luau-lsp-linux.zip"
            sha256 "2a80ac24d873c77c116e529052f037cd94679580b91fc48219dc8063ae7ebdf2"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
