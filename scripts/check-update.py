#!/usr/bin/env python3
"""Update every formula in this tap to the latest upstream GitHub release.

Run from the scheduled workflow. Formulas already at the latest release are
left untouched, so a run with nothing to do produces no changes to commit.
"""

from __future__ import annotations

import json
import sys

from packages import PACKAGES, Package
from regenerate import current_version, open_url, regenerate


def latest_release_version(repository: str) -> str:
    """The tag of the latest release of a GitHub repository."""
    url = f"https://api.github.com/repos/{repository}/releases/latest"
    with open_url(url) as response:
        release = json.load(response)
    return release["tag_name"]


def update(package: Package) -> bool:
    """Regenerate `package` if a newer release exists. True if it changed."""
    current = current_version(package)
    latest = latest_release_version(package.repository)
    if current == latest:
        print(f"{package.name}: up to date at {current}")
        return False
    print(f"{package.name}: updating from {current} to {latest}")
    regenerate(package, latest)
    return True


def main() -> int:
    failed = []
    for package in PACKAGES:
        try:
            update(package)
        except (OSError, KeyError, ValueError) as error:
            # Keep going: one broken upstream should not block the others.
            print(f"{package.name}: update failed: {error}", file=sys.stderr)
            failed.append(package.name)
    if failed:
        print(f"\nFailed to update: {', '.join(failed)}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
