class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.21"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.21"
            sha256 "3159d7d2385e79a1aef17dbc4448b2cac79105ddb1356f829d42b36f86642b31"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.21"
            sha256 "f855834b28b19439267806b25b60c911f52db337d8af631a53f48da6f7ba033e"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.21"
            sha256 "f8597ca0a0e1589fc45e1e3cb7ee440b86669285fc8bb606ddab01f6e4799ff9"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.21"
            sha256 "3edd7b763625fb0f1910c7f45679d140c9959281f21d28031c8c97fa705831c9"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
