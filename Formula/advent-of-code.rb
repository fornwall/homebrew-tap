class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.32"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.32"
            sha256 "e5e1208df0cd989f6dd8bcb195072624c72c1f5aee5933e7ac972d29b658074e"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.32"
            sha256 "2d22778c47d741b2512ecf1812adba911e07175e65fd93cde171f7410b9e1eb5"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.32"
            sha256 "b058855fbc902cac153ad7283842c18968b1cc80141219d585a3c8af0bffbf8e"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.32"
            sha256 "c03952f9378ab9b085ed321b3fcb41a269a017341de878e89da539866238c064"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
