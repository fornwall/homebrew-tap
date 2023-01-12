class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.43"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.43/advent-of-code-mac-aarch64.tar.xz"
            sha256 "dc27dd707d9041d3b84a6894ac471b1ed548b7f59f51cecf2d822346edbf4a81"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.43/advent-of-code-mac-x86_64.tar.xz"
            sha256 "e8889567032bfda4dc44099ca93fa3ca0c7090adca8676e7e6fc9317aaa40566"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.43/advent-of-code-linux-aarch64.tar.xz"
            sha256 "9375e781ded2a4047c716a1e754c1e7034f20e99f858ba0b301eb5c9e1217ced"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.43/advent-of-code-linux-x86_64.tar.xz"
            sha256 "b0d94c9352a94c4da5e1dab3e2d0d69c635dfff7a2c61f8ac48ea9025c634833"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
