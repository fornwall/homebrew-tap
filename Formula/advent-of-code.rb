class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.18.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.18.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "d88f313873d60402259bdcacf77bfab7af51e31566ee121c04c6e5653feb7c84"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.18.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "f1cfca2704f8650200625c9c7beeb903718695da39758e47436b9aaab7a37529"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.18.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "5dca6cdf6c36a1785b07eaf17545ef4363dd219e265daa3278146983cf457fdf"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.18.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "baada55389923f9136c8aff96998618cb1ded5e7ad2a45a25b5da08d62641abe"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
