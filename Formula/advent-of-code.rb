class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.49"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.49/advent-of-code-mac-aarch64.tar.xz"
            sha256 "bd1990c8d7617cb587c8f27570ae5798709455f3bce8a20111484e79fec0fceb"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.49/advent-of-code-mac-x86_64.tar.xz"
            sha256 "d0ef4986591e0ab8ce2b08c574c48c78860679ecda528a108f9364315569040e"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.49/advent-of-code-linux-aarch64.tar.xz"
            sha256 "1c33847358f7cb778ad467dade1f64d9bf0390b1bde455a5b783fb8226a76fe1"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2022.0.49/advent-of-code-linux-x86_64.tar.xz"
            sha256 "dd5b4e866b2d590912e2845bee4ec36954c62a4bef5eeb7926dd07f7f5fd54ef"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
