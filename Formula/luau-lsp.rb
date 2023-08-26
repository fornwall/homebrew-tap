class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "1.24.0"

    on_macos do
        url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.24.0/luau-lsp-macos.zip"
        sha256 "0fa32b64a7e0cd263ad0bde3f34684c3f77679712fee26b48317a540ad70b502"
    end

    on_linux do
        on_intel do
            url "https://github.com/JohnnyMorganz/luau-lsp/releases/download/1.24.0/luau-lsp-linux.zip"
            sha256 "8934decfc56fab6c358c60a61b323b897b51acfb3d09ea578cddad232df21238"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end
