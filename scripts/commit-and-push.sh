#!/bin/bash
# Commit and push any regenerated formulas, doing nothing when unchanged.
#
# Usage: scripts/commit-and-push.sh <commit message>
#
# Formatted in the Homebrew shell style, as `brew style` checks the whole tap.
set -e -u -o pipefail

message="${1}"

git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"

git add Formula
if git diff --cached --quiet
then
  echo "No formula changes to commit"
  exit 0
fi

git commit --message "${message}"
git push
