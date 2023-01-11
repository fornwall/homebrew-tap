class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.38"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.38/advent-of-code-mac-aarch64.tar.xz"
            sha256 "b4adc8c59435f42efb3461564af4d428c6a8423e5eaaea2f30aafa8618e70d05"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.38/advent-of-code-mac-x86_64.tar.xz"
            sha256 "8b47af17d12fc8107f6410f0700cdd4b05d0e74bbbfb5c26943303b1c6f6949f"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.38/advent-of-code-linux-aarch64.tar.xz"
            sha256 "ce61b47c6a9f74bf08c38b04987efd38aaa39fd915cad7d63d1d5069d1c87d78"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.38/advent-of-code-linux-x86_64.tar.xz"
            sha256 "9b4704c259df3aa7e5c3944f339e7b2f71f1b03db63447c960836ed69294bd78"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
