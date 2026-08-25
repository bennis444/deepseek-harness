#!/usr/bin/env bash
# Lance l'atlas en local puis ouvre le navigateur.
# Usage : ./serve.sh [port]   (Ctrl+C pour arrêter)
set -e
cd "$(dirname "$0")"
PORT="${1:-8787}"
URL="http://localhost:${PORT}/index.html"

case "$(uname -s)" in
  Darwin) OPEN_CMD=(open) ;;
  *)      OPEN_CMD=(xdg-open) ;;
esac

echo "🗺️  Atlas → ${URL}   (Ctrl+C pour arrêter)"
if [ -t 1 ] && command -v "${OPEN_CMD[0]}" >/dev/null 2>&1; then
  ( sleep 0.6 && "${OPEN_CMD[0]}" "$URL" ) &
fi
exec python3 -m http.server "$PORT"
