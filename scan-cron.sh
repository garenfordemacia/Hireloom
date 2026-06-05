#!/bin/bash
# scan-cron.sh — wrapper for the automated portal scan (launchd / cron).
# Runs the zero-token scanner and appends results to data/pipeline.md.
# Self-locating: works regardless of where it's invoked from.

set -euo pipefail

# Make Homebrew Node available in launchd's minimal environment
export PATH="/opt/homebrew/bin:/opt/homebrew/opt/node@22/bin:/usr/bin:/bin"

# cd into the repo (this script's own directory)
cd "$(cd "$(dirname "$0")" && pwd)"

mkdir -p data
{
  echo ""
  echo "════════ Auto-scan $(date '+%Y-%m-%d %H:%M:%S') ════════"
  node scan.mjs
} >> data/scan-cron.log 2>&1
