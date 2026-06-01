#!/usr/bin/env bash
set -euo pipefail

repo_root="${1:-$(git rev-parse --show-toplevel 2>/dev/null || pwd)}"
cd "$repo_root"

required_files=(
  "README.md"
  "LICENSE"
  ".gitignore"
  ".env.example"
  "templates/openclaw.env.example"
  "templates/openclaw.config.example.json"
  "docs/quickstart.md"
  "docs/security-hygiene.md"
  "docs/recovery.md"
  "docs/customization.md"
  "runbooks/release-checklist.md"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required public-safe file: $file" >&2
    exit 1
  fi
done

echo "Running secret and private-network scan..."
bash scripts/scan-secrets.sh

echo "Checking for common local-only files..."
unexpected=0
while IFS= read -r file; do
  case "$file" in
    *.env|*.pem|*.key|*.session|*.sqlite|*.sqlite3|*.log)
      echo "Unexpected tracked local-only file: $file" >&2
      unexpected=1
      ;;
  esac
done < <(git ls-files)

if [[ "$unexpected" -ne 0 ]]; then
  exit 1
fi

echo "Public repo check passed."
