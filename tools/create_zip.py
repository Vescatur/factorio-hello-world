import json
import os
import shutil
import zipfile
from pathlib import Path


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

    with zipfile.ZipFile(zip_path, "w", compression=zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(src_dir):
            dirs.sort()
            for file in sorted(files):
                file_path = Path(root) / file
                arcname = Path("tycoon") / file_path.relative_to(src_dir)
                zipf.write(file_path, arcname.as_posix())

    appdata = Path(os.environ.get("APPDATA", Path.home() / "AppData" / "Roaming"))
    mods_dir = appdata / "Factorio" / "mods"
    mods_dir.mkdir(parents=True, exist_ok=True)

    target_path = mods_dir / zip_filename
    shutil.copy2(zip_path, target_path)

    print(f"Successfully created {zip_filename} at {zip_path}")
    print(f"Copied to Factorio mods folder: {target_path}")
    return str(target_path)


if __name__ == "__main__":
    create_release_zip()