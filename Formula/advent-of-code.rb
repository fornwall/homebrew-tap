class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.42"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.42/advent-of-code-mac-aarch64.tar.xz"
            sha256 "d7b8fb04704ba41532c29e9bde368dcd968c53c7d15636cb44a85f3c43ebf49b"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.42/advent-of-code-mac-x86_64.tar.xz"
            sha256 "60b2c627ea959e3798cf1772b561f68b00f8beac9faea0347a14e4aaadba42c8"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.42/advent-of-code-linux-aarch64.tar.xz"
            sha256 "0d42520e6befad3fe9fe404538df46b5fdf67351d5b31cbea87c1077bb4ad95d"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.42/advent-of-code-linux-x86_64.tar.xz"
            sha256 "a56378f29fae26ef5ff22526a581e2c1eb3ceb7489c42d9e29cba5223ffe6e66"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
