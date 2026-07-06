import streamlit as st

from lib.queries import get_themes, overall_stats, stats_by_theme
from lib.theme import badge, status_for_pct

st.title("Bienvenue")
st.write(
    "Accompagne ta préparation au QCM de fin de Cycle 1 : parcours tes notes de "
    "cours et entraîne-toi thème par thème, à ton rythme."
)

stats = overall_stats()
themes = get_themes()
theme_stats = {row["number"]: row for row in stats_by_theme()}

col1, col2, col3 = st.columns(3)
col1.metric("Sessions de quiz", stats["sessions"] or 0)
col2.metric("Réponses données", stats["reponses"] or 0)
col3.metric(
    "Taux de réussite global",
    f"{stats['pct_reussite']}%" if stats["pct_reussite"] is not None else "—",
)

st.subheader("Les 11 thèmes officiels")
for theme in themes:
    row = theme_stats.get(theme["number"])
    pct = row["pct_reussite"] if row else None
    status, label = status_for_pct(pct)
    with st.container(border=True):
        st.markdown(f"**Thème {theme['number']} — {theme['title']}**")
        badge(label, status)

st.divider()
c1, c2 = st.columns(2)
with c1:
    st.page_link("pages/cours.py", label="Parcourir les cours", icon="📖")
with c2:
    st.page_link("pages/quiz.py", label="Lancer un quiz", icon="✏️")
