#!/usr/bin/env bash
set -euo pipefail

# rebuild.sh for omkarcloud/botasaurus
# Runs on an already-checked-out source tree (no clone).
# Assumes current directory is the docusaurus root (docs/).
# Installs deps and builds the site.

echo "[INFO] Node version: $(node -v)"
echo "[INFO] NPM version: $(npm -v)"

# --- Install dependencies ---
echo "[INFO] Installing dependencies..."
npm ci

# --- Build ---
echo "[INFO] Running build..."
npm run build

echo "[DONE] Build complete."
