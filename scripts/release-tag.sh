#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "Usage: ./scripts/release-tag.sh v1.0.0"
  exit 1
fi

TAG="$1"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "This folder is not initialized as a git repository yet."
  exit 1
fi

git add .
git commit -m "chore: prepare release $TAG" || true
git tag -a "$TAG" -m "Release $TAG"

echo "Tag created: $TAG"
echo "Next step: git push origin main --tags"
