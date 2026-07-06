import streamlit as st

from lib.content import THEMES, read_theme, theme_icon

st.title("Cours — Cycle 1")
st.caption(
    "Les 11 thèmes officiels du QCM. Chaque fiche rassemble ce qui a été enseigné "
    "en formation et des sources vérifiées, où que le sujet ait été abordé."
)

titles = [f"{t['number']}. {t['title']}" for t in THEMES]
selected = st.selectbox(
    "Choisir un thème",
    options=range(len(THEMES)),
    format_func=lambda i: titles[i],
)
theme = THEMES[selected]

icon = theme_icon(theme["number"])
if icon:
    st.image(str(icon), width=120)

st.markdown(read_theme(theme))
