class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.33"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.33"
            sha256 "ee193428572c3235b5c0bf28bb3f44b4f7a3fd77050e53fee93a8225273e0690"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.33"
            sha256 "ed8d198e73f5c8605a4201be51e2b2df6ebc5402dfba58db9feced9e3eedfb65"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.33"
            sha256 "fd7fb6345f413d57d8529945aa3b6d54da014f280452d33370c64d71ca6670c3"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.33"
            sha256 "0557e820115834184e17b4585523a99ab0e45083677e50a096b9c10484ee0588"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
