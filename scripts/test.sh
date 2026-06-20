#!/usr/bin/env bash
set -euo pipefail
VENV_PY=".venv/bin/python"
if [ -x "$VENV_PY" ]; then
  "$VENV_PY" -m pytest -q
else
  python -m pytest -q
fi
