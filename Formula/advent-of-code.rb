class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.19"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.19"
            sha256 "a4dcb579214dfe5ccdc2685a2658a9bfba99fff03d7309d1ab3d3c55e8499c5c"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.19"
            sha256 "ac99620cfafac25ea050e8ae6a67df14fede351c6573b1ae4b3ef3d0c5db5f56"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.19"
            sha256 "704fb653467908b41bc92303e92c602add7a5f657be02e8bcf96a81e4ff1005f"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.19"
            sha256 "6b4c8f31c5987ef3a77c1f85d3b449c1dccf2944653b437af0503e318285d488"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
