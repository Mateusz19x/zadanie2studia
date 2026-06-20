import os
import subprocess
import sys


def test_cli_add():
    project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir))
    script = os.path.join(project_root, "cli.py")
    res = subprocess.run(
        [sys.executable, script, "2", "3"], capture_output=True, text=True
    )
    assert res.returncode == 0
    assert res.stdout.strip() == "5"
