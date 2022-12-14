class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.14"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.14"
            sha256 "60083db299ce6a70741a88f6c803c28d4fe88745a4811569e95dbd6017812cd5"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.14"
            sha256 "7a6223e70e27feec916be159db9ed86da8608a1233208d209d49b9a9ff8bee15"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.14"
            sha256 "b9e981c35b4ac8ce88ee545fe9b0cb0ebb3524a0fa80be5e0e61b6cf8d9c51d7"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.14"
            sha256 "3b4ed1a5aa3cce7656b0da8016a34af179aa6b45dd6bd6b6bba1823725986442"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
