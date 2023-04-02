class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.53"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.53/advent-of-code-mac-aarch64.tar.xz"
            sha256 "8ffc1634fb6b70baf2ea18f1b9e10cf4c6ef5fc9958832ce6e82872ab8d2d00a"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.53/advent-of-code-mac-x86_64.tar.xz"
            sha256 "8537cd34c0c0acc12fb55fb6f31c991b16e336e267494fcd48cb128d298611bf"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.53/advent-of-code-linux-aarch64.tar.xz"
            sha256 "a183aabd88172bbad688a58074b65549f2c80393bc28e0c39499efcbac7235dd"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.53/advent-of-code-linux-x86_64.tar.xz"
            sha256 "d4dc43f208f59a7804ec37b05fae01ee6b20461895a166315b8b7bacedd4e3a5"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
