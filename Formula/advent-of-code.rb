class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.19.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.19.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "680fa9b9ff278a3e608cd25924b00a41800632e1441e9e81f650ef4033398a43"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.19.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "1c33531d0f26388e41170faa076dc68e0f217677c3d2bb4c9584a29b88f7aefa"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.19.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "f636c86fe38924f81b246a460951e370bd543567deb7c80b2f2ffc2c963ff203"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.19.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "6d663321dcbf786b1a8ee96ffd0efb36ef16eaf5d9301f8a7fdec2a76fbea64a"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
