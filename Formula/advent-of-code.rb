class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.22"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.22"
            sha256 "54777c387d2adcfc9fd49ff0599b68d7c5400e06c97de487482009a529d85f14"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.22"
            sha256 "911be0aee8741e3884619a5d5cdbbb62bcf9670720a73a89e291ca84e2327229"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.22"
            sha256 "45d915819ce8e50ac2f676c5938b4436328ed6f1ce49d2068368dafad691df9b"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.22"
            sha256 "15d6875276c9843611fdfe360e775adf2bb6135d03b5e013c2b5afa14c969ad2"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
