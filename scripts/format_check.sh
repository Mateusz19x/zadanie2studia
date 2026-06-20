#!/usr/bin/env bash
set -euo pipefail
VENV_PY=".venv/bin/python"
if [ -x "$VENV_PY" ]; then
  "$VENV_PY" -m black --check .
  "$VENV_PY" -m isort --check-only .
else
  python -m black --check .
  python -m isort --check-only .
fi
echo "Format checks passed"
