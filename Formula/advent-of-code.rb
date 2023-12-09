class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.63"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.63/advent-of-code-mac-aarch64.tar.xz"
            sha256 "4d25c1db3feacaa6bebb5387348e71b01a3a6239afc1d6d2d50f88446c47a207"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.63/advent-of-code-mac-x86_64.tar.xz"
            sha256 "66d4c8640dc2d1e11a30d485cca7e063cd2b1111a424da6e22d6f27f9625a5e7"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.63/advent-of-code-linux-aarch64.tar.xz"
            sha256 "ff1a31ff9561b5a265ea0ae590237e7cde4245dacb07aee2095411b5060cdefd"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.63/advent-of-code-linux-x86_64.tar.xz"
            sha256 "347550ea3ced1dcae5d4ed034911df8116ac894a7858bb45ffd2fa491bd2be57"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
