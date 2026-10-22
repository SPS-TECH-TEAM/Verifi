#!/bin/bash
# Opens Verifi in Google Chrome (falls back to your default browser).
DIR="$(cd "$(dirname "$0")" && pwd)"
open -a "Google Chrome" "$DIR/index.html" 2>/dev/null || open "$DIR/index.html"
