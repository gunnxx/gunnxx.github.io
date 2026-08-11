#!/usr/bin/env bash
# Render resume.html to resume.pdf with headless Chrome.
# Chrome refuses to print file:// pages with remote fonts, so serve the repo
# on a scratch port for the length of the render.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
chrome="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
port=8791

[ -x "$chrome" ] || { echo "Google Chrome not found at $chrome" >&2; exit 1; }

python3 -m http.server "$port" --directory "$root" --bind 127.0.0.1 >/dev/null 2>&1 &
server=$!
trap 'kill "$server" 2>/dev/null || true' EXIT

for _ in $(seq 30); do
    curl -sf -o /dev/null "http://127.0.0.1:$port/resume.html" && break
    sleep 0.2
done

"$chrome" --headless --disable-gpu --no-pdf-header-footer \
    --virtual-time-budget=10000 \
    --print-to-pdf="$root/resume.pdf" \
    "http://127.0.0.1:$port/resume.html" 2>/dev/null

echo "wrote $root/resume.pdf"
