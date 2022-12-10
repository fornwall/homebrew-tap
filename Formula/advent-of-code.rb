class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.10"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.10"
            sha256 "6fd9d5528048b1c3ce75e9174d67636986f698b7c702cbbe43e1a5c9d877155c"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.10"
            sha256 "b2b3332b08a25c5cf238ef657f47c3761a9bc17d4dc16c44c8ee68702defd6da"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.10"
            sha256 "f9c42184e8c5d898991cec344ac88e5bc8b95f29d5bd49dbde7d4ddfd80d15ca"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.10"
            sha256 "4b00ebcf488c651ad2859b0c2a088ddd53503e6a46702993616921e7c4249c88"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
