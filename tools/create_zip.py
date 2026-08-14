import os
import zipfile
from pathlib import Path



def create_release_zip():
    """Create a zip file from pycwd.extension folder with version in filename."""
    # Define paths
    base_dir = Path(__file__).parent.parent
    src_dir = base_dir / "src"
    version = "1.0.0" 

    # Create zip filename
    zip_filename = f"tycoon_{version}.zip"
    zip_path = Path(__file__).parent / zip_filename

    # Create zip file
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(src_dir):
            for file in files:
                file_path = os.path.join(root, file)
                arcname = os.path.join("tycoon", os.path.relpath(file_path, src_dir))
                zipf.write(file_path, arcname)

    print(f"Successfully created {zip_filename} at {zip_path}")
    return str(zip_path)


if __name__ == "__main__":
    create_release_zip()