class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.11.0"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.11.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "57d0d6c236cb5253a9edb2a1ddb78f6d8d20978a0c8b7848b7b5766a589f8be9"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.11.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "aad77f9e70f6c0a281caf0121cd7641233deb4961d6a8574068b024503158ebc"
        end
    end

    def install
        bin.install "bin/rust-gpu"

        share.install "share/toolchain"

        on_linux do
          lib.install "lib/librustc_codegen_spirv.so"
        end
        on_macos do
          lib.install "lib/librustc_codegen_spirv.dylib"
        end
    end
end
