class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.27"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.27"
            sha256 "2e397e23a663101f289f69db88adf61d81c098ff6836637b6070eab4558c5bb7"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.27"
            sha256 "3d74801437dcc0883e0eda21f9d67606096d1a9b3b86b4d4da485949d93f5055"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.27"
            sha256 "539ff7eff1bb6cf363c3deb8845a66881db2a285bf58004ac2e95b05dc499895"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.27"
            sha256 "b1ab6fb3ecd7201e75424bcf543599c6be277669d5ae21f3697960f5c44ff8d2"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
