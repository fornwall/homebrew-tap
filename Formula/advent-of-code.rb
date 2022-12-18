class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.18"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.18"
            sha256 "7d8b3300ca9022cd1374d00e91007b03b8bc5c9598b15f049f2b17affe3f68c0"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.18"
            sha256 "0c27bb77d69793fb5c9163a75e52262fe60cef5a11c2bd23af57e1e2cfa1c50c"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.18"
            sha256 "e84d0c1f493dee6f392f5dca7e9da73bc6c92913cf54b9c5791c9f3a1131b5b3"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.18"
            sha256 "7f04f435ca2c8bae3ae9666e4490f06eaa7ebb75c88f468bf6ca92893ac6b0c0"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
