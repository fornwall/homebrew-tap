class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.56.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.56.1/luau-lsp-macos.zip"
        sha256 "a36567fd9e803267744db4293461181612330bd5ce37640aa06b3abb562685c4"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.56.1/luau-lsp-linux-x86_64.zip"
            sha256 "3448c51e1b1b909f39e11a2071034f42866a776bc7f96585db3c325284572132"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
