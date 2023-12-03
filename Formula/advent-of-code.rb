class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.60"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.60/advent-of-code-mac-aarch64.tar.xz"
            sha256 "eb6ac9fae75beeef4341079b63fedb5bf33df3b50aca10f27d387131dfe1d807"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.60/advent-of-code-mac-x86_64.tar.xz"
            sha256 "cc34e091a7af8e1e30b1eb9bae95096ce1da58d6663acccf3ccacd140216c27b"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.60/advent-of-code-linux-aarch64.tar.xz"
            sha256 "c984bfd348136a22e07f3a6fca1c3b3dce9ad266a164e792b39109c46b10c597"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.60/advent-of-code-linux-x86_64.tar.xz"
            sha256 "0fbb85cece0afc953d6b7752bf6d686c159cd3a96235eacbf3a7de6fb02c0a39"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
