class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.2.1"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.2.1/advent-of-code-mac-aarch64.tar.xz"
            sha256 "081897403c9210a1a9745ecb7edbe788d5e433e387e1fb084b51dcbef8bc9c80"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.2.1/advent-of-code-mac-x86_64.tar.xz"
            sha256 "213bfcbfac25728e42db1a6b4f08830e36a90509c0ce6252cb799057c9bfa980"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.2.1/advent-of-code-linux-aarch64.tar.xz"
            sha256 "1a9ec9dad7a325ccffb21daa4e7f4a5d5263b7e0abed929dda450e8fb7bb63cc"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.2.1/advent-of-code-linux-x86_64.tar.xz"
            sha256 "e88e5fcce87b768abce4031611bde6aff5ac510a50a09d4336eb78858b7cced0"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
