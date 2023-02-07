class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.50"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.50/advent-of-code-mac-aarch64.tar.xz"
            sha256 "45e9be26597da925753dfb59f5ad6c393bc627f8c85ac02669b6462b694bfa82"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.50/advent-of-code-mac-x86_64.tar.xz"
            sha256 "dd318a9a01357dc631a5a08b3053ba434d6bd62b79a0b7e4cd1b957ab4e71295"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.50/advent-of-code-linux-aarch64.tar.xz"
            sha256 "9f7a3bdd8520f25d8797fd23370e13d3e6649283cde7436b0f3992ab95e959e6"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.50/advent-of-code-linux-x86_64.tar.xz"
            sha256 "b34357968469aefb10178a430f2d61ab0aa4993a72dddb78ffdc57eef030d92a"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
