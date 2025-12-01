class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2025.0.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.0.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "411c54b33bf37d42aaccf76b4358f973634a919277b72cb4b66d697d0298b6fd"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.0.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "c912b0ac705e1978cdd90ac32d52ad52d91ee02608758231f148a1629f8e1723"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.0.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "e4b569f42e407c2ba1a1063a779d69bba003e87c104ff5d0a138e21939afa44d"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.0.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "8191a42094fd7312da428b5aa37800762e35569544fc80cdc639925144605756"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
