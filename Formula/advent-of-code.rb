class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.15.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.15.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "d2d4bee18e4d934d08ff5039cc68a372411f83baf6bb911ac3267dd9415e7ea0"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.15.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "8bfbc37627110d493cfad1c24e613e84b5a0b5f91410691a40cf147ee04a1162"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.15.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "f63cf0e13924bd9df2ccbc91e9f7c8ef38f6e9e62b304e111704445fb6750cf6"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.15.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "0c5c640566c4a41c896b03e275fd7da1b33927be4b1989447735c162d3ffe8dc"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
