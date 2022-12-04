class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "0.1"

    on_macos do
        url "https://fornwall.me/tmp/advent-of-code.tar.xz"
        sha256 "4c083722a0dcb54dcb8827198311075111046d170ab48d595a4b36a1501dce4a"
    end

    on_linux do
        url "https://fornwall.me/tmp/advent-of-code-linux.tar.xz"
        sha256 "bd249f06d1385aa0ad6d8176d6ebf22ccd1b0719197ad3661e150e3f57d59aee"
    end

    def install
        bin.install "advent-of-code"
    end
end
