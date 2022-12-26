class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.25"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.25"
            sha256 "bbace8db0e5f101e9476f3aff29d3665fa1c654983c79a02a28988e7c517d79b"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.25"
            sha256 "805b464a260ec17306510f36698776929520694149263231f13c0db29bf61c96"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.25"
            sha256 "b0b2713c052a965b7585805af274e61cbc58f3af54d1f97360be8199d2629269"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.25"
            sha256 "c3774b9e54560adc8d57872e1c99dfd608e8f346077abf80a431282c2d122c3e"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
