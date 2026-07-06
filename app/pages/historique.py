import streamlit as st

from lib.content import theme_icon
from lib.queries import most_missed_questions, overall_stats, stats_by_theme
from lib.theme import status_for_pct, theme_card

st.title("Historique & progression")

stats = overall_stats()

if not stats or not stats["reponses"]:
    st.info("Pas encore de réponses enregistrées — lance une première session de quiz.")
else:
    col1, col2, col3 = st.columns(3)
    col1.metric("Sessions", stats["sessions"])
    col2.metric("Réponses", stats["reponses"])
    col3.metric("Taux de réussite global", f"{stats['pct_reussite']}%")

    st.subheader("Progression par thème")
    for row in stats_by_theme():
        status, label = status_for_pct(row["pct_reussite"])
        theme_card(
            theme_icon(row["number"]),
            f"**Thème {row['number']} — {row['title']}** · "
            f"{row['correctes']}/{row['total']} bonnes réponses ({row['pct_reussite']}%)",
            status,
            label,
        )

    st.subheader("Questions les plus souvent ratées")
    missed = most_missed_questions()
    if missed:
        st.dataframe(
            [
                {"Question": m["question_text"], "Échecs": m["echecs"], "Tentatives": m["tentatives"]}
                for m in missed
            ],
            width="stretch",
            hide_index=True,
        )
    else:
        st.write("Aucune question ratée pour l'instant — bravo !")
