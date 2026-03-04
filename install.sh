#!/bin/bash
# metsuke installer — adds AI behavior calibration rules to your CLAUDE.md
# Usage: curl -sf https://raw.githubusercontent.com/kuro-agent/metsuke/main/install.sh | bash
set -e

RULES_URL="https://raw.githubusercontent.com/kuro-agent/metsuke/main/rules.md"
TARGET="CLAUDE.md"

# Check if already installed
if [ -f "$TARGET" ] && grep -q "Behavior Calibration (metsuke)" "$TARGET" 2>/dev/null; then
  echo "metsuke: already installed in $TARGET"
  exit 0
fi

# Download rules
RULES=$(curl -sf "$RULES_URL")
if [ -z "$RULES" ]; then
  echo "metsuke: failed to download rules" >&2
  exit 1
fi

# Append to CLAUDE.md (create if missing)
if [ -f "$TARGET" ]; then
  printf '\n\n%s\n' "$RULES" >> "$TARGET"
  echo "metsuke: appended calibration rules to $TARGET"
else
  printf '%s\n' "$RULES" > "$TARGET"
  echo "metsuke: created $TARGET with calibration rules"
fi
