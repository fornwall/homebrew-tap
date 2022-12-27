class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.28"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.28"
            sha256 "aeaf7cb081be3aac1a4017068693df162401f7db0463404888cd6a0769978d0a"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.28"
            sha256 "e7390ae3d673e71405444b19d95c75971d90a3227d7c49c05cf8743847bd9ab3"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.28"
            sha256 "18b3571a58a8eb2dc4b4179275c5533aba731c08edf53e580ed4fd045c984d53"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.28"
            sha256 "961c82991ac6e3b64e0da4acf55b10990923cfbad87d1c252516a8291a83e157"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
