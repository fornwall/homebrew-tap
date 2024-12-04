class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.4.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.4.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "fbc63ffa2f1e19bce95e349fb79a967447601b6107e4717d4bc6c13126bf46f5"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.4.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "5e6f100be689ae59186ac610dc6de163220030e7b15682118f283ed42b08d05a"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.4.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "58159d24cc99695600592adc5da725fba9b737d1c63f74fd98eac0d28502c581"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.4.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "ac80dbe0e7c3e9e0d362095b7a61a7622f5b06c48cdbe6f8263fe69914d33a6d"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
