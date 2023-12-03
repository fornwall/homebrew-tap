class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.61"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.61/advent-of-code-mac-aarch64.tar.xz"
            sha256 "d1e9050c8508a300d1cbf6e925b0714a9b16dd4ffce813a3534b5b41070b8495"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.61/advent-of-code-mac-x86_64.tar.xz"
            sha256 "9a2e2c04a2ac6dcf801febec31ea656b25342769daa16087a79238c6937c1799"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.61/advent-of-code-linux-aarch64.tar.xz"
            sha256 "c18211a005b63e7a01aa3b9a2ed5b14a061a3211e4ce3bf6eed4790c78586098"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.61/advent-of-code-linux-x86_64.tar.xz"
            sha256 "773014ef436bab4b63986009e499ba00054daa00a48baf70d36f8fabec8ae9c6"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
