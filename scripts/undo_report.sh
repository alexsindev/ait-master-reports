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

rm -f "$TEX_REPORT"
rm -rf "$ASSETS_DIR"
grep -v "\[${TEX_FILE}\](${TEX_REPORT})" "$README" > "$README.tmp" && mv "$README.tmp" "$README"

echo "Removed: $TEX_REPORT, $ASSETS_DIR/, and updated $README"
