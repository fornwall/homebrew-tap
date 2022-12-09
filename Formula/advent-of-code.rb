class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.8"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.8"
            sha256 "8db2f834196ed4aa131db0be795d44b5d3ddb5a31e4b679e3abc894096d246e2"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.8"
            sha256 "9af780cdc4fe775e740bcdf820e5565fcec485b3412bb78f5d439c9ea2c2dcc4"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.8"
            sha256 "9a0cf8ec9f47d4f2ad8eaeddf9bfe685aef838d089927acb2f9d0947de98327e"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.8"
            sha256 "a6ab26a160435a75f63b1ee220994f3e74a664634b80e1918bff4e22faaa36bd"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
