class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.19.2"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.19.2/luau-lsp-macos.zip"
        sha256 "09ef87f1fe215d06da9c30296f01673f7aec95a7914dded121ee8db19f97ce5f"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.19.2/luau-lsp-linux.zip"
            sha256 "b67ba53221143c93e987c45e0dc66b0f22a5088409fd38d484159d58338b65ee"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
