import streamlit as st

from lib.content import WEEKENDS, image_path, read_weekend

st.title("Cours — Cycle 1")
st.caption("6 week-ends de formation, retranscription fidèle des notes de cours.")

titles = [f"Week-end {w['order']} — {w['title']}" for w in WEEKENDS]
selected = st.selectbox(
    "Choisir un week-end",
    options=range(len(WEEKENDS)),
    format_func=lambda i: titles[i],
)
weekend = WEEKENDS[selected]

cover = image_path(weekend["cover"])
if cover:
    st.image(str(cover), width="stretch")

st.markdown(read_weekend(weekend))
