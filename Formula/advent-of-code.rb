class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.66"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.66/advent-of-code-mac-aarch64.tar.xz"
            sha256 "a3868c3af46ec47c0c95f85df7c9dcbca9eff0db5fc5ca2b3feb4be09fca5837"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.66/advent-of-code-mac-x86_64.tar.xz"
            sha256 "e24851244e878b1a29f9022e58d2204d58d22eae5ed00e638984fd826e756eea"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.66/advent-of-code-linux-aarch64.tar.xz"
            sha256 "1af66d967f80c35a97665dfbf81429dfe0f690b904aa2123dc681fe109e31d04"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.66/advent-of-code-linux-x86_64.tar.xz"
            sha256 "5ff3948e617d7bf274c2fd7bf6d4636b4deff62843c5a20bc6cb13f46a6cff1e"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
