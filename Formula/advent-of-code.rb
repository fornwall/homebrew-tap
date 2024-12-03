class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.3.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.3.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "679808d66a8b4028b3fd186ad3c758176b2c040587755bd2978da78e949fe193"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.3.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "114bc1e5175160c1ca969eaddf0fe6ab10ef3f2c4d21e9c2ca36e5bd6cb33574"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.3.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "16d2b77cc4c0b92f787917f6072920c541e441663aeb01ba17c0ec3169089e2f"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.3.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "9ed000b8bb4858b44d80908ac70c77b1b7a196c37d8e42327c91bdbc3ba05d80"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
