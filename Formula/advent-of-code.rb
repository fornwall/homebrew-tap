class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.16.2"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.16.2/advent-of-code-mac-aarch64.tar.xz"
            sha256 "ed289b20b95b36e68863f5d0c94362796a7bd9fa08d54269426e73ded6fbd50b"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.16.2/advent-of-code-mac-x86_64.tar.xz"
            sha256 "76d106b6842ecfd1768f9d7322a46a8d92879f3da911af744f01606764754d14"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.16.2/advent-of-code-linux-aarch64.tar.xz"
            sha256 "6ee1c58fca06d5f93b2e722d86d8da62fce19fcb912bbc120a447f57599e5315"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.16.2/advent-of-code-linux-x86_64.tar.xz"
            sha256 "4a67403bfe74eb5ef5df44284be144f6515a90f4395d1d6330b5e270b40b4d2b"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
