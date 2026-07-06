import streamlit as st

# Palette "Terre et Présence" — reprend le code couleur du baromètre du stress
# (docs/cours/03-vivre.md) comme langage fonctionnel de progression :
# vert = maîtrisé, bleu = en cours, ocre = à réviser (jamais de rouge d'alarme).
COLORS = {
    "background": "#FAF6F0",
    "surface": "#FFFFFF",
    "border": "#E4D9C9",
    "text": "#2E2A26",
    "primary": "#C1602C",
    "success": "#5C7A5E",
    "neutral": "#5E7C99",
    "attention": "#D98E4A",
}

_CSS = f"""
<style>
h1, h2, h3, h4 {{
    font-family: Georgia, "Iowan Old Style", "Palatino Linotype", serif;
    color: {COLORS["text"]};
}}
html, body, [class*="css"] {{
    font-family: system-ui, -apple-system, "Segoe UI", Helvetica, Arial, sans-serif;
}}

/* Fond texturé façon figure/fond : deux halos organiques très doux (terracotta
   en haut à droite, sauge en bas à gauche) qui se fondent dans l'ivoire, au
   lieu d'un aplat plat. Ciblage double (.stApp + data-testid) pour rester
   compatible entre versions de Streamlit. */
.stApp, [data-testid="stAppViewContainer"] {{
    background:
        radial-gradient(circle at 88% -8%, rgba(193, 96, 44, 0.12), transparent 42%),
        radial-gradient(circle at -8% 108%, rgba(92, 122, 94, 0.12), transparent 42%),
        {COLORS["background"]};
    background-attachment: fixed;
}}
.gestalt-badge {{
    display: inline-block;
    padding: 0.2rem 0.75rem;
    border-radius: 999px;
    font-size: 0.85rem;
    font-weight: 600;
    margin: 0.1rem 0.3rem 0.1rem 0;
}}
.gestalt-badge--success {{ background: rgba(92, 122, 94, 0.15); color: #3E5940; }}
.gestalt-badge--neutral {{ background: rgba(94, 124, 153, 0.15); color: #3E5A73; }}
.gestalt-badge--attention {{ background: rgba(217, 142, 74, 0.18); color: #8A5423; }}

.gestalt-feedback {{
    border-radius: 16px;
    padding: 1rem 1.25rem;
    margin-top: 0.75rem;
    border: 1px solid {COLORS["border"]};
}}
.gestalt-feedback--correct {{ background: rgba(92, 122, 94, 0.10); }}
.gestalt-feedback--incorrect {{ background: rgba(217, 142, 74, 0.12); }}
</style>
"""


def inject_css():
    st.markdown(_CSS, unsafe_allow_html=True)


def badge(label, status="neutral"):
    st.markdown(
        f'<span class="gestalt-badge gestalt-badge--{status}">{label}</span>',
        unsafe_allow_html=True,
    )


def feedback_box(correct, text):
    status = "correct" if correct else "incorrect"
    icon = "✓" if correct else "○"
    st.markdown(
        f'<div class="gestalt-feedback gestalt-feedback--{status}">{icon} {text}</div>',
        unsafe_allow_html=True,
    )


def status_for_pct(pct):
    """Statut de progression par thème, sur le modèle du baromètre du stress."""
    if pct is None:
        return "neutral", "Pas encore travaillé"
    if pct >= 80:
        return "success", "Maîtrisé"
    if pct >= 50:
        return "neutral", "En cours"
    return "attention", "À réviser"
