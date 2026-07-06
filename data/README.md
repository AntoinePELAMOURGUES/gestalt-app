# Base de données QCM (Neon / PostgreSQL)

## Principe

La base de données ne contient **que les données du système de QCM** : thèmes (référence), questions, choix, sessions et historique des réponses. Le **contenu pédagogique** (les cours) reste dans `docs/cours/` et `docs/sources/` — l'app Streamlit les lit directement depuis les fichiers Markdown du dépôt. Il n'y a donc pas de duplication du contenu de cours dans la base.

## Schéma

Voir `schema.sql` pour le DDL complet. Résumé des tables :

```
themes (11 lignes, fixes)
  ├─< question_themes >──┐
  │                      │
questions                │
  ├─< choices            │ (relation N:N — une question peut toucher plusieurs thèmes)
  └─< quiz_answers >──── quiz_sessions
                              (theme_ids : filtre utilisé pour la session)
```

- **`themes`** — les 11 thèmes officiels du QCM (voir `docs/themes/00-themes-qcm.md`). Table de référence, remplie une fois via `seed_themes.sql`.
- **`questions`** — une question de QCM, avec son `explanation` (pourquoi la bonne réponse est la bonne — affiché après la réponse de l'utilisateur, cœur du mode apprentissage) et un `source_file` optionnel pointant vers le fichier de cours d'origine (ex. `docs/cours/03-vivre.md`) pour un lien "en savoir plus".
- **`question_themes`** — table de jointure N:N : une question peut être tagguée sur plusieurs thèmes à la fois (fréquent dans ce contenu, les concepts se recoupent beaucoup).
- **`choices`** — 4 propositions par question, une seule avec `is_correct = true`. Le format est **QCM à choix unique** (pas de cases à cocher multiples).
- **`quiz_sessions`** — une session de quiz = un run choisi par l'utilisateur pour un ou plusieurs thèmes (`theme_ids`, tableau Postgres d'IDs de thèmes).
- **`quiz_answers`** — chaque réponse donnée pendant une session (historique persistant, sert au calcul de la progression par thème dans le temps et à recibler les questions ratées).

## Exemples de requêtes

**Tirer N questions aléatoires pour un ou plusieurs thèmes choisis** :

```sql
select q.id, q.question_text
from questions q
join question_themes qt on qt.question_id = q.id
where qt.theme_id = any(%(theme_ids)s)
group by q.id, q.question_text
order by random()
limit %(n)s;
```

**Calculer le taux de réussite historique par thème** :

```sql
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
```

**Retrouver les questions le plus souvent ratées** (pour réviser en priorité) :

```sql
select q.id, q.question_text,
       count(*) filter (where not qa.is_correct) as echecs,
       count(*)                                  as tentatives
from quiz_answers qa
join questions q on q.id = qa.question_id
group by q.id, q.question_text
having count(*) filter (where not qa.is_correct) > 0
order by echecs desc;
```

## Mise en place sur Supabase

> Neon a été écarté : son site est bloqué par la politique réseau de l'utilisateur (proxy d'entreprise, catégorie "Business Information"). Supabase est accessible et déjà utilisé (2 projets existants) — il suffit de mettre en pause un projet existant pour libérer un slot sous le free tier (limite : 2 projets actifs).

1. Sur [supabase.com](https://supabase.com), mettre en pause (ou supprimer si obsolète) un des 2 projets existants, puis créer un nouveau projet pour Gestalt App.
2. Récupérer la chaîne de connexion Postgres directe : *Project Settings → Database → Connection string* (mode "Session" ou "Transaction pooler" selon le besoin). On se connecte en SQL standard, **pas besoin du SDK `supabase-py`**.
3. Copier `.env.example` (à la racine du projet) vers `.env` et renseigner `DATABASE_URL` avec cette chaîne.
4. Exécuter dans l'ordre :
   ```bash
   psql "$DATABASE_URL" -f data/schema.sql
   psql "$DATABASE_URL" -f data/seed_themes.sql
   ```
5. (À venir) Un script `data/seed_questions.sql` insérera la banque de questions initiale une fois générée.

## Choix délibérément simples (YAGNI)

- **Pas de table `users`** : l'app est pensée pour un usage individuel pour l'instant. Si un jour plusieurs personnes doivent suivre leur progression séparément, ajouter une table `users` et une colonne `user_id` sur `quiz_sessions` sera une migration simple, pas une refonte.
- **Pas de contrainte SQL "une seule bonne réponse par question"** : garantie au moment de l'écriture des données (script de seed), pas par un trigger — il n'y a qu'un seul point d'écriture pour l'instant.
- **Pas de champ `difficulty`** : non demandé, ajoutable plus tard sans casser le schéma existant si le besoin apparaît.
