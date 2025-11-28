#!/usr/bin/env bash
set -euo pipefail

# pages-build.sh v1.0.0
# Reads pages.conf (shell-style) and expects SUBMODULE_PATHS as a bash array.
# Usage: set the Cloudflare Pages Build command to: ./pages-build.sh

CONFIG="pages.conf"

echo "Preparing Pages build..."
echo "Config file: ${CONFIG}"

if [ -f "$CONFIG" ]; then
  # Source the config; it must declare SUBMODULE_PATHS as a bash array
  # shellcheck disable=SC1090
  source "$CONFIG"
  echo "Loaded Pages build configuration from ${CONFIG}."
else
  echo "No Pages config file found at ${CONFIG}."
  SUBMODULE_PATHS=()
fi

# Ensure SUBMODULE_PATHS is an array (defensive)
if ! declare -p SUBMODULE_PATHS >/dev/null 2>&1; then
  SUBMODULE_PATHS=()
fi

# Check for at least one non-empty entry
non_empty=false
for p in "${SUBMODULE_PATHS[@]:-}"; do
  if [ -n "${p:-}" ]; then
    non_empty=true
    break
  fi
done

# More checks and remove paths and .gitmodules
if [ "$non_empty" = true ]; then
  echo "Removing submodule folders and .gitmodules so Pages won't fetch them..."
  for p in "${SUBMODULE_PATHS[@]}"; do
    if [ -n "${p:-}" ]; then
      if [ -d "$p" ]; then
        echo " - rm -rf $p"
        rm -rf "$p"
      else
        echo " - skipping '$p' (not present)"
      fi
    else
      echo " - skipping empty entry"
    fi
  done

  if [ -f .gitmodules ]; then
    echo " - removing .gitmodules"
    rm -f .gitmodules
  fi
else
  echo "No SUBMODULE_PATHS specified; skipping submodule removal."
fi

# Build the docs
echo "Running build..."

cd docs
pip install -r requirements.txt
make html

echo "Build finished."
