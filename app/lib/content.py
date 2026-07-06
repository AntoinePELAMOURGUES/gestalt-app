import base64
import re
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent.parent
THEMES_DIR = REPO_ROOT / "docs" / "themes"
IMAGES_DIR = Path(__file__).resolve().parent.parent / "assets" / "images"

THEMES = [
    {"number": 1, "title": "Qu'est-ce que la Gestalt ?", "file": "01-quest-ce-que-la-gestalt.md"},
    {"number": 2, "title": "L'ici et maintenant", "file": "02-ici-et-maintenant.md"},
    {"number": 3, "title": "Théorie du champ", "file": "03-theorie-du-champ.md"},
    {"number": 4, "title": "Théorie du self / Frontière-contact", "file": "04-theorie-du-self.md"},
    {"number": 5, "title": "Page blanche / Ajustements", "file": "05-page-blanche.md"},
    {"number": 6, "title": "Valeurs et déontologie", "file": "06-valeurs-et-deontologie.md"},
    {"number": 7, "title": "Communication bienveillante", "file": "07-communication-bienveillante.md"},
    {"number": 8, "title": "Mécanismes de régulation du contact", "file": "08-mecanismes-de-regulation-du-contact.md"},
    {"number": 9, "title": "Les 4 champs thérapeutiques", "file": "09-quatre-champs-therapeutiques.md"},
    {"number": 10, "title": "Vision gestaltiste du stress", "file": "10-vision-gestaltiste-du-stress.md"},
    {"number": 11, "title": "Le cycle du contact", "file": "11-cycle-du-contact.md"},
]

# Les fichiers docs/themes/*.md référencent les images en chemin relatif
# (../../app/assets/images/x.png), pratique pour les lire hors de l'app (GitHub,
# éditeur...). Streamlit ne sait pas servir un chemin de fichier local relatif dans
# du Markdown : on les convertit donc en data URI base64 avant affichage.
_IMG_PATTERN = re.compile(r"!\[([^\]]*)\]\(\.\./\.\./app/assets/images/([a-zA-Z0-9_-]+\.png)\)")


def _inline_images(markdown_text):
    def replace(match):
        alt, filename = match.group(1), match.group(2)
        path = IMAGES_DIR / filename
        if not path.exists():
            return ""
        data = base64.b64encode(path.read_bytes()).decode("ascii")
        return f"![{alt}](data:image/png;base64,{data})"

    return _IMG_PATTERN.sub(replace, markdown_text)


def read_theme(theme):
    path = THEMES_DIR / theme["file"]
    return _inline_images(path.read_text(encoding="utf-8"))


def image_path(filename):
    path = IMAGES_DIR / filename
    return path if path.exists() else None


def theme_icon(number):
    return image_path(f"theme-{number:02d}.png")
