-- Enrichissement de la banque QCM (v2) — 100 nouvelles questions générées
-- à partir de docs/themes/*.md (base de connaissance réorganisée par thème).
-- Complète data/seed_questions.sql (57 questions, IDs 1-57) sans le remplacer.

-- Q58 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (58, 'Qui a choisi le mot « Gestalt » pour nommer la méthode que Fritz Perls était en train d''élaborer ?', 'C''est Lore Posner, la femme de Fritz Perls et elle-même psychologue en Gestalt-théorie, qui a choisi ce terme pour nommer la méthode de son mari.', 'docs/themes/01-quest-ce-que-la-gestalt.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (229, 58, 'Fritz Perls lui-même', false, 1),
  (230, 58, 'Lore Posner, la femme de Fritz Perls', true, 2),
  (231, 58, 'Paul Goodman, co-auteur de Gestalt Therapy', false, 3),
  (232, 58, 'Christian von Ehrenfels, philosophe de la Gestalt-théorie', false, 4);
insert into question_themes (question_id, theme_id) values
  (58, (select id from themes where number = 1));

-- Q59 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (59, 'Quel courant psychologique du début du XXe siècle, autour du philosophe Christian von Ehrenfels, utilisait déjà les notions de figure et de fond avant que Perls n''en fasse un outil thérapeutique ?', 'La Gestalt-théorie (psychologie de la forme) existait déjà au début du XXe siècle et concevait l''être humain comme un système ouvert en interaction avec son environnement, utilisant figure et fond bien avant Perls.', 'docs/themes/01-quest-ce-que-la-gestalt.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (233, 59, 'Le behaviorisme', false, 1),
  (234, 59, 'La Gestalt-théorie (psychologie de la forme)', true, 2),
  (235, 59, 'La psychanalyse freudienne', false, 3),
  (236, 59, 'L''existentialisme sartrien', false, 4);
insert into question_themes (question_id, theme_id) values
  (59, (select id from themes where number = 1));

-- Q60 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (60, 'Laquelle des propositions suivantes ne fait PAS partie des racines revendiquées de la Gestalt-thérapie, décrite en formation comme un « melting-pot » d''influences ?', 'Le melting-pot fondateur de la Gestalt-thérapie réunit la psychanalyse (Freud, Reich, Rank), la Gestalt-théorie, l''holisme et l''existentialisme — le comportementalisme n''en fait pas partie.', 'docs/themes/01-quest-ce-que-la-gestalt.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (237, 60, 'L''holisme', false, 1),
  (238, 60, 'La psychanalyse', false, 2),
  (239, 60, 'Le comportementalisme (behaviorisme)', true, 3),
  (240, 60, 'L''existentialisme', false, 4);
insert into question_themes (question_id, theme_id) values
  (60, (select id from themes where number = 1));

-- Q61 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (61, 'Quelle définition de référence de la Gestalt-thérapie, reprise notamment par l''institut de formation EPG, est enseignée ?', 'La définition de référence présente la Gestalt-thérapie comme « un corpus de concepts et un ensemble de pratiques visant un changement personnel, psychosocial et organisationnel », centré sur l''interaction entre l''être humain et son environnement.', 'docs/themes/01-quest-ce-que-la-gestalt.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (241, 61, 'Un ensemble de techniques de relaxation corporelle sans dimension relationnelle', false, 1),
  (242, 61, 'Un corpus de concepts et un ensemble de pratiques visant un changement personnel, psychosocial et organisationnel', true, 2),
  (243, 61, 'Une méthode strictement centrée sur l''analyse des rêves et de l''inconscient', false, 3),
  (244, 61, 'Une discipline visant exclusivement le changement organisationnel en entreprise', false, 4);
insert into question_themes (question_id, theme_id) values
  (61, (select id from themes where number = 1));

-- Q62 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (62, 'Selon la formule enseignée « Gestalt = Thérapie du lien et Thérapie des Émotions », comment les émotions sont-elles considérées ?', 'La Gestalt considère les émotions non comme des symptômes à faire taire mais comme des messagers porteurs de sens : « elles ont un sens, elles sont utiles ».', 'docs/themes/01-quest-ce-que-la-gestalt.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (245, 62, 'Comme des messagers porteurs de sens et utiles', true, 1),
  (246, 62, 'Comme des manifestations purement corporelles sans lien avec le sens', false, 2),
  (247, 62, 'Comme des signaux à réprimer pour retrouver le contrôle de soi', false, 3),
  (248, 62, 'Comme des données secondaires par rapport à la pensée rationnelle', false, 4);
insert into question_themes (question_id, theme_id) values
  (62, (select id from themes where number = 1));

-- Q63 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (63, 'Bien que la Gestalt privilégie le « Comment ? » plutôt que le « Pourquoi ? », pourquoi son approche reste-t-elle qualifiée de globale (holistique) vis-à-vis du passé ?', 'Ce choix méthodologique n''est pas un désintérêt pour l''histoire de la personne : l''approche reste globale, elle prend en compte le passé, mais toujours comme éclairage du présent, jamais comme fin en soi.', 'docs/themes/01-quest-ce-que-la-gestalt.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (249, 63, 'Elle considère le passé comme la seule clé d''explication valable des difficultés actuelles', false, 1),
  (250, 63, 'Elle exclut totalement toute référence au passé de la personne', false, 2),
  (251, 63, 'Elle prend en compte le passé, mais toujours comme éclairage du présent, jamais comme fin en soi', true, 3),
  (252, 63, 'Elle traite le passé et le présent de manière strictement égale et indépendante', false, 4);
insert into question_themes (question_id, theme_id) values
  (63, (select id from themes where number = 1));

-- Q64 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (64, 'Qui a créé l''École Humaniste de Gestalt (EHG), institut de formation IFAS, et en quelle année ?', 'L''École Humaniste de Gestalt (EHG), institut IFAS, a été créée en 1994 par Arnaud Sebal.', 'docs/themes/01-quest-ce-que-la-gestalt.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (253, 64, 'Fritz Perls, en 1951', false, 1),
  (254, 64, 'Paul Goodman, en 1970', false, 2),
  (255, 64, 'Arnaud Sebal, en 1994', true, 3),
  (256, 64, 'Lore Posner, en 1960', false, 4);
insert into question_themes (question_id, theme_id) values
  (64, (select id from themes where number = 1));

-- Q65 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (65, '⚠️ Quelle équation, enseignée en formation, résume la posture actuelle de l''École Humaniste de Gestalt, héritée de Perls mais adoucie ?', 'L''EHG reprend l''héritage confrontant de Perls mais l''adoucit avec de la bienveillance, selon l''équation : Posture empathique/bienveillante + Confrontation modérée = Meilleure Assimilation.', 'docs/themes/01-quest-ce-que-la-gestalt.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (257, 65, 'Confrontation dure + Distance thérapeutique = Changement rapide', false, 1),
  (258, 65, 'Posture empathique/bienveillante + Confrontation modérée = Meilleure Assimilation', true, 2),
  (259, 65, 'Confrontation systématique + Neutralité = Objectivité clinique', false, 3),
  (260, 65, 'Empathie totale + Absence de confrontation = Confort du client', false, 4);
insert into question_themes (question_id, theme_id) values
  (65, (select id from themes where number = 1));

-- Q66 (thème 1)
insert into questions (id, question_text, explanation, source_file) values (66, 'Dans l''exercice de formation invitant à se souvenir « de l''Aurore lorsqu''il y a des nuages », quel principe gestaltiste est illustré et comment le bonheur y est-il présenté ?', 'L''exercice illustre le principe figure/fond : même quand un problème s''impose comme figure, la conscience peut maintenir la gratitude en fond disponible. Le bonheur y est présenté comme une aptitude qui se développe de jour en jour, non comme un acquis figé.', 'docs/themes/01-quest-ce-que-la-gestalt.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (261, 66, 'L''ajustement conservateur ; le bonheur comme absence totale de difficultés', false, 1),
  (262, 66, 'La page blanche ; le bonheur comme résultat exclusif de la volonté', false, 2),
  (263, 66, 'Le principe figure/fond ; le bonheur comme une aptitude qui se développe de jour en jour', true, 3),
  (264, 66, 'Le cycle du contact ; le bonheur comme un acquis stable une fois obtenu', false, 4);
insert into question_themes (question_id, theme_id) values
  (66, (select id from themes where number = 1));

-- Q67 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (67, '⚠️ Quelle formulation exacte utilisaient réellement les fondateurs Perls et Goodman, plutôt que le simple « ici et maintenant » ?', 'Les fondateurs ne parlaient pas seulement d''« ici et maintenant » mais d''« ici, maintenant et ensuite » : l''expérience du présent contient le souvenir et les situations inachevées, mais aussi les anticipations et les projets.', 'docs/themes/02-ici-et-maintenant.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (265, 67, '« Ici, maintenant et jamais »', false, 1),
  (266, 67, '« Ici, avant, après »', false, 2),
  (267, 67, '« Ici, maintenant et ensuite »', true, 3),
  (268, 67, '« Maintenant, toujours, ensuite »', false, 4);
insert into question_themes (question_id, theme_id) values
  (67, (select id from themes where number = 2));

-- Q68 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (68, 'Quelles sont les quatre dimensions qui se rencontrent à chaque instant présent, selon la définition enseignée en formation ?', 'L''ici et maintenant est défini à partir de quatre dimensions qui se rencontrent à chaque instant : l''expérience vécue, la situation de vie, le lieu où je suis, et mon Self.', 'docs/themes/02-ici-et-maintenant.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (269, 68, 'Le passé, le présent, le futur et le lieu', false, 1),
  (270, 68, 'L''expérience vécue, la situation de vie, le lieu où je suis, et mon Self', true, 2),
  (271, 68, 'L''émotion, le corps, la pensée et l''environnement', false, 3),
  (272, 68, 'La sensation, l''action, le contact et l''assimilation', false, 4);
insert into question_themes (question_id, theme_id) values
  (68, (select id from themes where number = 2));

-- Q69 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (69, 'Parmi les trois pièges du futur identifiés en formation, lequel correspond au fait de « rêver sans jamais passer à l''action » ?', 'Les trois pièges du futur sont l''évitement du présent par l''angoisse, le doux rêve/les chimères, et l''évitement du risque d''échouer. « Rêver sans jamais passer à l''action » correspond au doux rêve, aux chimères.', 'docs/themes/02-ici-et-maintenant.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (273, 69, 'La nostalgie de l''avant', false, 1),
  (274, 69, 'L''évitement du présent par l''angoisse', false, 2),
  (275, 69, 'L''évitement du risque d''échouer', false, 3),
  (276, 69, 'Le doux rêve, les chimères', true, 4);
insert into question_themes (question_id, theme_id) values
  (69, (select id from themes where number = 2));

-- Q70 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (70, 'Laquelle des propositions suivantes ne fait PAS partie des quatre « bonnes façons d''habiter le futur » enseignées en formation ?', 'Les quatre bonnes façons d''habiter le futur sont : se fixer un objectif clair et réaliste, passer à l''acte, nourrir sa confiance en l''avenir, et toujours revenir au présent dans ses projets. Éviter de se fixer des objectifs n''en fait pas partie.', 'docs/themes/02-ici-et-maintenant.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (277, 70, 'Revenir au présent dans ses projets', false, 1),
  (278, 70, 'Nourrir sa confiance en l''avenir', false, 2),
  (279, 70, 'Passer à l''acte', false, 3),
  (280, 70, 'Éviter de se fixer des objectifs pour rester flexible', true, 4);
insert into question_themes (question_id, theme_id) values
  (70, (select id from themes where number = 2));

-- Q71 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (71, 'Quelle est la « bonne utilisation du passé » enseignée en formation, à l''opposé de la nostalgie de l''avant ?', 'La bonne utilisation du passé consiste à puiser dans les ressources et les ressentis joyeux vécus autrefois pour nourrir le présent, plutôt que de ressasser ce qui a manqué.', 'docs/themes/02-ici-et-maintenant.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (281, 71, 'Puiser dans les ressources et les ressentis joyeux vécus autrefois pour nourrir le présent', true, 1),
  (282, 71, 'Analyser le passé pour trouver un responsable aux difficultés actuelles', false, 2),
  (283, 71, 'Éviter toute évocation du passé, y compris des ressources positives', false, 3),
  (284, 71, 'Revivre systématiquement les traumatismes pour les comprendre', false, 4);
insert into question_themes (question_id, theme_id) values
  (71, (select id from themes where number = 2));

-- Q72 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (72, 'Que signifie la phrase-clé enseignée en formation « le futur se décide maintenant » ?', 'Un projet d''avenir n''a de valeur que par les choix qu''il engage aujourd''hui : « il s''agit de penser dans le présent ».', 'docs/themes/02-ici-et-maintenant.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (285, 72, 'Un projet d''avenir n''a de valeur que par les choix qu''il engage aujourd''hui', true, 1),
  (286, 72, 'Il vaut mieux ne jamais se projeter dans l''avenir', false, 2),
  (287, 72, 'Il faut planifier précisément chaque étape du futur à l''avance', false, 3),
  (288, 72, 'Le futur est entièrement déterminé par le passé', false, 4);
insert into question_themes (question_id, theme_id) values
  (72, (select id from themes where number = 2));

-- Q73 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (73, 'Quelle synthèse résume, en formation, tout le travail mené sur les trois temps (passé, présent, futur) ?', 'La synthèse enseignée tient en une phrase : « l''idée est d''être au contact de sa pulsion de vie dans le présent. »', 'docs/themes/02-ici-et-maintenant.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (289, 73, 'Seul le passé permet de comprendre le présent', false, 1),
  (290, 73, 'L''idée est d''être au contact de sa pulsion de vie dans le présent', true, 2),
  (291, 73, 'Il faut oublier définitivement le passé et le futur', false, 3),
  (292, 73, 'Le futur doit toujours primer sur le présent', false, 4);
insert into question_themes (question_id, theme_id) values
  (73, (select id from themes where number = 2));

-- Q74 (thème 2)
insert into questions (id, question_text, explanation, source_file) values (74, 'Quelle grande phrase du premier week-end de formation prolonge directement la clé « Rester dans le moment présent en contact avec ma pulsion de vie » ?', 'L''une des grandes phrases du premier week-end, « commencer là où vous en êtes », prolonge cette clé : accueillir la situation réelle, présente, plutôt que celle qu''on voudrait qu''elle soit ou qu''elle a été.', 'docs/themes/02-ici-et-maintenant.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (293, 74, '« Commencer là où vous en êtes »', true, 1),
  (294, 74, '« Tout ce qui a un début a une fin »', false, 2),
  (295, 74, '« Il n''y a pas de hasard, seulement des choix »', false, 3),
  (296, 74, '« Voir chaque situation comme une page blanche »', false, 4);
insert into question_themes (question_id, theme_id) values
  (74, (select id from themes where number = 2));

-- Q75 (thèmes 2, 11)
insert into questions (id, question_text, explanation, source_file) values (75, 'Avec quels deux autres concepts l''ici et maintenant est-il présenté comme indissociable en formation ?', 'L''ici et maintenant est indissociable du cycle du contact, qui décrit comment une expérience présente naît et se referme, et de la page blanche, qui invite à accueillir chaque situation comme nouvelle plutôt qu''à travers le filtre du passé.', 'docs/themes/02-ici-et-maintenant.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (297, 75, 'La théorie paradoxale du changement et la déflexion', false, 1),
  (298, 75, 'La théorie du champ et l''indifférence créatrice', false, 2),
  (299, 75, 'Le cycle du contact et la page blanche', true, 3),
  (300, 75, 'Les mécanismes de régulation du contact et l''attachement', false, 4);
insert into question_themes (question_id, theme_id) values
  (75, (select id from themes where number = 2)),
  (75, (select id from themes where number = 11));

-- Q76 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (76, 'Qui a formalisé la théorie paradoxale du changement, reprise en formation sans que son nom soit prononcé ?', 'Arnold R. Beisser (1925-1991), psychiatre et Gestalt-thérapeute, professeur à l''UCLA et élève de Fritz Perls, a formalisé cette théorie : « le changement survient quand le patient se transforme en ce qu''il est, et non quand il essaye d''être ce qu''il n''est pas ».', 'docs/themes/05-page-blanche.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (301, 76, 'Fritz Perls', false, 1),
  (302, 76, 'Paul Goodman', false, 2),
  (303, 76, 'Arnold R. Beisser', true, 3),
  (304, 76, 'Joseph Zinker', false, 4);
insert into question_themes (question_id, theme_id) values
  (76, (select id from themes where number = 5));

-- Q77 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (77, '⚠️ Selon la théorie paradoxale du changement de Beisser, quand le changement survient-il chez le patient ?', 'Le changement survient quand le patient se transforme en ce qu''il est, et non quand il essaye d''être ce qu''il n''est pas ; le thérapeute refuse le rôle de « changeur » qui pousserait activement son client vers ce qu''il « devrait » devenir.', 'docs/themes/05-page-blanche.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (305, 77, 'Quand le patient adopte un modèle extérieur idéal', false, 1),
  (306, 77, 'Quand le thérapeute impose activement une direction de transformation', false, 2),
  (307, 77, 'Quand le patient nie ce qu''il ressent réellement', false, 3),
  (308, 77, 'Quand le patient se transforme en ce qu''il est, et non quand il essaye d''être ce qu''il n''est pas', true, 4);
insert into question_themes (question_id, theme_id) values
  (77, (select id from themes where number = 5));

-- Q78 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (78, '⚠️ Que signifie précisément l''intentionnalité enseignée au deuxième week-end de formation, illustrée par la métaphore du voilier ?', 'Comme un voilier qui ne choisit pas la direction du vent mais ajuste sa voile pour garder son cap, l''intentionnalité ne signifie pas qu''on peut « tout choisir » ni contrôler l''environnement : on ne choisit que sa manière d''y répondre, tout en gardant une direction claire.', 'docs/themes/05-page-blanche.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (309, 78, 'On peut choisir et contrôler entièrement son environnement si l''intention est assez forte', false, 1),
  (310, 78, 'On ne choisit pas la direction du vent, seulement la manière de régler sa voile, en gardant le cap', true, 2),
  (311, 78, 'L''intention doit changer constamment selon le vent, sans direction fixe', false, 3),
  (312, 78, 'Il faut ignorer les obstacles extérieurs pour garder son cap', false, 4);
insert into question_themes (question_id, theme_id) values
  (78, (select id from themes where number = 5));

-- Q79 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (79, 'D''après Perls, en opposition à la vision de Freud, quelle est la nature de l''agressivité ?', 'Pour Freud, l''être humain est déterminé par l''évolutionnaire. Perls prend le contre-pied : l''agressivité est une pulsion de vie (et non de mort), une énergie qui pousse à aller vers l''environnement pour s''assumer et prendre sa place.', 'docs/themes/05-page-blanche.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (313, 79, 'Une pulsion de mort héritée du passé', false, 1),
  (314, 79, 'Un mécanisme de défense pathologique à éliminer', false, 2),
  (315, 79, 'Une pulsion de vie, une énergie qui pousse à aller vers l''environnement', true, 3),
  (316, 79, 'Une émotion identique à la colère', false, 4);
insert into question_themes (question_id, theme_id) values
  (79, (select id from themes where number = 5));

-- Q80 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (80, 'Quelle distinction est faite en formation entre la « saine agressivité » et la colère ?', 'L''agressivité est une énergie, un élan de mise en mouvement, tandis que la colère est une émotion qui signale un besoin — les deux ne doivent jamais être confondues.', 'docs/themes/05-page-blanche.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (317, 80, 'L''agressivité est une énergie, un élan de mise en mouvement ; la colère est une émotion qui signale un besoin', true, 1),
  (318, 80, 'L''agressivité vient de la fonction Je, la colère vient de la fonction Ça', false, 2),
  (319, 80, 'Ce sont deux synonymes désignant la même pulsion', false, 3),
  (320, 80, 'La colère est saine, l''agressivité est toujours pathologique', false, 4);
insert into question_themes (question_id, theme_id) values
  (80, (select id from themes where number = 5));

-- Q81 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (81, 'Quelle phrase de Sartre est reprise en formation pour illustrer la responsabilité gestaltiste face à son propre vécu ?', 'Sartre résume la nuance existentialiste ainsi : « Je ne suis pas responsable de ce que l''on a fait de moi, mais je suis responsable de ce que je fais de ce que l''on a fait de moi ! » — on ne choisit pas son passé, mais on choisit ce qu''on en fait.', 'docs/themes/05-page-blanche.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (321, 81, '« Je ne suis pas responsable de ce que l''on a fait de moi, mais je suis responsable de ce que je fais de ce que l''on a fait de moi ! »', true, 1),
  (322, 81, '« On ne choisit pas sa famille mais on choisit ses amis »', false, 2),
  (323, 81, '« L''enfer, c''est les autres »', false, 3),
  (324, 81, '« L''existence précède l''essence »', false, 4);
insert into question_themes (question_id, theme_id) values
  (81, (select id from themes where number = 5));

-- Q82 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (82, 'Quelle formule enseignée en formation résume le rôle central de l''acceptation dans le travail thérapeutique ?', 'La formule retenue en formation est : « l''acceptation est le seul passage pour accéder à la paix » ; son contraire est la résistance, source d''une grande partie de la souffrance.', 'docs/themes/05-page-blanche.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (325, 82, '« L''acceptation empêche tout changement »', false, 1),
  (326, 82, '« L''acceptation est le seul passage pour accéder à la paix »', true, 2),
  (327, 82, '« L''acceptation est un aveu de faiblesse »', false, 3),
  (328, 82, '« L''acceptation doit toujours précéder la responsabilité »', false, 4);
insert into question_themes (question_id, theme_id) values
  (82, (select id from themes where number = 5));

-- Q83 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (83, 'Selon le texte fondateur Gestalt Therapy (Perls, Hefferline, Goodman, 1951), comment la psychopathologie est-elle définie ?', 'Le texte fondateur définit la psychopathologie comme l''étude de l''interruption, de l''inhibition, ou de tout accident venant perturber le cours de l''ajustement créateur.', 'docs/themes/05-page-blanche.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (329, 83, 'Comme un déficit inné de la personnalité', false, 1),
  (330, 83, 'Comme l''étude de l''interruption, de l''inhibition, ou de tout accident perturbant l''ajustement créateur', true, 2),
  (331, 83, 'Comme le résultat exclusif de traumatismes de l''enfance non traités', false, 3),
  (332, 83, 'Comme l''incapacité à respecter les règles sociales', false, 4);
insert into question_themes (question_id, theme_id) values
  (83, (select id from themes where number = 5));

-- Q84 (thème 5)
insert into questions (id, question_text, explanation, source_file) values (84, 'Quels sont les trois axes concrets sur lesquels la page blanche a été travaillée personnellement en formation ?', 'La page blanche a été travaillée selon trois axes : une situation (ex. l''emploi), une personne (ex. une relation familiale), et le regard sur soi-même.', 'docs/themes/05-page-blanche.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (333, 84, 'Une situation, une personne, et le regard sur soi-même', true, 1),
  (334, 84, 'La sensation, l''action, le contact', false, 2),
  (335, 84, 'Le Ça, le Je, la Personnalité', false, 3),
  (336, 84, 'Le passé, le présent, le futur', false, 4);
insert into question_themes (question_id, theme_id) values
  (84, (select id from themes where number = 5));

-- Q85 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (85, 'Qui a formalisé et popularisé le cycle du contact en étapes, dans quel ouvrage devenu une référence du champ ?', 'C''est Joseph Zinker qui a formalisé et popularisé ce cycle dans Creative Process in Gestalt Therapy (1977), élu livre de l''année par le magazine Psychology Today à sa sortie.', 'docs/themes/11-cycle-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (337, 85, 'Fritz Perls, dans Gestalt Therapy (1951)', false, 1),
  (338, 85, 'Joseph Zinker, dans Creative Process in Gestalt Therapy (1977)', true, 2),
  (339, 85, 'Arnold Beisser, dans un article sur le changement paradoxal', false, 3),
  (340, 85, 'Miriam Polster, dans Gestalt Therapy Integrated', false, 4);
insert into question_themes (question_id, theme_id) values
  (85, (select id from themes where number = 11));

-- Q86 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (86, 'Où Joseph Zinker a-t-il été formé, tout comme Miriam et Erving Polster ?', 'Joseph Zinker a été formé au Gestalt Institute de Cleveland, où furent également formés Miriam et Erving Polster.', 'docs/themes/11-cycle-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (341, 86, 'À l''UCLA', false, 1),
  (342, 86, 'Au Gestalt Institute de Cleveland', true, 2),
  (343, 86, 'À l''École Humaniste de Gestalt (EHG/IFAS)', false, 3),
  (344, 86, 'À l''Institut de Francfort', false, 4);
insert into question_themes (question_id, theme_id) values
  (86, (select id from themes where number = 11));

-- Q87 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (87, 'Que se passe-t-il concrètement lors de l''étape du Contact, sommet de la courbe du cycle de Zinker ?', 'Le Contact est l''expérience pleine, l''engagement direct avec l''environnement — le moment où l''on « digère » vraiment ce que l''on rencontre, en le déstructurant et en l''assimilant à soi.', 'docs/themes/11-cycle-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (345, 87, 'Le moment où l''énergie se mobilise sans encore agir', false, 1),
  (346, 87, 'La phase où l''expérience est simplement mémorisée sans être vécue', false, 2),
  (347, 87, 'Le retrait final vers le vide créateur', false, 3),
  (348, 87, 'L''engagement direct avec l''environnement, où l''on digère et assimile ce que l''on rencontre', true, 4);
insert into question_themes (question_id, theme_id) values
  (87, (select id from themes where number = 11));

-- Q88 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (88, 'Dans quel ordre s''enchaînent les dernières étapes du cycle du contact, après le Contact, jusqu''à un nouveau retrait ?', 'Après le Contact vient le désengagement — on se détache progressivement de l''objet du contact — suivi de l''assimilation, où l''expérience est intégrée, avant que le cycle ne se referme en un nouveau retrait.', 'docs/themes/11-cycle-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (349, 88, 'Retrait immédiat, sans étape intermédiaire', false, 1),
  (350, 88, 'Assimilation, puis désengagement, puis mobilisation de l''énergie', false, 2),
  (351, 88, 'Assimilation puis retour direct à l''action', false, 3),
  (352, 88, 'Désengagement, puis assimilation, puis un nouveau retrait', true, 4);
insert into question_themes (question_id, theme_id) values
  (88, (select id from themes where number = 11));

-- Q89 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (89, 'Le nouveau « retrait » qui referme le cycle du contact correspond-il à un retour identique au point de départ ?', 'Non : le cycle se referme en un nouveau retrait qui n''est pas un retour au point de départ identique, mais un organisme légèrement changé par ce qu''il vient de vivre, disponible pour une nouvelle boucle.', 'docs/themes/11-cycle-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (353, 89, 'Non, c''est un organisme légèrement changé, disponible pour une nouvelle boucle', true, 1),
  (354, 89, 'Non, c''est un état pathologique par définition', false, 2),
  (355, 89, 'Oui, car le retrait est toujours un échec du cycle', false, 3),
  (356, 89, 'Oui, c''est un retour exactement identique à l''état initial', false, 4);
insert into question_themes (question_id, theme_id) values
  (89, (select id from themes where number = 11));

-- Q90 (thèmes 11, 5)
insert into questions (id, question_text, explanation, source_file) values (90, 'Pourquoi le cycle du contact est-il indissociable, en formation, de la notion de saine agressivité ?', 'L''agressivité, pulsion de vie qui pousse à aller vers l''environnement, est précisément l''énergie mobilisée dans les phases de mobilisation de l''énergie et d''Action : sans elle, le mouvement vers le contact ne peut se produire.', 'docs/themes/11-cycle-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (357, 90, 'Parce que la saine agressivité empêche par définition toute interruption du cycle', false, 1),
  (358, 90, 'Parce que l''agressivité n''est nécessaire qu''à la phase de retrait', false, 2),
  (359, 90, 'Parce que cette énergie de pulsion de vie est mobilisée dans les phases de mobilisation de l''énergie et d''Action', true, 3),
  (360, 90, 'Parce que l''agressivité correspond à la phase d''assimilation', false, 4);
insert into question_themes (question_id, theme_id) values
  (90, (select id from themes where number = 11)),
  (90, (select id from themes where number = 5));

-- Q91 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (91, 'Selon le texte fondateur de 1951 (Perls, Hefferline, Goodman), à quoi reconnaît-on une Gestalt (une expérience) réussie ?', 'Une Gestalt réussie se traduit par « un mouvement gracieux et énergique, qui a un rythme et va jusqu''au bout », par opposition à une figure « obscure, confuse, dépourvue de grâce et d''énergie », signe d''un manque de contact.', 'docs/themes/11-cycle-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (361, 91, 'À un mouvement gracieux et énergique, qui a un rythme et va jusqu''au bout', true, 1),
  (362, 91, 'À la capacité du thérapeute à interrompre le cycle avant le contact', false, 2),
  (363, 91, 'À la rapidité avec laquelle le cycle se referme, indépendamment de sa qualité', false, 3),
  (364, 91, 'À l''absence totale d''émotions exprimées', false, 4);
insert into question_themes (question_id, theme_id) values
  (91, (select id from themes where number = 11));

-- Q92 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (92, 'En combien de grandes phases le cycle du contact peut-il aussi être résumé, selon une présentation plus synthétique que la séquence fine enseignée en formation ?', 'Selon les sources, le cycle est parfois présenté en cinq grandes phases (pré-contact, engagement, plein contact, désengagement, assimilation), ce qui n''est pas contradictoire avec la séquence plus fine vue en formation, seulement un degré de granularité différent.', 'docs/themes/11-cycle-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (365, 92, 'Quatre phases, identiques aux fonctions de la théorie du Self', false, 1),
  (366, 92, 'Trois phases', false, 2),
  (367, 92, 'Sept phases', false, 3),
  (368, 92, 'Cinq phases (pré-contact, engagement, plein contact, désengagement, assimilation)', true, 4);
insert into question_themes (question_id, theme_id) values
  (92, (select id from themes where number = 11));

-- Q93 (thème 11)
insert into questions (id, question_text, explanation, source_file) values (93, 'Que désigne la « signature d''interruption » évoquée en formation à propos du cycle du contact ?', 'C''est la tendance personnelle et récurrente à décrocher toujours à la même étape du cycle — par exemple mobiliser de l''énergie sans jamais passer à l''action, ou atteindre le contact sans jamais s''en désengager.', 'docs/themes/11-cycle-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (369, 93, 'Un test diagnostique formalisé par Zinker pour mesurer l''anxiété', false, 1),
  (370, 93, 'La tendance personnelle et récurrente à décrocher toujours à la même étape du cycle', true, 2),
  (371, 93, 'La phase finale obligatoire du cycle chez tout individu', false, 3),
  (372, 93, 'La signature officielle apposée sur le protocole thérapeutique', false, 4);
insert into question_themes (question_id, theme_id) values
  (93, (select id from themes where number = 11));

-- Q94 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (94, 'Qui a développé la « psychologie topologique et vectorielle », socle théorique repris ensuite par la Gestalt-thérapie pour penser la théorie du champ, et à quelle période ?', 'C''est le psychologue Kurt Lewin, figure de l''école de la Gestalt-théorie, qui développe entre 1935 et 1938 la psychologie topologique et vectorielle, affirmant l''impossibilité de décrire un comportement humain indépendamment de son milieu.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (373, 94, 'Paul Goodman, en 1951', false, 1),
  (374, 94, 'Fritz Perls, dans les années 1940', false, 2),
  (375, 94, 'Kurt Lewin, entre 1935 et 1938', true, 3),
  (376, 94, 'Wolfgang Köhler, dans les années 1920', false, 4);
insert into question_themes (question_id, theme_id) values
  (94, (select id from themes where number = 3));

-- Q95 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (95, 'Selon Kurt Lewin, le « champ » de son « espace de vie » désigne avant tout :', 'Le point essentiel chez Lewin est l''angle phénoménologique : le champ n''est pas le monde objectif mesurable de l''extérieur, mais le champ tel qu''il est éprouvé par la personne elle-même.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (377, 95, 'Le champ tel qu''il est éprouvé subjectivement par la personne elle-même', true, 1),
  (378, 95, 'Une moyenne statistique des comportements observés dans un groupe', false, 2),
  (379, 95, 'Le monde objectif, mesurable de l''extérieur par un observateur neutre', false, 3),
  (380, 95, 'Un champ magnétique physique réel, au sens de la physique', false, 4);
insert into question_themes (question_id, theme_id) values
  (95, (select id from themes where number = 3));

-- Q96 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (96, 'Que soutiennent Perls, Hefferline et Goodman dans *Gestalt Therapy* (1951) à propos de l''organisme et de son environnement ?', 'Ils introduisent le concept de « champ organisme-environnement », où l''organisme et son environnement « ne peuvent être séparés, étant les parties d''une même unité, le champ holistique ».', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (381, 96, 'Ils forment une même unité, un champ holistique, et ne peuvent être séparés', true, 1),
  (382, 96, 'L''organisme domine toujours son environnement en thérapie', false, 2),
  (383, 96, 'Ils doivent être étudiés séparément pour bien comprendre le patient', false, 3),
  (384, 96, 'L''environnement détermine entièrement le comportement de l''organisme', false, 4);
insert into question_themes (question_id, theme_id) values
  (96, (select id from themes where number = 3));

-- Q97 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (97, 'D''après *Gestalt Therapy* (1951), que signale cliniquement une figure « obscure, confuse, dépourvue de grâce et d''énergie » ?', 'Le texte fondateur précise que lorsque la figure est obscure et sans énergie, on peut être certain qu''il y a un manque de contact, un blocage, qu''un besoin organique vital n''est pas exprimé.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (385, 97, 'Une simple fatigue passagère sans signification clinique particulière', false, 1),
  (386, 97, 'Une bonne santé psychique et un contact vivant avec le champ', false, 2),
  (387, 97, 'Une confluence saine et temporaire avec l''environnement', false, 3),
  (388, 97, 'Un manque de contact, un blocage, un besoin vital non exprimé', true, 4);
insert into question_themes (question_id, theme_id) values
  (97, (select id from themes where number = 3));

-- Q98 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (98, 'Que symbolise l''image « je me rappelle de l''Aurore lorsqu''il y a des nuages », utilisée en formation pour illustrer la dynamique figure/fond ?', 'Même quand un problème (les nuages) s''impose en figure, la conscience peut maintenir l''existence des ressources (l''aurore) en fond, sans les nier ni les oublier — pour ne pas laisser une seule figure envahir tout le champ.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (389, 98, 'Le fait que les ressources disparaissent dès qu''un problème survient', false, 1),
  (390, 98, 'La nécessité d''oublier ses problèmes pour retrouver le bonheur', false, 2),
  (391, 98, 'La capacité à maintenir les ressources en fond même quand un problème occupe le devant de la scène', true, 3),
  (392, 98, 'L''idée qu''il faut résoudre un problème avant de percevoir toute ressource', false, 4);
insert into question_themes (question_id, theme_id) values
  (98, (select id from themes where number = 3));

-- Q99 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (99, 'Quel est le principe de la « boîte de transformation », outil pratique découlant de la théorie du champ ?', 'Il s''agit de visualiser une boîte et d''y déposer délibérément un élément perturbateur qui occupe le champ, non pour le nier ou le refouler, mais avec l''intention consciente d''y revenir plus tard.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (393, 99, 'Refouler définitivement un souvenir douloureux pour ne plus jamais y penser', false, 1),
  (394, 99, 'Jeter symboliquement ses problèmes pour s''en libérer sans jamais y revenir', false, 2),
  (395, 99, 'Transformer immédiatement une émotion négative en émotion positive par la volonté', false, 3),
  (396, 99, 'Déposer consciemment un élément perturbateur, avec l''intention d''y revenir plus tard', true, 4);
insert into question_themes (question_id, theme_id) values
  (99, (select id from themes where number = 3));

-- Q100 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (100, 'Travailler le pôle « idéal » du continuum limites/idéal signifie, selon la formation :', 'La formation est explicite : « on ne peut pas tout choisir ». Travailler le pôle idéal élargit le champ des possibles perçus, sans nier les limites réelles du champ, comme le corps.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (397, 100, 'Se focaliser uniquement sur les limites du corps, en écartant tout le reste', false, 1),
  (398, 100, 'Nier systématiquement le principe de réalité pour progresser', false, 2),
  (399, 100, 'Pouvoir tout choisir, sans aucune limite, dans une forme de toute-puissance', false, 3),
  (400, 100, 'Élargir le champ des possibles perçus, sans nier les limites réelles du champ', true, 4);
insert into question_themes (question_id, theme_id) values
  (100, (select id from themes where number = 3));

-- Q101 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (101, 'Quelle est, selon la formation, la toute première limite du continuum limites/idéal ?', 'La formation rappelle que la toute première limite, c''est notre corps : nier le principe de réalité, c''est vouloir « ça, tout de suite », sans tenir compte de ce que le champ permet réellement.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (401, 101, 'Nos croyances conscientes', false, 1),
  (402, 101, 'Notre corps', true, 2),
  (403, 101, 'La société et ses lois', false, 3),
  (404, 101, 'Le regard que les autres portent sur nous', false, 4);
insert into question_themes (question_id, theme_id) values
  (101, (select id from themes where number = 3));

-- Q102 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (102, 'Dans l''image de l''axe de verticalité et d''horizontalité, reliée à la théorie du champ, que représente l''axe horizontal ?', 'L''axe horizontal représente le contact avec l''autre et avec l''environnement, tandis que l''axe vertical représente le contact avec soi-même, l''ancrage.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (405, 102, 'Le contact avec l''autre et avec l''environnement', true, 1),
  (406, 102, 'L''équilibre émotionnel intérieur, indépendamment d''autrui', false, 2),
  (407, 102, 'Le retrait total de toute relation', false, 3),
  (408, 102, 'Le contact avec soi-même, l''ancrage', false, 4);
insert into question_themes (question_id, theme_id) values
  (102, (select id from themes where number = 3));

-- Q103 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (103, 'Comment la théorie du champ permet-elle de distinguer le « stresseur » du « stress » ?', 'Le stresseur est un événement, une personne ou une situation du champ perçue comme une agression ; le stress est la réponse vécue en nous. Ils ne se pensent que comme deux pôles d''un même champ organisme-environnement, jamais isolément.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (409, 103, 'Stresseur et stress sont des synonymes stricts en théorie du champ', false, 1),
  (410, 103, 'Le stresseur est une réponse intérieure, le stress un événement extérieur', false, 2),
  (411, 103, 'Le stress est toujours causé consciemment par le sujet, indépendamment de tout champ', false, 3),
  (412, 103, 'Le stresseur est un élément du champ perçu comme agression, le stress est la réponse vécue en nous', true, 4);
insert into question_themes (question_id, theme_id) values
  (103, (select id from themes where number = 3));

-- Q104 (thème 3)
insert into questions (id, question_text, explanation, source_file) values (104, 'Que met concrètement en jeu l''exercice des « deux camemberts », réalisé lors du module « Vivre » ?', 'Le client dessine deux cercles représentant son état, revient au corps et réfléchit à son environnement réel ; le praticien travaille sa propre verticalité — le champ thérapeutique inclut aussi le praticien lui-même, en interaction avec l''état du client.', 'docs/themes/03-theorie-du-champ.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (413, 104, 'Une méthode de diagnostic médical du stress', false, 1),
  (414, 104, 'Le travail sur le champ, où client et praticien mobilisent chacun leur état interne en interaction', true, 2),
  (415, 104, 'Un outil réservé exclusivement à l''analyse des rêves', false, 3),
  (416, 104, 'Une technique de relaxation isolée, sans lien avec l''environnement du client', false, 4);
insert into question_themes (question_id, theme_id) values
  (104, (select id from themes where number = 3));

-- Q105 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (105, 'Selon *Gestalt Therapy* (1951), quelle est la différence entre le Self et le Moi ?', 'Le Moi est décrit comme « l''unité intégratrice, l''unité de synthèse, l''artiste de la vie », un petit facteur dans l''interaction organisme/environnement qui découvre et fournit les significations permettant de croître ; le Self, lui, est le processus global de contact.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (417, 105, 'Le Moi et le Self sont des synonymes stricts chez Perls', false, 1),
  (418, 105, 'Le Moi correspond à la fonction Ça, le Self à la fonction Personnalité', false, 2),
  (419, 105, 'Le Moi est l''unité intégratrice, « l''artiste de la vie », qui découvre les significations permettant de croître', true, 3),
  (420, 105, 'Le Moi est la structure freudienne rejetée par la Gestalt, le Self n''a pas d''équivalent', false, 4);
insert into question_themes (question_id, theme_id) values
  (105, (select id from themes where number = 4));

-- Q106 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (106, 'Quelle fonction du Self est comparée à une bibliothèque en formation ?', 'La fonction Personnalité est comparée à une bibliothèque : un lieu où s''enregistrent, se classent et s''organisent les expériences qui nous constituent, y compris nos croyances.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (421, 106, 'Le Moi', false, 1),
  (422, 106, 'La fonction Ça', false, 2),
  (423, 106, 'La fonction Je', false, 3),
  (424, 106, 'La fonction Personnalité', true, 4);
insert into question_themes (question_id, theme_id) values
  (106, (select id from themes where number = 4));

-- Q107 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (107, 'Quel auteur est cité en formation, avec son concept de « Persona », pour illustrer qu''une personnalité a plusieurs facettes et le risque de s''enfermer dans un seul rôle ?', 'Une référence à Carl Jung et à son concept de « Persona » a été faite en formation à propos de la fonction Personnalité, pour souligner qu''une personnalité a plusieurs facettes.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (425, 107, 'Erving Polster', false, 1),
  (426, 107, 'Kurt Lewin', false, 2),
  (427, 107, 'Sigmund Freud', false, 3),
  (428, 107, 'Carl Jung', true, 4);
insert into question_themes (question_id, theme_id) values
  (107, (select id from themes where number = 4));

-- Q108 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (108, 'Selon la chronologie développementale présentée en formation, quelle fonction du Self domine chez le nourrisson entre 0 et 6 mois ?', 'Entre 0 et 6 mois, le nourrisson est constamment dans le Ça : ses besoins organiques bruts s''expriment sans filtre, et seul l''environnement peut y répondre. Le Je puis la Personnalité s''élaborent ensuite progressivement.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (429, 108, 'La fonction Ça', true, 1),
  (430, 108, 'La fonction Personnalité', false, 2),
  (431, 108, 'La fonction Je', false, 3),
  (432, 108, 'Les trois fonctions apparaissent simultanément dès la naissance', false, 4);
insert into question_themes (question_id, theme_id) values
  (108, (select id from themes where number = 4));

-- Q109 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (109, 'Que devient, à l''âge adulte, un ajustement créateur d''enfance qui se fige au lieu d''évoluer ?', 'Le risque est que la solution de survie intelligente sur le moment (ajustement créateur) devienne, si elle se fige à l''âge adulte, un ajustement conservateur rigide, une croyance limitative qui continue de se reproduire bien après que la situation d''origine a disparu.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (433, 109, 'Il se transforme automatiquement en une fonction Je pleinement saine', false, 1),
  (434, 109, 'Il devient exclusivement un mécanisme de projection', false, 2),
  (435, 109, 'Un ajustement conservateur rigide, une croyance limitative', true, 3),
  (436, 109, 'Il disparaît naturellement à l''adolescence sans laisser de trace', false, 4);
insert into question_themes (question_id, theme_id) values
  (109, (select id from themes where number = 4));

-- Q110 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (110, 'Selon *Gestalt Therapy* (1951), la frontière-contact est « essentiellement l''organe d''une relation particulière entre l''organisme et l''environnement » — et cette relation particulière, c''est :', 'Le texte fondateur précise que la relation particulière dont la frontière-contact est l''organe, c''est la croissance.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (437, 110, 'La survie, uniquement', false, 1),
  (438, 110, 'La croissance', true, 2),
  (439, 110, 'Le conflit permanent', false, 3),
  (440, 110, 'La reproduction', false, 4);
insert into question_themes (question_id, theme_id) values
  (110, (select id from themes where number = 4));

-- Q111 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (111, 'Comment *Gestalt Therapy* (1951) définit-elle le contact ?', 'Le contact est la prise de conscience de la nouveauté assimilable et le comportement adopté envers elle, ainsi que, symétriquement, le rejet de la nouveauté inassimilable : « Tout contact est donc un ajustement créateur de l''organisme et de l''environnement ».', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (441, 111, 'L''absence de toute frontière entre l''organisme et l''environnement', false, 1),
  (442, 111, 'La prise de conscience de la nouveauté assimilable, et le rejet de la nouveauté inassimilable', true, 2),
  (443, 111, 'L''accumulation de souvenirs dans la fonction Personnalité', false, 3),
  (444, 111, 'Le simple fait de toucher physiquement l''environnement', false, 4);
insert into question_themes (question_id, theme_id) values
  (111, (select id from themes where number = 4));

-- Q112 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (112, 'D''après le texte fondateur *Gestalt Therapy* (1951), la psychopathologie est « l''étude de l''interruption, de l''inhibition ou d''autres accidents dans le cours » de quoi ?', 'Le texte fondateur définit la psychopathologie comme l''étude de l''interruption, de l''inhibition ou d''autres accidents dans le cours de l''ajustement créateur.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (445, 112, 'De la fonction Ça uniquement', false, 1),
  (446, 112, 'Du cycle du contact de Zinker uniquement', false, 2),
  (447, 112, 'De la métavision et de l''hélicoptère', false, 3),
  (448, 112, 'De l''ajustement créateur', true, 4);
insert into question_themes (question_id, theme_id) values
  (112, (select id from themes where number = 4));

-- Q113 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (113, 'Dans la métaphore de la « maison-cerveau », à quelle structure correspond la « suite parentale », et quelle particularité lui est associée ?', 'La suite parentale correspond au cortex préfrontal (CPF), siège des fonctions exécutives, qui a la particularité notable de ne mûrir qu''à 25 ans.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (449, 113, 'Le cortex préfrontal, qui ne mature qu''à 25 ans', true, 1),
  (450, 113, 'L''hippocampe, qui mature à 18 ans', false, 2),
  (451, 113, 'L''amygdale, qui mature dès la naissance', false, 3),
  (452, 113, 'Le cervelet, qui ne mature jamais complètement', false, 4);
insert into question_themes (question_id, theme_id) values
  (113, (select id from themes where number = 4));

-- Q114 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (114, 'Selon la formation, lequel des éléments suivants NE fait PAS partie des quatre leviers par lesquels la pratique de la Gestalt développerait le cortex préfrontal ?', 'Les quatre leviers cités en formation sont la mentalisation de l''acte, la régulation des émotions et du comportement social, le contrôle des impulsions, et la prise de décision juste. Le « refoulement des souvenirs traumatiques » est un concept psychanalytique, absent de cette liste.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (453, 114, 'La mentalisation de l''acte', false, 1),
  (454, 114, 'La prise de décision juste', false, 2),
  (455, 114, 'Le refoulement des souvenirs traumatiques', true, 3),
  (456, 114, 'Le contrôle des impulsions', false, 4);
insert into question_themes (question_id, theme_id) values
  (114, (select id from themes where number = 4));

-- Q115 (thème 4)
insert into questions (id, question_text, explanation, source_file) values (115, 'Dans la correspondance établie en formation entre fonctions du Self et structures cérébrales, quelle fonction correspond au système limbique ?', 'La formation établit que la fonction Ça correspond au système limbique, siège des émotions et de la mémoire affective ; la fonction Je correspond au cortex préfrontal ; la fonction Personnalité à l''interaction entre ces structures dans la durée.', 'docs/themes/04-theorie-du-self.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (457, 115, 'La fonction Je', false, 1),
  (458, 115, 'Le Moi', false, 2),
  (459, 115, 'La fonction Ça', true, 3),
  (460, 115, 'La fonction Personnalité', false, 4);
insert into question_themes (question_id, theme_id) values
  (115, (select id from themes where number = 4));

-- Q116 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (116, 'Selon Perls, combien de mécanismes constituent le socle historique de la régulation du contact, et lesquels ?', 'Selon Perls, cinq mécanismes constituent le socle historique : confluence, introjection, projection, rétroflexion, déflexion — auxquels les développements ultérieurs de l''école ont ajouté l''égotisme et la proflection.', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (461, 116, 'Six, en incluant d''emblée l''égotisme', false, 1),
  (462, 116, 'Sept, en incluant d''emblée la proflection', false, 2),
  (463, 116, 'Quatre : confluence, introjection, projection, rétroflexion', false, 3),
  (464, 116, 'Cinq : confluence, introjection, projection, rétroflexion, déflexion', true, 4);
insert into question_themes (question_id, theme_id) values
  (116, (select id from themes where number = 8));

-- Q117 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (117, 'Qu''ont fait Erving et Miriam Polster dans *Gestalt Therapy Integrated* concernant les mécanismes de régulation du contact ?', 'Ils ont ajouté la déflexion comme cinquième mécanisme aux quatre premiers déjà identifiés (confluence, introjection, projection, rétroflexion), affinant la description clinique des interruptions du cycle de l''expérience.', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (465, 117, 'Ils ont inventé le concept de mécanisme de régulation du contact à partir de rien', false, 1),
  (466, 117, 'Ils ont ajouté la déflexion comme cinquième mécanisme aux quatre premiers déjà identifiés', true, 2),
  (467, 117, 'Ils ont fusionné la projection et l''introjection en un seul mécanisme', false, 3),
  (468, 117, 'Ils ont supprimé l''égotisme de la liste des mécanismes', false, 4);
insert into question_themes (question_id, theme_id) values
  (117, (select id from themes where number = 8));

-- Q118 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (118, 'Combien de mécanismes de régulation du contact le programme officiel de l''IFAS retient-il, et lequel des mécanismes enseignés n''y figure pas ?', 'Le programme officiel de l''IFAS ne retient que six mécanismes (confluence, égotisme, projection, introjection, rétroflexion, déflexion) : la proflection, bien qu''enseignée, n''apparaît pas dans cette liste officielle restreinte.', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (469, 118, 'Cinq mécanismes ; l''égotisme et la déflexion en sont absents', false, 1),
  (470, 118, 'Sept mécanismes, tous inclus sans exception', false, 2),
  (471, 118, 'Six mécanismes ; la rétroflexion n''y figure pas', false, 3),
  (472, 118, 'Six mécanismes ; la proflection n''y figure pas', true, 4);
insert into question_themes (question_id, theme_id) values
  (118, (select id from themes where number = 8));

-- Q119 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (119, 'Comment une ressource spécialisée citée en formation décrit-elle l''égotisme ?', 'L''égotisme est décrit comme « une sorte de barrière ultime entre soi et l''environnement » : rien n''entre, rien ne sort, par peur de lâcher prise et de perdre le contrôle.', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (473, 119, 'Un mécanisme uniquement pathologique, jamais protecteur', false, 1),
  (474, 119, 'Une sorte de barrière ultime entre soi et l''environnement, par peur de perdre le contrôle', true, 2),
  (475, 119, 'Une confusion entre ce qui appartient à l''interne et ce qui appartient à l''externe', false, 3),
  (476, 119, 'Une frontière trop perméable qui laisse tout entrer sans discernement', false, 4);
insert into question_themes (question_id, theme_id) values
  (119, (select id from themes where number = 8));

-- Q120 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (120, 'Quel est, selon la formation, l''enjeu clinique central de l''égotisme ?', 'L''enjeu n''est pas la présence de l''égotisme en soi, mais sa durée : est-il occasionnel (une saine protection ponctuelle) ou devenu un mode de fonctionnement permanent ?', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (477, 120, 'L''égotisme ne concerne que les thérapeutes, jamais les clients', false, 1),
  (478, 120, 'Ce n''est pas sa présence qui pose problème, mais sa durée — occasionnel ou permanent', true, 2),
  (479, 120, 'L''égotisme est sans rapport avec la notion de conscience ou d''inconscience', false, 3),
  (480, 120, 'L''égotisme est toujours pathologique dès qu''il apparaît', false, 4);
insert into question_themes (question_id, theme_id) values
  (120, (select id from themes where number = 8));

-- Q121 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (121, 'Quelle est la différence entre la déflexion externe et la déflexion interne ?', 'La déflexion externe décharge sur une personne B ce qui aurait dû aller vers la personne A ; la déflexion interne, à l''inverse, est présentée comme une saine déflexion, un usage conscient et créatif de ce même mouvement.', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (481, 121, 'L''externe concerne le corps, l''interne concerne uniquement les pensées', false, 1),
  (482, 121, 'Elles sont strictement identiques, seul le nom diffère', false, 2),
  (483, 121, 'L''externe décharge sur la mauvaise personne ; l''interne est un usage conscient et créatif du même mouvement', true, 3),
  (484, 121, 'L''interne est toujours pathologique, l''externe toujours saine', false, 4);
insert into question_themes (question_id, theme_id) values
  (121, (select id from themes where number = 8));

-- Q122 (thèmes 8, 3)
insert into questions (id, question_text, explanation, source_file) values (122, 'Quel outil, présenté dans la théorie du champ, illustre concrètement ce que peut être une déflexion interne saine ?', 'La déflexion interne saine correspond exactement à ce que propose la boîte de transformation : déposer consciemment un élément perturbateur pour ne pas le laisser occuper toute la frontière-contact à un moment inopportun.', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (485, 122, 'Le cycle de contact de Zinker', false, 1),
  (486, 122, 'La maison-cerveau', false, 2),
  (487, 122, 'La boîte de transformation', true, 3),
  (488, 122, 'La grille d''évaluation de la communication', false, 4);
insert into question_themes (question_id, theme_id) values
  (122, (select id from themes where number = 8)),
  (122, (select id from themes where number = 3));

-- Q123 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (123, 'Comment la proflection est-elle définie en formation ?', 'La proflection est décrite comme « faire quelque chose pour la recevoir en retour » — une association de projection et de rétroflexion, qui consiste à donner à l''autre ce que l''on aimerait recevoir soi-même.', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (489, 123, 'Faire quelque chose pour la recevoir en retour, en combinant projection et rétroflexion', true, 1),
  (490, 123, 'Décharger une émotion sur une personne qui n''est pas la bonne cible', false, 2),
  (491, 123, 'Absorber sans discernement les règles reçues de l''environnement', false, 3),
  (492, 123, 'Refuser tout contact avec l''autre par peur de perdre le contrôle', false, 4);
insert into question_themes (question_id, theme_id) values
  (123, (select id from themes where number = 8));

-- Q124 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (124, 'Quelles sont les deux formes de projection distinguées en formation ?', 'La formation distingue la projection pure et la projection de soi vers l''autre, une variante plus généreuse où l''on donne un peu plus de place à l''autre « parce que c''est bon pour lui, et ça devient bon pour moi ».', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (493, 124, 'La projection consciente et la projection inconsciente', false, 1),
  (494, 124, 'La projection pure et la projection de soi vers l''autre', true, 2),
  (495, 124, 'La projection totale et la projection partielle', false, 3),
  (496, 124, 'La projection positive et la projection négative', false, 4);
insert into question_themes (question_id, theme_id) values
  (124, (select id from themes where number = 8));

-- Q125 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (125, 'Dans le contexte des « buts de la communication » travaillés en formation, à quoi la rétroflexion est-elle associée ?', 'La rétroflexion correspond au « Retenir », à l''opposé du « Donner » ; la formation rappelle un point clinique fort : le silence est un facteur de risque, aussi bien dans le couple que dans le développement de l''enfant.', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (497, 125, 'Au « Donner », à l''opposé du « Retenir »', false, 1),
  (498, 125, 'À l''axe de lumière du praticien', false, 2),
  (499, 125, 'Au « Retenir », à l''opposé du « Donner » — le silence est un facteur de risque', true, 3),
  (500, 125, 'À la confluence, dont elle serait un simple synonyme', false, 4);
insert into question_themes (question_id, theme_id) values
  (125, (select id from themes where number = 8));

-- Q126 (thème 8)
insert into questions (id, question_text, explanation, source_file) values (126, 'Selon la formation, qu''est-ce qui détermine qu''un mécanisme de régulation du contact devienne névrotique et invalidant ?', 'Ces mécanismes deviennent névrotiques et invalidants lorsqu''ils se chronicisent, se rigidifient et s''exercent hors de toute conscience — pas en raison de leur nature propre.', 'docs/themes/08-mecanismes-de-regulation-du-contact.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (501, 126, 'Le nombre de mécanismes utilisés simultanément par la personne', false, 1),
  (502, 126, 'Sa chronicisation, sa rigidification, et le fait qu''il s''exerce hors de toute conscience', true, 2),
  (503, 126, 'Le fait qu''il soit d''origine familiale plutôt qu''individuelle', false, 3),
  (504, 126, 'Le fait qu''il soit utilisé uniquement en dehors du cadre thérapeutique', false, 4);
insert into question_themes (question_id, theme_id) values
  (126, (select id from themes where number = 8));

-- Q127 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (127, 'Dans le vocabulaire du week-end Expression, comment est appelé l''espace thérapeutique où la parole est accueillie sans être jamais récupérée contre soi ?', 'Le fichier précise que « l''espace thérapeutique est même appelé un sanctuaire — un lieu où l''on peut déposer sa parole en sachant qu''elle sera accueillie, jamais récupérée contre soi », terme utilisé dans le vocabulaire du week-end Expression.', 'docs/themes/06-valeurs-et-deontologie.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (505, 127, 'Un sanctuaire', true, 1),
  (506, 127, 'Un cocon', false, 2),
  (507, 127, 'Un temple intérieur', false, 3),
  (508, 127, 'Une bulle protectrice', false, 4);
insert into question_themes (question_id, theme_id) values
  (127, (select id from themes where number = 6));

-- Q128 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (128, 'Comment la posture P.B.C. définit-elle la bienveillance ?', 'Le fichier précise que la bienveillance « n''est pas un trait de caractère mais un choix conscient, qui se pratique et se cultive — un continuum de 0% à 100%, où le 100% est décrit comme le pôle de notre humanité ».', 'docs/themes/06-valeurs-et-deontologie.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (509, 128, 'Un trait de caractère inné, présent ou absent selon les personnes', false, 1),
  (510, 128, 'Une qualité que seul le thérapeute expérimenté peut atteindre', false, 2),
  (511, 128, 'Un choix conscient, sur un continuum de 0% à 100%', true, 3),
  (512, 128, 'Une technique thérapeutique réservée aux séances difficiles', false, 4);
insert into question_themes (question_id, theme_id) values
  (128, (select id from themes where number = 6));

-- Q129 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (129, 'Le programme officiel de l''école formule le triptyque des compétences différemment de celui enseigné en cours (Savoir-Être / Savoir-Faire / Savoir-Perdre). Quels termes officiels utilise-t-il ?', 'Piège QCM signalé dans le fichier : le programme officiel parle de compétence affective (savoir-être), réflexive (savoir-penser/savoir-perdre) et interactive (savoir-faire) — les deux formulations coexistent selon les supports.', 'docs/themes/06-valeurs-et-deontologie.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (513, 129, 'Cognitive, émotionnelle, comportementale', false, 1),
  (514, 129, 'Personnelle, relationnelle, professionnelle', false, 2),
  (515, 129, 'Théorique, pratique, clinique', false, 3),
  (516, 129, 'Affective, réflexive, interactive', true, 4);
insert into question_themes (question_id, theme_id) values
  (129, (select id from themes where number = 6));

-- Q130 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (130, 'Pourquoi la thérapie personnelle est-elle obligatoire pour devenir thérapeute, selon la logique exposée dans le cours ?', 'Le fichier justifie explicitement : « la thérapie personnelle est obligatoire pour devenir thérapeute : on ne peut pas accompagner un travail que l''on n''a jamais fait sur soi-même ».', 'docs/themes/06-valeurs-et-deontologie.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (517, 130, 'Parce qu''on ne peut pas accompagner un travail que l''on n''a jamais fait sur soi-même', true, 1),
  (518, 130, 'Parce que l''école l''exige pour des raisons purement administratives', false, 2),
  (519, 130, 'Parce que la loi française l''impose à tous les psychothérapeutes', false, 3),
  (520, 130, 'Parce que c''est une condition pour obtenir une réduction des frais de formation', false, 4);
insert into question_themes (question_id, theme_id) values
  (130, (select id from themes where number = 6));

-- Q131 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (131, 'Que valide le Cycle 2 de la formation, une fois l''évaluation (QCM + atelier de fin de cycle) réussie ?', 'Le fichier précise : « Cycle 2 : évaluation double, QCM + atelier de fin de cycle, ouvrant l''autorisation d''exercer (auprès d''adultes uniquement) et le titre de Gestalt Praticien ».', 'docs/themes/06-valeurs-et-deontologie.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (521, 131, 'Le titre de Gestalt Praticien, avec autorisation d''exercer auprès d''adultes uniquement', true, 1),
  (522, 131, 'Le titre de Thérapeute, avec autorisation d''exercer auprès de tous les publics', false, 2),
  (523, 131, 'Un simple certificat de participation, sans autorisation d''exercer', false, 3),
  (524, 131, 'Le titre de superviseur, permettant d''encadrer d''autres praticiens', false, 4);
insert into question_themes (question_id, theme_id) values
  (131, (select id from themes where number = 6));

-- Q132 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (132, 'Quelle exigence retrouve-t-on, en substance, à la fois dans la charte de la SFG et dans le code de la FF2P ?', 'La SFG « exige... qu''il maintienne tout au long de sa pratique un dispositif de supervision », et la FF2P demande de « développer ses compétences par la formation initiale, la thérapie personnelle, la supervision et la formation continue » — un pilier commun aux deux codes.', 'docs/themes/06-valeurs-et-deontologie.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (525, 132, 'Le maintien, tout au long de la pratique, d''un dispositif de supervision et de développement continu des compétences', true, 1),
  (526, 132, 'L''obligation de publier ses tarifs sur un site officiel', false, 2),
  (527, 132, 'L''adhésion obligatoire à un ordre professionnel unique reconnu par l''État', false, 3),
  (528, 132, 'La validation par un jury indépendant tous les 5 ans', false, 4);
insert into question_themes (question_id, theme_id) values
  (132, (select id from themes where number = 6));

-- Q133 (thème 6)
insert into questions (id, question_text, explanation, source_file) values (133, 'À quel philosophe se rattache le concept d''« indifférence créatrice », mobilisé dans la posture du praticien (page blanche, sans direction ni symptôme privilégié à l''avance) ?', 'Le fichier précise que « cette indifférence créatrice... vient du philosophe Salomon Friedländer, une influence directe de Perls, qui la définissait comme le point de toutes les potentialités ».', 'docs/themes/06-valeurs-et-deontologie.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (529, 133, 'Fritz Perls', false, 1),
  (530, 133, 'Kurt Lewin', false, 2),
  (531, 133, 'Salomon Friedländer', true, 3),
  (532, 133, 'Martin Buber', false, 4);
insert into question_themes (question_id, theme_id) values
  (133, (select id from themes where number = 6));

-- Q134 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (134, 'Selon la grille d''analyse enseignée en formation, quel axe correspond au mécanisme de régulation du contact utilisé dans une communication ?', 'Le fichier définit quatre axes : le but (l''intention), le quoi (le sujet), le comment (le mécanisme de régulation du contact utilisé) et la qualité (l''auto-évaluation) — « c''est surtout le comment qui nous intéresse ici, à travers les niveaux de communication ».', 'docs/themes/07-communication-bienveillante.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (533, 134, 'Le quoi', false, 1),
  (534, 134, 'Le but', false, 2),
  (535, 134, 'Le comment', true, 3),
  (536, 134, 'La qualité', false, 4);
insert into question_themes (question_id, theme_id) values
  (134, (select id from themes where number = 7));

-- Q135 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (135, 'Quelle donnée clinique citée en cours illustre l''enjeu vital de la communication ?', 'Le fichier cite : « on observe deux fois plus de rémissions chez des malades du cancer qui disposent d''un espace de parole », pour souligner que la communication est un besoin fondamental.', 'docs/themes/07-communication-bienveillante.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (537, 135, 'La moitié des consultations médicales échouent faute de communication claire', false, 1),
  (538, 135, 'On observe deux fois plus de rémissions chez des malades du cancer disposant d''un espace de parole', true, 2),
  (539, 135, 'Les enfants qui parlent tôt ont un meilleur système immunitaire', false, 3),
  (540, 135, '80% des couples qui communiquent en Niveau 2 évitent le divorce', false, 4);
insert into question_themes (question_id, theme_id) values
  (135, (select id from themes where number = 7));

-- Q136 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (136, 'Le Niveau 2 de communication enseigné en formation reprend la structure de quelle méthode, et de quel auteur ?', 'Le fichier précise que le Niveau 2 « reprend quasiment mot pour mot la structure de la Communication Non Violente (CNV), méthode mise au point par... Marshall B. Rosenberg », exposée dans Les mots sont des fenêtres (1999).', 'docs/themes/07-communication-bienveillante.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (541, 136, 'La Programmation Neuro-Linguistique, de Richard Bandler', false, 1),
  (542, 136, 'L''Analyse Transactionnelle, d''Éric Berne', false, 2),
  (543, 136, 'La Communication Non Violente, de Marshall B. Rosenberg', true, 3),
  (544, 136, 'L''écoute active, de Carl Rogers', false, 4);
insert into question_themes (question_id, theme_id) values
  (136, (select id from themes where number = 7));

-- Q137 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (137, 'La CNV originale se structure en 4 temps (acronyme OSBD). Combien d''étapes la formation en retient-elle explicitement dans son canevas ?', 'Le fichier précise : « La CNV structure la parole en quatre temps... La formation en reprend trois, avec un canevas quasi identique », résumé ainsi : « J''observe... / Je me sens... / J''ai besoin que... ».', 'docs/themes/07-communication-bienveillante.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (545, 137, '3 étapes (J''observe / Je me sens / J''ai besoin que...)', true, 1),
  (546, 137, '5 étapes, en ajoutant la reformulation', false, 2),
  (547, 137, '4 étapes, identiques à l''OSBD', false, 3),
  (548, 137, '2 étapes', false, 4);
insert into question_themes (question_id, theme_id) values
  (137, (select id from themes where number = 7));

-- Q138 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (138, 'Pourquoi un mot comme « trahi » est-il qualifié d''émotion interprétative plutôt que de vrai ressenti, au sens de l''étape 2 du Niveau 2 ?', 'Piège QCM signalé dans le fichier : une émotion interprétative « contient déjà un jugement caché sur l''autre (« trahi » suppose que l''autre a délibérément trompé ma confiance) » ; le travail du Niveau 2 consiste à la redescendre vers un ressenti plus brut (peur, tristesse, colère).', 'docs/themes/07-communication-bienveillante.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (549, 138, 'Parce qu''il désigne une émotion positive et non négative', false, 1),
  (550, 138, 'Parce que c''est un mot trop familier pour une communication professionnelle', false, 2),
  (551, 138, 'Parce qu''il contient déjà un jugement caché sur l''intention de l''autre', true, 3),
  (552, 138, 'Parce qu''il ne figure pas dans la table officielle des émotions', false, 4);
insert into question_themes (question_id, theme_id) values
  (138, (select id from themes where number = 7));

-- Q139 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (139, 'Avec quel public le Niveau 2 de communication, tel qu''enseigné en formation, ne doit-il pas être utilisé tel quel ?', 'Le fichier précise que le Niveau 2 « ne doit pas être utilisé tel quel avec les enfants, qui n''ont pas encore la capacité d''élaboration nécessaire — on les aide plutôt à nommer leurs émotions, plus simplement ».', 'docs/themes/07-communication-bienveillante.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (553, 139, 'Les personnes âgées', false, 1),
  (554, 139, 'Les enfants', true, 2),
  (555, 139, 'Les patients en phase d''épuisement (burn-out)', false, 3),
  (556, 139, 'Les collègues de travail', false, 4);
insert into question_themes (question_id, theme_id) values
  (139, (select id from themes where number = 7));

-- Q140 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (140, 'Que propose le protocole enseigné si l''expression du besoin en Niveau 2 ne suffit pas à débloquer une situation ?', 'Le fichier détaille : « accepter le contact malgré tout, réutiliser les mêmes mots (besoin, demande) sans s''énerver, respirer avant chaque changement de niveau, rester dans sa verticalité, laisser l''autre se décharger, puis accueillir et respirer avant d''intervenir à nouveau ».', 'docs/themes/07-communication-bienveillante.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (557, 140, 'Passer immédiatement en Niveau 1 pour marquer une limite ferme', false, 1),
  (558, 140, 'Mettre fin à l''échange et reporter la discussion à une autre séance', false, 2),
  (559, 140, 'Faire appel à un tiers médiateur pour reformuler à la place des deux parties', false, 3),
  (560, 140, 'Accepter le contact malgré tout, réutiliser les mêmes mots sans s''énerver, respirer et rester dans sa verticalité', true, 4);
insert into question_themes (question_id, theme_id) values
  (140, (select id from themes where number = 7));

-- Q141 (thème 7)
insert into questions (id, question_text, explanation, source_file) values (141, 'Comment le fichier nomme-t-il le piège relationnel où l''attitude accusatrice du Niveau 1 provoque chez l''autre une réponse qui confirme exactement ce que l''on redoutait ?', 'Le fichier précise : « un piège relationnel classique accompagne ce niveau : la circularité défensive — si l''autre perçoit une attitude accusatrice comme une agression, la réponse qu''il produit en retour... vient confirmer exactement ce que le premier redoutait ».', 'docs/themes/07-communication-bienveillante.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (561, 141, 'L''effet miroir', false, 1),
  (562, 141, 'Le cercle de confluence', false, 2),
  (563, 141, 'La circularité défensive', true, 3),
  (564, 141, 'La boucle de rétroflexion', false, 4);
insert into question_themes (question_id, theme_id) values
  (141, (select id from themes where number = 7));

-- Q142 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (142, 'Que désigne le « Champ 1 — Ici et maintenant » dans le modèle des 4 champs thérapeutiques ?', 'Le fichier définit le Champ 1 comme « ce qui se passe entre le client et le thérapeute, dans le contact, le lien, le cadre même de la séance en train de se dérouler », décrit comme le champ central du travail thérapeutique en Gestalt.', 'docs/themes/09-quatre-champs-therapeutiques.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (565, 142, 'Les événements de la vie quotidienne du client hors du cabinet', false, 1),
  (566, 142, 'Ce qui se passe entre le client et le thérapeute, dans le contact et le lien de la séance en cours', true, 2),
  (567, 142, 'Les souvenirs d''enfance évoqués par le client', false, 3),
  (568, 142, 'La mémoire des séances précédentes avec ce même client', false, 4);
insert into question_themes (question_id, theme_id) values
  (142, (select id from themes where number = 9));

-- Q143 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (143, 'Que dit le programme officiel à propos du Champ 4 (passé développemental) ?', 'Le fichier précise que « le Champ 4 n''est pas objectif. Il n''est pas une photographie figée du passé, mais une reconstruction toujours en mouvement, qui évolue au cours de la thérapie elle-même ».', 'docs/themes/09-quatre-champs-therapeutiques.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (569, 143, 'Il n''est pas objectif : c''est une reconstruction toujours en mouvement', true, 1),
  (570, 143, 'Il correspond uniquement aux dix premières années de vie', false, 2),
  (571, 143, 'Il ne doit jamais être abordé en Gestalt-thérapie intégrative', false, 3),
  (572, 143, 'Il est une photographie figée et objective du passé du client', false, 4);
insert into question_themes (question_id, theme_id) values
  (143, (select id from themes where number = 9));

-- Q144 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (144, 'Quel est le piège QCM classique concernant les Champs 3 et 4 ?', 'Le fichier précise le repère à retenir : « Champ 3 = maintenant + pas ici ; Champ 4 = ni maintenant, ni ici (le passé) » — le piège classique est de confondre ces deux champs qui parlent tous deux du client « ailleurs » que dans l''ici-et-maintenant.', 'docs/themes/09-quatre-champs-therapeutiques.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (573, 144, 'Confondre le Champ 3 (vie actuelle hors cabinet) et le Champ 4 (passé développemental)', true, 1),
  (574, 144, 'Penser que le Champ 3 et le Champ 4 sont un seul et même champ', false, 2),
  (575, 144, 'Confondre le Champ 3 (le passé) et le Champ 4 (la vie actuelle)', false, 3),
  (576, 144, 'Croire que les Champs 3 et 4 se situent tous deux dans le cabinet', false, 4);
insert into question_themes (question_id, theme_id) values
  (144, (select id from themes where number = 9));

-- Q145 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (145, 'Quelle posture le thérapeute adopte-t-il face au Champ 4, en Gestalt-thérapie intégrative ?', 'Le fichier indique que la posture est de « croire le client — pas de vérifier l''exactitude factuelle du souvenir, mais de considérer que revisiter le passé et lui donner du sens atténue les souffrances qui y sont attachées ».', 'docs/themes/09-quatre-champs-therapeutiques.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (577, 145, 'Confronter le client aux incohérences de son récit pour l''aider à se souvenir', false, 1),
  (578, 145, 'Vérifier systématiquement l''exactitude factuelle du souvenir avant de le travailler', false, 2),
  (579, 145, 'Écarter tout récit du passé, jugé hors sujet du travail thérapeutique', false, 3),
  (580, 145, 'Croire le client, sans chercher à vérifier l''exactitude factuelle du souvenir', true, 4);
insert into question_themes (question_id, theme_id) values
  (145, (select id from themes where number = 9));

-- Q146 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (146, 'Dans l''exemple clinique du fichier, que fait le thérapeute quand il dit « je remarque que votre voix change, là, maintenant, en me racontant ça » ?', 'Le fichier détaille l''exemple : le thérapeute « choisit de nommer ce qu''il observe dans l''instant présent... (retour au Champ 1) », ce qui peut ensuite ouvrir vers un lien avec une scène d''enfance (Champ 4).', 'docs/themes/09-quatre-champs-therapeutiques.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (581, 146, 'Il ramène l''échange au Champ 1 en nommant ce qu''il observe dans l''instant présent', true, 1),
  (582, 146, 'Il note mentalement un élément du Champ 2 pour la séance suivante', false, 2),
  (583, 146, 'Il reformule le contenu du Champ 3 pour clarifier la dispute racontée', false, 3),
  (584, 146, 'Il explore le Champ 4 en invitant le client à revenir sur son enfance', false, 4);
insert into question_themes (question_id, theme_id) values
  (146, (select id from themes where number = 9));

-- Q147 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (147, 'À quels auteurs le fichier rattache-t-il, avec prudence, la terminologie et la structure du modèle des 4 champs thérapeutiques ?', 'Le fichier signale que « la terminologie et la structure ressemblent fortement aux apports de la Gestalt-thérapie intégrative telle que développée en France par des auteurs comme Serge Ginger, Chantal Masquelier-Savatier et Jean-Marie Robine (École Parisienne de Gestalt) », sans certitude absolue sur l''origine exacte.', 'docs/themes/09-quatre-champs-therapeutiques.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (585, 147, 'Serge Ginger, Chantal Masquelier-Savatier et Jean-Marie Robine (École Parisienne de Gestalt)', true, 1),
  (586, 147, 'Hans Selye et Stephen Porges', false, 2),
  (587, 147, 'Fritz Perls et Laura Perls', false, 3),
  (588, 147, 'Marshall Rosenberg et Salomon Friedländer', false, 4);
insert into question_themes (question_id, theme_id) values
  (147, (select id from themes where number = 9));

-- Q148 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (148, 'Avec quelles autres notions théoriques le modèle des 4 champs thérapeutiques s''articule-t-il, selon le fichier ?', 'Le fichier conclut : « Ce modèle des 4 champs prend tout son sens une fois articulé avec la théorie du champ organisme-environnement, dont il est une déclinaison clinique, et avec la théorie du Self, puisque c''est bien le Self du client qui se manifeste différemment selon le champ ».', 'docs/themes/09-quatre-champs-therapeutiques.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (589, 148, 'La Communication Non Violente et la théorie de l''attachement', false, 1),
  (590, 148, 'Le Syndrome Général d''Adaptation et la théorie polyvagale', false, 2),
  (591, 148, 'Les codes déontologiques de la SFG et de la FF2P', false, 3),
  (592, 148, 'La théorie du champ organisme-environnement et la théorie du Self', true, 4);
insert into question_themes (question_id, theme_id) values
  (148, (select id from themes where number = 9));

-- Q149 (thème 9)
insert into questions (id, question_text, explanation, source_file) values (149, 'Lors de quel week-end de formation le modèle des 4 champs thérapeutiques est-il enseigné ?', 'Le fichier précise en ouverture : « Ce modèle est enseigné au dernier week-end du Cycle 1, celui de la Confiance », confirmé en source par « Notes de cours, week-end 6 (Confiance) ».', 'docs/themes/09-quatre-champs-therapeutiques.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (593, 149, 'Le week-end Expression (5)', false, 1),
  (594, 149, 'Le week-end Vivre (3)', false, 2),
  (595, 149, 'Le week-end Confiance (6), dernier du Cycle 1', true, 3),
  (596, 149, 'Le week-end Nouveau départ (1)', false, 4);
insert into question_themes (question_id, theme_id) values
  (149, (select id from themes where number = 9));

-- Q150 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (150, 'Comment le cours distingue-t-il le stresseur du stress ?', 'Le fichier précise : « Le stresseur est l''événement, la personne, l''exigence ou la situation... Le stress est la réponse au stresseur : ce qui est vécu en nous, dans notre corps et nos émotions » — une distinction jugée essentielle pour reprendre du pouvoir sur sa propre réponse.', 'docs/themes/10-vision-gestaltiste-du-stress.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (597, 150, 'Le stresseur est ponctuel, le stress est toujours chronique', false, 1),
  (598, 150, 'Le stresseur est une notion gestaltiste, le stress une notion médicale', false, 2),
  (599, 150, 'Le stresseur est l''événement ou la situation, le stress est la réponse vécue en nous', true, 3),
  (600, 150, 'Le stresseur concerne le corps, le stress concerne uniquement les émotions', false, 4);
insert into question_themes (question_id, theme_id) values
  (150, (select id from themes where number = 10));

-- Q151 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (151, 'Quelle est l''origine scientifique de la distinction stresseur/stress reprise en Gestalt ?', 'Le fichier indique que la distinction « vient tout droit de la physiologie du stress, développée par... Hans Selye... dans son article fondateur A Syndrome Produced by Diverse Nocuous Agents, publié dans Nature en 1936 », décrivant un syndrome de réponse identique quel que soit l''agent stresseur : le Syndrome Général d''Adaptation (SGA).', 'docs/themes/10-vision-gestaltiste-du-stress.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (601, 151, 'Les recherches de Marshall Rosenberg sur la Communication Non Violente', false, 1),
  (602, 151, 'Les travaux de Stephen Porges sur le nerf vague en 1994', false, 2),
  (603, 151, 'Le programme officiel de l''IFAS, qui a inventé ce concept en 2017', false, 3),
  (604, 151, 'L''article de Hans Selye « A Syndrome Produced by Diverse Nocuous Agents » (Nature, 1936), décrivant le Syndrome Général d''Adaptation', true, 4);
insert into question_themes (question_id, theme_id) values
  (151, (select id from themes where number = 10));

-- Q152 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (152, 'Que caractérise la 2ᵉ phase du stress selon Selye, la phase de Résistance ?', 'Le fichier décrit la phase de Résistance : « l''hormone dominante devient le cortisol, dans une logique d''homéostasie »... caractérisée par « la qualité empêchée : la personne a les compétences nécessaires, mais n''arrive plus à les exercer ».', 'docs/themes/10-vision-gestaltiste-du-stress.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (605, 152, 'Le cortisol devient dominant, dans une logique d''homéostasie, avec la « qualité empêchée »', true, 1),
  (606, 152, 'Une hormone dominante, l''adrénaline, active une heure maximum', false, 2),
  (607, 152, 'Une réaction instinctive de fuite, combat ou sidération', false, 3),
  (608, 152, 'Une multiplication de symptômes psychosomatiques et un risque de burn-out', false, 4);
insert into question_themes (question_id, theme_id) values
  (152, (select id from themes where number = 10));

-- Q153 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (153, 'Que représente la zone bleue du baromètre du stress ?', 'Le fichier définit : « Bleu — Mobilisation/Eustress : une énergie saine, un ajustement dynamique à l''environnement », distincte de l''orange (stress/détresse) et du vert (détente/homéostasie).', 'docs/themes/10-vision-gestaltiste-du-stress.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (609, 153, 'La détente et l''homéostasie, l''état de référence au repos', false, 1),
  (610, 153, 'La mobilisation, un eustress : une énergie saine, un ajustement dynamique à l''environnement', true, 2),
  (611, 153, 'L''épuisement, avec cortisol et adrénaline élevés simultanément', false, 3),
  (612, 153, 'Le stress et la détresse, en saturation', false, 4);
insert into question_themes (question_id, theme_id) values
  (153, (select id from themes where number = 10));

-- Q154 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (154, 'Quelle nuance la formation apporte-t-elle sur la zone verte du baromètre du stress ?', 'Le fichier insiste : « la zone verte, c''est la détente, pas la relaxation — on peut très bien être dans la détente tout en restant actif et mobilisé. Ce n''est pas un état passif de repli, mais un état de disponibilité pleine ».', 'docs/themes/10-vision-gestaltiste-du-stress.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (613, 154, 'C''est un état de relaxation passive, incompatible avec toute activité', false, 1),
  (614, 154, 'C''est un état de détente, pas de relaxation : on peut rester actif et mobilisé tout en étant détendu', true, 2),
  (615, 154, 'C''est un état rare, atteint uniquement après une longue méditation', false, 3),
  (616, 154, 'C''est la seule zone où le praticien peut recevoir un client', false, 4);
insert into question_themes (question_id, theme_id) values
  (154, (select id from themes where number = 10));

-- Q155 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (155, 'Selon la théorie polyvagale de Stephen Porges (1994/1995), à quelle branche du nerf vague la réaction de Freeze (figement, sidération) est-elle rattachée ?', 'Le fichier explique que Porges distingue la branche vagale ventrale (sécurité, engagement social) et la branche vagale dorsale, « activée dans les situations de menace extrême, qui mène à l''immobilisation, au figement, voire à la dissociation. C''est cette branche dorsale... qui est à l''œuvre dans le Freeze ».', 'docs/themes/10-vision-gestaltiste-du-stress.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (617, 155, 'La branche vagale dorsale, activée dans les situations de menace extrême', true, 1),
  (618, 155, 'Le cortex préfrontal, siège du contrôle volontaire', false, 2),
  (619, 155, 'La branche vagale ventrale, associée à la sécurité et à l''engagement social', false, 3),
  (620, 155, 'Le système orthosympathique, comme Fight et Flight', false, 4);
insert into question_themes (question_id, theme_id) values
  (155, (select id from themes where number = 10));

-- Q156 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (156, 'À quoi l''axe de verticalité est-il comparé dans le cours, pour illustrer le besoin d''ancrage et de reliance ?', 'Le fichier utilise l''image : « L''axe vertical est comparé à la colonne vertébrale d''un arbre : besoin de contact et d''ancrage à la terre, et besoin de reliance au ciel — ouverture, vastitude, intuition, créativité. »', 'docs/themes/10-vision-gestaltiste-du-stress.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (621, 156, 'Aux racines d''un arbre uniquement, sans lien avec ses branches', false, 1),
  (622, 156, 'À la colonne vertébrale d''un arbre : ancré dans la terre et relié au ciel', true, 2),
  (623, 156, 'À une boussole indiquant la direction du changement', false, 3),
  (624, 156, 'À un fleuve qui relie deux rives opposées', false, 4);
insert into question_themes (question_id, theme_id) values
  (156, (select id from themes where number = 10));

-- Q157 (thème 10)
insert into questions (id, question_text, explanation, source_file) values (157, 'Quel principe fort la formation pose-t-elle concernant la responsabilité face aux stresseurs ?', 'Le fichier pose ce principe explicitement : « je suis responsable de mon état, les stresseurs ne sont pas responsables de mon état intérieur » — on n''a pas de pouvoir sur l''extérieur, mais on a du pouvoir sur soi.', 'docs/themes/10-vision-gestaltiste-du-stress.md');
insert into choices (id, question_id, choice_text, is_correct, position) values
  (625, 157, '« Je suis responsable de mon état, les stresseurs ne sont pas responsables de mon état intérieur »', true, 1),
  (626, 157, '« La société est responsable du niveau de stress collectif »', false, 2),
  (627, 157, '« Seul le thérapeute est responsable de la gestion du stress du client »', false, 3),
  (628, 157, '« Le stresseur est responsable de mon état, je n''ai aucune marge de manœuvre »', false, 4);
insert into question_themes (question_id, theme_id) values
  (157, (select id from themes where number = 10));

select setval(pg_get_serial_sequence('questions', 'id'), (select max(id) from questions));
select setval(pg_get_serial_sequence('choices', 'id'), (select max(id) from choices));
