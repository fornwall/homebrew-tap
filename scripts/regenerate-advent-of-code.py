#!/usr/bin/env python3

from hashlib import sha256
import os
import time
import urllib.request

hashes = {}
urls = {}

version = os.environ['ADVENT_OF_CODE_VERSION']

for os in ['linux', 'mac']:
    hashes[os] = {}
    urls[os] = {}
    for arch in ['aarch64', 'x86_64']:
        url = f'https://aoc.fornwall.net/release/advent-of-code-{os}-{arch}.tar.xz?version={version}'
        request = urllib.request.Request(url, data=None, headers={
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36'
        })
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
    end
end"""

print(formula)
