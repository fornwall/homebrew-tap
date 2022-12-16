class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.15"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.15"
            sha256 "6444bb5c946446145097cf99bc621762770bd8c82fec7207639c699d9b47442e"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.15"
            sha256 "94b75807ddf9fdcf70651f6deba9787d6cc3dde29b23e58a606fd86106d537b8"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.15"
            sha256 "81693788365af7b7e264adfbf3f317d47e4e79457ac717730305bcb0aa51e703"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.15"
            sha256 "b4cead91bcaa173686ad722febde3d02d7c4ef19ace01c79fa1cf23ad940fe7d"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
