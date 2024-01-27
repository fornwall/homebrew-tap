class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.64"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.64/advent-of-code-mac-aarch64.tar.xz"
            sha256 "192d183dfb4d3f046af5caaa7d0bd97330e157ce3e7b6243dd06ebffae244fd3"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.64/advent-of-code-mac-x86_64.tar.xz"
            sha256 "f085bbd1d9b4a881577579c5bf171ba9169ac04c7dbeddcf56f837b2a82dccd4"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.64/advent-of-code-linux-aarch64.tar.xz"
            sha256 "bb81317fd865b3435044c53ef246bbc3db4427fe1791ad99f35f5c50a8dd72a3"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.64/advent-of-code-linux-x86_64.tar.xz"
            sha256 "e67568c1c523d1bf8c638ff13f953cd880452cba3cf7d6078fee86eda2bef91e"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
