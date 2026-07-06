from lib.db import query, query_one


def get_themes():
    return query("select id, number, slug, title from themes order by number;")


def draw_questions(theme_ids, n):
    return query(
        """
        select q.id, q.question_text, q.explanation, q.source_file
        from questions q
        join question_themes qt on qt.question_id = q.id
        where qt.theme_id = any(%(theme_ids)s)
        group by q.id, q.question_text, q.explanation, q.source_file
        order by random()
        limit %(n)s;
        """,
        {"theme_ids": theme_ids, "n": n},
    )


def get_choices(question_id):
    return query(
        """
        select id, choice_text, is_correct, position
        from choices
        where question_id = %(question_id)s
        order by position;
        """,
        {"question_id": question_id},
    )


def create_session(theme_ids):
    row = query_one(
        """
        insert into quiz_sessions (theme_ids)
        values (%(theme_ids)s)
        returning id;
        """,
        {"theme_ids": theme_ids},
    )
    return row["id"]


def finish_session(session_id):
    query(
        """
        update quiz_sessions set finished_at = now()
        where id = %(session_id)s;
        """,
        {"session_id": session_id},
        fetch=False,
    )


def record_answer(session_id, question_id, choice_id, is_correct):
    query(
        """
        insert into quiz_answers (session_id, question_id, choice_id, is_correct)
        values (%(session_id)s, %(question_id)s, %(choice_id)s, %(is_correct)s);
        """,
        {
            "session_id": session_id,
            "question_id": question_id,
            "choice_id": choice_id,
            "is_correct": is_correct,
        },
        fetch=False,
    )


def stats_by_theme():
    return query(
        """
        select t.number, t.title,
               count(*) filter (where qa.is_correct) as correctes,
               count(*)                              as total,
               round(100.0 * count(*) filter (where qa.is_correct) / count(*), 1) as pct_reussite
        from quiz_answers qa
        join questions q on q.id = qa.question_id
        join question_themes qt on qt.question_id = q.id
        join themes t on t.id = qt.theme_id
        group by t.number, t.title
        order by t.number;
        """
    )


def most_missed_questions(limit=10):
    return query(
        """
        select q.id, q.question_text,
               count(*) filter (where not qa.is_correct) as echecs,
               count(*)                                  as tentatives
        from quiz_answers qa
        join questions q on q.id = qa.question_id
        group by q.id, q.question_text
        having count(*) filter (where not qa.is_correct) > 0
        order by echecs desc
        limit %(limit)s;
        """,
        {"limit": limit},
    )


def overall_stats():
    return query_one(
        """
        select
          (select count(*) from quiz_sessions) as sessions,
          (select count(*) from quiz_answers) as reponses,
          (select round(100.0 * count(*) filter (where is_correct) / nullif(count(*), 0), 1)
             from quiz_answers) as pct_reussite;
        """
    )
