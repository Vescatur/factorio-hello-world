import hashlib
import json
import os
import shutil
import zipfile
from pathlib import Path

# The zip is reproducible: the same commit must produce the same bytes on every
# machine. That rules out anything the filesystem contributes but the content --
# mtimes and permission bits both land in the archive otherwise. The date is the
# earliest a zip can encode (the format has no room for a pre-1980 timestamp);
# the mode is a plain non-executable 0644 under a Unix create_system, so a
# Windows build and a Linux one agree.
ZIP_EPOCH = (1980, 1, 1, 0, 0, 0)
ZIP_MODE = 0o644 << 16
ZIP_CREATE_SYSTEM = 3  # Unix

# Explicit rather than zlib's default, so the archive does not shift if that
# default ever moves.
COMPRESS_LEVEL = 9


def get_mod_version(base_dir: Path) -> str:
    info_path = base_dir / "src" / "info.json"
    with info_path.open("r", encoding="utf-8") as f:
        return json.load(f)["version"]


def create_release_zip():
    """Create a zip file for the mod and copy it into the user's Factorio mods folder."""
    base_dir = Path(__file__).resolve().parent.parent
    src_dir = base_dir / "src"
    export_dir = base_dir / "export"
    export_dir.mkdir(parents=True, exist_ok=True)

    version = get_mod_version(base_dir)
    zip_filename = f"tycoon_{version}.zip"
    zip_path = export_dir / zip_filename

    # Sorted on the archive name, so the entry order comes from the paths alone
    # and not from the order the filesystem happens to hand them back.
    entries = sorted(
        (
            (Path("tycoon") / p.relative_to(src_dir)).as_posix(),
            p,
        )
        for p in src_dir.rglob("*")
        if p.is_file()
    )

    with zipfile.ZipFile(
        zip_path,
        "w",
        compression=zipfile.ZIP_DEFLATED,
        compresslevel=COMPRESS_LEVEL,
    ) as zipf:
        for arcname, file_path in entries:
            info = zipfile.ZipInfo(arcname, date_time=ZIP_EPOCH)
            info.compress_type = zipfile.ZIP_DEFLATED
            info.create_system = ZIP_CREATE_SYSTEM
            info.external_attr = ZIP_MODE
            zipf.writestr(info, file_path.read_bytes())

    digest = hashlib.sha256(zip_path.read_bytes()).hexdigest()

    appdata = Path(os.environ.get("APPDATA", Path.home() / "AppData" / "Roaming"))
    mods_dir = appdata / "Factorio" / "mods"
    mods_dir.mkdir(parents=True, exist_ok=True)

    target_path = mods_dir / zip_filename
    shutil.copy2(zip_path, target_path)

    print(f"Successfully created {zip_filename} at {zip_path}")
    print(f"Copied to Factorio mods folder: {target_path}")
    # Two machines on the same commit must print the same digest. If they do
    # not, the working trees differ -- check `git ls-files --eol` first.
    print(f"sha256: {digest}")
    return str(target_path)


if __name__ == "__main__":
    create_release_zip()