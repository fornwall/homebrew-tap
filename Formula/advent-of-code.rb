class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.6.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.6.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "bd618ff2588f9ef4798faa1ca3a2402ae89e2f3c0f279aef1f4801905936fac4"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.6.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "58ac8f122a8ea038a8e5d9e3e2a015f518f83c3426eedf662525b53e0a5359d9"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.6.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "ae47f18aa7d6ae33a5b4019cfa0992289b94ac97232a2b445a627e19c90b02b0"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.6.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "8393ea6e01a24016fe835f20b17dd5eedb3c73df9a0f4f867638290d4325a340"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
