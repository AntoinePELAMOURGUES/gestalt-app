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


# Schémas pédagogiques (catégorie A de docs/images/prompts-nanobanana.txt),
# rattachés au week-end où ils sont introduits.
SCHEMAS_BY_WEEKEND = {
    1: [("schema-self.png", "Schéma du Self")],
    2: [
        ("cycle-du-contact.png", "Cycle du contact"),
        ("continuum-limites-ideal.png", "Continuum limites / idéal"),
        ("poles-bonheur.png", "Les 3 pôles du bonheur"),
    ],
    3: [
        ("barometre-stress.png", "Baromètre du stress"),
        ("phases-stress-selye.png", "3 phases du stress (Selye)"),
        ("fight-flight-freeze.png", "Fight / Flight / Freeze"),
        ("axe-verticalite-horizontalite.png", "Axe verticalité / horizontalité"),
        ("intentionnalite-voilier.png", "L'intentionnalité (métaphore du voilier)"),
    ],
    4: [
        ("maison-cerveau.png", "La maison-cerveau"),
        ("grille-communication.png", "Grille de communication"),
    ],
    5: [
        ("mecanismes-regulation-contact.png", "Mécanismes de régulation du contact"),
        ("niveaux-communication.png", "Niveaux de communication"),
    ],
    6: [("quatre-champs-therapeutiques.png", "Les 4 champs thérapeutiques")],
}


def read_weekend(weekend):
    path = COURS_DIR / weekend["file"]
    return path.read_text(encoding="utf-8")


def image_path(filename):
    path = IMAGES_DIR / filename
    return path if path.exists() else None


def schema_images(weekend):
    """Schémas déjà générés et disponibles pour ce week-end (liste de (path, légende))."""
    items = []
    for filename, label in SCHEMAS_BY_WEEKEND.get(weekend["order"], []):
        path = image_path(filename)
        if path:
            items.append((path, label))
    return items


def theme_icon(number):
    return image_path(f"theme-{number:02d}.png")
