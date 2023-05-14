class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.54"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.54/advent-of-code-mac-aarch64.tar.xz"
            sha256 "33d0efe62f3c3e7cccdac5b3307473fef130906fa3e05df0c333583f0b023afb"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.54/advent-of-code-mac-x86_64.tar.xz"
            sha256 "a83ca2aa784269f179a97672a65cb2fcf7378a79113310f4cc3ae358275af5d8"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.54/advent-of-code-linux-aarch64.tar.xz"
            sha256 "8aae22b161b970b14236a1fc0b47df6b9542eff5b1c9a41cdcc94e8469e3ed3b"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.54/advent-of-code-linux-x86_64.tar.xz"
            sha256 "64fd4dd9d0a47ad8b955ce3caa157b4bffd73a581c814e732bfead73e3ba2421"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
