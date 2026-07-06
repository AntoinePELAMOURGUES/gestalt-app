-- Banque de questions QCM initiale, générée à partir de docs/cours/*.md
-- Une question par bloc : insertion dans questions, choices, question_themes.
-- IDs explicites (table vide au moment du seed) ; les séquences sont resynchronisées en fin de script.

-- Q1 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (1, 'Que signifie littéralement le mot « Gestalt » ?', 'Le mot Gestalt renvoie à l''idée d''une « Autre Forme » ou d''un « Mouvement » ; la Gestalt s''intéresse à « tout ce qui a un début et une fin », en lien direct avec le cycle du contact (Thème 11).', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (1, 1, 'Un courant de la psychanalyse classique', false, 1),
  (2, 1, 'Une thérapie basée uniquement sur l''analyse du passé', false, 2),
  (3, 1, 'Une méthode de relaxation corporelle', false, 3),
  (4, 1, 'Une « Autre Forme » ou un « Mouvement »', true, 4);
insert into question_themes (question_id, theme_id) values
  (1, (select id from themes where number = 1));

-- Q2 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (2, 'Selon l''approche de l''École Humaniste de Gestalt (IHG), le travail avec les émotions est-il centré sur le « Pourquoi ? » ou le « Comment ? » ?', 'L''approche IHG est globale (holistique) et axée sur le « Comment ? » plutôt que le « Pourquoi ? » : comprendre comment la personne fonctionne dans le présent plutôt que pourquoi elle en est arrivée là.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (5, 2, 'Sur le « Quand ? » : dater précisément l''origine du trouble', false, 1),
  (6, 2, 'Sur le « Qui ? » : identifier le responsable', false, 2),
  (7, 2, 'Sur le « Comment ? » : comprendre le fonctionnement présent', true, 3),
  (8, 2, 'Sur le « Pourquoi ? » : comprendre les causes passées', false, 4);
insert into question_themes (question_id, theme_id) values
  (2, (select id from themes where number = 1));

-- Q3 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (3, 'Qui est le fondateur historique de la Gestalt-thérapie, et quel était son style thérapeutique ?', 'Fritz Perls (1893-1970) est le fondateur, avec un style « mobilisateur mais dur » — une méthode confrontante. Arnaud Sebal, fondateur de l''École Humaniste de Gestalt, adoucira plus tard cette confrontation en y ajoutant de la bienveillance.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (9, 3, 'Arnaud Sebal, avec un style exclusivement bienveillant', false, 1),
  (10, 3, 'Hans Selye, avec une approche médicale du stress', false, 2),
  (11, 3, 'Sigmund Freud, avec une méthode analytique', false, 3),
  (12, 3, 'Fritz Perls, avec un style confrontant, « mobilisateur mais dur »', true, 4);
insert into question_themes (question_id, theme_id) values
  (3, (select id from themes where number = 1));

-- Q4 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (4, 'Comment la Gestalt est-elle qualifiée dans les fondements de l''École Humaniste de Gestalt (EHG) ?', '« Gestalt = Thérapie du lien et Thérapie des Émotions » est l''un des fondements affirmés de l''École Humaniste de Gestalt.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (13, 4, 'Thérapie cognitivo-comportementale du symptôme', false, 1),
  (14, 4, 'Thérapie exclusivement corporelle et posturale', false, 2),
  (15, 4, 'Thérapie du lien et thérapie des émotions', true, 3),
  (16, 4, 'Thérapie familiale systémique', false, 4);
insert into question_themes (question_id, theme_id) values
  (4, (select id from themes where number = 1));

-- Q5 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (5, 'Quelles sont les racines revendiquées de la méthode de l''École Humaniste de Gestalt (EHG) ?', 'Les racines de l''EHG sont : la Gestalt de Perls (tronc commun), les théories du développement issues de la psychanalyse, les neurosciences, la méditation, et les théories/protocoles issus des 30 ans de thérapie d''Arnaud Sebal.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (17, 5, 'Uniquement la psychanalyse freudienne classique', false, 1),
  (18, 5, 'La PNL et l''hypnose ericksonienne exclusivement', false, 2),
  (19, 5, 'Le behaviorisme et les thérapies comportementales', false, 3),
  (20, 5, 'La Gestalt de Perls, la psychanalyse du développement, les neurosciences, la méditation et les protocoles d''Arnaud Sebal', true, 4);
insert into question_themes (question_id, theme_id) values
  (5, (select id from themes where number = 1));

-- Q6 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (6, 'Sur quel temps se concentre principalement la posture et le travail en Gestalt ?', '« La posture et le travail en Gestalt se focalisent uniquement sur l''ici et maintenant. »', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (21, 6, 'Le passé, pour en comprendre les causes profondes', false, 1),
  (22, 6, 'Un équilibre strictement égal entre passé, présent et futur', false, 2),
  (23, 6, 'Le futur, pour anticiper les risques', false, 3),
  (24, 6, 'L''ici et maintenant', true, 4);
insert into question_themes (question_id, theme_id) values
  (6, (select id from themes where number = 2));

-- Q7 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (7, 'Quels sont les deux « pièges du Passé » identifiés dans les notes du Week-end 1 ?', 'Les 2 pièges du passé sont : la nostalgie de l''avant (« c''était mieux avant », mécanisme d''évitement) et les Gestalts inachevées (situations non finies, histoires difficiles non terminées).', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (25, 7, 'La colère non exprimée et la tristesse refoulée', false, 1),
  (26, 7, 'Le déni et la sublimation', false, 2),
  (27, 7, 'La nostalgie de l''avant et les Gestalts inachevées', true, 3),
  (28, 7, 'Le refoulement et la projection', false, 4);
insert into question_themes (question_id, theme_id) values
  (7, (select id from themes where number = 2));

-- Q8 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (8, 'Que signifie l''expression « exploration passée réparation » ?', 'Le passé est revisité, mais toujours à partir de l''ici et maintenant, dans le but de réparer le présent — ce n''est pas une exploration du passé pour elle-même.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (29, 8, 'On explore le passé uniquement pour désigner un coupable', false, 1),
  (30, 8, 'Le passé doit être définitivement oublié', false, 2),
  (31, 8, 'Le passé est revisité à partir de l''ici et maintenant, pour réparer le présent', true, 3),
  (32, 8, 'Le passé doit être systématiquement évité en séance', false, 4);
insert into question_themes (question_id, theme_id) values
  (8, (select id from themes where number = 2));

-- Q9 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (9, 'Selon Perls, à quoi correspond l''anxiété liée au futur ?', '« Perls : l''anxiété liée au futur = anticipation négative. » C''est l''un des 3 pièges du futur identifiés (avec le doux rêve/chimères et l''évitement du risque d''échouer).', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (33, 9, 'À une « anticipation négative »', true, 1),
  (34, 9, 'À un ajustement créateur', false, 2),
  (35, 9, 'À une Gestalt inachevée', false, 3),
  (36, 9, 'À un mécanisme de confluence', false, 4);
insert into question_themes (question_id, theme_id) values
  (9, (select id from themes where number = 2));

-- Q10 (thèmes 2, 4)
insert into questions (id, question_text, explanation, source_file) values (10, 'Par quels 3 verbes se déploie la Conscience de l''ici et maintenant, selon la théorie du Self ?', 'La Conscience se déploie via 3 verbes : sentir, penser, savoir que je sens — « Je suis acteur de ce monde, je m''y projette ».', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (37, 10, 'Choisir, agir, réparer', false, 1),
  (38, 10, 'Observer, ressentir, demander', false, 2),
  (39, 10, 'Sentir, penser, savoir que je sens', true, 3),
  (40, 10, 'Voir, entendre, ressentir', false, 4);
insert into question_themes (question_id, theme_id) values
  (10, (select id from themes where number = 2)),
  (10, (select id from themes where number = 4));

-- Q11 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (11, 'Comment le « Champ » est-il défini en théorie gestaltiste ?', '« Le Champ = ce qui se passe autour de vous et en vous », dans l''interaction entre vous et votre environnement.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (41, 11, 'La structure psychique figée de la personne', false, 1),
  (42, 11, 'Uniquement l''environnement extérieur, indépendamment de l''individu', false, 2),
  (43, 11, 'L''ensemble des souvenirs d''enfance', false, 3),
  (44, 11, 'Ce qui se passe autour de vous et en vous, dans l''interaction avec l''environnement', true, 4);
insert into question_themes (question_id, theme_id) values
  (11, (select id from themes where number = 3));

-- Q12 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (12, 'Que symbolise la métaphore de « l''hélicoptère » (métavision) associée à la théorie du champ ?', 'La métavision consiste à « prendre de la hauteur sur la situation présente pour observer ce qui se joue à la frontière-contact », afin d''éclairer nos choix conscients.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (45, 12, 'Se dissocier de ses émotions pendant la séance', false, 1),
  (46, 12, 'Analyser exclusivement le passé développemental', false, 2),
  (47, 12, 'Fuir physiquement une situation stressante', false, 3),
  (48, 12, 'Prendre de la hauteur sur la situation présente pour observer la frontière-contact', true, 4);
insert into question_themes (question_id, theme_id) values
  (12, (select id from themes where number = 3));

-- Q13 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (13, 'Quelle est la définition « classique » de la théorie du champ donnée au Jour 2 du Week-end 1 ?', '« Un organisme dans un environnement », en interaction permanente, avec une influence bidirectionnelle (l''environnement sur nous, et nous sur l''environnement).', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (49, 13, 'Une hiérarchie de besoins', false, 1),
  (50, 13, 'Une structure psychique figée', false, 2),
  (51, 13, 'Un organisme dans un environnement', true, 3),
  (52, 13, 'Un ensemble de mécanismes de défense', false, 4);
insert into question_themes (question_id, theme_id) values
  (13, (select id from themes where number = 3));

-- Q14 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (14, 'Le point 4 du cycle (« Confiance ») est explicitement rattaché à quel thème officiel, et pourquoi ?', '« Point 4 — Confiance (Thème 3 : théorie du champ) » : la confiance est décrite comme « un état fluctuant » selon l''environnement, car nous sommes « un organisme DANS un environnement ».', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (53, 14, 'Le cycle du contact (Thème 11)', false, 1),
  (54, 14, 'Les mécanismes de régulation du contact (Thème 8)', false, 2),
  (55, 14, 'La vision gestaltiste du stress (Thème 10)', false, 3),
  (56, 14, 'La théorie du champ (Thème 3), car la confiance est un état fluctuant dépendant de l''environnement', true, 4);
insert into question_themes (question_id, theme_id) values
  (14, (select id from themes where number = 3));

-- Q15 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (15, 'Quels sont les 3 pôles du bonheur décrits par le schéma de la théorie du champ (Week-end 2) ?', 'Le schéma des 3 pôles du bonheur relie Travail/Passions et Relations, tous deux articulés autour de l''Environnement — « le bonheur = une belle relation avec soi-même et avec les autres ».', 'docs/cours/02-clarte.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (57, 15, 'Travail/Passions, Relations, Environnement', true, 1),
  (58, 15, 'Argent, Santé, Famille', false, 2),
  (59, 15, 'Passé, Présent, Futur', false, 3),
  (60, 15, 'Corps, Esprit, Âme', false, 4);
insert into question_themes (question_id, theme_id) values
  (15, (select id from themes where number = 3));

-- Q16 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (16, 'Quelles sont les 3 fonctions du Self selon la théorie gestaltiste ?', 'Le schéma du Self (cercle à la structure « pointillée qui laisse passer ») distingue 3 fonctions : Fonction Personnalité, Fonction Je, Fonction Ça.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (61, 16, 'Fonction Corps, Fonction Esprit, Fonction Âme', false, 1),
  (62, 16, 'Fonction Ça, Fonction Je, Fonction Personnalité', true, 2),
  (63, 16, 'Id, Ego, Super-ego', false, 3),
  (64, 16, 'Fonction Ça, Moi, Surmoi', false, 4);
insert into question_themes (question_id, theme_id) values
  (16, (select id from themes where number = 4));

-- Q17 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (17, 'Quelle fonction du Self est décrite comme « la plus inconsciente », liée au corps, au monde émotionnel et aux besoins ?', '« Fonction ÇA : la plus inconsciente ; corps, monde émotionnel (ressenti, émotions, sexualité), besoins (faim) ; source de l''émergence immédiate. »', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (65, 17, 'La Fonction Je', false, 1),
  (66, 17, 'La fonction cognitive', false, 2),
  (67, 17, 'La Fonction Personnalité', false, 3),
  (68, 17, 'La Fonction Ça', true, 4);
insert into question_themes (question_id, theme_id) values
  (17, (select id from themes where number = 4));

-- Q18 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (18, 'D''après « l''Alerte QCM » du Week-end 1, où se logent les Gestalts inachevées ?', '« Alerte QCM : Les Gestalts Inachevées se logent dans le SELF (dans le ÇA). » Elles ne sont pas statiques mais énergétiques : elles cherchent à se relancer.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (69, 18, 'Dans la fonction Personnalité', false, 1),
  (70, 18, 'Dans le Surmoi', false, 2),
  (71, 18, 'Dans le SELF, plus précisément dans le ÇA', true, 3),
  (72, 18, 'Dans la fonction Je', false, 4);
insert into question_themes (question_id, theme_id) values
  (18, (select id from themes where number = 4));

-- Q19 (thèmes 4, 3)
insert into questions (id, question_text, explanation, source_file) values (19, 'Comment la Gestalt (Perls) définit-elle le Self, par opposition à la vision freudienne classique de l''appareil psychique ?', 'Vision freudienne : appareil psychique = structure psychique figée. Vision gestaltiste : le Self n''est pas un « lieu » mais un processus psychique — « événement dynamique, en mouvement », une rencontre entre 2 organismes.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (73, 19, 'Une hiérarchie universelle de besoins innés', false, 1),
  (74, 19, 'Un ensemble de pulsions uniquement inconscientes', false, 2),
  (75, 19, 'Une structure fixe entièrement déterminée à la naissance', false, 3),
  (76, 19, 'Un processus psychique dynamique et en mouvement, plutôt qu''une structure figée', true, 4);
insert into question_themes (question_id, theme_id) values
  (19, (select id from themes where number = 4)),
  (19, (select id from themes where number = 3));

-- Q20 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (20, 'Qu''est-ce que le « Frontière-contact » en Gestalt ?', 'Le concept de Frontière-contact désigne le lieu où l''organisme (l''individu) rencontre son environnement — question centrale : « Comment on agit sur ces contacts ? » (réponse : les mécanismes de régulation du contact, Thème 8).', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (77, 20, 'Le lieu où l''organisme (l''individu) rencontre son environnement', true, 1),
  (78, 20, 'Un mécanisme de défense propre à la psychanalyse', false, 2),
  (79, 20, 'La limite entre le Ça et le Surmoi', false, 3),
  (80, 20, 'Le moment précis de la naissance', false, 4);
insert into question_themes (question_id, theme_id) values
  (20, (select id from themes where number = 4));

-- Q21 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (21, 'Que symbolise la « Page blanche » en Gestalt ?', 'La Page blanche symbolise « le champ des possibles créatifs à chaque instant présent » (ajustement créateur) — « voir chaque situation comme si elle était nouvelle », et « voir l''autre comme une page blanche ».', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (81, 21, 'Le champ des possibles créatifs à chaque instant présent', true, 1),
  (82, 21, 'Le vide existentiel à combler à tout prix', false, 2),
  (83, 21, 'Un protocole spécifique de gestion du stress', false, 3),
  (84, 21, 'Un exercice d''écriture thérapeutique', false, 4);
insert into question_themes (question_id, theme_id) values
  (21, (select id from themes where number = 5));

-- Q22 (thèmes 5, 8)
insert into questions (id, question_text, explanation, source_file) values (22, 'Quel est le « piège QCM » opposant le Conditionnement et la Page blanche ?', 'Le Conditionnement enferme l''autre dans ce que l''on connaît déjà (reproduction, ajustement conservateur rigide), tandis que la Page blanche demande de lâcher le contrôle pour accueillir la nouveauté de l''instant présent.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (85, 22, 'Le Conditionnement enferme l''autre dans le connu ; la Page blanche invite à accueillir la nouveauté', true, 1),
  (86, 22, 'Le Conditionnement concerne le futur, la Page blanche concerne uniquement le passé', false, 2),
  (87, 22, 'La Page blanche est un mécanisme de régulation du contact, pas le Conditionnement', false, 3),
  (88, 22, 'Ce sont deux synonymes exacts d''un même mécanisme', false, 4);
insert into question_themes (question_id, theme_id) values
  (22, (select id from themes where number = 5)),
  (22, (select id from themes where number = 8));

-- Q23 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (23, 'Quelle est la différence entre ajustement créateur et ajustement conservateur ?', 'Fiche de synthèse (point 4) : ajustement créateur (A) = émergence d''un rapport créateur de l''interne vers l''externe ; ajustement conservateur (A'') = l''interne reproduit toujours la même réponse.', 'docs/cours/06-confiance.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (89, 23, 'L''ajustement créateur ne concerne que les enfants en bas âge', false, 1),
  (90, 23, 'Ce sont deux termes strictement équivalents dans le schéma du Self', false, 2),
  (91, 23, 'L''ajustement conservateur est toujours pathologique dès sa première occurrence', false, 3),
  (92, 23, 'L''ajustement créateur produit une réponse nouvelle ; l''ajustement conservateur reproduit toujours la même réponse', true, 4);
insert into question_themes (question_id, theme_id) values
  (23, (select id from themes where number = 5));

-- Q24 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (24, 'Chez le nourrisson, l''ajustement initial à un environnement frustrant (ex. : pleurer pour la tétine sans être entendu) est-il d''emblée pathologique ?', 'Non : cet ajustement est d''abord un ajustement créateur — « une solution de survie intelligente ». C''est seulement s''il se fige à l''âge adulte qu''il devient une croyance limitative et un ajustement conservateur rigide.', 'docs/cours/06-confiance.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (93, 24, 'Non, c''est une confluence permanente avec l''environnement', false, 1),
  (94, 24, 'Oui, c''est une Gestalt d''emblée achevée', false, 2),
  (95, 24, 'Non, c''est initialement un ajustement créateur, solution de survie intelligente', true, 3),
  (96, 24, 'Oui, c''est un ajustement conservateur pathologique dès le départ', false, 4);
insert into question_themes (question_id, theme_id) values
  (24, (select id from themes where number = 5));

-- Q25 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (25, 'Quelle « règle d''or » de la Page blanche s''applique à la relation à l''autre ?', '« Voir l''autre comme 1 page blanche » — c''est-à-dire l''accueillir sans étiquettes ni attentes préconçues.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (97, 25, '« Analyser systématiquement le passé de l''autre »', false, 1),
  (98, 25, '« Voir l''autre comme une page blanche » : l''accueillir sans étiquette ni attente préconçue', true, 2),
  (99, 25, '« Ne jamais faire confiance à l''autre »', false, 3),
  (100, 25, '« Éviter tout contact avec l''autre »', false, 4);
insert into question_themes (question_id, theme_id) values
  (25, (select id from themes where number = 5));

-- Q26 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (26, 'Que signifie l''équation « Cadre = Espace + Règles/limites » en formation ?', 'Le Cadre est décrit comme la condition d''une « expérience d''apprentissage et de transformation optimale » — il se compose d''un espace et de règles/limites (dont le respect du temps, la confidentialité absolue, etc.).', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (101, 26, 'Le cadre désigne uniquement le lieu physique de la salle de formation', false, 1),
  (102, 26, 'Le cadre désigne le programme officiel du cursus', false, 2),
  (103, 26, 'Le cadre est la condition d''une expérience d''apprentissage et de transformation optimale', true, 3),
  (104, 26, 'Le cadre est un synonyme strict de la frontière-contact', false, 4);
insert into question_themes (question_id, theme_id) values
  (26, (select id from themes where number = 6));

-- Q27 (thèmes 6, 2, 7)
insert into questions (id, question_text, explanation, source_file) values (27, 'Que désigne la posture P.B.C enseignée en formation ?', 'P.B.C = Présence — Bienveillance — Conscience : les 3 piliers de la posture thérapeutique, rattachés respectivement (entre autres) aux Thèmes 2, 6 et 7.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (105, 27, 'Personnalité — Ça — Je', false, 1),
  (106, 27, 'Protocole — Bilan — Clôture', false, 2),
  (107, 27, 'Patience — Bonté — Courage', false, 3),
  (108, 27, 'Présence — Bienveillance — Conscience', true, 4);
insert into question_themes (question_id, theme_id) values
  (27, (select id from themes where number = 6)),
  (27, (select id from themes where number = 2)),
  (27, (select id from themes where number = 7));

-- Q28 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (28, 'Quelles sont les 3 compétences (Thème 6) enseignées dans la formation ?', 'Les 3 compétences sont : le Savoir-Être (la posture), le Savoir-Faire, et le Savoir-Perdre — la capacité à lâcher ses représentations pour laisser venir la nouveauté.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (109, 28, 'Le Savoir, le Pouvoir, le Vouloir', false, 1),
  (110, 28, 'L''Empathie, la Sympathie, l''Antipathie', false, 2),
  (111, 28, 'Le Savoir-Être, le Savoir-Faire, le Savoir-Perdre', true, 3),
  (112, 28, 'L''Écoute, la Parole, le Silence', false, 4);
insert into question_themes (question_id, theme_id) values
  (28, (select id from themes where number = 6));

-- Q29 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (29, 'Parmi les qualités de la posture thérapeutique humaniste citées au Week-end 3, laquelle implique d''« amener du stress pour obliger au changement » ?', 'La « Confrontation juste » fait partie des qualités listées (avec Centrage, Verticalité, Présence, Bienveillance, Non-jugement, Soutien, Discernement...), définie comme le fait d''amener du stress pour obliger au changement.', 'docs/cours/03-vivre.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (113, 29, 'La Rigidité protocolaire', false, 1),
  (114, 29, 'La Neutralité absolue', false, 2),
  (115, 29, 'La Confrontation juste', true, 3),
  (116, 29, 'Le Détachement', false, 4);
insert into question_themes (question_id, theme_id) values
  (29, (select id from themes where number = 6));

-- Q30 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (30, 'Quelles sont les 4 étapes du protocole d''accompagnement du stress vu au Week-end 3 ?', 'Le protocole comprend : Cadrage existentiel, Exploration phénoménologique/somatique, Reformulation, puis Présence (co-régulation).', 'docs/cours/03-vivre.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (117, 30, 'Cadrage existentiel, Exploration phénoménologique/somatique, Reformulation, Présence/co-régulation', true, 1),
  (118, 30, 'Diagnostic, Traitement, Suivi, Clôture', false, 2),
  (119, 30, 'Écoute, Interprétation, Conseil, Action', false, 3),
  (120, 30, 'Confrontation, Silence, Validation, Départ', false, 4);
insert into question_themes (question_id, theme_id) values
  (30, (select id from themes where number = 6));

-- Q31 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (31, 'Quelles sont les 4 caractéristiques du Niveau 1 de communication (« Tu es / J''accuse ») ?', 'Les 4 caractéristiques du Niveau 1 sont : jugement, interprétation, comparaison, déni de sa responsabilité — nourries par le report de la responsabilité sur l''autre.', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (121, 31, 'Confrontation, bienveillance, conscience, présence', false, 1),
  (122, 31, 'Jugement, interprétation, comparaison, déni de sa responsabilité', true, 2),
  (123, 31, 'Confluence, projection, introjection, rétroflexion', false, 3),
  (124, 31, 'Écoute, observation, ressenti, demande', false, 4);
insert into question_themes (question_id, theme_id) values
  (31, (select id from themes where number = 7));

-- Q32 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (32, 'Quelles sont les 3 étapes de la Communication Non Violente (Niveau 2) ?', 'Le canevas est : « J''observe... / Je me sens... / J''ai besoin que... » — soit ce que j''observe, ce que je ressens, ce dont j''ai besoin (ma demande).', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (125, 32, 'Ce que j''observe / Ce que je ressens / Ce dont j''ai besoin (ma demande)', true, 1),
  (126, 32, 'L''accusation / La défense / Le verdict', false, 2),
  (127, 32, 'Le fait / Le jugement / La sanction', false, 3),
  (128, 32, 'Ce que je pense / Ce que je veux / Ce que j''exige', false, 4);
insert into question_themes (question_id, theme_id) values
  (32, (select id from themes where number = 7));

-- Q33 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (33, 'Au Niveau 2 de communication, comment doit-on formuler l''étape « ce que j''observe » ?', 'L''observation doit décrire des faits, sans interprétation ni jugement — ex. : « yeux vagues, regard fuyant » (observation factuelle) plutôt que « comportement dominant » (jugement à éviter).', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (129, 33, 'En décrivant des faits, sans interprétation ni jugement', true, 1),
  (130, 33, 'En exprimant directement son jugement sur l''autre', false, 2),
  (131, 33, 'En comparant la situation à d''autres expériences passées', false, 3),
  (132, 33, 'En accusant l''autre d''être responsable', false, 4);
insert into question_themes (question_id, theme_id) values
  (33, (select id from themes where number = 7));

-- Q34 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (34, 'Quelle référence théorique est associée au Niveau 1 de communication, comme moyen de se protéger de nos propres angoisses de base ?', 'Référence : Melanie Klein — le Niveau 1 (jugement, accusation) est présenté comme un moyen de se protéger de nos propres angoisses de base.', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (133, 34, 'Fritz Perls', false, 1),
  (134, 34, 'Carl Jung', false, 2),
  (135, 34, 'Melanie Klein', true, 3),
  (136, 34, 'Hans Selye', false, 4);
insert into question_themes (question_id, theme_id) values
  (34, (select id from themes where number = 7));

-- Q35 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (35, 'Quelle est la caractéristique du Niveau 3 de communication (« co-création pure »), vu ultérieurement dans le cursus ?', 'Le Niveau 3 est celui de la co-création pure : « lâcher, accepter de ne pas avoir raison » — un niveau de conscience plus élevé où l''autre devient un élément incontournable.', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (137, 35, 'L''accusation systématique de l''autre', false, 1),
  (138, 35, 'Le retour à un silence complet', false, 2),
  (139, 35, 'La co-création pure : lâcher, accepter de ne pas avoir raison', true, 3),
  (140, 35, 'L''usage exclusif de la CNV en 3 étapes', false, 4);
insert into question_themes (question_id, theme_id) values
  (35, (select id from themes where number = 7));

-- Q36 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (36, 'Quelle « équation de l''accompagnement » relie bienveillance et confrontation dans la communication (Thème 7) ?', '« Posture empathique/bienveillante + Confrontation modérée = Meilleure Assimilation » — cette alliance permettrait une transformation pérenne dans le cerveau.', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (141, 36, 'Confrontation dure + Distance = Guérison rapide', false, 1),
  (142, 36, 'Silence + Neutralité = Transformation', false, 2),
  (143, 36, 'Écoute passive + Validation systématique = Confiance', false, 3),
  (144, 36, 'Posture empathique/bienveillante + Confrontation modérée = Meilleure Assimilation', true, 4);
insert into question_themes (question_id, theme_id) values
  (36, (select id from themes where number = 7));

-- Q37 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (37, 'Quelle est la différence clé entre les mécanismes de régulation du contact en Gestalt et les mécanismes de défense en psychanalyse classique ?', 'En Gestalt, on ne parle pas de « bons » ou « mauvais » mécanismes : la différence clé est que l''un est conscient, l''autre inconscient.', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (145, 37, 'En Gestalt, tous les mécanismes sont considérés comme pathologiques', false, 1),
  (146, 37, 'En Gestalt, l''un est conscient, l''autre est inconscient ; il n''y a pas de « bons » ou « mauvais » mécanismes', true, 2),
  (147, 37, 'En psychanalyse classique, les mécanismes sont toujours conscients', false, 3),
  (148, 37, 'Il n''existe aucune différence, ce sont des synonymes stricts', false, 4);
insert into question_themes (question_id, theme_id) values
  (37, (select id from themes where number = 8));

-- Q38 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (38, 'Comment définir la Confluence comme mécanisme de régulation du contact ?', 'La Confluence consiste à laisser sa frontière-contact perméable à l''autre, à se laisser toucher — mécanisme adaptatif nécessaire et sain, mais avec un risque de fusion de l''un dans l''autre.', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (149, 38, 'Laisser sa frontière-contact perméable à l''autre, avec un risque de fusion', true, 1),
  (150, 38, 'Croire que l''interne se trouve dans l''externe', false, 2),
  (151, 38, 'Ne jamais laisser l''externe toucher l''interne', false, 3),
  (152, 38, 'Garder dans son interne ce qui devrait sortir vers l''externe', false, 4);
insert into question_themes (question_id, theme_id) values
  (38, (select id from themes where number = 8));

-- Q39 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (39, 'Quel mécanisme de régulation du contact correspond à « croire l''interne dans l''externe » ?', 'La Projection : quelque chose est dans l''interne, et on croit qu''il est dans l''externe — « ça part de mon interne et ça va vers toi ».', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (153, 39, 'L''Introjection', false, 1),
  (154, 39, 'La Projection', true, 2),
  (155, 39, 'La Déflexion', false, 3),
  (156, 39, 'La Rétroflexion', false, 4);
insert into question_themes (question_id, theme_id) values
  (39, (select id from themes where number = 8));

-- Q40 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (40, 'Quel mécanisme consiste à faire entrer massivement l''autre (l''environnement) dans son interne, sans discernement ?', 'L''Introjection : on absorbe l''autre sans discernement — exemple type : « T''es un garçon, les garçons ne pleurent pas ! »', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (157, 40, 'La Confluence', false, 1),
  (158, 40, 'L''Égotisme', false, 2),
  (159, 40, 'La Proflection', false, 3),
  (160, 40, 'L''Introjection', true, 4);
insert into question_themes (question_id, theme_id) values
  (40, (select id from themes where number = 8));

-- Q41 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (41, 'Qu''est-ce que la Rétroflexion, comme mécanisme de régulation du contact ?', 'La Rétroflexion consiste à garder dans son interne ce qui devrait aller à l''externe — être proche de dire quelque chose (un désir, un « je t''aime ») et finalement le garder pour soi.', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (161, 41, 'Ne jamais se laisser toucher par l''autre', false, 1),
  (162, 41, 'Décharger sur une autre personne ce qui était destiné à une première', false, 2),
  (163, 41, 'Garder dans son interne ce qui devrait aller à l''externe', true, 3),
  (164, 41, 'Faire quelque chose dans le but de le recevoir en retour', false, 4);
insert into question_themes (question_id, theme_id) values
  (41, (select id from themes where number = 8));

-- Q42 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (42, 'Qu''est-ce que la Proflection, mécanisme combiné de régulation du contact ?', 'La Proflection, c''est « faire quelque chose pour la recevoir en retour » — une combinaison de projection et de rétroflexion.', 'docs/cours/05-expression.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (165, 42, 'Laisser l''autre envahir totalement son espace de parole', false, 1),
  (166, 42, 'Décharger son besoin sur une tierce personne plutôt que sur le destinataire réel', false, 2),
  (167, 42, 'Faire quelque chose pour le recevoir en retour (combinaison de projection et rétroflexion)', true, 3),
  (168, 42, 'Refuser tout contact avec l''environnement', false, 4);
insert into question_themes (question_id, theme_id) values
  (42, (select id from themes where number = 8));

-- Q43 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (43, 'Quels sont les 4 champs thérapeutiques vus au Week-end 6 ?', 'Les 4 champs sont : Ici et maintenant, Ici mais pas maintenant, Maintenant et ailleurs, Passé développemental.', 'docs/cours/06-confiance.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (169, 43, 'Ça / Je / Personnalité / Surmoi', false, 1),
  (170, 43, 'Passé / Présent / Futur / Éternité', false, 2),
  (171, 43, 'Corps / Émotion / Pensée / Comportement', false, 3),
  (172, 43, 'Ici et maintenant / Ici mais pas maintenant / Maintenant et ailleurs / Passé développemental', true, 4);
insert into question_themes (question_id, theme_id) values
  (43, (select id from themes where number = 9));

-- Q44 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (44, 'Que désigne le « Champ 2 — Ici mais pas maintenant » ?', 'Le Champ 2 désigne l''histoire de la relation thérapeutique (ex. : une précédente séance) — « la mémoire de la relation thérapeutique ».', 'docs/cours/06-confiance.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (173, 44, 'L''enfance et l''adolescence du client', false, 1),
  (174, 44, 'L''histoire de la relation thérapeutique, la « mémoire de la relation »', true, 2),
  (175, 44, 'La vraie vie contemporaine du client (travail, couple)', false, 3),
  (176, 44, 'Ce qui se passe entre client et thérapeute au moment présent', false, 4);
insert into question_themes (question_id, theme_id) values
  (44, (select id from themes where number = 9));

-- Q45 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (45, 'Selon les notes, de quel champ les clients viennent-ils généralement parler en thérapie ?', '« Les clients viennent en thérapie pour parler de leur champ 3 » — leur vraie vie contemporaine (travail, vie de couple...).', 'docs/cours/06-confiance.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (177, 45, 'Le Champ 1 uniquement — ce qui se passe dans la séance', false, 1),
  (178, 45, 'Le Champ 3 — Maintenant mais pas ici (leur vraie vie contemporaine)', true, 2),
  (179, 45, 'Aucun champ en particulier, le choix est indifférent', false, 3),
  (180, 45, 'Le Champ 2 uniquement — la relation thérapeutique elle-même', false, 4);
insert into question_themes (question_id, theme_id) values
  (45, (select id from themes where number = 9));

-- Q46 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (46, 'Quel est le lien essentiel que le travail thérapeutique doit établir entre le Champ 1 et le Champ 2 ?', '« Le travail de thérapie consiste à relier Champ 1 et Champ 2 » — c''est-à-dire relier l''ici-et-maintenant de la séance à l''histoire de la relation thérapeutique.', 'docs/cours/06-confiance.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (181, 46, 'Le Champ 2 doit toujours se substituer au Champ 1', false, 1),
  (182, 46, 'Le travail de thérapie consiste à les relier l''un à l''autre', true, 2),
  (183, 46, 'Le Champ 1 ne concerne que le passé développemental du client', false, 3),
  (184, 46, 'Ils doivent rester strictement indépendants et ne jamais être reliés', false, 4);
insert into question_themes (question_id, theme_id) values
  (46, (select id from themes where number = 9));

-- Q47 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (47, 'D''après la fiche de synthèse des 11 points de révision QCM, que faut-il savoir faire avec les 4 champs thérapeutiques ?', 'Fiche de synthèse (point 8) : « Les 4 champs thérapeutiques — les définir, les ramener à l''ici et maintenant. »', 'docs/cours/06-confiance.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (185, 47, 'Toujours écarter le Champ 3 au profit du Champ 4', false, 1),
  (186, 47, 'Ignorer systématiquement le Champ 4 (passé développemental)', false, 2),
  (187, 47, 'N''utiliser que le Champ 1 en toutes circonstances', false, 3),
  (188, 47, 'Les définir et les ramener à l''ici et maintenant', true, 4);
insert into question_themes (question_id, theme_id) values
  (47, (select id from themes where number = 9));

-- Q48 (thèmes 10, 5)
insert into questions (id, question_text, explanation, source_file) values (48, 'Selon Hans Selye (Syndrome Général d''Adaptation), quelles sont les 3 phases du stress ?', 'Les 3 phases du SGA de Selye sont : Alarme, Résistance, Épuisement.', 'docs/cours/03-vivre.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (189, 48, 'Choc, Déni, Acceptation', false, 1),
  (190, 48, 'Fight, Flight, Freeze', false, 2),
  (191, 48, 'Alarme, Résistance, Épuisement', true, 3),
  (192, 48, 'Orange, Bleu, Vert', false, 4);
insert into question_themes (question_id, theme_id) values
  (48, (select id from themes where number = 10)),
  (48, (select id from themes where number = 5));

-- Q49 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (49, 'Quelle hormone est associée à la 1ʳᵉ phase du stress, la phase d''Alarme ?', 'L''Adrénaline (environ 1h max) stimule les 5 sens (concentration, mémoire, force musculaire décuplée) durant la phase d''Alarme.', 'docs/cours/03-vivre.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (193, 49, 'La Sérotonine', false, 1),
  (194, 49, 'L''Adrénaline', true, 2),
  (195, 49, 'Le Cortisol', false, 3),
  (196, 49, 'L''Ocytocine', false, 4);
insert into question_themes (question_id, theme_id) values
  (49, (select id from themes where number = 10));

-- Q50 (thèmes 10, 5)
insert into questions (id, question_text, explanation, source_file) values (50, 'Quel est le « piège QCM » concernant la distinction entre stress aigu et stress chronique ?', 'Le stress aigu (ponctuel) est adapté et normal ; le stress chronique, lui, est pathologique.', 'docs/cours/03-vivre.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (197, 50, 'Les deux formes de stress sont toujours pathologiques', false, 1),
  (198, 50, 'Le stress aigu est toujours plus dangereux que le stress chronique', false, 2),
  (199, 50, 'Il n''existe aucune différence entre les deux formes de stress', false, 3),
  (200, 50, 'Le stress aigu est adapté et normal ; le stress chronique est pathologique', true, 4);
insert into question_themes (question_id, theme_id) values
  (50, (select id from themes where number = 10)),
  (50, (select id from themes where number = 5));

-- Q51 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (51, 'Dans le baromètre du stress, que représente la couleur verte ?', 'Le Vert représente la Détente/Homéostasie : l''état de référence au repos, résumé par la triade « pensée juste, parole juste, acte juste ».', 'docs/cours/03-vivre.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (201, 51, 'Un état de danger immédiat et permanent', false, 1),
  (202, 51, 'Le Stress/Détresse — saturation, absence de réponse adaptée', false, 2),
  (203, 51, 'La Mobilisation/Eustress uniquement', false, 3),
  (204, 51, 'La Détente/Homéostasie — « pensée juste, parole juste, acte juste »', true, 4);
insert into question_themes (question_id, theme_id) values
  (51, (select id from themes where number = 10));

-- Q52 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (52, 'Quels nerfs pilotent respectivement les réactions Fight/Flight et la réaction Freeze ?', 'Fight/Flight sont pilotés par le nerf orthosympathique (qui coupe tous les besoins secondaires) ; Freeze est piloté par le nerf parasympathique dorsal.', 'docs/cours/03-vivre.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (205, 52, 'Le nerf vague pour les deux réactions', false, 1),
  (206, 52, 'Le nerf sympathique et le nerf facial', false, 2),
  (207, 52, 'Le nerf orthosympathique pour les deux réactions', false, 3),
  (208, 52, 'Le nerf orthosympathique (Fight/Flight) et le nerf parasympathique dorsal (Freeze)', true, 4);
insert into question_themes (question_id, theme_id) values
  (52, (select id from themes where number = 10));

-- Q53 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (53, 'Quel est le point de départ du cycle du contact (cycle de Zinker), aussi appelé « vide créateur » ?', 'Le Retrait est le point de départ du cycle, appelé aussi « vide créateur » — un état défini comme « Soi avec soi ».', 'docs/cours/02-clarte.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (209, 53, 'Le Retrait', true, 1),
  (210, 53, 'La Sensation', false, 2),
  (211, 53, 'L''Assimilation', false, 3),
  (212, 53, 'Le Contact', false, 4);
insert into question_themes (question_id, theme_id) values
  (53, (select id from themes where number = 11));

-- Q54 (thèmes 11, 4)
insert into questions (id, question_text, explanation, source_file) values (54, 'Dans le pré-contact du cycle de Zinker, d''où vient la Sensation, et à quelle fonction du Self appartient la prise de conscience qui suit ?', '« Alerte QCM : la Sensation vient du ÇA, la prise de conscience appartient au JE. »', 'docs/cours/02-clarte.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (213, 54, 'La Sensation vient du ÇA ; la prise de conscience appartient au JE', true, 1),
  (214, 54, 'Les deux proviennent de la fonction Personnalité', false, 2),
  (215, 54, 'La Sensation provient uniquement de l''environnement extérieur', false, 3),
  (216, 54, 'La Sensation vient du JE ; la prise de conscience appartient au ÇA', false, 4);
insert into question_themes (question_id, theme_id) values
  (54, (select id from themes where number = 11)),
  (54, (select id from themes where number = 4));

-- Q55 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (55, 'Que peut-il se produire à tout moment du cycle du contact, à l''origine des Gestalts inachevées ?', '« Une interruption du cycle est possible » à tout moment — c''est précisément l''origine des Gestalts inachevées.', 'docs/cours/02-clarte.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (217, 55, 'Un retour automatique au Retrait sans phase d''assimilation', false, 1),
  (218, 55, 'Une interruption du cycle', true, 2),
  (219, 55, 'Une fusion complète et définitive avec l''environnement', false, 3),
  (220, 55, 'Une accélération irréversible et automatique du cycle', false, 4);
insert into question_themes (question_id, theme_id) values
  (55, (select id from themes where number = 11));

-- Q56 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (56, 'Dans quel ordre s''enchaînent les grandes étapes du cycle du contact (cycle de Zinker) ?', 'Retrait → Sensation → prise de conscience (Pré-contact) → Mobilisation de l''énergie → Action → Contact → Désengagement → Assimilation → retour au Retrait.', 'docs/cours/02-clarte.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (221, 56, 'Retrait → Sensation → Mobilisation de l''énergie → Action → Contact → Désengagement → Assimilation', true, 1),
  (222, 56, 'Assimilation → Action → Sensation → Contact', false, 2),
  (223, 56, 'Contact → Retrait → Sensation → Action', false, 3),
  (224, 56, 'Action → Sensation → Contact → Retrait', false, 4);
insert into question_themes (question_id, theme_id) values
  (56, (select id from themes where number = 11));

-- Q57 (thèmes 11, 1)
insert into questions (id, question_text, explanation, source_file) values (57, 'Quel lien direct la définition même de la Gestalt (Thème 1) entretient-elle avec le cycle du contact ?', 'La Gestalt s''intéresse à « tout ce qui a un début et une fin », ce qui est en lien direct avec le cycle du contact (Thème 11).', 'docs/cours/01-nouveau-depart.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (225, 57, 'La Gestalt s''intéresse à « tout ce qui a un début et une fin », en écho direct au cycle du contact', true, 1),
  (226, 57, 'Le cycle du contact ne concerne que la théorie freudienne classique', false, 2),
  (227, 57, 'Le cycle du contact est sans rapport avec la définition de la Gestalt', false, 3),
  (228, 57, 'Le cycle du contact ne s''applique qu''aux relations avec les enfants', false, 4);
insert into question_themes (question_id, theme_id) values
  (57, (select id from themes where number = 11)),
  (57, (select id from themes where number = 1));

-- Resynchronisation des séquences après insertion d'IDs explicites
select setval(pg_get_serial_sequence('questions', 'id'), (select max(id) from questions));
select setval(pg_get_serial_sequence('choices', 'id'), (select max(id) from choices));
