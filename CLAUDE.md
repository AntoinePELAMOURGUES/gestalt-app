# Gestalt App

## Objectif du projet

Application **Streamlit** destinée à accompagner une personne en formation de **Praticien(ne) en Gestalt-thérapie** (cursus en 3 cycles, le Cycle 1 se déroulant sur plusieurs week-ends de formation). L'application doit permettre :

1. **Structurer les cours** : organiser les notes de formation (prises en week-end, souvent manuscrites puis retranscrites) par week-end, par thème et par les 11 points officiels attendus au QCM de fin de Cycle 1.
2. **Réviser via un système de QCM** : générer / stocker des questions à choix multiples à partir de la base de connaissances, pour s'entraîner avant les examens.
3. (Étape ultérieure) **Enrichir la base de connaissances** à partir de documents en ligne sur la Gestalt-thérapie, afin de fiabiliser et compléter les notes personnelles.

Contexte : l'utilisateur (le mari) construit cet outil pour sa femme, actuellement en Cycle 1 (5-6 week-ends), qui a un QCM basé sur **11 thèmes obligatoires** (voir `docs/themes/00-themes-qcm.md`).

## Structure du dépôt

```
gestalt-app/
├── CLAUDE.md                  # ce fichier
├── docs/
│   ├── themes/                 # index des 11 thèmes officiels du QCM Cycle 1
│   ├── cours/                  # transcription structurée des notes de cours, par week-end
│   └── sources/                # documentation externe (site officiel IFAS, textes académiques) pour fiabiliser/compléter les notes
├── app/                        # (à venir) code de l'application Streamlit
└── data/                       # schéma de la base de données QCM (Neon/PostgreSQL) + seeds
```

## Base de données : Supabase (PostgreSQL)

Le choix a hésité entre Supabase et Neon : Neon a été écarté car son site (neon.com) est bloqué par la politique réseau de l'entreprise de l'utilisateur (catégorie "Business Information", proxy Cato Networks) — un blocage large et imprévisible. Supabase est retenu car son site est déjà accessible (2 projets existants) : il suffit de mettre en pause un projet existant pour libérer un slot sous le free tier (limite de 2 projets actifs).

Supabase héberge uniquement les données du système de QCM (thèmes, questions, choix, historique des réponses) — le contenu pédagogique reste dans `docs/cours/` et `docs/sources/`, lu directement par l'app. La connexion se fait en Postgres standard (chaîne de connexion directe, pas besoin du SDK `supabase-py`) : le schéma dans `data/schema.sql` est du SQL Postgres générique, sans dépendance à un fournisseur particulier. Voir `data/README.md` pour le détail du schéma, les requêtes types et la mise en place.

Caractéristiques du QCM retenues :
- **Choix unique** par question (4 propositions, une seule correcte).
- **Mode apprentissage** : chaque question a une explication affichée après la réponse (pourquoi c'est la bonne réponse).
- **Historique persistant** des réponses (progression par thème dans le temps, questions à réviser en priorité).
- **Filtrage par thème(s)** : l'utilisatrice choisit un ou plusieurs des 11 thèmes avant de lancer une session de quiz.

### `docs/cours/`

Un fichier Markdown par week-end de formation (Cycle 1), reprenant :
- la **structure visuelle** des schémas manuscrits (reproduits en blocs texte fidèles à la mise en page originale) ;
- les **points clés à retenir pour le QCM**, classés par thème officiel (Thème 1 à 11) chaque fois que c'est pertinent.

Fichiers actuels :
- `01-nouveau-depart.md` — Week-end 1 (introduction : Gestalt, ici et maintenant, théorie du champ, Self, valeurs/déontologie, page blanche, cycle du contact, Gestalts inachevées, 3 fonctions du Self)
- `02-clarte.md` — Week-end 2 (cycle de contact de Zinker, responsabilité/agressivité Perls vs Freud, acceptation, intentionnalité, croyances sur le bonheur)
- `03-vivre.md` — Week-end 3 (stress : Syndrome Général d'Adaptation de Selye, baromètre du stress, nerf vague, verticalité/horizontalité, protocole d'accompagnement du stress)
- `04-relation.md` — Week-end 4 (neurosciences : plasticité cérébrale, "maison-cerveau", lien cerveau/Self, niveaux/registres de communication)
- `05-expression.md` — Week-end 5 (buts de la communication, mécanismes de régulation du contact — confluence, égotisme, projection, introjection, rétroflexion, déflexion, proflection —, niveaux 1/2/3 de communication)
- `06-confiance.md` — Week-end 6, dernier du Cycle 1 (4 champs thérapeutiques, théorie du développement, attachement, estime de soi, croyances limitatives, théorie du Self : Ça/Je/Personnalité)

### `docs/themes/00-themes-qcm.md`

Liste officielle des 11 thèmes à connaître par cœur pour le QCM de fin de Cycle 1, avec pointeurs vers les fichiers `docs/cours/*.md` où chaque thème est développé.

## Origine des données

Le contenu de `docs/cours/` provient d'une conversation avec Gemini (juin-juillet 2026) dans laquelle les notes manuscrites de formation ont été photographiées et retranscrites/structurées section par section. Ces fichiers Markdown sont la **trace de référence** de ce travail, à partir de laquelle l'app Streamlit sera construite.

### `docs/sources/`

Documentation **externe** (site officiel de l'IFAS - École Humaniste de Gestalt, textes académiques, articles de praticiens) collectée par recherche web pour fiabiliser/compléter les notes de cours. Voir `docs/sources/00-sources-index.md` pour l'index et les URLs. Contient notamment le programme officiel complet du Cycle 1 (`ifas-programme-officiel.md`), la théorie du Self/frontière-contact (`theorie-self-frontiere-contact-phg.md`) et la théorie du champ/théorie paradoxale du changement (`champ-histoire-perls.md`).

⚠️ Le programme officiel IFAS consulté (2017-2019) décrit un Cycle 1 en **7 week-ends** (avec « Agir » et « Relations » en fin de cycle), alors que les notes de cours actuelles (2026) n'en couvrent que **6** dans un ordre légèrement différent — probablement une évolution du programme depuis. Détails dans `docs/sources/00-sources-index.md`.

## Prochaines étapes (à valider avec l'utilisateur avant d'agir)

- Poursuivre l'enrichissement si besoin (ex. week-ends « Agir » et « Relations » non encore couverts par les notes de cours).
- Générer une première banque de questions QCM (à partir de `docs/cours/` et `docs/sources/`) et l'insérer via `data/seed_questions.sql`.
- Créer le projet Neon, exécuter `data/schema.sql` + `data/seed_themes.sql`.
- Développer l'app Streamlit (`app/`) : navigation par thème/week-end (lecture directe des Markdown), système de QCM (choix unique, filtrage par thème, explication après réponse), suivi de progression.

## Dépôt Git

Le projet est versionné sur GitHub : https://github.com/AntoinePELAMOURGUES/gestalt-app (branche `main`).

## Conventions

- Contenu et documentation en **français**, cohérent avec la langue de la formation.
- Ne pas reformuler ou "corriger" le contenu pédagogique des notes de cours sans validation : ce sont les propos et exemples tels que travaillés en formation.
- Toujours faire le lien explicite avec les **11 thèmes officiels** dans les nouveaux contenus, pour faciliter la navigation dans l'app.
