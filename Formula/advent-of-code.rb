class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.62"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.62/advent-of-code-mac-aarch64.tar.xz"
            sha256 "8c6eb60fe289935fbc06d88a9ba829b2922aa903b26fd45bdd3610b64701b82d"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.62/advent-of-code-mac-x86_64.tar.xz"
            sha256 "712fc4e7be25c18a5c03cd3f87329c3b02ba667d73e7e2b933719c467b54d6c6"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.62/advent-of-code-linux-aarch64.tar.xz"
            sha256 "490e1a6edded468e88a9c827a809081cafde2b464cd6bb7009463ecabacd4785"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.62/advent-of-code-linux-x86_64.tar.xz"
            sha256 "71123c0588a2be2231e10cbbcbca76fa84d73df03bb15597a2db20880c2caa01"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
