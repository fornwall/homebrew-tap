class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2025.6.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.6.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "2b3119c84a56ccf36ff79e11bbe9af6a4645a508925dd1ab70891109b73c1215"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.6.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "7434e75d048652cb2acba9bc621cde85a74cab531bf0845ce06654e996747d54"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.6.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "21ef373d34379126d78dfa230f8421f55420ef3268cd97b567d77d315f6822a2"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.6.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "a4287777a6d64b40be39d8a09449a7b8fb6aa8b07120980146f5196486525796"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
