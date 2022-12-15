class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.15"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.15"
            sha256 "7a94d95c918129eb31958007083b12977b5761547a4010759f5d4255816118fe"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.15"
            sha256 "3da0003cbb34af3dd4077adb6a44abe40cd8455209a511335b86485dbef64dac"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.15"
            sha256 "bb61c43e18ea8353b0870920e4e2efa35d01daf7ccec9b873577185f245b132b"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.15"
            sha256 "024da395dc9ba474ae378640d6732aa1e85bef1d63068c932fe46bac531600d7"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
