class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2025.4.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.4.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "9da5b0a4ddce2cfb16817cf9e9f81131c0b615dd79cfe1b7494ab468511364ff"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.4.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "74bb0f697dd318c4a604d51a2dfb9b8d3c6feaa6e350a5d14247e4f46ac74d92"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.4.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "3b1c6fb7c71f2da0594dfa3840ae06ee1ddb26f1421495cb8c4cb6f8acfed74d"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.4.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "a4df4e386432505c202f6744906a08a53560619f84ca6c393f50234bae77900e"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
