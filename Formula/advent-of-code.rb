class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.56"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.56/advent-of-code-mac-aarch64.tar.xz"
            sha256 "855b1d291dded15cb8cae17a356866e14755c55ac63e23155e2abafbcec93699"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.56/advent-of-code-mac-x86_64.tar.xz"
            sha256 "7f258080d8464150f1f7a1484edb5bddd5159a75087f920b40dece7305b4630b"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.56/advent-of-code-linux-aarch64.tar.xz"
            sha256 "5be753b82815e4f41863394bb91e939cc5db116959bdcb0b6580a9b37516988a"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.56/advent-of-code-linux-x86_64.tar.xz"
            sha256 "c6e0c93d8e70fe05c7877b43ca60bd7ce2cd523faf38a366b1fc4101408ec952"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
