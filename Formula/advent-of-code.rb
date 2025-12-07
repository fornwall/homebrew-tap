class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2025.1.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.1.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "4a62dd9afb003ca0faabbaa10f26c19de8763c190225a4fa9c809bd94301deef"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.1.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "f232a4c500ed76c9a0ee1e44169e60cac8623902fcca06a8efedd35e063ef5f3"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.1.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "8ba7a68737060aea505874692cd598fe4a146d66e499a6d35b0ccbe2bfba85c3"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.1.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "cfb650a92f522ef661f4b4c8654deb4c0e5b636dbd0af623967449a048c73b2c"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
