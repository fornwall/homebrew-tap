class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.20.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.20.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "4f3aa7f2a8aa785c3440fdc2223d1ce1141f4523eedbdc452a3d8d28253866c7"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.20.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "966db6bbf040fbb4ca15a6029aa9d63f558d3d67165cc0c6265cb1819714b8a7"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.20.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "69e437b58b85c6a2368f05199d14599a0e30f9b0ab4f91d564cd72b2a51ac1ed"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.20.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "b872887cdaf99da1d23b7d5913f92f7f294e1f6f591544dbe2d6aca08412a986"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
