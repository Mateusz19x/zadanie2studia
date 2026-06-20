#!/usr/bin/env bash
set -euo pipefail
echo "Cleaning project artifacts..."
rm -rf .venv
find . -name "__pycache__" -type d -exec rm -rf {} + || true
rm -rf build dist .pytest_cache
echo "Clean complete."
