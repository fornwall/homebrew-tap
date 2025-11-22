class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.24.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.24.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "302f2d5a2d1b224065d0b8312d683c514b1ecfaf4ac3cd181c590c6ee4cf7a17"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.24.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "18987447f1909dfeec7cfb9f2c45fbf90b16b28eddfff08bb7474e0b0d5f9c81"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.24.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "49ef1637aa76a1dc15a01d2ff687aeea35f250ae17501d72cac49b922d0e666c"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.24.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "a85910bdd5392a7c75a67222e31971d9e94db37b2fa001c00be78bcc6ab62cf7"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
