class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2024.10.0"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.10.0/advent-of-code-mac-aarch64.tar.xz"
            sha256 "ce3910dafb326a57fd24089c1fc8085bbb7310fb9511c0148f42e51e2b48caa7"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.10.0/advent-of-code-mac-x86_64.tar.xz"
            sha256 "763bcc55e825f985a3a6905faf2691012ee094ee88ffd9842663cb5e48a8b7b9"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.10.0/advent-of-code-linux-aarch64.tar.xz"
            sha256 "0d2a4099a19725f790f9811264e7cf5b982f2db73d8e0dfc91fad58bbd1f3c0f"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/2024.10.0/advent-of-code-linux-x86_64.tar.xz"
            sha256 "5c6ff61c7e548691e10ab45b2ad8f90ea0f299821213679602515f0525e20453"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
