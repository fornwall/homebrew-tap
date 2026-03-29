class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.64.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.64.0/luau-lsp-macos.zip"
        sha256 "df2a913f8c101683d56d802461ab2ac77c98cab6b03644d04506b6a78cec23ad"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.64.0/luau-lsp-linux-x86_64.zip"
            sha256 "6cf618104dbe5a6d7c30784f7136ccb9d912cb1ca4942013df81d9ab9bd18921"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
