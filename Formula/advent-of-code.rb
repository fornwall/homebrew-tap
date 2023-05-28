class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.57"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.57/advent-of-code-mac-aarch64.tar.xz"
            sha256 "8f4af74b26aa0e12f56ec01fe1127654acfdea26b32715d27df73ddc3a7f7bcd"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.57/advent-of-code-mac-x86_64.tar.xz"
            sha256 "ce390291311bbe7c6c44f5c2477dbe609a1fba4f2b37ad6e0a0b67b85cc36f3a"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.57/advent-of-code-linux-aarch64.tar.xz"
            sha256 "98d5b05a606b7ef4197acfe5725c42ea787e47288b2223192baf0cfcf700e8da"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.57/advent-of-code-linux-x86_64.tar.xz"
            sha256 "b246dc9fd5362de0415f0f2fb6351f954f628d6011e3c338738f3a4c74474e3a"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
