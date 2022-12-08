class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.7"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.7"
            sha256 "dba8787e20ab4f7b941590f83f114061fda23c330c383bdce9a589ae710cb752"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.7"
            sha256 "07021061fe19b310b14cc027274d8244d1a16217753388ad5d244bd2b6354868"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.7"
            sha256 "e749170192b85de006d46268c3c93fe19a50df9b49af810e6cac81a14f5a4a47"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.7"
            sha256 "98f7137fea477e9af9cf6a8f48c86d35c862aeaa5f364db4419e6c7c570af6a5"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
