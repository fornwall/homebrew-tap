class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.40.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.40.0/luau-lsp-macos.zip"
        sha256 "c8816d110f79235e76fcff30e526ea7f0bd11566fb88bed83c1121799f8914dd"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.40.0/luau-lsp-linux.zip"
            sha256 "554a6f590ad4f1c92c013fd70a37db334a61716887e80325c2ea83fb976ec291"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
