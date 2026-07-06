-- Schéma de la base de données QCM Gestalt (Neon / PostgreSQL)
--
-- Principe : le contenu pédagogique (docs/cours, docs/sources) reste dans les
-- fichiers Markdown du dépôt (source de vérité), lus directement par l'app.
-- La base de données ne stocke QUE ce qui est intrinsèquement "données" :
-- les thèmes (référence), les questions de QCM, leurs choix, et l'historique
-- des réponses de l'utilisateur.

-- ---------------------------------------------------------------------------
-- 1. Thèmes officiels du QCM (les 11 thèmes, voir docs/themes/00-themes-qcm.md)
-- ---------------------------------------------------------------------------
create table themes (
  id     serial primary key,
  number integer not null unique,      -- 1 à 11, ordre officiel du QCM
  slug   text    not null unique,      -- ex: 'ici-et-maintenant'
  title  text    not null              -- ex: 'L''ici et maintenant. Les temps : Présent/Passé/Futur.'
);

-- ---------------------------------------------------------------------------
-- 2. Questions
-- ---------------------------------------------------------------------------
create table questions (
  id            serial primary key,
  question_text text        not null,
  explanation   text        not null,  -- pourquoi la bonne réponse est la bonne (mode apprentissage)
  source_file   text,                  -- ex: 'docs/cours/03-vivre.md' — pour "en savoir plus"
  created_at    timestamptz not null default now()
);

-- Une question peut toucher plusieurs thèmes à la fois (les notes de cours
-- croisent très souvent plusieurs thèmes sur un même concept) : relation N:N.
create table question_themes (
  question_id integer not null references questions(id) on delete cascade,
  theme_id    integer not null references themes(id) on delete cascade,
  primary key (question_id, theme_id)
);

-- ---------------------------------------------------------------------------
-- 3. Choix de réponse (4 propositions par question, une seule correcte)
-- ---------------------------------------------------------------------------
create table choices (
  id            serial primary key,
  question_id   integer not null references questions(id) on delete cascade,
  choice_text   text    not null,
  is_correct    boolean not null default false,
  position      smallint not null      -- ordre d'affichage (1 à 4)
);

-- Note : l'unicité "une seule bonne réponse par question" est garantie à
-- l'écriture (script de seed / futur formulaire d'ajout), pas par une
-- contrainte SQL — inutile de complexifier tant qu'il n'y a qu'un seul
-- point d'écriture dans les données.

-- ---------------------------------------------------------------------------
-- 4. Historique des sessions de quiz et des réponses (mode apprentissage)
-- ---------------------------------------------------------------------------
create table quiz_sessions (
  id          serial primary key,
  started_at  timestamptz not null default now(),
  finished_at timestamptz,
  theme_ids   integer[]   not null   -- thèmes choisis pour filtrer cette session, ex: '{2,7}'
);

create table quiz_answers (
  id          serial primary key,
  session_id  integer not null references quiz_sessions(id) on delete cascade,
  question_id integer not null references questions(id),
  choice_id   integer not null references choices(id),
  is_correct  boolean not null,
  answered_at timestamptz not null default now()
);

-- ---------------------------------------------------------------------------
-- Index utiles
-- ---------------------------------------------------------------------------
create index idx_question_themes_theme_id on question_themes(theme_id);
create index idx_choices_question_id      on choices(question_id);
create index idx_quiz_answers_question_id  on quiz_answers(question_id);
create index idx_quiz_answers_session_id  on quiz_answers(session_id);
