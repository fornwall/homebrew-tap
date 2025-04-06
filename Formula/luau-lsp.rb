class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.42.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.42.1/luau-lsp-macos.zip"
        sha256 "bb7ec757fbe56d1ff2903ae6fd0bc9515d293c5af7363e239495a9a979ec2494"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.42.1/luau-lsp-linux.zip"
            sha256 "dd26dd75014ca420f9611c71fd8724be5583c7799ea24f8916ac805ecfee6b73"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
