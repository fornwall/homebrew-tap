class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.71"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.71/advent-of-code-mac-aarch64.tar.xz"
            sha256 "8d5d1ceb0d46c4716ac4dec307149988a4eacfd78855294c078525ae209f352a"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.71/advent-of-code-mac-x86_64.tar.xz"
            sha256 "d94b3e43d725191c6e39f17dab3282ee3fb8cb4777c7c18131fe1e301c09c1f9"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.71/advent-of-code-linux-aarch64.tar.xz"
            sha256 "f1f1ae4123badb995ecaf89cedd58feb2e1013c1f8580c9131125866b9b8b239"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.71/advent-of-code-linux-x86_64.tar.xz"
            sha256 "1c23de41d302f2954f3dab6d753ecfbe494049763ffdbe942575449230663d17"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
