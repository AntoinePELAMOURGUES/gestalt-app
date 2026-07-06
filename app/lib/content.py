from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent.parent
COURS_DIR = REPO_ROOT / "docs" / "cours"
IMAGES_DIR = Path(__file__).resolve().parent.parent / "assets" / "images"

WEEKENDS = [
    {"order": 1, "file": "01-nouveau-depart.md", "title": "Nouveau départ", "cover": "couverture-01-nouveau-depart.png"},
    {"order": 2, "file": "02-clarte.md", "title": "Clarté", "cover": "couverture-02-clarte.png"},
    {"order": 3, "file": "03-vivre.md", "title": "Vivre", "cover": "couverture-03-vivre.png"},
    {"order": 4, "file": "04-relation.md", "title": "Relation", "cover": "couverture-04-relation.png"},
    {"order": 5, "file": "05-expression.md", "title": "Expression", "cover": "couverture-05-expression.png"},
    {"order": 6, "file": "06-confiance.md", "title": "Confiance", "cover": "couverture-06-confiance.png"},
]


def read_weekend(weekend):
    path = COURS_DIR / weekend["file"]
    return path.read_text(encoding="utf-8")


def image_path(filename):
    path = IMAGES_DIR / filename
    return path if path.exists() else None
