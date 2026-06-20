#!/usr/bin/env python3
"""Command-line interface for the simple add program."""

import argparse

from app.logic import add


def main() -> None:
    parser = argparse.ArgumentParser(description="Add two integers")
    parser.add_argument("a", type=int, help="first integer")
    parser.add_argument("b", type=int, help="second integer")
    args = parser.parse_args()
    print(add(args.a, args.b))


if __name__ == "__main__":
    main()
