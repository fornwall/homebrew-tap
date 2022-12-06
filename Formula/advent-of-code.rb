class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.2"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.2"
            sha256 "91ec74d2b1cff087a1328fe525f420739fd38cec14a5bbd682f9951e0118c8e2"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.2"
            sha256 "cbf0a26fbc9d1a8194372dfe544bd2c817e6440126974d91e1a6480aadfaf0cd"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.2"
            sha256 "d854d19a119952a30cd25978e27f16689bbe3b53ca2d04aef7d8771fb2e32213"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.2"
            sha256 "7650608594c41c7452eced54651f37eee3794192f01122934b4fa12f4b2709e0"
        end
    end

    def install
        bin.install "advent-of-code"
    end
end
