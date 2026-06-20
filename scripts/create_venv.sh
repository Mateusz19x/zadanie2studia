#!/usr/bin/env bash
set -euo pipefail
VENV_DIR=".venv"
if [ ! -d "$VENV_DIR" ]; then
  python -m venv "$VENV_DIR"
fi
PY="$VENV_DIR/bin/python"
"$PY" -m pip install --upgrade pip
if [ -f requirements.txt ]; then
  "$PY" -m pip install -r requirements.txt
fi
echo "Virtualenv ready at $VENV_DIR"
