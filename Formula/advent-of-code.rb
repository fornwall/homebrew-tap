class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.11"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.11"
            sha256 "3592c5d78d18d17463e19f19c6e9a5a014264c49134c888df3ecca9d589f3fa2"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.11"
            sha256 "7d773916d08fc249109ff0cae6f462eae16b71bfa595dbeafe7b587ec585001d"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.11"
            sha256 "12fd5c0791f6580ee8f08d55349cf92a3ba54121d149117f22fd18dc5e58b3e6"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.11"
            sha256 "6f50edf6f44d419cdc2b8ce7fdedfbc7cc4a17ffd985f5a74273d64c9be59310"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
