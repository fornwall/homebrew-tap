class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.11.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.11.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "48702c45cfd58ad71cfc158276b0764a47917256c26d51743e71197e31bcca29"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.11.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "d70820a4ab430821d40ab7d995c52f033620e4574c7c9e6117e9044f6a461219"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.11.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "ab1ed610d81efc43baebcdc7d317ec71823f5e3745fe47354fa9100ebdc14bbf"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.11.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "473752689d967b014a3577da01385c6b46a8bc82a9c7ec01d45c16516aa0fc69"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
