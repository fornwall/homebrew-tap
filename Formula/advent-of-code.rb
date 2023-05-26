class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.55"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.55/advent-of-code-mac-aarch64.tar.xz"
            sha256 "27228aa0bcae83d51e791f7a9faa0f65ae9c23433fbcb89e6bd184f9eaaecc74"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.55/advent-of-code-mac-x86_64.tar.xz"
            sha256 "f38676b7f86dcf40c68a69207d4c04e7d71cecad34077e61543f43625170f997"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.55/advent-of-code-linux-aarch64.tar.xz"
            sha256 "00364485dcb1343b80cdc8371dc3f37894ddcf4c56c8e2f9d0ee85a1ae48ee17"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.55/advent-of-code-linux-x86_64.tar.xz"
            sha256 "973eaad0bedbcf9f0869ed258677f266cbd0baa2c83929b970982bb3e09863ab"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
