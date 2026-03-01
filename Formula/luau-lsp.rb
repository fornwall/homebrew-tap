class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.63.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.63.0/luau-lsp-macos.zip"
        sha256 "01c1d6dd5fee27295b2968915dabb08c192192c46d9fe9c97bf31a130c96b8cb"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.63.0/luau-lsp-linux-x86_64.zip"
            sha256 "e4b633ad9a2c15437f60f9e721263f79aa0da606867d8458f0e159a325bf2db8"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
