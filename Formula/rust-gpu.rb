class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.20.0"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-driver/releases/download/0.20.0/rust-gpu-driver-aarch64-apple-darwin.zip"
            sha256 "77aea7b3c84b511788bce321a91b4f0276c8d7acf93be29e00029b8e67dd1ba9"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-driver/releases/download/0.20.0/rust-gpu-driver-x86_64-unknown-linux-gnu.zip"
            sha256 "0c9ed2425c94e0b53cd255f9a0cab3be8ba06a6625af40275af48fefd28b831e"
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
