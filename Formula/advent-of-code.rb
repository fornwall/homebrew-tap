class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.27.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.27.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "f5df68dbce51ec959210d71049a0cd457be4d4504accf3e2a0e28101010fbe9c"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.27.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "9fbcc5f5b5581b7f1c33609905540f727fcebaa4cddde68d51ed61bca9924f2b"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.27.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "fc2c1da4c3cf12aed616142341c09cfd958874d4127f81934f58db7840184353"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.27.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "7a9d9d89e4dcbd7b2bee010c47e92a93dea50d3f9f060b5486faf27c509a6854"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
