class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.12.0"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.12.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "91c29de3432fdb49c625bd485013c1b2f0f2d009c0b023a74e3309a221fc4d2a"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.12.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "e3bb458c30ef81acf2bfe73c7a09f52e22b1fee4166153f97c5b2d6a14c7a2a9"
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
