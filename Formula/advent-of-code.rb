class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.9"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.9"
            sha256 "ab099421d388113a0ce28a9a2fc6f6a78cf72c324929f608560a10e19f17a13b"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.9"
            sha256 "a9a7980e7208f45691f3c6b9a1ce16099fc0a8e713aa5aecbc2ef19ac3aad884"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.9"
            sha256 "92ae2eeecf89058022f47b11d887f8045ac1105a0a06342b7abf68f6f729b847"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.9"
            sha256 "557a427a864a4010bb4f376583a2aa9278acbdb4ed3a86a223262279e2f7e2b5"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
