class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "2022.0.46"

    on_macos do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.46/advent-of-code-mac-aarch64.tar.xz"
            sha256 "a2667f0ded3d4c56fa5440b95a16ccf8d7909558e10431238e2b8098d1ae845f"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.46/advent-of-code-mac-x86_64.tar.xz"
            sha256 "750b349576b75720f0be1aee3102f5e1b4bac9d51cb9a19f1ca4ed8b8124c475"
        end
    end

    on_linux do
        on_arm do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.46/advent-of-code-linux-aarch64.tar.xz"
            sha256 "0f992443da4da8cf4acdaa485ebd62bdd744b112cadbea3d0b72f193ef334158"
        end
        on_intel do
            url "https://github.com/fornwall/advent-of-code/releases/download/v2022.0.46/advent-of-code-linux-x86_64.tar.xz"
            sha256 "863d019af531ec0f822dff852bfa7eb62671051ae62c422d669ae4be0762d721"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end
