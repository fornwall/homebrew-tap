# fornwall/tap
A third-party [Homebrew](https://brew.sh/) repository.

## Packages
- `advent-of-code`
  - A command-line tool wrapping an [Advent of Code](https://adventofcode.com/) solver.
  - Homepage: https://github.com/fornwall/advent-of-code
  - Install with: `brew install fornwall/tap/advent-of-code`
- `luau-lsp`
  - Language Server Implementation for Luau.
  - Homepage: https://github.com/JohnnyMorganz/luau-lsp
  - Install with: `brew install fornwall/tap/luau-lsp`

## Details
Packages are updated with a [scheduled daily run](.github/workflows/scheduled.yml) of [scripts/check-update.py](scripts/check-update.py), which calls [scripts](scripts/) to generate updated formulas 
