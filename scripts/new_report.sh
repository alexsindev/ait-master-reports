#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <report_name>"
  exit 1
fi

NAME="$1"
TEX_FILE="${NAME}.tex"
TEX_REPORT="reports/${TEX_FILE}"
ASSETS_DIR="assets/${NAME}"
README="README.md"

mkdir -p "$ASSETS_DIR"
touch "$TEX_REPORT"
echo "- [${TEX_FILE}](${TEX_REPORT})" >> "$README"

echo "Created: $TEX_FILE, $ASSETS_DIR/, and updated $README"
