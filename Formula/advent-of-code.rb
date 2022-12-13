class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.13"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.13"
            sha256 "8dfe9aab1b7b7276cc3450b96f4e8c32b9825385649bd68154fbe2776aa238ab"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.13"
            sha256 "e1eae6321dcd6163cc518e7f2b0ebd6be73fabe5bce56c36abe3f1002e887c74"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.13"
            sha256 "cc163750ce524f75f5ec12589502d618134a9b38eb918d6952f74da02625c527"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.13"
            sha256 "75d3f5d60acb6fb383a1592993e64ac1d037ff3dc4cc2e9e68b560cdb1d12c83"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
