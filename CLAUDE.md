# Gestalt App

## Objectif du projet

Application **Streamlit** destinée à accompagner une personne en formation de **Praticien(ne) en Gestalt-thérapie** (cursus en 3 cycles, le Cycle 1 se déroulant sur plusieurs week-ends de formation). L'application doit permettre :

1. **Structurer les cours** : une bibliothèque de connaissance organisée **par thème** (les 11 points officiels attendus au QCM de fin de Cycle 1), pas par week-end — chaque thème fusionne ce qui a été enseigné (retravaillé pour être clair) et des sources externes vérifiées.
2. **Réviser via un système de QCM** : générer / stocker des questions à choix multiples à partir de la base de connaissances, pour s'entraîner avant les examens.
3. (Étape ultérieure) **Enrichir la base de connaissances** à partir de documents en ligne sur la Gestalt-thérapie, afin de fiabiliser et compléter les notes personnelles.

Contexte : l'utilisateur (le mari) construit cet outil pour sa femme, actuellement en Cycle 1 (6 week-ends), qui a un QCM basé sur **11 thèmes obligatoires** (voir `docs/themes/00-themes-qcm.md`).

## Structure du dépôt

```
gestalt-app/
├── CLAUDE.md                  # ce fichier
├── docs/
│   ├── themes/                 # LA base de connaissance : 1 fichier complet par thème officiel (00 à 11)
│   ├── cours/_archive-notes-brutes/  # notes de cours originales par week-end, intouchées, non affichées dans l'app
│   ├── sources/                # contexte institutionnel/historique (hors périmètre d'un thème unique) + fiches Cycle 2/3
│   └── images/                  # prompts.txt pour la génération d'images (Gemini Nano Banana) + sources brutes
├── app/                        # application Streamlit
│   ├── app.py                   # point d'entrée (st.navigation + injection du thème)
│   ├── .streamlit/config.toml    # palette "Terre et Présence" (thème natif Streamlit)
│   ├── lib/                       # db.py (connexion Postgres), queries.py (SQL), content.py (lecture docs/themes), theme.py (CSS/badges)
│   ├── pages/                      # accueil.py, cours.py, quiz.py, historique.py
│   └── assets/images/               # images générées (voir docs/images/prompts-nanobanana.txt), optionnelles
└── data/                       # schéma de la base de données QCM (Supabase/PostgreSQL) + seeds
```

### Thème visuel de l'app — "Terre et Présence"

Le thème visuel n'est pas décoratif : il réutilise le vocabulaire même du cours
pour rester didactique et cohérent avec l'esprit Gestalt.

- **Figure/Fond** : chaque unité (carte de question, section de cours, tuile de
  stat) est une "figure" nette sur un "fond" calme — un seul focus par écran.
- **Prägnanz / unité** : une seule famille de couleurs pour toute l'app ; les 11
  thèmes se distinguent par numéro + pictogramme, jamais par une teinte différente.
- **Baromètre du stress recyclé comme langage fonctionnel** : les couleurs
  Orange/Bleu/Vert du baromètre (`docs/themes/10-vision-gestaltiste-du-stress.md`) deviennent le code
  couleur de progression (à réviser / en cours / maîtrisé). Pas de rouge
  d'alarme nulle part (esprit non-jugement).
- Palette : fond `#FAF6F0`, surface `#FFFFFF`, texte `#2E2A26`, accent primaire
  `#C1602C` (terracotta), succès `#5C7A5E` (vert), neutre `#5E7C99` (bleu),
  attention `#D98E4A` (ocre). Titres en serif chaleureux (Georgia), corps en
  police système — pas de police externe chargée.

Voir `docs/images/prompts-nanobanana.txt` pour la banque de prompts d'images
(schémas pédagogiques, couvertures de week-end, pictogrammes de thème) —
l'app fonctionne sans elles, elles s'ajoutent au fur et à mesure dans
`app/assets/images/`.

## Base de données : Supabase (PostgreSQL)

Le choix a hésité entre Supabase et Neon : Neon a été écarté car son site (neon.com) est bloqué par la politique réseau de l'entreprise de l'utilisateur (catégorie "Business Information", proxy Cato Networks) — un blocage large et imprévisible. Supabase est retenu car son site est déjà accessible (2 projets existants) : il suffit de mettre en pause un projet existant pour libérer un slot sous le free tier (limite de 2 projets actifs).

Supabase héberge uniquement les données du système de QCM (thèmes, questions, choix, historique des réponses) — le contenu pédagogique reste dans `docs/themes/`, lu directement par l'app. La connexion se fait en Postgres standard (chaîne de connexion directe, pas besoin du SDK `supabase-py`) : le schéma dans `data/schema.sql` est du SQL Postgres générique, sans dépendance à un fournisseur particulier. Voir `data/README.md` pour le détail du schéma, les requêtes types et la mise en place.

