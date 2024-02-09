class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.17.2"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.17.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "f3c02c70888e70bb9530758a8e8af28eb8074b10d10d47f7a7c6d61cc2c24453"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.17.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "e3a8a441adc13b5b7c4417b5a8bd23769b7a2daf6ef0c6eab2176b014878fdec"
        end
    end

    def install
        bin.install "bin/rust-gpu"

        share.install "share/rust-gpu-toolchain"

        on_linux do
          lib.install "lib/librustc_codegen_spirv.so"
        end
        on_macos do
          lib.install "lib/librustc_codegen_spirv.dylib"
        end
    end

    def post_install
        # Run initial slow host build of proc macro
        rust_gpu = HOMEBREW_PREFIX/"bin/rust-gpu"
        example_shader = HOMEBREW_PREFIX/"share/rust-gpu-toolchain/example.rs"
        # Make the initial slow build of host proc macros:
        system rust_gpu, example_shader
    end

end
