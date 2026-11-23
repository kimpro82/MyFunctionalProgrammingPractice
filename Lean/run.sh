#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <file.lean>" >&2
  exit 2
fi

source_file=$1
if [[ ! -f "$source_file" && -f "$(dirname "$0")/$source_file" ]]; then
  source_file="$(dirname "$0")/$source_file"
fi

if [[ ! -f "$source_file" ]]; then
  echo "Lean source file not found: $1" >&2
  exit 1
fi

if command -v lean >/dev/null 2>&1; then
  lean_bin=$(command -v lean)
elif [[ -x "$HOME/.elan/bin/lean" ]]; then
  lean_bin="$HOME/.elan/bin/lean"
else
  echo "Lean not found. Install Lean with elan or add it to PATH." >&2
  exit 127
fi

exec "$lean_bin" --run "$source_file"
