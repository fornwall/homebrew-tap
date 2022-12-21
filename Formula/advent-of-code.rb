class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.23"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.23"
            sha256 "c60e8035a81d0362aa090d81eb5a0e34ec569c3f73c6a0abe1cc7516af2eeddf"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.23"
            sha256 "d573c5b4b9a9e44dd07822c9c743ab465f6ffba8ed3291a007aac5aca906cf0a"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.23"
            sha256 "ad8d97af43659f39632e4cc96482ebc8a3c837086a208962efbd8e92dcc6becc"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.23"
            sha256 "90e221b8a5ed080b11b72cb55fcf6968d29124089ff09326802b399fb65dac53"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
