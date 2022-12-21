class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.24"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.24"
            sha256 "7487de434aaa8d0c5956072a8023df2c28a65e10367d95bb1abc9042c68b00a2"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.24"
            sha256 "f9f5f58d05b73623c4dfedf72b0ae64cc73da633e1b0eae2b5ac9c0ad29f57fe"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.24"
            sha256 "b2983794d87a4f8fcd2541221af9129d617b549a141eda5fc05054314e901b4f"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.24"
            sha256 "e86a11e9a36e6c91cd03f036c8257cc0f21197655daa38cf768b7196ae5e389c"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
