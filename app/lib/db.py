import os

import psycopg2
import psycopg2.extras
import streamlit as st
from dotenv import load_dotenv

load_dotenv()


def _database_url():
    # Sur Streamlit Community Cloud, les secrets sont saisis dans le tableau de
    # bord et exposés via st.secrets (pas de fichier .env sur la plateforme).
    # En local, .env + python-dotenv suffit.
    try:
        if "DATABASE_URL" in st.secrets:
            return st.secrets["DATABASE_URL"]
    except Exception:
        pass
    return os.environ["DATABASE_URL"]


@st.cache_resource
def get_connection():
    conn = psycopg2.connect(_database_url())
    conn.autocommit = True
    return conn


def query(sql, params=None, fetch=True):
    conn = get_connection()
    with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
        cur.execute(sql, params)
        if fetch:
            return cur.fetchall()
        return None


def query_one(sql, params=None):
    rows = query(sql, params)
    return rows[0] if rows else None
