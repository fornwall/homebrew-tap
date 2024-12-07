class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.7.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.7.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "129f3aa7fdf22b94c72e8e687ec2f4a9c3842485384eb94ccee8da5f84a1e24b"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.7.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "d1abd7d27f7b2129a2af403bc76dc7fbcde135bc541670b64cecd4ab84ee88e5"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.7.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "fc1e8c18a2fe24a17d2769b99bddd307a19ba40b0694f1486de1556985b6ff11"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.7.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "6ef113961ad06a3fe3e093362652a9b7b181995501e4604a83ae52ce9667b1d7"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
