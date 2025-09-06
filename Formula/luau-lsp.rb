class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.53.3"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.3/luau-lsp-macos.zip"
        sha256 "fafbc68f3b5fdc7343740ac95c93d05be8135d563aab55846e05183de111d0bb"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.53.3/luau-lsp-linux-x86_64.zip"
            sha256 "be81c8486d88166c9acc083e08457b09b0775e5987fb704f3642db9f3fa0fb40"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
