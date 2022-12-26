class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.26"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.26"
            sha256 "352e0b6bdc64aeb51614b2b51b32495ec60d366afa0141473045053b5602f5ba"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.26"
            sha256 "669b60d0a3017b4d7ccc0877276f873f7b6dde98320b5d43f6771a7147e2b5be"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.26"
            sha256 "5b936dde6f09e5c5f24761ababa27b87f082405aa3681c2e79b43c95a94cda85"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.26"
            sha256 "d7756b02eeea1c25767d326f8df3a75240a3a54b809d55db915066a96959b0b4"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
