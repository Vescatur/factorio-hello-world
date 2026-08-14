#!/usr/bin/env python3
"""Rasterise the icon SVGs in `art/icons/` into `src/graphics/icons/`.

`art/` holds the editable source art; only the rendered PNGs live under `src/`,
which is what gets symlinked into the Factorio mods folder. Every icon the mod
declares at `icon_size = 64` is produced here, so re-run after editing any SVG.

Usage:
    python tools/svg-to-png.py --all
    python tools/svg-to-png.py art/icons/ghost.svg
    python tools/svg-to-png.py art/icons/ghost.svg --out /tmp/preview.png --size 128

Requires resvg-py (see tools/requirements.txt). Deterministic and idempotent.
"""

from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
SVG_DIR = REPO_ROOT / "art" / "icons"
PNG_DIR = REPO_ROOT / "src" / "graphics" / "icons"

DEFAULT_SIZE = 64


def load_renderer():
    """Import resvg_py, turning the ImportError into an actionable message."""
    try:
        import resvg_py
    except ImportError:
        sys.exit(
            "resvg-py is not installed. Run:\n"
            "    pip install -r tools/requirements.txt"
        )
    return resvg_py


def render(resvg_py, svg_path: Path, size: int) -> bytes:
    """Rasterise one SVG to `size` x `size` PNG bytes."""
    svg = svg_path.read_text(encoding="utf-8")
    out = resvg_py.svg_to_bytes(svg_string=svg, width=size, height=size)
    # Depending on the version this is bytes or a list of ints.
    return bytes(out)


def display(path: Path) -> str:
    """Repo-relative path where possible, absolute otherwise (e.g. a scratch --out)."""
    resolved = path.resolve()
    try:
        return resolved.relative_to(REPO_ROOT).as_posix()
    except ValueError:
        return str(resolved)


def png_dimensions(data: bytes) -> tuple[int, int]:
    """Read width/height straight out of the PNG's IHDR chunk."""
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        raise ValueError("not a PNG (bad signature)")
    if data[12:16] != b"IHDR":
        raise ValueError("not a PNG (first chunk is not IHDR)")
    return struct.unpack(">II", data[16:24])


def convert(resvg_py, svg_path: Path, png_path: Path, size: int) -> None:
    if not svg_path.is_file():
        sys.exit(f"No such SVG: {svg_path}")

    data = render(resvg_py, svg_path, size)

    # Verify before writing, so a bad render never lands on a committed icon.
    width, height = png_dimensions(data)
    if (width, height) != (size, size):
        sys.exit(f"{svg_path.name}: rendered {width}x{height}, expected {size}x{size}")

    png_path.parent.mkdir(parents=True, exist_ok=True)
    png_path.write_bytes(data)
    print(f"{display(svg_path)} -> {display(png_path)} ({size}x{size})")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("svg", nargs="?", type=Path, help="SVG to convert")
    parser.add_argument(
        "--all", action="store_true", help=f"convert every SVG in {SVG_DIR.name}/"
    )
    parser.add_argument("--out", type=Path, help="output PNG path (single-file mode)")
    parser.add_argument(
        "--size", type=int, default=DEFAULT_SIZE, help=f"square size (default {DEFAULT_SIZE})"
    )
    args = parser.parse_args()

    if args.all == bool(args.svg):
        parser.error("pass either --all or a single SVG path")
    if args.all and args.out:
        parser.error("--out only applies when converting a single SVG")
    if args.size < 1:
        parser.error("--size must be positive")

    resvg_py = load_renderer()

    if args.all:
        svgs = sorted(SVG_DIR.glob("*.svg"))
        if not svgs:
            sys.exit(f"No SVGs found in {SVG_DIR}")
        for svg_path in svgs:
            convert(resvg_py, svg_path, PNG_DIR / f"{svg_path.stem}.png", args.size)
    else:
        png_path = args.out or PNG_DIR / f"{args.svg.stem}.png"
        convert(resvg_py, args.svg, png_path, args.size)


if __name__ == "__main__":
    main()
