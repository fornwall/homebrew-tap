class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.3"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.3"
            sha256 "930c4a89760f6a71107ff15534967f50379510c185a0fdfb3d50c6e9d4f99429"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.3"
            sha256 "fb5a75c46b630fe3e9fe81ca00a16208fbbbe22776325769ddea9f32f0a163ac"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.3"
            sha256 "8c84b528e8b41bf6c9ae1b93fe912091a83989185286cf144ba9b01ff9a40673"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.3"
            sha256 "3fad29b962073007745fdaae9cc30f1111673a7efa14f8c321fb62ac2decbacb"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
