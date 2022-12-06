class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.1"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.1"
            sha256 "fd9561e3f96876a951464f6f756a3b67014c382e2bd6f81d86f219a14933ccca"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.1"
            sha256 "4ea64fdfd30df98fb592a1a0e68fc989d2264c0ee5b6a74cb6d872fe4ca1f306"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.1"
            sha256 "e0cbf5193d0c0ef51f4a0b642ddf83ecf2709dbcd4a68cb370e59649b0db7ac4"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.1"
            sha256 "8a4ad9e1dc449ff2b775e359fa8187041f65dcb0cbe2e373e1b0c595cd7e2a75"
        end
    end

    def install
        bin.install "advent-of-code"
    end
end
