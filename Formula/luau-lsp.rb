class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.53.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.1/luau-lsp-macos.zip"
        sha256 "f1db80ac75191dd3f74897f664a449b7a22636aa09488e6cff424df04ed83af5"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.1/luau-lsp-linux-x86_64.zip"
            sha256 "8e44158a1bc7baae35fa497d4a74bd8525bce888fbc788fceb0c1bc323e0375c"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
