class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.16"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.16"
            sha256 "5ef1175be75e074186570affe853c1e235032469431f202fb70c374d48750bd8"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.16"
            sha256 "89be555c912ea562719c24ea1fba47a436af006077a20eea5e769224d6484924"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.16"
            sha256 "a7c0bf84f520733bf8fc838d74e5e7329c23db774c184bb5a33d02554120fb8b"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.16"
            sha256 "3cb4ea4100b734190cdc6eed807cb9ff70c86e303df4c045f21688e8d8431e27"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
