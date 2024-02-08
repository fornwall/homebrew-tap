class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "0.9.0"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.9.0/rust-gpu-compiler-aarch64-apple-darwin.zip"
            sha256 "0d4d1c1b812e1b934a663e94ee618841adbe3f67483adc45a1973f8dafc19471"
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/fornwall/rust-gpu-compiler/releases/download/0.9.0/rust-gpu-compiler-x86_64-unknown-linux-gnu.zip"
            sha256 "f899938dbfd8b2f939d52c18462debf7879faaba6a6d86feaef72c2947b2113e"
        end
    end

    def install
        bin.install "advent-of-code"

        share.install "share/toolchain"

        on_linux do
          lib.install "lib/librustc_codegen_spirv.so"
        end
        on_macos do
          lib.install "lib/librustc_codegen_spirv.dylib"
        end
    end
end
