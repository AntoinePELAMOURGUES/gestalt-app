"""Génère les images de app/assets/images/ à partir de docs/images/prompts-nanobanana.txt
via l'API Gemini (modèle image "Nano Banana").

Usage :
    pip install -r scripts/requirements.txt
    export GEMINI_API_KEY=...           (ou dans .env à la racine du dépôt)
    python3 scripts/generate_images.py                # toutes les images manquantes
    python3 scripts/generate_images.py --limit 3       # les 3 premières manquantes (test)
    python3 scripts/generate_images.py --only theme-01.png cycle-du-contact.png
    python3 scripts/generate_images.py --force         # régénère même les fichiers déjà présents
"""

import argparse
import base64
import io
import os
import re
import sys
import time
from pathlib import Path

from dotenv import load_dotenv
from google import genai
from google.genai import types
from PIL import Image

MAX_SIDE = 768

REPO_ROOT = Path(__file__).resolve().parent.parent
PROMPTS_FILE = REPO_ROOT / "docs" / "images" / "prompts-nanobanana.txt"
IMAGES_DIR = REPO_ROOT / "app" / "assets" / "images"

MODEL = "gemini-2.5-flash-image"
PRICE_PER_IMAGE_USD = 0.039


def parse_prompts(text):
    style_match = re.search(
        r"PRÉFIXE DE STYLE.*?\n-+\n\n(.*?)\n\n=+", text, re.DOTALL
    )
    if not style_match:
        raise ValueError("Préfixe de style introuvable dans le fichier de prompts.")
    style_prefix = style_match.group(1).strip()

    entries = []
    pattern = re.compile(
        r"--- Fichier : (\S+\.png) ---.*?\n(.*?)(?=\n--- Fichier :|\n=+|\Z)",
        re.DOTALL,
    )
    for m in pattern.finditer(text):
        filename = m.group(1).strip()
        prompt = m.group(2).strip()
        if prompt:
            entries.append((filename, prompt))
    return style_prefix, entries


def generate_image(client, full_prompt):
    response = client.models.generate_content(
        model=MODEL,
        contents=full_prompt,
        config=types.GenerateContentConfig(response_modalities=["IMAGE"]),
    )
    for part in response.candidates[0].content.parts:
        if getattr(part, "inline_data", None) is not None:
            data = part.inline_data.data
            if isinstance(data, str):
                data = base64.b64decode(data)
            return data
    raise RuntimeError("Aucune image dans la réponse de l'API.")


def save_optimized(data, out_path):
    """Redimensionne (max 768px de côté) et compresse avant d'écrire sur disque —
    les images ne sont jamais affichées plus grandes que ça dans l'app."""
    img = Image.open(io.BytesIO(data))
    img.thumbnail((MAX_SIDE, MAX_SIDE), Image.LANCZOS)
    img.save(out_path, optimize=True, compress_level=9)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--limit", type=int, default=None, help="Nombre max d'images à générer")
    parser.add_argument("--only", nargs="+", default=None, help="Ne générer que ces fichiers")
    parser.add_argument("--force", action="store_true", help="Régénérer même si le fichier existe déjà")
    parser.add_argument("--sleep", type=float, default=2.0, help="Pause en secondes entre deux appels API")
    args = parser.parse_args()

    load_dotenv(REPO_ROOT / ".env")
    api_key = os.environ.get("GEMINI_API_KEY") or os.environ.get("GOOGLE_API_KEY")
    if not api_key:
        sys.exit("GEMINI_API_KEY manquant : ajoute-le dans .env ou exporte-le dans ton shell.")

    style_prefix, entries = parse_prompts(PROMPTS_FILE.read_text(encoding="utf-8"))
    print(f"{len(entries)} prompts trouvés dans {PROMPTS_FILE.name}.")

    if args.only:
        wanted = set(args.only)
        entries = [e for e in entries if e[0] in wanted]

    IMAGES_DIR.mkdir(parents=True, exist_ok=True)
    if not args.force:
        entries = [e for e in entries if not (IMAGES_DIR / e[0]).exists()]

    if args.limit is not None:
        entries = entries[: args.limit]

    if not entries:
        print("Rien à générer (tout existe déjà, ou filtre --only sans correspondance).")
        return

    print(f"{len(entries)} image(s) à générer, coût estimé ≈ ${len(entries) * PRICE_PER_IMAGE_USD:.2f}.")

    client = genai.Client(api_key=api_key)
    ok, failed = [], []

    for i, (filename, prompt) in enumerate(entries, start=1):
        out_path = IMAGES_DIR / filename
        print(f"[{i}/{len(entries)}] {filename} ...", end=" ", flush=True)
        full_prompt = f"{style_prefix}\n\n{prompt}"
        try:
            data = generate_image(client, full_prompt)
            save_optimized(data, out_path)
            print("OK")
            ok.append(filename)
        except Exception as exc:
            print(f"ÉCHEC ({exc})")
            failed.append(filename)
        if i < len(entries):
            time.sleep(args.sleep)

    print(f"\nTerminé : {len(ok)} générée(s), {len(failed)} échec(s).")
    if failed:
        print("Échecs :", ", ".join(failed))


if __name__ == "__main__":
    main()
