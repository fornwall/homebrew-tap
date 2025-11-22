class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.25.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.25.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "864c70712d766e1fbcde3b14ff968fa547613e85853d17ee3de7590f3cc9368f"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.25.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "f2da5ab7999d48606c9974dcdfe5ee2d15e84ac8b18ce63e2e6a4f78967afb8e"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.25.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "f1afde7e9cfba4bd22fcf6dc7ff234a00d9cd382510553ef9e7a801d6a672a70"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.25.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "96d350e097357d170d4066112bf14c4e82bf2391f5521606463d031119f68632"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
