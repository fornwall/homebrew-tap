class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.29"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.29"
            sha256 "1c7f10b6b33870e007e599e4544bcbea497bbf5a9704a160102eda49e374e88c"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.29"
            sha256 "add99229a70127cd95227e752841f3bb1e6e4bde6fd7a92db59c2d8f602627d6"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.29"
            sha256 "86ca9e21b36865aa1b7abd7f3bd1b070ee80472b8e2b97b600eac31b581f12df"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.29"
            sha256 "d38089da0329bda4f4e58b9a0f6c75ad7e87a40732eab8f729428b6fe18d14c4"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
