class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.10.0"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.10.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "23636a8791c5a5cd9e6b05bc95c3f2f9ce26dbe9de8208fcbf25682b9cceffa4"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.10.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "2804073c2dd670cfde25d581ac8b88d2f1451367679a3f3c0370da04c7ebf880"
        end
    end

    def install
        bin.install "bin/rust-gpu-compiler"

        share.install "share/toolchain"

        on_linux do
          lib.install "lib/librustc_codegen_spirv.so"
        end
        on_macos do
          lib.install "lib/librustc_codegen_spirv.dylib"
        end
    end
end
