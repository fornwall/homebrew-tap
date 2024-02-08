#!/usr/bin/env python3

from hashlib import sha256
import os
import time
import urllib.request

hashes = {}
urls = {}

version = os.environ['FORMULA_NEW_VERSION']

for (os, arch, complete) in [('linux', 'x86_64', 'x86_64-unknown-linux-gnu'), ('mac', 'aarch64', 'aarch64-apple-darwin')]:
    hashes[os] = {}
    urls[os] = {}
    url = f'https://github.com/fornwall/rust-gpu-compiler/releases/download/{version}/rust-gpu-compiler-{complete}.zip'
    request = urllib.request.Request(url)
    file_bytes = urllib.request.urlopen(request).read()
    h1 = sha256()
    h1.update(file_bytes)
    hashes[os][arch] = h1.hexdigest()
    urls[os][arch] = url

formula = f"""class RustGpu < Formula
    desc "CLI for compiling rust-gpu shaders"
    homepage "https://github.com/fornwall/rust-gpu-compiler"

    version "{version}"

    depends_on "vulkan-tools"

    on_macos do
        on_arm do
            url "{urls['mac']['aarch64']}"
            sha256 "{hashes['mac']['aarch64']}"
        end
    end

    on_linux do
        on_intel do
            url "{urls['linux']['x86_64']}"
            sha256 "{hashes['linux']['x86_64']}"
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
end"""

with open("Formula/advent-of-code.rb", "wt") as generated_file:
    print(formula, file=generated_file)