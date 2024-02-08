#!/usr/bin/env python3

from hashlib import sha256
import re
import os
import time
import urllib.request
import subprocess
import json

packages = [
    {
        "formula_name": "advent-of-code",
        "github_repo": "fornwall/advent-of-code",
    },
    {
        "formula_name": "rust-gpu",
        "github_repo": "fornwall/rust-gpu-compiler",
    },
    {
        "formula_name": "luau-lsp",
        "github_repo": "JohnnyMorganz/luau-lsp"
    }
]

for package in packages:
    formula_file = f"Formula/{package['formula_name']}.rb"
    formula_src = open(formula_file, "rt").read()
    formula_current_version = re.findall('version "(.*)"', formula_src)[0]

    json_url = f"https://api.github.com/repos/{package['github_repo']}/releases/latest"
    request = urllib.request.Request(json_url)
    file_bytes = urllib.request.urlopen(request).read()
    release_json = json.loads(file_bytes)
    formula_latest_version = release_json["name"]


    if formula_current_version != formula_latest_version:
        print(f"Package {package['formula_name']}: Updating from {formula_current_version} to {formula_latest_version}")
        new_environ = os.environ.copy()
        new_environ['FORMULA_NEW_VERSION'] = formula_latest_version
        subprocess.check_call(f"./scripts/regenerate-{package['formula_name']}.py", env=new_environ)
