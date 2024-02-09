class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.18.0"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.18.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "a7e475b40f636996052a5b536a9a0818de9ab523dd95839a474193b9f269333e"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.18.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "f372c8b1cd72a816ed5e4463228b3a3f0269f2ebdb7747d00c1aeddba10590fc"
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
        system rust_gpu, "-o", "/dev/null", example_shader
    end

end
