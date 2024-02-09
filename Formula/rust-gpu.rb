class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.13.0"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.13.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "f79404abbcbcd3d0b196d86a584be8d3b4e1c49e54034e148a56b3fbe424775c"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.13.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "99deaa26782e371b37772ca18111a2985f7f87cc8cd98ecfc4ba1d1bdff1f6e1"
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
