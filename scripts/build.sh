#!/usr/bin/env bash
# Wraps app.html (a page fragment) in a full HTML document at _site/index.html
# and copies the piano samples next to it.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p _site
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1">\n</head>\n<body>\n'
  cat app.html
  printf '\n</body>\n</html>\n'
} > _site/index.html
cp piano-samples.js _site/
echo "Built _site/index.html"
