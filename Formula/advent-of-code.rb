class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "0.1.1670282901"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=0.1.1670282901"
            sha256 "5a234b0d743d89f5f7c7ec969e96126164948d68c4bae422b75c24f47311ef2b"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=0.1.1670282901"
            sha256 "de951558d8ec3daaee60469cae0aef7b9b9a8776c0a1d5d05a9a4a2876456570"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=0.1.1670282901"
            sha256 "480c672cc501e26ae75f556e82dd14176b93bdfcef7c091be682b907c697ac0b"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=0.1.1670282901"
            sha256 "a363cf5d9732dadc0d6ae29e8d20aab5257c48cebbda246e131b05066d0f6741"
        end
    end

    def install
        bin.install "advent-of-code"
    end
end
