class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.20"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.20"
            sha256 "ea7b7a57cc3b82cc8d09764e4591ebc5a7b7945aaba07d15cef2132fbeb12960"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.20"
            sha256 "70d2c2b1e56bc6e732142fad93dc3cc16a92df6c9a41a9bad4a5af968f6076d4"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.20"
            sha256 "990441596c90fcc7c6ae00b6b1f1f0ecf8daea7f67c72d9334325bebd545cbb9"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.20"
            sha256 "939c3322d29fd771a7d16b504a82e46ff9066f3341fc9e585903161f68c2c94d"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
