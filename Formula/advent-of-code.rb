class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.52"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.52/advent-of-code-mac-aarch64.tar.xz"
            sha256 "4ac1cc39e5ff6049cc845e81d55c74b2c23f5c8036e97374aad1e47cd3116819"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.52/advent-of-code-mac-x86_64.tar.xz"
            sha256 "dfc0305bd6a246fa130b8822aaa4de6af894d0ddc079e23b9de9bf8fb2bfae3b"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.52/advent-of-code-linux-aarch64.tar.xz"
            sha256 "0e3cef63bf3cbd9ea78d3592c3cb2be3d8ea88064f6e933519920036a96e4d32"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.52/advent-of-code-linux-x86_64.tar.xz"
            sha256 "c21a1ec4458d969e7b05541cc7fe829d824aab70758ba96f4f2174736feca838"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
