class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.43.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.43.0/luau-lsp-macos.zip"
        sha256 "c62e3b4f995a09880942f8c79da184036ae552b72fd662743f68caeaa27c6012"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.43.0/luau-lsp-linux.zip"
            sha256 "8b3e5ea59ec6f7300f4977bc974195f34a0c03b0f46eded41160e6bc33c2e15d"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
