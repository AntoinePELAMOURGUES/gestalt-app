import streamlit as st

from lib.theme import inject_css

st.set_page_config(
    page_title="Gestalt — Cycle 1",
    page_icon="🌿",
    layout="centered",
)
inject_css()

pages = [
    st.Page("pages/accueil.py", title="Accueil", icon="🏠", default=True),
    st.Page("pages/cours.py", title="Cours", icon="📖"),
    st.Page("pages/quiz.py", title="Quiz", icon="✏️"),
    st.Page("pages/historique.py", title="Historique", icon="📊"),
]

nav = st.navigation(pages)
nav.run()
