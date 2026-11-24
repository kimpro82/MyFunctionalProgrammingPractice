#!/usr/bin/env bash
set -euo pipefail

readonly LEAN_VERSION="4.36.0"
readonly ELAN_INSTALLER_URL="https://elan.lean-lang.org/elan-init.sh"

if ! command -v curl >/dev/null 2>&1; then
  echo "Error: curl is required to install elan." >&2
  exit 1
fi

installer="$(mktemp)"
trap 'rm -f "$installer"' EXIT

curl --proto '=https' --tlsv1.2 -fsSL "$ELAN_INSTALLER_URL" -o "$installer"
bash "$installer" -y --default-toolchain "leanprover/lean4:v${LEAN_VERSION}"
