class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.14.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.14.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "50b0ca4d26124b2b861f4d813d47926aecca5a04680ac378c4716f3889f60999"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.14.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "f26d354931e6c46186c8867d2eb7f4449aef9bedf5f30e3908ecf78b018fabf4"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.14.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "1c2404d076ac0e987430ca86c4be1f27d38d7bb0d85d28a4a3761ff643de31a4"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.14.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "24ba06ed50da9cc7226ebb648e7aed53441accebc60c19eff32659fc7304c641"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
