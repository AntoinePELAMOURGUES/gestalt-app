import streamlit as st

from lib.content import WEEKENDS, image_path, read_weekend, schema_images

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

schemas = schema_images(weekend)
if schemas:
    st.subheader("Schémas du week-end")
    cols = st.columns(min(3, len(schemas)))
    for i, (path, label) in enumerate(schemas):
        with cols[i % len(cols)]:
            st.image(str(path), caption=label, width="stretch")

st.markdown(read_weekend(weekend))
