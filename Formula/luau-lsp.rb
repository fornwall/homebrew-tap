class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.24.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.24.1/luau-lsp-macos.zip"
        sha256 "58df02dc35f92dc933465187e2ba469ea0a91b24279af1fef3722895d75fe1a1"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.24.1/luau-lsp-linux.zip"
            sha256 "10ad61457203dd5d3c76963c5b1ad511fa6c3a37e9277f3580e3766da83acbdf"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
