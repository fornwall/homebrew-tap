class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2025.2.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.2.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "1ee17eede8688b684006756be95ad39e38ac5c611eedd7c25ac17e69dd3ca704"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.2.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "f7ff8fd99e0f8022c52c240352f9f901b47c626265e88d1ba2890a9b298a0b1c"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.2.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "7f7a72f62b23b90041dea06eab9057b9057ccb260db792033538921d6ec895c4"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.2.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "02f439591ac308f8a45689a77c447b806f40c8a2b6aedbd9ffe4616525a08c79"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
