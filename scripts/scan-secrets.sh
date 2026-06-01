#!/usr/bin/env bash
set -euo pipefail

repo_root="${1:-$(git rev-parse --show-toplevel 2>/dev/null || pwd)}"
cd "$repo_root"

patterns=(
  'ghp_[A-Za-z0-9]{36}'
  'github_pat_[A-Za-z0-9_]{20,}'
  'sk-[A-Za-z0-9]{20,}'
  'AKIA[0-9A-Z]{16}'
  'AIza[0-9A-Za-z_-]{35}'
  'xox[baprs]-[A-Za-z0-9-]+'
  '-----BEGIN [A-Z ]*PRIVATE KEY-----'
  '\b10\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\b'
  '\b192\.168\.[0-9]{1,3}\.[0-9]{1,3}\b'
  '\b172\.(1[6-9]|2[0-9]|3[0-1])\.[0-9]{1,3}\.[0-9]{1,3}\b'
  '\blocalhost\b'
  '\b127\.0\.0\.1\b'
  '\b0\.0\.0\.0\b'
  '\b[a-z0-9][a-z0-9-]*(\.[a-z0-9][a-z0-9-]*)*\.(local|lan|internal|localdomain|private|corp|home\.arpa)\b'
  '\b[a-z0-9-]+\.ts\.net\b'
)

status=0
while IFS= read -r file; do
  [[ -z "$file" ]] && continue
  for pattern in "${patterns[@]}"; do
    if rg -n --no-heading --hidden --glob '!.git' --glob '!.cache' --glob '!node_modules' --glob '!dist' --glob '!build' -e "$pattern" "$file" >/dev/null 2>&1; then
      echo "Potential secret or private-network reference found in: $file"
      rg -n --no-heading --hidden --glob '!.git' --glob '!.cache' --glob '!node_modules' --glob '!dist' --glob '!build' -e "$pattern" "$file"
      status=1
    fi
  done
done < <(git ls-files)

exit "$status"
