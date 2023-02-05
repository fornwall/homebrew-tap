#!/usr/bin/env python3

from hashlib import sha256
import os
import time
import urllib.request

hashes = {}
urls = {}

version = os.environ['FORMULA_NEW_VERSION']

for os in ['linux', 'mac']:
    hashes[os] = {}
    urls[os] = {}
    for arch in ['aarch64', 'x86_64']:
        url = f'https://github.com/fornwall/advent-of-code/releases/download/v{version}/advent-of-code-{os}-{arch}.tar.xz'
        request = urllib.request.Request(url)
        file_bytes = urllib.request.urlopen(request).read()
        h1 = sha256()
        h1.update(file_bytes)
        hashes[os][arch] = h1.hexdigest()
        urls[os][arch] = url

formula = f"""class AdventOfCode < Formula
    desc "CLI to solve Advent of Code problems"
    homepage "https://aoc.fornwall.net"

    version "{version}"

    on_macos do
        on_arm do
            url "{urls['mac']['aarch64']}"
            sha256 "{hashes['mac']['aarch64']}"
        end
        on_intel do
            url "{urls['mac']['x86_64']}"
            sha256 "{hashes['mac']['x86_64']}"
        end
    end

    on_linux do
        on_arm do
            url "{urls['linux']['aarch64']}"
            sha256 "{hashes['linux']['aarch64']}"
        end
        on_intel do
            url "{urls['linux']['x86_64']}"
            sha256 "{hashes['linux']['x86_64']}"
        end
    end

    def install
        bin.install "advent-of-code"
        man1.install "advent-of-code.1"
    end
end"""

with open("Formula/advent-of-code.rb", "wt") as generated_file:
    print(formula, file=generated_file)
