class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.21.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.21.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "13303f8df37131bf2e8574c53d91d390a3794157831c255c759924474572bcf6"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.21.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "f48839c4921fec87a12ae97edd6e26ae687c7da917c75673587a2fe1667f14fe"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.21.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "3dd24ccaa9009280f71d3a89fde227cc6e168f7ab3e043cb5f1bc20702533d5d"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.21.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "c7f097cdbcac1df367f454a13d7fa7ca4c55aefb60ec0155037f66551a5a6b25"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
