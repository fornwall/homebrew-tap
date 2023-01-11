class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.37"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.37"
            sha256 "285039c170b24e36d35513d2300b607da9a3e1cc2bf2f6ac799fc8d822694c9b"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.37"
            sha256 "f4c30cd5101217be7cde5e438407d074879bc13c73d6431076b3826e60e8bb69"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.37"
            sha256 "8bb9b5895d67d6593ef1c7351768db2b1c91d6d3b30f22505a33049e39d9a2d2"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.37"
            sha256 "f2722781cf30eafda5174832acfc95177486cb9660ec6eef0f2e3a6d045a96b1"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
