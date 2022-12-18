class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.17"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.17"
            sha256 "c549d32acdb1c67b2b9372457718738c97b7270d1f8af3da3b7bc5ea40b50c7b"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.17"
            sha256 "f880466ebd7b80b6c9e10b7af7fbfae60521c3b065ae07c4f7d8d1d3b5c8faf4"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.17"
            sha256 "26ebc5c003a15339025a401a6ecec96856ecd26a562ab86008586f237cd66df8"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.17"
            sha256 "552e405f94f0ff7ff60a6e44ddb5dfe519bca1932c0ef30993ee880016512679"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
