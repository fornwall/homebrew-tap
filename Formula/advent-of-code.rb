class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.5"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.5"
            sha256 "8ed312a0f059e8d19d23979dab67d816c7b70f9ab73f1b61178a3f79b4fddd7c"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.5"
            sha256 "f5dc7391088617368d26a8686ba9ed255b01f25d7cae0e45ba346794040c875f"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.5"
            sha256 "121f1649756d6afa0ac0498f6abc154c4831ebc1fcbecfbb7d7786cdaa4b6962"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.5"
            sha256 "0a0669813d8d02f26c3f4de21d46e6fea6a137951990c65058ce7c00bb4ba70e"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
