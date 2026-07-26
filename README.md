# fornwall/tap

[![CI](https://github.com/fornwall/homebrew-tap/actions/workflows/ci.yml/badge.svg)](https://github.com/fornwall/homebrew-tap/actions/workflows/ci.yml)

Third-party [Homebrew](https://brew.sh/) repository - a [tap](https://docs.brew.sh/Taps).

## Packages
- `advent-of-code`
  - A command-line tool wrapping an [Advent of Code](https://adventofcode.com/) solver.
  - Homepage: https://github.com/fornwall/advent-of-code
  - Install with: `brew install fornwall/tap/advent-of-code`
- `googlesql-execute-query`
  - The `execute_query` tool from [GoogleSQL](https://github.com/google/googlesql)
    (formerly ZetaSQL), installed under its upstream name `execute_query`.
    Upstream only ships an arm64 binary for macOS and an x86_64 one for Linux.
  - Homepage: https://github.com/google/googlesql
  - Install with: `brew install fornwall/tap/googlesql-execute-query`
- `luau-lsp`
  - Language Server Implementation for Luau.
  - Homepage: https://github.com/JohnnyMorganz/luau-lsp
  - Install with: `brew install fornwall/tap/luau-lsp`

## Details
The formulas in [Formula/](Formula/) are generated, and should not be edited by hand.
Each package - the GitHub repository to watch for releases, the release assets to
check sum, and the formula template - is declared in
[scripts/packages.py](scripts/packages.py).

- [scripts/regenerate.py](scripts/regenerate.py) downloads the release assets for a
  given version and writes the formula:
  `scripts/regenerate.py luau-lsp 1.69.0`.
  With `--check` it re-renders every formula from the version and checksums it
  already records, verifying that nothing has drifted from its template.
- [scripts/check-update.py](scripts/check-update.py) regenerates every formula whose
  latest upstream release is newer than the checked-in version.

## Workflows
- [Scheduled](.github/workflows/scheduled.yml) runs `scripts/check-update.py` daily and
  pushes any updated formulas.
- [Publish](.github/workflows/publish.yml) is dispatched manually - or from an upstream
  release workflow - to bump a single formula to a given version.
- [CI](.github/workflows/ci.yml) lints the scripts with [ruff](https://docs.astral.sh/ruff/)
  and [shellcheck](https://www.shellcheck.net/), the workflows with
  [actionlint](https://github.com/rhysd/actionlint), and the formulas with `brew style`.

To run `brew style` locally, link the checkout into Homebrew as this tap first:

```sh
taps="$(brew --repository)/Library/Taps/fornwall"
mkdir -p "$taps" && ln -s "$PWD" "$taps/homebrew-tap"
brew style fornwall/tap
```
