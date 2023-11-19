class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.26.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.26.0/luau-lsp-macos.zip"
        sha256 "eb910b9717d05fcb46d4455c5c0f16c59757db1400fb843c3621592a4883ede1"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.26.0/luau-lsp-linux.zip"
            sha256 "e94f00c820f63df1fcc45c8c005bfdf0e0764d1cb33c7218aff13912056bac78"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
