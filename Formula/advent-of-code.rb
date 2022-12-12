class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.12"

    on_macos do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-aarch64.tar.xz?version=2022.0.12"
            sha256 "fe9ae0502d0779a786e13a04bd6163835c59e87047fe92b2e3442de3b6c58d39"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-mac-x86_64.tar.xz?version=2022.0.12"
            sha256 "3959093d2b0d5c8ce651fd52d9dd2f64022352adcca892d984f79732c8e3daaa"
        end
    end

    on_linux do
        on_arm do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-aarch64.tar.xz?version=2022.0.12"
            sha256 "af1131f677ec1b30701bef3fe0ca2cdf3814d24d18daccea9924e46665575419"
        end
        on_intel do
            url "https://aoc.fornwall.net/release/advent-of-code-linux-x86_64.tar.xz?version=2022.0.12"
            sha256 "11c3c437fdb11f242cac9f7fbd68578971bae767ecd3645f959023f0ce514be1"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
