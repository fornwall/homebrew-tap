class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.59"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.59/advent-of-code-mac-aarch64.tar.xz"
            sha256 "169edc25a09b69f402c80a287ee4ec98e6b2c19c654019da0cc8ca933f57790c"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.59/advent-of-code-mac-x86_64.tar.xz"
            sha256 "f380119c4780308aaf0d73e49994a410792fa3700aebf9cb9bf8552aa88dded6"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.59/advent-of-code-linux-aarch64.tar.xz"
            sha256 "da4743e56c962b76f72fbe61f789ea1b9c4d6e1e9ba403620b7b45561fd5d81b"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.59/advent-of-code-linux-x86_64.tar.xz"
            sha256 "8a31241be639b435e71a509f0b12cb9cd9433f7035788325a4aec983c0c631f2"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
