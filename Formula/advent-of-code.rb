class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.22.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.22.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "5551e806722b7c57ced67c025d254f782848502db7e3979fb6f8bfb8ef8ded0c"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.22.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "4db6114fec3c71c5a1c70b3b6b202c650007994f2ddf424a1f543e67b0379f0d"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.22.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "fffb573c5334e88028b7e5e298d43838d0c1bf7300a7c6f4b90181124827979b"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.22.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "2c76da037c2f24d473699e876c6d08b8ee2f7b922adcb965438454831fec3d49"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
