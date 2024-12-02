class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.2.2"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.2.2/advent-of-code-mac-aarch64.tar.xz"
            sha256 "b93ff2324fc2e0ab104f65fb411c46a27f2f04944174e641d3595f9c71c59bb9"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.2.2/advent-of-code-mac-x86_64.tar.xz"
            sha256 "96a42f6ba97f6ce2cc2b7e76d85309d8ccad6662d7a6d36a324abf717c67ca4d"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.2.2/advent-of-code-linux-aarch64.tar.xz"
            sha256 "30a591d08e4e294ff42fedf5344ef2fabcccbf43c6f085785c9b0574d6c62e4b"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.2.2/advent-of-code-linux-x86_64.tar.xz"
            sha256 "a2635b583ff5c8b8fdb4f14504334b944a7b0feb5f9a5d2a162d469c55a07b4c"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
