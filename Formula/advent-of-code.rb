class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.58"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.58/advent-of-code-mac-aarch64.tar.xz"
            sha256 "28edcc7c6f74e61e0466c1aae5c77f1257343c945871f71ace5861463e3d7a53"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.58/advent-of-code-mac-x86_64.tar.xz"
            sha256 "a108d9538afee1fa4ee3adf261bf04e2cf6ed810c8ce13666f3adf4636f019e9"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.58/advent-of-code-linux-aarch64.tar.xz"
            sha256 "33a311b2a744d45bc8ce236a41407c628ea4ba33caefc289616c01e08f935a58"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.58/advent-of-code-linux-x86_64.tar.xz"
            sha256 "a255bd4251f89edc9aef24d3809dd88aad523f4eb9c9e53a1480e2597f6eb91e"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
