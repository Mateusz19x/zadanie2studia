#!/usr/bin/env bash
set -euo pipefail
VENV_PY=".venv/bin/python"
if [ -x "$VENV_PY" ]; then
  "$VENV_PY" -m pylint app --persistent=n --score=n
else
  python -m pylint app --persistent=n --score=n
fi
echo "Lint finished"
