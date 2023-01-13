class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.44"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.44/advent-of-code-mac-aarch64.tar.xz"
            sha256 "c3b095d0beddc6002dea49a2d50f7c0d385f1f9a4e98a1ea08e930c50b7669ed"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.44/advent-of-code-mac-x86_64.tar.xz"
            sha256 "384cfbfb31bca0d8de1d62bfee578c245db0ff733a72724f33c98776560b8eab"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.44/advent-of-code-linux-aarch64.tar.xz"
            sha256 "89db58bf17a9ee6edb8dfdfa117ce7e5c34f288f08d58be742f31b995d354cf6"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.44/advent-of-code-linux-x86_64.tar.xz"
            sha256 "288c4ddc3f9ac73c16236fb5d8d528112a974d8743217e8c7e664a724bb29bf0"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
