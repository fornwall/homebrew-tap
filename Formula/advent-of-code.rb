class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.6.1"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.6.1/advent-of-code-mac-aarch64.tar.xz"
            sha256 "3144f42f3304ac3ce800020fe02f40732773ba50012db88384ecf8da816e7a89"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.6.1/advent-of-code-mac-x86_64.tar.xz"
            sha256 "4883d4af38f8b1b7b6634db62648153ed26c86f784d72e4230feaac05ba67182"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.6.1/advent-of-code-linux-aarch64.tar.xz"
            sha256 "0aa1e57959e584ce448c6a6590ae27fc4d13777aa27bf535c91118884055d3b7"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.6.1/advent-of-code-linux-x86_64.tar.xz"
            sha256 "f7b92f7315093cb5476e9425422d4183975b1a8ba87487d7ab52655ac3089658"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
