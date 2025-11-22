class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.23.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.23.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "c7896472400219ded5dc9910b4b50946bf41de290ad5e481a78f4d11acc3f89e"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.23.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "ec95ab9f37f40484e9a0c0ee19937cae6ff53836efedc95eb478d4af839d571f"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.23.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "917b338daaf2500708bb94634992b45d148510d20cdaa2fd24abf1555f7de925"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.23.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "3f616e3467e430699bc0dc7f0175df27911f47279410889d5cc5f891dcb77831"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
