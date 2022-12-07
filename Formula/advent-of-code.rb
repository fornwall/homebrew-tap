class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.6"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.6"
            sha256 "41d0a4f403509763a6a4b93b09bc52db4ea0eae26973acde3c221e2bcf8c7782"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.6"
            sha256 "82acd236d012d4b8179a0bb47e2f8e7d3b028d0aa8dfb76d95557160282a7571"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.6"
            sha256 "71c81bca29d8f5c9fcbfff31fa1a564d0eb630507208f2bad007606318bed401"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.6"
            sha256 "256ed14dedbafc7ac1074e10ae5e066c1875731d2493e1b88c3c0f6e695a86e2"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
