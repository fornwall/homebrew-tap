class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.66.1"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.66.1/luau-lsp-macos.zip"
        sha256 "2eb31a7ef3fca9378cceae349b5f7581a19dea92aedb24db611f6b8b92c7c772"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.66.1/luau-lsp-linux-x86_64.zip"
            sha256 "7cf0d6e428f94873586a1176452f62282d970b968daaad36a190ba6579154a49"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
