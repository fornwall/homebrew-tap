class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.53.5"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.5/luau-lsp-macos.zip"
        sha256 "5ba5f00adf54b939f903bbdf07267df1fd4ea44ee71fcbf9c6c9052782a6c12d"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.5/luau-lsp-linux-x86_64.zip"
            sha256 "603ab4261ede5a7858cdfb349cbad0cec2412c19066134be483a1c3b5ccb6a13"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
