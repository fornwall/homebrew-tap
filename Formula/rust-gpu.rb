class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.14.1"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.14.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "892688c0811eb7269591edbf72ac97e2edc4d9536e3101b4058965112a990116"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.14.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "6ebe5ae7bfaf2c01d55dd8fac38964020e94f90a06142e47998268f2b5ceff3d"
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

        # Make the initial slow build of host proc macros:
        system "ls", "-lha", "bin"
        system "./bin/rust-gpu", "-o", "/dev/null", "share/example.rs"
    end
end
