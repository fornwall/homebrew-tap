class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.15.1"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.15.1/advent-of-code-mac-aarch64.tar.xz"
            sha256 "e9ac98668c5452707de94875a4436182f08893c3b74f9f473972ae618b28afe2"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.15.1/advent-of-code-mac-x86_64.tar.xz"
            sha256 "47cb95addf887f1d5e1e4de9fc0f08d5f36e0d456c583540e241a3f35cb5165b"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.15.1/advent-of-code-linux-aarch64.tar.xz"
            sha256 "041d0f4c77dec2af58606c0c7ed087201fa8aea5b05791e634efc44739458d1a"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.15.1/advent-of-code-linux-x86_64.tar.xz"
            sha256 "2e129b0a1fbf2609a9d3931ab1412b357a776b90064702291a379478b22c9d6b"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
