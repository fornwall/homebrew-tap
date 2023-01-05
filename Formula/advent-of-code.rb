class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.30"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.30"
            sha256 "199c37cdc8088fb2112a32cf3418c11b129765d3185a31ef38ea4946880be884"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.30"
            sha256 "8ca86da5701ea5c066deb794246557ec6256075d10af7c2723107d20b3fcf9ed"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.30"
            sha256 "ef945166571168663fb2a9aa79bdeecd8d2a6529fb74a9e927bc4c779ed7ecdf"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.30"
            sha256 "cff7063e98b0ea91f4db5493108595b229c41c14c3118f83a2a767b599463006"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