Caractéristiques du QCM retenues :
- **Choix unique** par question (4 propositions, une seule correcte).
- **Mode apprentissage** : chaque question a une explication affichée après la réponse (pourquoi c'est la bonne réponse).
- **Historique persistant** des réponses (progression par thème dans le temps, questions à réviser en priorité).
- **Filtrage par thème(s)** : l'utilisatrice choisit un ou plusieurs des 11 thèmes avant de lancer une session de quiz.

### `docs/themes/` — la base de connaissance

Un fichier Markdown complet par thème officiel (`01-quest-ce-que-la-gestalt.md` …
`11-cycle-du-contact.md`), chacun structuré en progression logique (définition →
développement → pièges QCM marqués `⚠️` → exemple vécu en formation → liens vers
d'autres thèmes **par leur nom**, jamais par numéro). Chaque fichier **fusionne** :
- ce qui a été enseigné en formation (repris intégralement pour la substance —
  exemples, exercices, citations — mais réécrit en prose claire, pas retranscrit
  tel quel) ;
- des sources externes vérifiées (textes fondateurs, sociétés savantes, praticiens
  reconnus), citées avec URL en bas de fichier, avec mention explicite quand un
  concept est emprunté à un autre champ que la Gestalt (CNV de Rosenberg, Selye,
  théorie polyvagale de Porges...) ;
- les illustrations déjà générées (`app/assets/images/*.png`) quand pertinent.

`00-themes-qcm.md` est le sommaire qui pointe vers les 11 fichiers.

### `docs/cours/_archive-notes-brutes/`

Les 6 notes de cours originales par week-end (source du travail ci-dessus),
**conservées intouchées** à titre d'archive/traçabilité, mais plus affichées dans
l'app ni utilisées comme référence active — tout leur contenu substantiel a été
repris dans `docs/themes/`. Proviennent d'une conversation avec Gemini (juin-juillet
2026) où les notes manuscrites ont été photographiées et retranscrites.

### `docs/sources/`

Ne contient que ce qui **ne se rattache pas à un thème unique** : contexte
institutionnel et historique de l'IFAS (`ifas-programme-officiel.md` — programme
officiel, histoire de Perls, contenu historique des week-ends « Agir »/« Relations »
d'un programme antérieur à 7 week-ends, non pertinent pour le Cycle 1 actuel à 6
week-ends) et fiches de référence structurelles pour les cycles à venir
(`cycle-2-reference.md`, `cycle-3-reference.md`). Voir `00-sources-index.md`.

## Prochaines étapes (à valider avec l'utilisateur avant d'agir)

- ~~Générer une première banque de questions QCM~~ → fait : 57 questions dans `data/seed_questions.sql`, chargées en base.
- ~~Créer le projet Supabase, exécuter `data/schema.sql` + `data/seed_themes.sql`~~ → fait.
- ~~Développer le squelette de l'app Streamlit~~ → fait : navigation, thème visuel, pages Accueil/Cours/Quiz/Historique fonctionnelles de bout en bout.
- ~~Générer les images~~ → fait : 31 images (`app/assets/images/`) via `scripts/generate_images.py`.
- ~~Réorganiser `docs/` par thème plutôt que par week-end~~ → fait : `docs/themes/01-*.md` à `11-*.md`.
- Mettre à jour l'app (`lib/content.py`, `pages/cours.py`) pour naviguer par thème au lieu de week-end.
- Enrichir la banque de QCM à partir de cette nouvelle matière (plus riche que les notes brutes d'origine) — étape séparée, à proposer.
- Itérer sur l'app : affiner l'UI au fil de l'usage réel, envisager un mode "réviser mes questions ratées" depuis l'historique.

## Dépôt Git

Le projet est versionné sur GitHub : https://github.com/AntoinePELAMOURGUES/gestalt-app (branche `main`).

## Conventions

- Contenu et documentation en **français**, cohérent avec la langue de la formation.
- `docs/cours/_archive-notes-brutes/` ne se touche pas : c'est l'archive intouchée des notes originales.
- `docs/themes/*.md`, à l'inverse, **doit** être bien écrit et réorganisé (pas un simple copier-coller de notes) — la seule règle est de ne perdre aucune substance (exemples, exercices, citations) par rapport aux notes d'origine.
- Éviter le jargon « (Thème N) » dans le corps du texte des fichiers `docs/themes/` : chaque fichier EST son thème, les liens vers d'autres thèmes se font par leur nom.
- Toujours signaler explicitement quand un concept enseigné est emprunté à un autre champ que la Gestalt pure (CNV, Selye, Porges, etc.) plutôt que natif de la Gestalt-thérapie.
