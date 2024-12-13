class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.13.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.13.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "500892fea4ffe8911b95f374183fd19878f650372dbfb04915f5992e5dc925e1"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.13.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "14107df56deb24cf55b1fca6550d0b0d18aa2e12b94f71d475c44c231d9b0b8d"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.13.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "f950a133cbacd1e5982443471fc9631bc54f83e9e7272666a408b966ca9debe9"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.13.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "8c2114b5d4035514ec1495cad77c2fbac8989ea96ff761f9e1080d6bcb34bf3b"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
