class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.15.0"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.15.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "d747d2f4115cd9bca881d0c739fac82a935c9cab152b23e9792b4f948f4a9ba6"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.15.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "d16672e7ec2983268756d3cb23f834725bf9c1f9a247377ffdedc65f77c53e53"
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

    def post_install
        # Run initial slow host build of proc macro
        rust_gpu = HOMEBREW_PREFIX/"bin/rust-gpu"
        example_shader = HOMEBREW_PREFIX/"share/example.rs"
        # Make the initial slow build of host proc macros:
        system rust_gpu, "-o", "/dev/null", example_shader
    end

end
