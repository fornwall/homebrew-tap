class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.18.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.18.0/luau-lsp-macos.zip"
        sha256 "162cb0ed99ddadbd06d50966cb7ffdc2ab0c72d841df84dedfa496fc1d70e600"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.18.0/luau-lsp-linux.zip"
            sha256 "b7581da32baab4a0cec60fa27eba787f0ad4153c8f1b0662dfb5e53cfd7ed72d"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
