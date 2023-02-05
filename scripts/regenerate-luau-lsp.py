#!/usr/bin/env python3

from hashlib import sha256
import os
import time
import urllib.request

hashes = {}
urls = {}

version = os.environ['LUAU_LSP_VERSION']

for os in ['linux', 'macos']:
    hashes[os] = {}
    urls[os] = {}
    url = f'https://github.com/JohnnyMorganz/luau-lsp/releases/download/{version}/luau-lsp-{os}.zip'
    print(url)
    request = urllib.request.Request(url, data=None, headers={
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36'
    })
    file_bytes = urllib.request.urlopen(request).read()
    h1 = sha256()
    h1.update(file_bytes)
    hashes[os] = h1.hexdigest()
    urls[os] = url

formula = f"""class LuauLsp < Formula
    desc "Language Server Implementation for Luau"
    homepage "https://github.com/JohnnyMorganz/luau-lsp"

    version "{version}"

    on_macos do
        url "{urls['macos']}"
        sha256 "{hashes['macos']}"
    end

    on_linux do
        on_intel do
            url "{urls['linux']}"
            sha256 "{hashes['linux']}"
        end
    end

    def install
        bin.install "luau-lsp"
    end
end"""

with open("Formula/luau-lsp.rb", "wt") as generated_file:
    print(formula, file=generated_file)
