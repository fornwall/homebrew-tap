class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.16.3"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.16.3/luau-lsp-macos.zip"
        sha256 "7adcfa8dd3b6852007a3fd500fb2c6f5f0cbbf1bd015353eff9706180de16cbe"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.16.3/luau-lsp-linux.zip"
            sha256 "d976785939f7c56c3682185d38dff8907c8f91b063bb9938eaef44c6bc2b243a"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
