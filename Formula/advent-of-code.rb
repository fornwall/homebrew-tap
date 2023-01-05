class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.31"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.31"
            sha256 "a374d8299d10103e6be3cca0c5f987e342aa826a2e02f10feb32417727014255"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.31"
            sha256 "558188e86fa577f45061b9635943694ab51fcfc025d81c38ce775056d9e952b1"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.31"
            sha256 "1d6f01d63ec468326c3fbea8c9fe8d4ce752866578309ac079b71dc644167ba9"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.31"
            sha256 "fa58de4b6953ec7a4cd7fa2779eaa97bd0dafcda3516bbd4d917014103efe3cf"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
