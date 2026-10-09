#!/bin/sh
# Renders resume.html to the published PDF with headless Chrome.
# _resume/ is skipped by GitHub Pages (Jekyll ignores underscore folders).
set -e
cd "$(dirname "$0")"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PWD/../Micah_Rassi_Resume.pdf" "file://$PWD/resume.html"
