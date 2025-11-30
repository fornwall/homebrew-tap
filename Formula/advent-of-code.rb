class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.26.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.26.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "a224165b9efbb175fe9c814065ea529d9821e45d274256ba42d3247b76352b7e"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.26.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "632c60289e21f4b60a99a9ec13d2e5eca3f91467d87194971e7031a062eaac7e"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.26.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "288669add54028ccf5029ba8924eb37424857046156ad6749772557a14b871b9"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.26.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "026f05811e06c73b08f5e54412daa4c88a7bd9bb5ad2f62e4b29adc34597ed9c"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
