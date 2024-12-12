class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.12.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.12.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "da5b13b556290af2fc7f9190fd264fb6476f817c4f8a9d3b23eb14a8dec0b5ad"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.12.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "d604b58ae7af68c5f737b1032d1491aa89b3c0a27de7041a263c1e7a04f3e36a"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.12.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "efa8e1901fff743f7d03d941ea4928a17b3f552461974ac50b42a8f83d8ba1d5"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.12.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "05a079ad48ece0320b215600393615ff9622c0ca12c3d57c4dfedd9548bd14a3"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
