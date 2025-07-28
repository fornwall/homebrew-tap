class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.53.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.0/luau-lsp-macos.zip"
        sha256 "5e2d5755683c070a457a254b71f1d5d8798fa9017c4e456f694574671a3d3201"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.0/luau-lsp-linux-x86_64.zip"
            sha256 "4b71802ad49b052646a45830de596e37dfaf8ca1f69e2174a786e6155a9193f8"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
