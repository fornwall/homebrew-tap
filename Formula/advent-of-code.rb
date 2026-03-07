class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2025.3.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.3.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "003e1d29277a32815e932da9306e6ad0fb55636849b3c36eab92acc9c8dca1e5"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.3.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "da1371696ea4926a3ce4a1a89b93ff2bcdc855791857c449b2bc20db34e04fbe"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.3.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "9ac55b2f31f2e8b46d8592c999c8bd521978d0e9003dfe27962e65a53a9b7555"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2025.3.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "392c9049dcd167e16120d910d313bb1ecc3b33b2de806ee03f005f95f7ab932e"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
