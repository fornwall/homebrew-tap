class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.5.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.5.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "5e0b9c3067001a7b1f354b4aae09a28da02668251d8d96a05e4b56a539c44960"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.5.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "45b330151b39e78a4cbb63b74fccda0c90ba9f8e4081c87e3401936f4947702d"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.5.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "8ce6d4728f691a7ea164cb49387442c487867f0aa882200f6bf0c40dd90b43b5"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.5.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "6d2f94a39eaee11a91bbbfe61379b2ea0a1a62113fdaa46da615a2c4f432d3af"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
