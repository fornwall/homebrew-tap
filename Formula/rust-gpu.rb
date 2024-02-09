class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.19.0"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.19.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "f80ced4455414735c9ab3a0175a6d12ea606c4e273eb99bfc0cbe9ca6e1f6021"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.19.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "b558c940c67fe005abfa914f09fcd27278236a4e489da8a8acfd87efb1ea261f"
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
