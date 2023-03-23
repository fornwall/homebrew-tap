class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.18.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.18.1/luau-lsp-macos.zip"
        sha256 "ef3486f4940033305e5eaa6c0a3758f8c6cfdc1d116935399fc1c39a06126951"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.18.1/luau-lsp-linux.zip"
            sha256 "f82d70c937c7b94ee4771f7ef982dcb92946f64c43cafad69a1f4815a762ccea"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
