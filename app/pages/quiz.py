import streamlit as st

from lib.queries import (
    create_session,
    draw_questions,
    finish_session,
    get_choices,
    get_themes,
    record_answer,
)
from lib.theme import feedback_box

st.title("Quiz")


def reset_quiz():
    for key in ["quiz_active", "quiz_session_id", "quiz_questions", "quiz_index", "quiz_score", "quiz_answered"]:
        st.session_state.pop(key, None)


if not st.session_state.get("quiz_active"):
    st.write("Choisis un ou plusieurs thèmes à réviser, puis lance une session.")

    themes = get_themes()
    options = {t["id"]: f"Thème {t['number']} — {t['title']}" for t in themes}
    selected_ids = st.multiselect(
        "Thèmes",
        options=list(options.keys()),
        format_func=lambda tid: options[tid],
    )
    n_questions = st.slider("Nombre de questions", min_value=5, max_value=30, value=10, step=5)

    if st.button("Démarrer le quiz", disabled=not selected_ids):
        questions = draw_questions(selected_ids, n_questions)
        for q in questions:
            q["choices"] = get_choices(q["id"])

        if not questions:
            st.warning("Aucune question disponible pour ces thèmes.")
        else:
            st.session_state["quiz_active"] = True
            st.session_state["quiz_session_id"] = create_session(selected_ids)
            st.session_state["quiz_questions"] = questions
            st.session_state["quiz_index"] = 0
            st.session_state["quiz_score"] = 0
            st.session_state["quiz_answered"] = False
            st.rerun()
else:
    questions = st.session_state["quiz_questions"]
    index = st.session_state["quiz_index"]

    if index >= len(questions):
        finish_session(st.session_state["quiz_session_id"])
        total = len(questions)
        score = st.session_state["quiz_score"]
        st.success(f"Session terminée : {score}/{total} bonnes réponses.")
        if st.button("Nouvelle session"):
            reset_quiz()
            st.rerun()
    else:
        question = questions[index]
        st.caption(f"Question {index + 1} / {len(questions)}")

        with st.container(border=True):
            st.markdown(f"### {question['question_text']}")

            choice_ids = [c["id"] for c in question["choices"]]
            choice_labels = {c["id"]: c["choice_text"] for c in question["choices"]}
            answered = st.session_state["quiz_answered"]

            selected = st.radio(
                "Ta réponse",
                options=choice_ids,
                format_func=lambda cid: choice_labels[cid],
                index=None,
                disabled=answered,
                key=f"radio_{question['id']}",
            )

            if not answered:
                if st.button("Valider", disabled=selected is None):
                    is_correct = next(c["is_correct"] for c in question["choices"] if c["id"] == selected)
                    record_answer(st.session_state["quiz_session_id"], question["id"], selected, is_correct)
                    st.session_state["quiz_answered"] = True
                    if is_correct:
                        st.session_state["quiz_score"] += 1
                    st.rerun()
            else:
                is_correct = next(c["is_correct"] for c in question["choices"] if c["id"] == selected)
                feedback_box(is_correct, question["explanation"])
                if question.get("source_file"):
                    st.caption(f"En savoir plus : `{question['source_file']}`")
                if st.button("Question suivante"):
                    st.session_state["quiz_index"] += 1
                    st.session_state["quiz_answered"] = False
                    st.rerun()
