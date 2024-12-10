class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.9.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.9.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "0c4bf0f601afe8027bf5dad0b2823c8768d4ef1ddae789d13e1dad7762998c18"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.9.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "c03f754140a0994d744e88388329b7be7e70cc9fdb83061ffa6495a78cd8a57e"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.9.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "146aa8b5cd8c34c1ee2414a1ff8e1d9ad657c15523baf8ab89f09339094949fe"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.9.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "3e2682d6405a5806a25329462c00568d47335708468d695c31f2313a9633f562"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
