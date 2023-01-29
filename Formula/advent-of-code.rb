class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.45"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.45/advent-of-code-mac-aarch64.tar.xz"
            sha256 "c63dac39ed9d4747eec34c95ce877ff4798b7732a8e6e5a46aeeb3d9d26ac053"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.45/advent-of-code-mac-x86_64.tar.xz"
            sha256 "4643d93332ddda12c4e6b862d0a899c792f76272714a1189f8368254f59eebbe"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.45/advent-of-code-linux-aarch64.tar.xz"
            sha256 "f05bf59e6ac712cb07d455493bcbab0f46b9a8652c05ab91821f903fca54fec4"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.45/advent-of-code-linux-x86_64.tar.xz"
            sha256 "bd112909586cad22363758b4d60c2e2ac25d76639dfb328ed40eae354a1f5795"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
