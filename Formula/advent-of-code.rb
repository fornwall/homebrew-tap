class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "0.1"
    url "https://fornwall.me/tmp/advent-of-code.tar.xz"
    sha256 "4c083722a0dcb54dcb8827198311075111046d170ab48d595a4b36a1501dce4a"

    def install
        bin.install "advent-of-code"
    end
end
