-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 05 Novembre 2015 à 11:48
-- Version du serveur :  5.6.25
-- Version de PHP :  5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `perso`
--

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `CHAT_ID` int(11) NOT NULL,
  `CHAT_MESSAGE` text COLLATE latin1_general_ci NOT NULL,
  `CHAT_USER_ID` int(11) NOT NULL,
  `CHAT_TO_USER_ID` int(11) NOT NULL,
  `CHAT_TIMESTAMP` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=751 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `chat`
--

INSERT INTO `chat` (`CHAT_ID`, `CHAT_MESSAGE`, `CHAT_USER_ID`, `CHAT_TO_USER_ID`, `CHAT_TIMESTAMP`) VALUES
(377, 'juste t''as un probl&egrave;me de session', 123, 0, 1446455068),
(3, 'c''est calm!!!', 12, 0, 1446041636),
(4, 'Bah ouais !', 2, 0, 1446041680),
(5, 'ouai c''est du &agrave; la digestion', 6, 0, 1446041682),
(6, 'on reste concentr&eacute;....', 9, 0, 1446041939),
(7, 'test', 2, 0, 1446041972),
(8, 'test', 2, 0, 1446041974),
(9, 'test\r\ntest', 2, 0, 1446041975),
(10, 'test', 2, 0, 1446041976),
(11, 'test', 2, 0, 1446041979),
(12, 'test\r\ntest\r\ntest\r\ntest\r\ntest', 2, 0, 1446041980),
(13, 'test', 2, 0, 1446041981),
(14, 'test', 2, 0, 1446041982),
(15, 'test', 2, 0, 1446041989),
(16, 'test', 2, 0, 1446042009),
(17, 'test', 12, 0, 1446042167),
(18, 'test', 12, 0, 1446042172),
(19, '.30', 10, 0, 1446042177),
(20, '5/5', 12, 0, 1446042186),
(21, '.', 10, 0, 1446042195),
(22, 'le timer en haut', 10, 0, 1446042222),
(23, 'mets le temps restant avant la fin de la journ&eacute;e', 10, 0, 1446042230),
(24, '123456789', 12, 0, 1446042232),
(25, '30000 lignes de code pour marquer test... fantastique....', 9, 0, 1446042232),
(26, 'Bah on test :p', 2, 0, 1446042408),
(27, 'il faudra ajouter un correcteur orthographique....', 9, 0, 1446042555),
(28, 'putain j''ai 2 ans', 6, 0, 1446042563),
(29, 'je suis un surdou&eacute; un peu moins de 2 ans et deja en formation bac +3/4', 6, 0, 1446042626),
(30, 'vantard ... ', 3, 0, 1446042647),
(31, 'bac &agrave; sable plus 3/4 ans', 8, 0, 1446042655),
(32, 'lol', 3, 0, 1446042661),
(33, 'j''ai pas dit que j''avais la plus grosse', 6, 0, 1446042675),
(34, 'Merci de bien vouloir pr&eacute;ciser ...', 3, 0, 1446042703),
(35, 'tete bien entendu', 6, 0, 1446042716),
(36, 'langue', 8, 0, 1446042718),
(37, 't&eacute;l&eacute;commande', 9, 0, 1446042786),
(38, 'BOUTON MAGIQUE ... PAUSE CLOPPE ? ', 3, 0, 1446042802),
(39, 'toxico', 6, 0, 1446042817),
(40, 'it''s time to go clope', 9, 0, 1446042818),
(41, 'OUAIP', 3, 0, 1446042826),
(42, 'goooooooooooooooooooooo allllllllll', 8, 0, 1446042903),
(43, 'CAFE ...', 3, 0, 1446042906),
(44, 'clope caf&eacute; ...... et plus si affinit&eacute;', 8, 0, 1446042923),
(45, 'euhhhhhh sans moi pour le plus', 6, 0, 1446042946),
(46, 'je passe mon cours', 9, 0, 1446042956),
(47, 'quoi de 9 sur le tchat', 6, 0, 1446044732),
(48, 'la moiti&eacute; de 18', 9, 0, 1446044850),
(49, 'retour de la pause', 2, 0, 1446044854),
(50, 'ZZZZZZZZZZ', 3, 0, 1446044868),
(51, 'pour toi david', 3, 0, 1446045008),
(52, 'http://vignette2.wikia.nocookie.net/fairy-tail/images/a/af/Smiley_Fuck.png/revision/latest?cb=20150315191456&amp;path-prefix=fr', 3, 0, 1446045019),
(53, '[img]http://vignette2.wikia.nocookie.net/fairy-tail/images/a/af/Smiley_Fuck.png/revision/latest?cb=20150315191456&amp;path-prefix=fr\r\n[/img]', 2, 0, 1446045090),
(54, 'sinon tu as celle ci ... http://datas.evilox.com/medias/photos/dde-travail-equipe_bloblo/photo/dde-travail-equipe_bloblo.jpg ou http://i20.servimg.com/u/f20/09/02/77/23/dde10.jpg', 3, 0, 1446045433),
(55, 'lol jb', 9, 0, 1446045669),
(56, 'test [link]blabla[/link]', 2, 0, 1446045718),
(57, 'Rat&eacute; ! Try again.', 11, 0, 1446045729),
(58, 'Tiens avec les lettres de Bruno Tavernier, le mot le plus long a 12 lettres: BOURRERAIENT. Un sens cach&eacute; ?', 11, 0, 1446045855),
(59, 'Alors qu''avec Quentin, on ne peut pas faire mieux que 11: QUINTILLION ou UNIVITELLIN.', 11, 0, 1446045929),
(60, 'Un Scrabbleur est parmi nous.', 11, 0, 1446045937),
(61, '?', 12, 0, 1446045952),
(62, '', 9, 0, 1446045980),
(63, '&lt; ? php echo hello world! ? &gt;', 9, 0, 1446046002),
(64, '', 10, 0, 1446046026),
(65, 'Point virgule roh ? :Pas content:', 11, 0, 1446046038),
(66, '', 10, 0, 1446046056),
(67, '', 10, 0, 1446046064),
(68, 'Pour ins&eacute;rer un lien dans le chat utilisez les balises [link]text[/link]', 2, 0, 1446046278),
(69, '[link]google.fr[/link]', 2, 0, 1446046341),
(70, 'tu peu venir bruno STP ?', 3, 0, 1446046349),
(71, '[link]http://google.fr[/link]', 2, 0, 1446046423),
(72, 'Voici le lien de ton meillieur ami [link]http://google.fr[/link]', 2, 0, 1446046453),
(73, 'Qui veut une glace : [link]http://evilox.com/medias/photos/glace-parfum-viagre/photo/glace-parfum-viagre.jpg[/link]', 8, 0, 1446046546),
(74, 'ca c pour ali :[link]http://evilox.com/medias/photos/cote-de-porc-halal/photo/cote-de-porc-halal.jpg[/link]', 8, 0, 1446046621),
(75, '', 10, 0, 1446046667),
(76, '@ r&eacute;mi: http://goo.gl/5P8jzV', 10, 0, 1446046766),
(77, '[link]http://goo.gl/5P8jzV[/link]', 10, 0, 1446046837),
(78, '[img]http://evilox.com/medias/photos/cote-de-porc-halal/photo/cote-de-porc-halal.jpg[/img]', 2, 0, 1446046868),
(79, '[link]http://bit.ly/1Ym08Io[/link]', 10, 0, 1446046874),
(80, 'comment ce faire gauler [link]http://evilox.com/medias/photos/reflet-film-x-vitre-train/photo/reflet-film-x-vitre-train.jpg[/link]', 8, 0, 1446046901),
(81, 'on peut avoir la meme pour demain [link]http://evilox.com/medias/photos/oops-animatrice-enfants/photo/oops-animatrice-enfants.jpg[/link]', 8, 0, 1446046961),
(84, '[img]http://i.ytimg.com/vi/C_S5cXbXe-4/maxresdefault.jpg[/img]', 10, 0, 1446047052),
(83, '[img]http://pics.blameitonthevoices.com/032010/omg_cat.jpg[/img]', 10, 0, 1446047011),
(86, '[link]https://www.anthrocity.net/advancedphoto/1598/difference-de-point-de-vue-developpeur-graphiste-chef-de-porjet-consultant-/[/link]', 11, 0, 1446047202),
(87, 'Un soup&ccedil;on de v&eacute;rit&eacute;', 11, 0, 1446047209),
(88, '[img]http://i.imgur.com/D8EZBjX.gif[/img]', 10, 0, 1446047235),
(89, 'Youhouuuu !!', 7, 0, 1446047238),
(90, '[img]http://positivr.fr/wp-content/uploads/2014/06/illusions-d-optique-gif-16.gif[/img]', 10, 0, 1446047329),
(91, 'Dans quel sens elle tourne ? :)', 10, 0, 1446047341),
(92, 'http://cafoc-auvergne2.net/campus/pluginfile.php/1943/course/overviewfiles/bigstock-Test-word-on-white-keyboard-27134336.jpg', 7, 0, 1446047341),
(93, '', 7, 0, 1446047367),
(94, '@TM: Si c''est l''illusion de la danseuse, c''est les 2 sens !', 11, 0, 1446047375),
(95, 'http://cafoc-auvergne2.net/campus/pluginfile.php/1943/course/overviewfiles/bigstock-Test-word-on-white-keyboard-27134336.jpg', 7, 0, 1446047401),
(96, '[img=http://cafoc-auvergne2.net/campus/pluginfile.php/1943/course/overviewfiles/bigstock-Test-word-on-white-keyboard-27134336.jpg][/img]', 7, 0, 1446047428),
(97, '[img]http://idata.over-blog.com/3/61/27/00/A4/LONG1/danseuse-2.gif[/img]', 10, 0, 1446047435),
(98, '[img]http://data.hotviber.com/2qu3wG3-MJIWn9znFoqwREvC194.gif[/img]', 8, 0, 1446047444),
(99, '[img]http://cafoc-auvergne2.net/campus/pluginfile.php/1943/course/overviewfiles/bigstock-Test-word-on-white-keyboard-27134336.jpg[/img]', 7, 0, 1446047447),
(100, '[img]http://cs540108.vk.me/c540106/v540106418/294e1/_CMrPT7EZIc.jpg[/img]', 7, 0, 1446047465),
(101, 'http://www.yvoz.net/wp-content/uploads/2010/10/raccourcis-clavier-humour.jpg', 11, 0, 1446047468),
(102, 'c''est violent.....', 6, 0, 1446047476),
(109, 'et merde on a un moderateur', 6, 0, 1446048011),
(110, 'c pour remy: [link]http://www.tuxboard.com/photos/2012/11/gifs-du-mercredi-danse.gif[/link]', 8, 0, 1446048173),
(111, '[img]http://www.tuxboard.com/photos/2012/11/gifs-du-mercredi-danse.gif[/img]', 2, 0, 1446048198),
(112, '[img]http://blog.experts.wengo.fr/files_experts/content/experts/10514/untitled%20folder/telekinesie.jpg[/img]', 11, 0, 1446048201),
(113, 'Un pouvoir que j''aurais aim&eacute; avoir: la t&eacute;l&eacute;kin&eacute;sie', 11, 0, 1446048211),
(114, 'oui regarde sa bouche moi aussi je c le faire', 8, 0, 1446048238),
(106, 'nonnnnnnnnnnnnnnnnnnnnnnnn pas de photo priv&eacute; stp', 8, 0, 1446047716),
(122, 'Il y a de l''espoir pour tous le monde       [img]http://cdn.smosh.com/sites/default/files/ftpuploads/bloguploads/0913/awkward-kiss-nerd.gif[/img]', 8, 0, 1446049002),
(116, '[img]http://media.gamaniak.com/gal/disney-horreur/gamaniak_twistedprincess_alice.jpg[/img]Pas aussi fr&eacute;quentable que la belle Alice qu''on a tous connus...', 11, 0, 1446048514),
(117, 'c''est combien le lot pour les jumelles danseuses', 6, 0, 1446048530),
(118, 'rien que pour remy: http://www.soompi.com/wp-content/uploads/2013/05/hyuna.jpg', 6, 0, 1446048701),
(120, 'va faire troque les jumelles contre elle', 8, 0, 1446048793),
(121, 'https://www.youtube.com/watch?v=bw9CALKOvAI', 6, 0, 1446048827),
(123, 'on t''as reconnu florian', 8, 0, 1446049086),
(124, 'c''est un plat d''hiver la langue fourr&eacute;', 6, 0, 1446049132),
(125, 'Cheveux fris&eacute;s, niet. Ecz&eacute;ma au visage, niet !', 11, 0, 1446049181),
(126, 'Baiser langoureux, oui.', 11, 0, 1446049195),
(127, 'perso je suis pr&eacute;s a me fris&eacute;e les cheveux et l''ecezma pour lui rouler une pelle', 8, 0, 1446049255),
(128, '/w R&eacute;my ca fonctionne avec un film ? ', 3, 0, 1446049286),
(129, 'bruno ...', 3, 0, 1446049369),
(130, 'ob_start(); //en premier', 3, 0, 1446049378),
(131, 'echo &quot;Erreur dans le chargement de votre image ... Redirection vers le formulaire (dans 2s) ... Merci de patienter!&quot;;\r\n			header(''Refresh: 2; url=http://localhost/Jour36/Enregistrement.html''); \r\n    		ob_flush();', 3, 0, 1446049390),
(132, 'Coucou', 108, 0, 1446107102),
(133, 'Hello evryboby', 3, 0, 1446107259),
(134, 'Evrybody Hello', 9, 0, 1446107441),
(135, '[img]http://staticclub.caradisiac.com/1/modelisme-modele-reduit/couleur-echelles-marque/photo/979668979/2423448c1a/couleur-echelles-marque-jaune-phare-allume-img.jpg?v=6[/img]', 3, 0, 1446107486),
(136, '[img]http://www.wingsunfurled-web.com/da/titi/images/titi-songeur.jpg[img]', 108, 0, 1446107532),
(137, '[img]http://www.wingsunfurled-web.com/da/titi/images/titi-songeur.jpg[/img]\r\n', 108, 0, 1446107552),
(138, 'Youhou sa fonctionne mdr', 108, 0, 1446107590),
(139, 'Bah oui ^^', 2, 0, 1446108018),
(140, 'un peu moins fort titi stp', 3, 0, 1446108226),
(141, 'Allez, dernier jour avant notre w-e prolong&eacute; ! :impatient', 11, 0, 1446108281),
(142, 'salut ali', 12, 0, 1446108361),
(143, 'salut l''arabe', 112, 0, 1446108376),
(144, 'test', 2, 0, 1446108407),
(145, 'yo les couilles bien ou bien???', 6, 0, 1446108451),
(146, 'Bien ^^', 2, 0, 1446108458),
(147, 'ca va bien patafouin', 8, 0, 1446108513),
(148, '[img]http://feelgoodbread.ca/assets/img/backgrounds/logo_fr_bm.png[/img]', 2, 0, 1446108527),
(149, '[img]http://www.silence.fr/images/silence.jpg[/img]', 3, 0, 1446108608),
(150, 'Suceuse !', 2, 0, 1446108629),
(151, 'En rouge sang, tr&egrave;s froid dans le dos.', 11, 0, 1446108645),
(152, '[img]http://soocurious.com/fr/wp-content/uploads/2014/11/sucette-geante.jpg[/img]', 3, 0, 1446108668),
(153, '[link]http://www.youtube.com/watch?v=i9vsbVHvIss[/link]', 11, 0, 1446108697),
(155, 'toc toc', 12, 0, 1446110746),
(156, 'c''est le matin encore!!!!', 12, 0, 1446110757),
(157, 'Coucou !! je suis l&agrave; !!!', 7, 0, 1446110982),
(158, 'Youhou !!', 7, 0, 1446111015),
(159, 'ya que Dom et Naoufal ? xD', 2, 0, 1446111146),
(160, '[img]http://www.jokideo.com/wp-content/uploads/2014/01/Everyone-go-back.png[/img]', 7, 0, 1446111574),
(161, 'Pas mal pas mal =)', 2, 0, 1446111623),
(162, 'thx ;)', 7, 0, 1446111630),
(163, '[img]http://www.photos-a-la-con.fr/wp-content/uploads/2013/05/vieille-photo.jpg[/img]', 6, 0, 1446111906),
(164, 't''&eacute;tait deja un rapide &agrave; l''&eacute;poque :p', 2, 0, 1446111950),
(165, 'Vla le selfie ! :D', 7, 0, 1446112037),
(166, 'TOXICO', 3, 0, 1446112375),
(167, 'D&eacute;j&agrave; une t&ecirc;te de bite &agrave; l''&eacute;poque :p', 2, 0, 1446112380),
(168, 'moi je dit que ca merite une cacahuete ', 3, 0, 1446112402),
(169, 'bande de jaloux....', 6, 0, 1446112497),
(170, '[img]http://media.topito.com/wp-content/uploads/2014/06/lamproie_resultat.jpg[/img] Madame Georgette qui fait une pipe avec son dentier.', 11, 0, 1446112520),
(171, '[img]http://www.allodocteurs.fr/media/6335-cacahuetes-arachide.jpg[/img]', 2, 0, 1446112520),
(172, 'perso non mais c le petit R&eacute;my qui te traite de tete de bite ', 3, 0, 1446112529),
(173, '[img]http://blog.epet.hk/wp-content/uploads/2015/07/fatcat.jpg[/img]', 7, 0, 1446112628),
(174, '@JB je suis pas petit !', 2, 0, 1446112695),
(175, '[img]http://www.ilovegenerator.com/large/bibiche-love-poupoule-132120652326.png[/img]', 6, 0, 1446112851),
(176, '@Bruno : Vaux mieux &ccedil;a qu''un mort :p', 2, 0, 1446115072),
(177, '@r&eacute;my =&gt; le tchat me fee planter mon wampp', 3, 0, 1446116563),
(178, 'Comment &ccedil;a ? ', 2, 0, 1446116611),
(179, 'ya pas de rapport entre ton wamp et le xampp qui tourne sur le serveur', 2, 0, 1446116622),
(180, 'je suis obliger de relancer a chaque fois les exos sinon il ne se modifie pas ', 3, 0, 1446116641),
(181, '[link]https://www.facebook.com/246330025378880/photos/a.246344335377449.71150.246330025378880/1140583132620227/?type=3[/link]', 8, 0, 1446116882),
(182, '[img]http://monsite-orange.fr/trucalacon/page2/image/2-picture2.gif[/img]', 6, 0, 1446116906),
(183, '[img]https://s-media-cache-ak0.pinimg.com/736x/46/de/1d/46de1d3b01ae2f389c05e57784cf7066.jpg[/img]', 2, 0, 1446117771),
(184, '@R&eacute;my =&gt;&gt;&gt;&gt;&gt; Rb G@m1 pliz', 3, 0, 1446117920),
(185, 'dk', 3, 0, 1446117953),
(186, 'If de Rudyard Kippling', 6, 0, 1446118179),
(187, 'a b1 bvo ...', 3, 0, 1446118357),
(188, 'apache est sioux', 6, 0, 1446118388),
(189, 'il c fee scalp&eacute;', 3, 0, 1446118400),
(190, 'Squaw, fais la lessive !', 11, 0, 1446118430),
(191, 'et pour le plantage d''apache c pas a cause de la mise en veille windobe ? ', 3, 0, 1446118544),
(192, 'blessipo', 9, 0, 1446118562),
(193, 'apache sioux windows', 6, 0, 1446118620),
(194, 'tu veux une histoire courte?', 9, 0, 1446118685),
(195, 'envoie ? ', 2, 0, 1446118716),
(196, 'tu en veux une autre?', 9, 0, 1446118726),
(197, 'le manque de sommeil ca tue...', 6, 0, 1446118773),
(198, 'C''est une blonde qui retrouve une de ses copine blonde.\r\n- Holalalalalalala j''ai encore rat&eacute; le permis !\r\n- Qu''est qui c''est pass&eacute;?\r\n- Je suis arriv&eacute; pr&ecirc;t d''un rond point et l&agrave; comme l''indique le panneau 30, j''ai fait 30 fois le tour du rond point.\r\n- Et tu t''es tromp&eacute; de combien de tour ???', 11, 0, 1446118774),
(199, '[img]http://img106.imageshack.us/img106/7922/blonde11qo4.jpg[/img]', 11, 0, 1446118883),
(200, 'https://twitter.com/niyakeru_dog/status/658238578271502336', 7, 0, 1446119479),
(201, '[url]https://twitter.com/niyakeru_dog/status/658238578271502336[/url]', 7, 0, 1446119493),
(202, '[link]https://twitter.com/niyakeru_dog/status/658238578271502336[/link]', 7, 0, 1446119510),
(203, 'Tiens &ccedil;a me donne faim...', 11, 0, 1446119545),
(204, '[img]http://qqcitations.com/images-citations/quote-si-vous-m-avez-compris-c-est-que-je-me-suis-mal-exprime-alan-greenspan-187746.jpg[/img]', 2, 0, 1446119645),
(205, 'A TABLE', 6, 0, 1446119863),
(206, '12h57 il reste 3mn', 9, 0, 1446119874),
(207, 'non 58', 6, 0, 1446119881),
(208, 'c t pa la peine 2 preciser ', 3, 0, 1446119881),
(209, 'Bah on reprendra 2 minutes plus t&ocirc;t.', 11, 0, 1446119891),
(210, 'comme dirait mon pote: LA LOI C''EST MOI!', 9, 0, 1446119905),
(211, 'tu fee ce que tu veux perso florian ', 3, 0, 1446119907),
(212, 'a vos marques pret partez', 6, 0, 1446119997),
(213, 'cofe miam miam', 3, 0, 1446120004),
(214, 'Plop !', 7, 0, 1446122926),
(215, '\r\nbien', 12, 0, 1446123301),
(216, 'tres bien', 12, 0, 1446123315),
(217, 'tre tre bien', 12, 0, 1446123321),
(218, 'salut JB', 12, 0, 1446123338),
(219, 'salam', 3, 0, 1446123360),
(220, 'Retour du miam =)', 2, 0, 1446123898),
(221, 'wow c''est beau c''est &agrave; gauche...', 9, 0, 1446123919),
(222, '?????', 6, 0, 1446124011),
(223, 'Un chinois dit: &quot;On a trouv&eacute; une femme sans cerveau, on lui en a greff&eacute; un et un an apr&egrave;s elle a trouv&eacute; du boulot!&quot;', 9, 0, 1446124059),
(224, 'un allemand dit &quot;on a trouv&eacute; un homme sans couilles; on lui en a greff&eacute; une paire et un an apr&egrave;s il avait trouv&eacute; du boulot!&quot;', 9, 0, 1446124090),
(225, 'je connais', 6, 0, 1446124096),
(226, 'un fran&ccedil;ais dit: &quot;on a trouv&eacute; un homme sans couilles ni cerveau, on l''a &eacute;lu pr&eacute;sident et un an apr&egrave;s tout le monde cherche du boulot&quot;', 9, 0, 1446124127),
(227, '[img]http://forevershowtroll.f.o.pic.centerblog.net/1370d6fc.jpg[/img]', 3, 0, 1446124336),
(228, 'pas la peche...', 6, 0, 1446124565),
(229, 'ni la frite ', 3, 0, 1446124575),
(230, 'ni les moules', 9, 0, 1446124591),
(231, '[img]http://p3.storage.canalblog.com/33/47/45545/83699018_p.jpg[/img]', 2, 0, 1446124718),
(232, 'Gnia ! Gnia ! Gnia-Gnia !', 7, 0, 1446124720),
(234, 'Gnia Gnia', 12, 0, 1446125254),
(235, 'Gnia', 2, 0, 1446125401),
(236, '[img]https://scontent-cdg2-1.xx.fbcdn.net/hphotos-xta1/v/t1.0-9/12141686_935106736581548_8733672440905686541_n.jpg?oh=01e310dacede4fa0b05a3223b6149c82&amp;oe=56B5EF9F[/img]', 108, 0, 1446125562),
(237, '[link]https://www.google.fr/search?q=ola&amp;client=opera&amp;hs=X69&amp;channel=exp1a-ob-fr&amp;source=lnms&amp;tbm=isch&amp;sa=X&amp;ved=0CAcQ_AUoAWoVChMI-oGhueXnyAIVRX8aCh2IGw6S&amp;biw=1920&amp;bih=971[/link]', 2, 0, 1446125613),
(238, '[img]http://new4.fjcdn.com/pictures/Ola_561572_4859732.jpg[/img]', 7, 0, 1446125699),
(239, '[img]https://scontent-cdg2-1.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/12112273_933507450074810_3132460981952584903_n.png?oh=df2d072708b5629bc13a03880632d787&amp;oe=56B486DE[/img]', 108, 0, 1446125720),
(240, '[link]http://i.kinja-img.com/gawker-media/image/upload/d12qybvw34sclnoosdri.jpg[/link]', 6, 0, 1446125763),
(241, 'ca c''etait du mobile...', 6, 0, 1446125780),
(242, '[img]https://scontent-cdg2-1.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/12144858_931510260274529_4599138694924970042_n.jpg?oh=5e703b85757448bc39f45fcfa2e3f6f2&amp;oe=56848DFC[/img]', 108, 0, 1446125810),
(243, '[img]https://scontent-cdg2-1.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/12088324_928925200533035_3594933233870903759_n.jpg?oh=054cc8a4b47d8cf1cafbbedd28cbb7f4&amp;oe=56D06C64[/img]', 108, 0, 1446125953),
(244, '[img]http://media.lelombrik.net/t/ae56db5c30e892350fe64a4db87ae764/p/01.jpg[/img]', 8, 0, 1446126291),
(245, 'prefere a droite ', 3, 0, 1446126321),
(246, '[img]https://scontent-cdg2-1.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/11904726_909007085858180_896307061508553329_n.jpg?oh=c3df54f98de407169f397c6885d24c6f&amp;oe=56BB687C[/img]', 108, 0, 1446126725),
(247, '$bruno ... pourrait tu remontrer ta BDD stp ? ', 3, 0, 1446126808),
(248, 'rate bouffon', 12, 0, 1446127215),
(249, 'Gnia Gnia', 12, 0, 1446127226),
(252, '@Bruno : Satisfait ? ', 2, 0, 1446127854),
(253, 'sinon tu rembourse ? ', 3, 0, 1446127888),
(251, '[link]http://media.lelombrik.net/t/dd8360090b68f01285ceb0b1860b11d9/dd8360090b68f01285ceb0b1860b11d9.webm[/link]', 8, 0, 1446127561),
(254, 'Rembourser un truc gratuit de base ? c''est pas un gouffre financier ? xD', 2, 0, 1446127917),
(255, 'et mon taux de com ? ?????', 3, 0, 1446128056),
(256, 'C''est un r&eacute;gime communiste ici', 9, 0, 1446128082),
(257, 'Tout pour bruno :p', 2, 0, 1446128093),
(258, 'c bien ce que j''avais peur ', 3, 0, 1446128100),
(259, 'TPS', 9, 0, 1446128105),
(260, 'JE PARLES COMME JE VEUX ET JE TE MERDE ', 3, 0, 1446128119),
(261, 'Jsuis pas scato =)', 2, 0, 1446128220),
(262, '[img]http://la-ville-en-rose.com/wp-content/uploads/2015/04/Dessin-article-simulation.png[/img]', 2, 0, 1446128927),
(263, '[link]http://la-ville-en-rose.com/wp-content/uploads/2015/04/Dessin-article-simulation.png[/link]', 2, 0, 1446128987),
(264, 'utf8_decode(''Connect&eacute;'');', 3, 0, 1446128992),
(265, '', 11, 0, 1446129084),
(266, '', 11, 0, 1446129126),
(267, 'les niouse sont franchement &agrave; la con y a pas a dire', 6, 0, 1446129176),
(268, 'Je viens d''essayer du code entre balises PHP et il est tout simplement ignor&eacute;. Pas un message d''avertissement pour dire que c''est pas la peine d''essayer ?', 11, 0, 1446129187),
(269, 'CANARD', 3, 0, 1446129218),
(270, 'alert(&quot;Jajaja&quot;)', 11, 0, 1446129220),
(271, 'on remplace le message par l''envoie d''un virus qui redemarre le pc', 6, 0, 1446129227),
(272, 'AVEC FORMAT ', 3, 0, 1446129245),
(273, '', 11, 0, 1446129260),
(274, 'DELTREE C:\\*.*', 3, 0, 1446129268),
(275, 'il sont cool c asiatique: [link]http://media.lelombrik.net/t/c31d3da7e186adb74bb9e57e9fa2b87e/c31d3da7e186adb74bb9e57e9fa2b87e.webm[/link]', 8, 0, 1446129276),
(276, 'on peut essayer l''envoie d''un virus au hacker lol', 6, 0, 1446129364),
(277, '', 11, 0, 1446129390),
(278, 'Yo ! Yo ! Yo !', 7, 0, 1446129517),
(279, '[link]https://twitter.com/niyakeru_cat/status/659721089606488064[/link]', 7, 0, 1446129606),
(280, 'un couple en salle d''accouchement :', 112, 0, 1446130103),
(281, 'leb&eacute;b&eacute; nait etle medecin dit :', 112, 0, 1446130131),
(282, 'il y a un souci', 112, 0, 1446130146),
(283, 'il a le corp d''un europ&eacute;en', 112, 0, 1446130161),
(284, 'la tete d''un africain', 112, 0, 1446130169),
(285, 'et les membres d''un asiatique', 112, 0, 1446130190),
(286, 'les parents se regardent et la mere :', 112, 0, 1446130206),
(287, 'sa c''est la partouze chez Mireille', 112, 0, 1446130224),
(288, 'pourvu que le petit n''aboie pas', 112, 0, 1446130241),
(289, '@li gateau', 9, 0, 1446130281),
(290, 'con nichon aaaaaaaaaaaaaa', 8, 0, 1446130312),
(291, 'C''est un viol sur la langue nipponne, &ccedil;a ! Allez dehors ! Zou !', 11, 0, 1446130534),
(292, 'un petit cadeau[link]http://media.lelombrik.net/t/70fb43704cd9d045b3d39c2e5bc32b3c/70fb43704cd9d045b3d39c2e5bc32b3c.webm[/link]', 8, 0, 1446131305),
(293, '@Remy: tu va mang&eacute; des legume  : [img]http://media.lelombrik.net/t/54724aaaa563926974a0eaf0fab4c0ab/p/01.jpg[/img]', 8, 0, 1446131379),
(294, 'tu gauler la flo : [img]http://media.lelombrik.net/t/ed5b9536fb6191ffe04dc4e16ce51a57/p/01.jpg[/img]', 8, 0, 1446131460),
(295, 'pour ce qui kiff les poney: [img]http://media.lelombrik.net/t/49ad188c6a23c6f06bcb8b11bd7cbc80/p/01.jpg[/img]', 8, 0, 1446131523),
(296, 'id&eacute;&eacute; de voiture pour flo : [img]http://media.lelombrik.net/t/2f57bc18ff82c08b6dda0f88fc42df74/p/01.jpg[/img]', 8, 0, 1446131726),
(297, 'Euh pas mal, mais mon oncle m''a revendu la sienne. Je compte l''avoir dans quelques jours.', 11, 0, 1446131759),
(298, 'Un truc dans ce genre l&agrave;:', 11, 0, 1446131797),
(299, '[img]http://faimg1.forum-auto.com/mesimages/228069/clio%20verte%20zizou%20o%20soleil%20avant3.JPG[/img]', 11, 0, 1446131806),
(300, 'On est &agrave; 100 lieues de mod&egrave;les r&eacute;cents (la caisse que je vais avoir a une belle vingtaine d''ann&eacute;es), une Clio 1.', 11, 0, 1446131854),
(301, '200.000Km, tout &agrave; fait fonctionnelle.', 11, 0, 1446131873),
(302, 'la classe!!!', 12, 0, 1446132328),
(303, 'yes week end', 6, 0, 1446132414),
(304, '$R&eacute;my =&gt; au dessus des connect&eacute;s peu tu rajouter :&quot; LISTE DES MEMBRES CONNECTES&quot;', 3, 0, 1446132433),
(305, '@Bruno =&gt;&gt; Ca c''est la meilleur news de la journ&eacute;e ', 3, 0, 1446132622),
(306, 'on a perdu jB', 6, 0, 1446132912),
(307, 'Appelles Jacques PRADEL', 9, 0, 1446132940),
(308, 'pourtant il est visible le bestiau', 3, 0, 1446132942),
(309, 'yes perdu de retrouve de vue', 6, 0, 1446132955),
(310, 'pradel/sabatier: perdue de vue/avis de recherche', 6, 0, 1446133049),
(311, 'L''&eacute;cole des Fan', 9, 0, 1446133072),
(312, 'jacque martin', 8, 0, 1446133093),
(313, 'a ne pas confondre avec l''&eacute;cole des faon', 9, 0, 1446133100),
(314, 'ni l''ecole des foune', 8, 0, 1446133115),
(315, 'je veux bien faire &quot;d&eacute;formateur&quot; &agrave; l''&eacute;cole des founes', 9, 0, 1446133139),
(316, 'quoi que maintenant ca serait plutot l''ecole des fan&eacute;s ils sont tous a la retraite', 6, 0, 1446133146),
(317, '@David [img]http://afrique.kongotimes.info/thumbnail.php?file=images/carton_rouge_384053026.jpg&amp;size=article_medium[/img]', 3, 0, 1446133196),
(318, 'maintenant c avec philipe risoli', 8, 0, 1446133232),
(319, 'et patrick roy', 3, 0, 1446133243),
(320, 'philippe rissol&eacute;', 6, 0, 1446133245),
(321, 'Philippe, ris au lit !', 11, 0, 1446133263),
(322, 'il y a pas que philippe qui rie au lit', 8, 0, 1446133308),
(323, '[img]http://www.touranpassion.com/forum/images/uploads/dav-86/dav-86_13.05.2006_1147518974_mail_carton_jaune.gif[/img]', 3, 0, 1446133332),
(324, '@ Remy tu suces et tu pans', 6, 0, 1446133349),
(325, 'pends', 3, 0, 1446133387),
(326, 'tu suce pendant quoi', 8, 0, 1446133390),
(327, 'son arbre a chat ', 3, 0, 1446133410),
(328, 'tu suces pan dans le cul ou pendant le cul', 6, 0, 1446133425),
(329, 'La minute philo: [img]http://idata.over-blog.com/3/95/42/16/Citations/37Citat.jpg[/img]', 11, 0, 1446133426),
(330, 'Oui j''ai aim&eacute; la philo en terminale. M&ecirc;me si je n''avais eu que 8 au bac S...', 11, 0, 1446133450),
(331, 'non c cherfli pas aaslam', 8, 0, 1446133467),
(332, 'en meme temps s c''est plutot science que philo', 6, 0, 1446133473),
(333, 'il a eu le bac comme il a eu son permis ', 3, 0, 1446133503),
(334, 'Faux. Le temps est une th&eacute;matique de la philo.', 11, 0, 1446133510),
(335, 'moi j''ai arrete a bac -&quot;', 6, 0, 1446133520),
(336, 'bac - 3', 6, 0, 1446133526),
(337, 'JE SUIS LA :)', 3, 0, 1446133668),
(338, 'moi g eu le bac +3.5 de moyenne', 8, 0, 1446133683),
(339, 'Bac &agrave; Sable mention seau rouge', 9, 0, 1446133776),
(340, 'Bac &agrave; l&eacute;gumes option salsifis.', 11, 0, 1446133792),
(341, 'avec ou sans la pelle et le rateau  ?', 3, 0, 1446133794),
(342, 'j''ai jamais aim&eacute; les rateaux', 9, 0, 1446133812),
(343, 'la pelle... faut voir', 9, 0, 1446133819),
(344, 'la pelle ca se roule les rateaux ca se prends', 6, 0, 1446133836),
(345, 'bac &agrave; linge avec mention &quot;tu repassera&quot;', 8, 0, 1446133844),
(346, 'bac anal', 6, 0, 1446133859),
(347, 'Les Bac S con&ccedil;oivent les cartons, les ES les vendent, et les L dorment dedans. Citation c&eacute;l&egrave;bre.', 11, 0, 1446133912),
(348, 'g failli l''avoir aussi mais ma prof a dit arret', 8, 0, 1446133915),
(349, 'C''est profond &ccedil;a Sylvain...', 9, 0, 1446134129),
(350, 'j''ai eu la le bac terie mention cross well jacob', 6, 0, 1446134132),
(351, 'ma prof a dit ca gaz trop...', 6, 0, 1446134215),
(352, 'a mon avis tu n''as pas ete le seule a etre touch&eacute; par cette bac ter i', 3, 0, 1446134221),
(353, 'tu m&eacute;thanes', 9, 0, 1446134232),
(354, 'citation d''un incin&eacute;r&eacute; c&eacute;l&eacute;bre :&quot; avec jexfour j''ai vu le pire et maintenant avec j''expire j''ai vu le four&quot;...', 6, 0, 1446134484),
(355, 'et la fourmi croonde', 9, 0, 1446134540),
(356, 'le P(enis) H(aute) P(ression) ca d&eacute;coiffe...', 6, 0, 1446134803),
(357, 'P(rogrammation) H(yper) P(erfectionniste)', 11, 0, 1446135055),
(358, 'Ou le point virgule oubli&eacute; qui change tout...', 11, 0, 1446135073),
(359, 'bouh', 108, 0, 1446135142),
(360, 'Bouh Yab&egrave;s', 11, 0, 1446135221),
(361, 'bouh tchou', 9, 0, 1446135339),
(362, 'Bouh les Huns !', 11, 0, 1446135396),
(363, 'test', 2, 0, 1446414261),
(364, 'test', 2, 0, 1446448715),
(365, 'Bonjour et bonne semaine ', 3, 0, 1446453328),
(366, 'Bonjour =)', 2, 0, 1446453449),
(367, 'Semaine 9, d&eacute;j&agrave;...', 11, 0, 1446453766),
(368, 'Salam', 9, 0, 1446453808),
(369, 'l''upload d''avatar marche pas', 113, 0, 1446454149),
(370, 'malek hum', 6, 0, 1446454170),
(371, 'Yo', 114, 0, 1446454355),
(372, 'qui veux caresser mon zizi ? :)', 7, 0, 1446454422),
(373, 'test', 115, 0, 1446454933),
(374, 'Yo', 120, 0, 1446454984),
(378, 'Toujours pas assez grand pour le faire tout seul ? xD', 2, 0, 1446455582),
(379, 'non il est interdit de charge lourde alors avec 50 cm 3kg 2  il est limite il lui faut de l''aide', 6, 0, 1446456370),
(380, 'c''est pas moi qui l''ai dit...', 6, 0, 1446456499),
(381, 'passPerdu---&gt; tanpis dans le cul Lulu', 6, 0, 1446456549),
(382, 'pens&eacute;e philosophique : dis-moi et j''oublie., montre-moi et je me souviens, implique-moi et je comprends.....', 6, 0, 1446457666),
(383, 'impliques toi alors ;)', 9, 0, 1446457679),
(384, 'PAUSE SUCETTE A CANCER!!!', 6, 0, 1446458131),
(385, 'ARGHHHHH DE LA NICOTINE JE SUIS EN MANQUE', 6, 0, 1446458379),
(386, 'Yo !', 124, 0, 1446459492),
(387, '[img]http://i.skyrock.net/7237/36667237/pics/2138482121_small_1.jpg[/img]', 7, 0, 1446460511),
(388, '[img]http://media.lelombrik.net/t/cc92344001bf055ca9b007af563d91ad/f/cc92344001bf055ca9b007af563d91ad.jpg[/img]', 7, 0, 1446460546),
(389, 'le nouveau logo de M', 6, 0, 1446460549),
(390, 'Sympa le nouveau costume de BatGirl', 9, 0, 1446460642),
(391, 'Batman l''a marqu&eacute; au fer lol', 7, 0, 1446460685),
(392, 'Bonjour citoyen !', 125, 0, 1446461036),
(393, 'Merci pour votre soutient !', 125, 0, 1446461056),
(394, 'je tenais &agrave; m''excuser pour le ch&ocirc;mage .. je voulais m''acheter un paire de lunette gucci ...', 125, 0, 1446461276),
(395, 'j''aimerai avant toute chose ouvrir des &eacute;cole webforce 3 au kenya pour former des d&eacute;veloppeurs comp&eacute;tent et surtout &agrave; moindre coup !', 125, 0, 1446461605),
(396, 'batman il est aveugle , il sait pas vis&eacute; parce que c''est pas la que je l''aurais mis moi ma marque...', 6, 0, 1446462249),
(397, 'c claire .... plus bas ;)', 3, 0, 1446462272),
(398, 'bin oui les chauves souris ca aiment les grottes...', 6, 0, 1446462301),
(399, 'C''est qui ce BoB?', 9, 0, 1446462866),
(400, 'Yo !', 7, 0, 1446463853),
(401, 'yo', 124, 0, 1446463917),
(402, 'ZtH5ju4N2haRVzPeHVBI1jtkUulNWnHb', 124, 0, 1446464011),
(403, 'Je recherche des candidats ', 7, 0, 1446464557),
(404, '*VMD=&gt;Prends guizmo ...', 3, 0, 1446464647),
(405, '[img]http://logos-vector.com/images/logo/xxl/7/3/9/73938/Video_Marc_Dorcel_104b4_450x450.png[/img]', 3, 0, 1446464803),
(406, 'Yeaaaah', 7, 0, 1446464828),
(407, 'et l''ecriture cul nez il forme tu connais R&eacute;my', 6, 0, 1446464864),
(408, '@Bruno =&gt; tu passes les info dans le header ??', 3, 0, 1446464936),
(409, 'Pause miam !', 2, 0, 1446466154),
(410, 'Retour de miam, Digestion mode [on]', 2, 0, 1446470361),
(411, '[link]http://i.skyrock.net/4706/58604706/pics/3208022859_1_20_kJ0XO6NV.png[link]', 6, 0, 1446470399),
(412, '[link]http://i.skyrock.net/4706/58604706/pics/3208022859_1_20_kJ0XO6NV.png[/link]', 6, 0, 1446470424),
(413, '[link]http://idata.over-blog.com/0/38/60/59/images/lundi26-1il0vl4a.jpg[/link]', 6, 0, 1446470523),
(414, 'vivement vendredi qu''on puisse cit&eacute; Obama &quot;yes week end&quot;', 6, 0, 1446470580),
(415, 'pour l''avatar on est oblig&eacute; de se teindre en schtroumph?????', 6, 0, 1446470754),
(416, 'non parce que le bleu me va pas comme tein', 6, 0, 1446470780),
(417, 'du coup je pourrais pas avoir un Hulk plutot qu''un Avatar', 6, 0, 1446470973),
(418, 'histoire de pouvoir etre vert', 6, 0, 1446471005),
(419, 'quoi que je suis deja vert il me manque juste les muscles', 6, 0, 1446471099),
(420, 'quand c''est que je peux mettre mon hulk?????', 6, 0, 1446472853),
(421, 'JE VEUX UN NAVATAR!!!!!', 9, 0, 1446472865),
(422, 'NON UN HULK', 6, 0, 1446472876),
(423, 'UN NANA VATAR', 9, 0, 1446472885),
(424, 'ah non pas une NANA VANTARD', 6, 0, 1446472904),
(425, 'bienvenue a Byrouth', 6, 0, 1446473209),
(426, 'bienvenue a Byrouth les plaisir de l''orient vous sont propos&eacute; par le tour op&eacute;rator 7&eacute;me ciel avec qui vous pourrez faire l''esclade du mine arret', 6, 0, 1446473344),
(427, '@remy =&gt; .com ou . fr ton add  ?', 3, 0, 1446473429),
(428, 'Anagramme c&eacute;l&egrave;bre: Pablo Picasso --&gt; Pascal Obispo', 11, 0, 1446473626),
(429, 'De la m&ecirc;me fa&ccedil;on: David Arcole --&gt; Ado Vicelard', 11, 0, 1446473666),
(430, 'Ado il faut le dire vite....', 9, 0, 1446473722),
(431, 'ni ado ni vicelard', 6, 0, 1446473851),
(432, 'moi je dit que ca merite une cacahuete', 3, 0, 1446473994),
(433, 'je suis contre la violence', 6, 0, 1446474009),
(434, 'Bruno Tavernier -&gt; Un bavoir rentr&eacute;', 11, 0, 1446474137),
(435, 'je penche... donc je Chuis!', 9, 0, 1446474466),
(436, 'php_fileinfo.dll', 2, 0, 1446474646),
(437, 'Youpeeeeee un NAVATARE!', 9, 0, 1446475073),
(438, 'Aaaah !', 7, 0, 1446475245),
(439, 'Je veux une bite en avatar !!', 7, 0, 1446475254),
(440, 'http://wf3-h4/Images/Avatar/9.jpg', 7, 0, 1446475296),
(441, 'Bah &ccedil;a fonctionne bine :p', 2, 0, 1446475370),
(442, 'Dominique Lepage -&gt; Endogamique pli&eacute;', 11, 0, 1446475578),
(443, 'yeah !!', 7, 0, 1446475638),
(444, 'Endogamique = Personne qui choisit prioritairement son &eacute;poux/&eacute;pouse (cf Oui, qui paye Dia)', 11, 0, 1446475642),
(445, 'Merci Cortana', 3, 0, 1446475662),
(446, 'Meooww !!', 7, 0, 1446475809),
(447, 'cort Anna?', 9, 0, 1446476151),
(448, '@REMY HLP', 3, 0, 1446476261),
(449, 'Bonjour je viens d''arriver :)', 127, 0, 1446476586),
(450, 'On fait quoi ? :)', 127, 0, 1446476595),
(451, 'on fait bli', 9, 0, 1446476733),
(452, '@TB Bonjour', 2, 0, 1446477907),
(453, 'une id&eacute;e.... t''en veux une autre?', 9, 0, 1446478109),
(454, 'euh l''id c''est fini entre temps y a eu la ds la cx laxm...', 6, 0, 1446478126),
(455, 'tss...', 2, 0, 1446478390),
(456, 'c''est quoi la specialit&eacute; parisienne?????', 6, 0, 1446478627),
(457, 'l''insulte en bagniole ? ', 2, 0, 1446478683),
(458, 'le p&eacute;rif&eacute;?', 9, 0, 1446478698),
(459, 'p&eacute;rifeu', 9, 0, 1446478710),
(460, 'parce que que en picardie c''est la betterave et le conseil regional nous en a encore donn&eacute; une bonne illustration en nous mettant une a propos de leur venue cet apes midi...', 6, 0, 1446478746),
(461, 'ils vont arriver &agrave; 17h29 :p', 2, 0, 1446478771),
(462, 'Le centre du monde ? Si je demande &agrave; des &eacute;trangers de citer une ville d''Europe, ils vous sortiront presque tous Paris.', 11, 0, 1446478786),
(463, '17h45 histoire d''etre sur que tout le monde est bien parti...', 6, 0, 1446478802),
(464, 'On a encore &eacute;tait oubli&eacute; :''(', 127, 0, 1446478825),
(465, 'Pauv'' Dom, pleure pas xD', 2, 0, 1446478837),
(466, 'Chi !', 127, 0, 1446478862),
(467, 'bah non on a pas rachet&eacute; de mouchoir et je suis pas sur qu''il y ait encore beaucoup de pq', 6, 0, 1446478910),
(468, 'Il reste juste un rouleau ', 127, 0, 1446478927),
(469, '&ccedil;a fait combien de feuilles &ccedil;a un rouleau?', 9, 0, 1446479229),
(470, '&ccedil;a mesure combien une feuille  ? et combien le rouleau en tout ? xD', 2, 0, 1446479251),
(471, 'ca depend de la marque et de l''epaisseur du papier du nombre de feuille...', 6, 0, 1446479265),
(472, 'un roux lo', 9, 0, 1446479275),
(473, 'j''suis vert!', 9, 0, 1446479293),
(474, 'oh hulk...', 6, 0, 1446479302),
(475, 'euh remy t''es chauve?', 6, 0, 1446479370),
(476, 'nop ^^', 2, 0, 1446479383),
(477, 'bin si j''te vois sur ta webcam... oups c''est un avatar', 6, 0, 1446479405),
(478, 'un nave atar?', 9, 0, 1446479422),
(479, 'je veux de la visio .. du skype maison qui dechire...', 6, 0, 1446479440),
(480, 'Toune la t&ecirc;te !', 2, 0, 1446479450),
(481, 'je peux pas j''ai un torticoli', 6, 0, 1446479466),
(482, 'fee toi plaisir David .... code l''appli', 3, 0, 1446479468),
(483, 'on a dit ''qui d&eacute;chire''!!', 9, 0, 1446479474),
(484, 'lol', 3, 0, 1446479481),
(485, 'ca y est hulk est de retour', 6, 0, 1446479487),
(486, 'hogan', 9, 0, 1446479498),
(487, 'je peux retourner faire dodo ... hein ', 3, 0, 1446479512),
(488, 'un gros mucle avec un tshirt jaune et un boa....', 6, 0, 1446479532),
(489, 'un gros muscle avec un tshirt jaune et un boa a plume', 6, 0, 1446479554),
(490, 'fou la toi ou je pense ta plume ', 3, 0, 1446479577),
(491, 'ca pourrait faire un oiseau rare ', 3, 0, 1446479589),
(492, 'ouai une grisouille... le p''tit oiseau avec des grosses couille ou le ouille ouille ouille c''est son surnom car c''est le cri qu''il pousse a l&rsquo;atterrissage ...', 6, 0, 1446479701),
(493, '[img]http://cutepicturesite.com/wp-content/uploads/2011/12/Cute_Picture_710.jpg[/img]', 127, 0, 1446479778),
(494, 't''a trop mang&eacute; dom?', 9, 0, 1446479789),
(495, 'Meeooow non !', 127, 0, 1446479802),
(496, 'Un petit Coup de F5', 2, 0, 1446479910),
(497, '[img]http://www.laviedeschats.com/wp-content/uploads/2013/04/chat-affal%C3%A9-sur-un-accoudoir-2.jpg[/img]', 127, 0, 1446479965),
(498, 'Il fait genre de dormir l&agrave;, mais enfaite, il est hyper concentr&eacute; pour pas se petter la gueule', 2, 0, 1446479996),
(499, 'Un bon gros chat-mouth', 127, 0, 1446480057),
(500, 'test', 2, 0, 1446480502),
(501, 'je gale erres en 2 mots', 6, 0, 1446480614),
(502, 'test', 2, 0, 1446480813),
(503, 'erreur 40012 je suis plus..... qyelqu''un aurait un gps svp', 6, 0, 1446480815),
(504, '@AD test', 2, 0, 1446480823),
(505, '@AD test', 2, 0, 1446480834),
(506, '@AD Test', 2, 0, 1446480896),
(507, 'tu d test qui???', 6, 0, 1446480908),
(508, '@AD test', 2, 0, 1446480917),
(509, 'si tu fais le tchat priv&eacute; va falloir ajouter une fenetre...', 6, 0, 1446481041),
(510, '@AD Coucou', 2, 0, 1446481123),
(511, '@NR V', 6, 0, 1446481143),
(512, '@AD Coucou', 2, 0, 1446481177),
(513, '@NR salut', 6, 0, 1446481193),
(514, 'test', 2, 0, 1446481237),
(515, '@AD test', 2, 0, 1446481251),
(516, '@ca marche', 6, 0, 1446481264),
(517, '@AD Test', 2, 0, 1446481279),
(518, '@AD test', 2, 0, 1446481326),
(519, 'arretes de me dire AD je vais finir par croire que tu veux que je m''en aille', 6, 0, 1446481326),
(520, '@NR j', 6, 0, 1446481353),
(521, '@AD test', 2, 0, 1446481355),
(522, '@AD Test', 2, 0, 1446481406),
(523, 'Les stores sont ferm&eacute;s ? Ah non il fait d&eacute;j&agrave; noir... :(', 127, 0, 1446481463),
(524, 'alors ca c''est une colle y a personne qui parle....', 6, 0, 1446481485),
(525, '@AD Test', 2, 6, 1446481543),
(526, 'on pourrait avoir des &eacute;crans UV histoire de bronzer un peu???', 6, 0, 1446481562),
(527, 'on va avoir chaud !', 127, 0, 1446481589),
(528, 'euh l''erreur 403 c''est de chez Peugeot', 6, 0, 1446481623),
(529, '@NR coucou ', 6, 2, 1446481660),
(530, '@NR pour du priv&eacute; c''est du priv&eacute;... j''ai une page vierge', 6, 2, 1446481705),
(531, '@NR ct1', 3, 2, 1446481874),
(532, 'bin y a pas de niouse du jour', 6, 0, 1446539567),
(533, 'oh ali day', 6, 0, 1446539588),
(534, '@NR super wario est arrive dans son karting dor&eacute;...', 6, 2, 1446539659),
(535, '@AD test', 127, 6, 1446539706),
(536, 'HELLO EVRYBODY', 3, 0, 1446539711),
(537, '@AD test', 9, 6, 1446539728),
(538, '@BT Ca fonctionne ? ', 2, 0, 1446539732),
(539, '@TB bon on peut commencer', 6, 9, 1446539740),
(540, '@AD yes', 9, 6, 1446539748),
(541, '@TB Ca fonctionne ? ', 2, 9, 1446539751),
(542, '@NR yes', 9, 2, 1446539759),
(543, 'j''annonce la couleur je suis a donf ce matin', 6, 0, 1446539770),
(544, 'et &ccedil;a donne quoi en couleur ? ', 2, 0, 1446539789),
(545, 'Plutot vert ou bleu ? ', 2, 0, 1446539802),
(546, 'on change pas une equipe qui gagne ', 3, 0, 1446539804),
(547, 'Encore faut-il qu''il en ait une. On fait comment pour les &eacute;quipes ?', 11, 0, 1446539821),
(548, 'non bleu c''est apres l''apero la c''est informatique je suis vert', 6, 0, 1446539826),
(549, 'courte paille', 9, 0, 1446539831),
(550, 'ou concours de celui qui pisse le plus loin', 9, 0, 1446539840),
(551, 'pisse and love', 6, 0, 1446539852),
(552, 'Le hasard en d&eacute;cidera...', 11, 0, 1446539861),
(553, 'vu l''etat des chiotte .... beaucoup de pretentieux ici ', 3, 0, 1446539863),
(554, 'en plus la pisse tache', 6, 0, 1446539873),
(555, 'y a ali qu''a perdu son login', 6, 0, 1446539908),
(556, 'Login ALI et MDP baba', 9, 0, 1446539922),
(557, '@TB ... j''ai le droit de tap&eacute; le troll vu qu''on est mardi et le mardi tous est permis ? ', 3, 9, 1446539933),
(558, '@BJ Yop', 2, 3, 1446539946),
(559, 'Ali veut plus venir sur la chatte', 6, 0, 1446539948),
(560, '@BJ non on ne frappe pas', 9, 3, 1446540013),
(561, '@TB ... ARF PAS JUSTE ', 3, 9, 1446540059),
(562, '[img]http://www.republ33k.fr/wp-content/uploads/2013/05/6784492-cute-pink-unicorn.jpg[/img]', 2, 0, 1446540133),
(563, '', 3, 0, 1446540154),
(564, '', 3, 0, 1446540185),
(565, '[link]http://static.skynetblogs.be/media/126554/dyn007_original_187_223_gif_2623771_40e4e79d1c0cd49888eb92b77900ac64.gif[/link]', 6, 0, 1446540186),
(566, '', 3, 0, 1446540205),
(567, '', 3, 0, 1446540222),
(568, '@AD elle a le feu o q ton petit poney', 3, 6, 1446540294),
(569, 'mini projet: apres fesse de bouc site reserv&eacute; aux minettes, je propose cul de chevre pour les mecs les vrais...lol', 6, 0, 1446540347),
(570, '@NR le trol est en train de se masturber sur ta licorne', 3, 2, 1446540357),
(571, '@BJ j''ai vu oui ^^', 2, 3, 1446540368),
(572, 'fesse  de bouc. homme ou cul de chevre.conne', 6, 0, 1446540449),
(573, '@BJ euh comme tout ce qui est de sexe feminin', 6, 3, 1446540514),
(574, '@AD ????', 3, 6, 1446540539),
(575, '@BJ je reponds a ton message priv&eacute; precedent', 6, 3, 1446540591),
(576, '@AD oki', 3, 6, 1446540624),
(577, 'oh un cahier d&eacute;charge', 6, 0, 1446540624),
(578, 'Survolt&eacute; hein?', 11, 0, 1446540656),
(579, 'non r&eacute;veill&eacute;', 6, 0, 1446540689),
(580, 'apres mac donald chaine de fast food on peut aussi faire ma queue mickey chaine web de fast sexe', 6, 0, 1446540931),
(581, 'arrete bibiche va etre le premier a travailler', 3, 0, 1446541002),
(582, 'elle est ou la tchatte', 112, 0, 1446541128),
(583, 'oh la tronche ali t''es tout pale', 6, 0, 1446541229),
(584, 'Yo Ali ! :D', 127, 0, 1446541300),
(585, 'yo les gars', 112, 0, 1446541381),
(586, '1 - 0 pour Bruno', 3, 0, 1446541393),
(587, '@BJ Coucou', 2, 3, 1446541422),
(588, 'Moi je vais faire le site les yeux ferm&eacute;s ! Mais peut &ecirc;tre que vous allez entendre ronfler aussi ;)', 127, 0, 1446541639),
(589, '[img]http://www.despasperdus.com/public/blog2008/gouverner.jpg[/img]', 2, 0, 1446541672),
(590, '@TB au pire tu impose un choix .... vu qu''on fee ca sur une semaine et en commun', 3, 9, 1446541715),
(591, '@LD Pas &eacute;tonant =)', 2, 4, 1446541727),
(592, '@NR euh il est jaloux ou koi ? ', 3, 2, 1446542191),
(593, 'ALLER AU TAFFF !!!!', 3, 0, 1446542428),
(594, 'ali choppe mon sac stp', 3, 0, 1446542445),
(595, 'ali wak ba!!!!', 3, 0, 1446542726),
(596, 'Christo fait caca ?', 127, 0, 1446543084),
(597, 'bonjour ^^', 108, 0, 1446543332),
(598, 'remy n''impose pas il conseille FORTEMENT...lol', 6, 0, 1446547299),
(599, 'Fumier =)', 2, 0, 1446547406),
(600, 'C''est même pas vrai', 2, 0, 1446547414),
(601, '@AD POur quoi vous me faites passer :p', 2, 6, 1446547534),
(602, 'on plaisante rohhhhh et ton sens de l''humour...', 6, 0, 1446547556),
(603, 'Et le tiens ? ', 2, 0, 1446547562),
(604, '^^', 2, 0, 1446547572),
(605, 'le mien il est surtout dans la culotte', 6, 0, 1446547579),
(606, 'au niveau du cerveau quoi =)', 2, 0, 1446547618),
(607, 'tout a fait thierry euh.. R&eacute;my', 6, 0, 1446547635),
(608, 'c''est vrai que des 2 cerveaux celui du bas fonctionne de facon plus constructive que celui du haut', 6, 0, 1446547758),
(609, 'Clairement ^^', 2, 0, 1446547786),
(610, 'il fait des choix raisonn&eacute; lui au moins =)', 2, 0, 1446547797),
(611, 'avec le survol du SEO on sera en avant derniere page des recherches google au lieu de la derniere...', 6, 0, 1446548074),
(612, '^^', 2, 0, 1446548083),
(613, 'on a une journ&eacute;e pour l''armistice a quand une journ&eacute;e pour l''ami pastis', 6, 0, 1446548283),
(614, 'c tous les jours ', 3, 0, 1446548299),
(615, 'c''est ca que t''es tout jaune', 6, 0, 1446548346),
(616, '@ jb avec un p''tit coeur devant et derrieire', 6, 0, 1446548390),
(617, 'je vais t''en mettre un p''tt &amp;hearts; moi', 3, 0, 1446548417),
(618, '&amp;hearts;', 2, 0, 1446548433),
(619, '&hearts;', 3, 0, 1446548442),
(620, '@NR ?+? =&gt; ? ou ? ', 3, 2, 1446548492),
(621, 'ca serait cool @&hearts;JB&hearts;', 6, 0, 1446548502),
(622, '=&gt; FUCK', 3, 0, 1446548520),
(623, 'pffff meme pas marrant on peut plus rigoler...', 6, 0, 1446548541),
(624, '@BJ Coucou\n', 3, 3, 1446548545),
(625, '@NR Coucou', 2, 2, 1446548618),
(626, '@BJ y a pingui sur le tchat', 6, 3, 1446548655),
(627, 'lol', 3, 0, 1446548667),
(628, '@NR y a pingui sur le tchat', 6, 2, 1446548682),
(629, 'mais pas commestible aussi celui ci ', 3, 0, 1446548683),
(630, '@AD J''ai vu oui ^^', 2, 6, 1446548697),
(631, 'non totalement indigeste', 6, 0, 1446548697),
(632, 'grave ... prefere m''envoyer un tube de barbiturik', 3, 0, 1446548717),
(633, 'non une balle de 44 magnum c''est plus rapide', 6, 0, 1446548746),
(634, 'Un obus de &ccedil;a, &ccedil;a te tente ? [img]http://french.peopledaily.com.cn/NMediaFile/2014/0829/FOREIGN201408291122000465604932586.jpg[/img]', 2, 0, 1446548789),
(635, 'oh un super positoire', 6, 0, 1446548813),
(636, 'alors la tu t''envoies en l''air', 6, 0, 1446548851),
(637, '@BJ Le vibro de Florian xD', 2, 3, 1446548865),
(638, '[img]http://gunsofold.com/german_grenade_tan.jpg[/img]', 3, 0, 1446548875),
(639, 'en guise de supositoire', 3, 0, 1446548885),
(640, 'un presse pur&eacute;e', 6, 0, 1446548890),
(641, '@AD Le vibro de Florian xD', 2, 6, 1446548900),
(642, 'ca va glisser chef', 6, 0, 1446548920),
(643, '@AD @NR lol', 3, 6, 1446548928),
(644, 'a toute les gens', 6, 0, 1446549543),
(645, '@TB ... perso j''aurai prefere faire un projet en commun a 15 au moins ca aurait ete moins disperssif (dsl pour les fautes)', 3, 9, 1446550092),
(646, '@BJ il te r&eacute;pond pas ? ', 2, 3, 1446550413),
(647, '@NR [link]http://stackoverflow.com/questions/2594211/php-simple-dynamic-breadcrumb[/link]', 3, 2, 1446550787),
(648, '@NR [link]http://papermashup.com/how-to-display-breadcrumbs-on-your-site-using-php/[/link]', 3, 2, 1446551330),
(649, '@NR [link]http://www.websitecodetutorials.com/code/php/how-to-breadcrumb-navigation.php[/link]', 3, 2, 1446551678),
(650, '@NR [link]http://pixelcode.co.uk/tutorials/scripts/php_bread1.txt[/link]', 3, 2, 1446551799),
(651, 'bon appetit tout le monde ', 3, 0, 1446552067),
(652, '@NR y a que sur ca machine que tu peux rebooter ????', 3, 2, 1446555889),
(653, '[img]http://img11.hostingpics.net/pics/861780Processus.png[/img] Mon processus de site d''e-commerce. Complet ou pas ?', 11, 0, 1446557335),
(654, 'c trop petit et illisible ton image ', 3, 0, 1446557614),
(655, 'Clic droit + Afficher l''image (sur Firefox)', 11, 0, 1446558062),
(656, 'j''aime pas le renard en feu', 3, 0, 1446561747),
(657, 'je viens de voir que je suis &eacute;l&eacute;ve a mon age vla la gueule de l''&eacute;l&eacute;ve...', 6, 0, 1446564429),
(658, 'Tu devrais. [img]http://www.laptopmag.com/images/wp/purch-api/incontent/2014/03/SunSpider_v1.jpg[/img]', 11, 0, 1446564535),
(659, 'le temps de reaction est proportionnel au flux des demandes ceci explique cela...', 6, 0, 1446564837),
(660, 'Il s''en fou de ce que tu tape IL JOUE', 3, 0, 1446564866),
(661, 'firefox 3 pelerins; internet explorer 5 retrait&eacute;s google 11000000 boutonneux', 6, 0, 1446564891),
(662, 'plutot que des icones je prefererais des connes sur mon bureau', 6, 0, 1446565040),
(663, '[img]http://cdn-static.gamekult.com/gamekult-com/images/photos/30/50/14/37/doodle-jump-kinect-screenshot-ME3050143797_2.jpg[/img]', 2, 0, 1446565667),
(664, '[link]https://twitter.com/niyakeru_cat/status/661442192817295360[/link]', 127, 0, 1446565728),
(665, '[link]https://pbs.twimg.com/tweet_video/B_aLJAWUwAAi9ri.mp4[/link]', 3, 0, 1446566512),
(666, '[link]https://www.facebook.com/florian.hourlier/videos/732960663452456/?l=6564024129791448895[/url] Chez moi, c''est mieux.', 11, 0, 1446567703),
(667, 'Ah bah zut ! Lien rat&eacute; ! [link]https://www.facebook.com/florian.hourlier/videos/732960663452456/?l=6564024129791448895[/link]', 11, 0, 1446567723),
(668, 'Ces 2 l&agrave; n''ont aucun lien de parent&eacute;, tous les deux des m&acirc;les (8 &amp; 1 an), un peu ventrus mais souvent affectueux l''un l''autre.', 11, 0, 1446567775),
(669, 'kikou les gens', 6, 0, 1446624476),
(670, '@TB le serveur ne s''eteinds pas ', 3, 9, 1446625432),
(671, 'un chat avec un serveur c''est quoi son adress je veux bien etre son majordome si il paie bien', 6, 0, 1446625543),
(672, '@AS Coucou', 2, 8, 1446626055),
(673, '@NR .... c koi le script pour eteindre le pc de l''autre connard de mongole ? ', 3, 2, 1446626231),
(674, '@BJ dans le cmd : shutdown.exe /m \\\\WF3-H1 /s /f /t 0', 2, 3, 1446626357),
(675, '@NR DOMO', 3, 2, 1446626369),
(676, '@BJ mais marche pas sur W10 me semble', 2, 3, 1446626379),
(677, 'API = Annexe Primordiale Inutile', 11, 0, 1446626402),
(678, '@BJ Fonctionne pas ? ', 2, 3, 1446626533),
(679, '@NR shutdown.exe /m \\\\WF3-H4 /s /f /t 0 ---- raccourci CTRL + ALT + S', 3, 2, 1446626638),
(680, '@NR j''ai add le raccourci sur le serveur', 3, 2, 1446626662),
(681, '@BJ &ccedil;a me change rien de le savoir, je peux pas le lancer d''ici sur le pc a distance', 2, 3, 1446626663),
(682, '@BJ Faudrai ajouter le .reg que j''ai mis a florian pour avoir les acces, et d''aillieur je penses que &ccedil;a r&eacute;soudrais les soucis de RDP', 2, 3, 1446626696),
(683, '@NR A tester', 3, 2, 1446626715),
(684, '@BJ jpeux toujours le mettre sur le PC, mais je pourrais pas l''executer', 2, 3, 1446626737),
(685, '@NR ... le script pour eteindre le pc du canard ne fonctionne pas ', 3, 2, 1446627071),
(686, '@BJ Doit te manqu&eacute; le .reg', 2, 3, 1446627085),
(687, '[img]http://www.limpfish.com/notfound.gif[/url]', 11, 0, 1446628779),
(688, 'Ah bah zut encore ! [img]http://www.limpfish.com/notfound.gif[/img]', 11, 0, 1446628798),
(689, 'c''est fou l''animation du chat aujourd''hui... vous faites la gueule ou quoi?????', 6, 0, 1446628924),
(690, 'On suit le cours, nuance :p', 2, 0, 1446628935),
(691, 'd''habitude on suit et ca empeche pas de chatter', 6, 0, 1446628967),
(692, '@BJ On s''en fous ? ', 2, 3, 1446629150),
(693, '@NR et pour zobbi y a combien de reponse ???', 6, 2, 1446629178),
(694, '@AD j''en sais rien moi ^^', 2, 6, 1446629205),
(695, '@BJ tu fais la gueule ou quoi?????', 6, 3, 1446629267),
(696, 'mais l&agrave; tout le monde est en REST', 9, 0, 1446629314),
(697, '@AD non ... juste HS ...', 3, 6, 1446629351),
(698, '@BJ t''es Hors Saison...lol', 6, 3, 1446629391),
(699, '@AD ... plutot Hors Serie ', 3, 6, 1446629420),
(700, '@BJ Isolation ? ', 2, 3, 1446629473),
(701, '@AD Isolation ? ', 2, 6, 1446629482),
(702, '@NR ... avec de la laine de roche ou de verre ? ', 3, 2, 1446629499),
(703, '@AS Isolation ? ', 2, 8, 1446629506),
(704, '@NR ... j''ai rien envie de faire', 3, 2, 1446630036),
(705, '@ why not', 6, 0, 1446630047),
(706, '@TB ... Je suis en gr&ecirc;ve !', 3, 9, 1446630098),
(707, 'bon on attaque???', 6, 0, 1446630104),
(708, '@TB Ya moyen de regroupper les tables en groupes ? &ccedil;a &eacute;viterai de s''isoler, ou de parler fort et ainsi d&eacute;ranger tout le monde ', 2, 9, 1446630509),
(709, '@TB et &ccedil;a emp&egrave;chera pas de suivre les partie ''cours''', 2, 9, 1446630530),
(710, '@NR@AD motivation', 8, 2, 1446630596),
(711, 'Je suis p&ocirc; motiv&eacute;... Avec un PC qui red&eacute;marre de lui-m&ecirc;me inopin&eacute;ment, &agrave; 2 doigts du ch&ocirc;mage technique !', 11, 0, 1446633361),
(712, '@LD ... dominique ? ', 3, 4, 1446633412),
(713, '@LP t''es pas banni mon lapin', 6, 0, 1446633539),
(714, 'Christo pu du cul !', 127, 0, 1446633597),
(715, '@LD ... regarde sur le NAS : \\\\MYBOOKLIVE-WF3\\Public\\A EFFACER\\', 3, 127, 1446633634),
(716, 'DIFFAMATION EN PUBLIC !!! BANNISSEZ-LE !!!', 11, 0, 1446633670),
(717, 'c toi qu''on va bannir', 3, 0, 1446633697);
INSERT INTO `chat` (`CHAT_ID`, `CHAT_MESSAGE`, `CHAT_USER_ID`, `CHAT_TO_USER_ID`, `CHAT_TIMESTAMP`) VALUES
(718, 'jb c''est quoi ton truc ,', 128, 0, 1446633804),
(719, 'Mais c''&eacute;tait nous !!', 127, 0, 1446634015),
(720, '@BJ Vu !', 127, 3, 1446634025),
(721, '@CN regarde sur le NAS \\\\MYBOOKLIVE-WF3\\Public\\A EFFACER\\ ', 3, 128, 1446634128),
(722, '@BJ On est pas sauv&eacute; :(', 127, 3, 1446634205),
(723, '@LD ... on a sign&eacute; c pour en ch***', 3, 127, 1446634815),
(724, '@BJ grave...', 127, 3, 1446635081),
(725, '@TB -- Cet apres midi ou demain matin on pourra voir pour le HTACCESS ?', 3, 9, 1446636951),
(726, '@BT : [link]https://openclassrooms.com/courses/le-htaccess-et-ses-fonctionnalites[/link] .... en bas du document', 3, 0, 1446641905),
(727, '@bt on porrait prendre une petite demi heure pour faire un briefing des questions pour Sylviane demain?', 6, 0, 1446641905),
(728, 'Question 1: Pourquoi nous avons &eacute;t&eacute; pay&eacute;s presque 50% moins que ce qui &eacute;tait pr&eacute;vu &agrave; la base ? Et encore, en retard.', 11, 0, 1446642006),
(729, 'Pour moi: 650&euro; au d&eacute;part. 270 pay&eacute;.', 11, 0, 1446642023),
(730, 'Question 2: Vous &ecirc;tes mari&eacute;e ? XD', 11, 0, 1446642062),
(731, '@MT : test', 124, 0, 1446642105),
(732, '@TM : test', 124, 124, 1446642110),
(733, 'toi comprendre quand on dit orale !!!!!', 3, 0, 1446642115),
(734, 'Il a la bouche pleine :3', 127, 0, 1446642131),
(735, '@TB: Tu peux venir stp ? Je n''arrive pas &agrave; ex&eacute;cuter une requ&ecirc;te. PHP l''&eacute;crit sur la page, sans l''interpr&eacute;ter.', 11, 9, 1446642283),
(736, 'question 3: A combien de pourcent de perte on as le droit lors de la formation?', 8, 0, 1446642322),
(737, 'Avec Ali, on est d&eacute;j&agrave; &agrave; 7%...', 11, 0, 1446642356),
(738, '6%, vu que 94% trouvent un emploie en CDI a la fin de la formation avec un nivreau bac +3 ou 4 xD', 2, 0, 1446642373),
(739, 'on va battre un record avec 100% de chercheur a pole emploi a l''issu....', 6, 0, 1446642849),
(740, 'suis fatigu&eacute;...', 6, 0, 1446643139),
(741, '@NR tu veut que je fasse quoi', 8, 2, 1446644883),
(742, '@TB Tu peux venir corriger ma requ&ecirc;te stp ? Quand je la lance, rien ne se passe...', 11, 9, 1446646197),
(743, '@AS T''attend pas a ce que je te dise quoi faire, faut essayer de faire le plus possible, vaec ce qu''on sait faire', 2, 8, 1446647496),
(744, '@AS ok', 8, 8, 1446647807),
(745, '@NR ok', 8, 2, 1446648064),
(746, '@NR c ok pour david l''acceuil', 8, 2, 1446648335),
(747, '@AS Ok', 2, 8, 1446650540),
(748, 'yoooo', 124, 0, 1446711938),
(749, 'Bonjour ^', 2, 0, 1446711948),
(750, 'Oui', 124, 0, 1446712111);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `COMMENT_ID` int(11) NOT NULL,
  `COMMENT_NEWS_ID` int(11) NOT NULL,
  `COMMENT_USER_ID` int(11) NOT NULL,
  `COMMENT_CONTENT` text NOT NULL,
  `COMMENT_TIMESTAMP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `NEWS_ID` int(11) NOT NULL,
  `NEWS_TITLE` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `NEWS_CONTENT` text COLLATE latin1_general_ci NOT NULL,
  `NEWS_USER_ID` int(11) NOT NULL,
  `NEWS_TIMESTAMP` int(11) NOT NULL,
  `NEWS_VISIBLE` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`NEWS_ID`, `NEWS_TITLE`, `NEWS_CONTENT`, `NEWS_USER_ID`, `NEWS_TIMESTAMP`, `NEWS_VISIBLE`) VALUES
(1, 'NIUOSEALACON', 'NIOUSE INUTILE', 9, 1446126758, 0),
(2, 'NIOUSEALACON2', 'Encore une niouse totalement inutile', 9, 1446126792, 0),
(3, 'SUPERNIOUSE', 'Ce soir c''est le weeekend!!!!!', 9, 1446132344, 1),
(4, 'LUNDINIOUSE', 'Yo! C''est lundi!', 9, 1446459935, 1),
(5, 'NIOUSE DU JOUR', 'C''est mardi!', 9, 1446539604, 1),
(6, 'MERCRENIOUSE', 'Le serveur du chat n''a pas &eacute;t&eacute; &eacute;teint hier soir...\r\nC''est MAL!', 9, 1446620680, 1);

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `PAGE_ID` int(11) NOT NULL,
  `PAGE_NAME` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `PAGE_LINK` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `PAGE_INDEX` int(11) NOT NULL,
  `PAGE_VISIBLE` int(11) NOT NULL,
  `PAGE_SHOWLOGGED` int(11) NOT NULL,
  `PAGE_RANK_VALUE` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`PAGE_ID`, `PAGE_NAME`, `PAGE_LINK`, `PAGE_INDEX`, `PAGE_VISIBLE`, `PAGE_SHOWLOGGED`, `PAGE_RANK_VALUE`) VALUES
(1, 'Accueil', 'News.php', 0, 1, 2, 0),
(2, 'Inscription', 'Inscription.php', 1, 1, 0, 0),
(3, 'Déconnexion', 'Logout.php', 90, 1, 1, 1),
(4, 'Modifier le profil', 'User_Mod.php', 3, 1, 1, 1),
(5, 'Ajouter une news', 'Add_News.php', 80, 1, 1, 70),
(6, 'Lost Pass', 'Lost_Pass.php', 4, 0, 0, 0),
(7, 'Recup', 'Recup_Mail.php', 70, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `RANK_VALUE` int(11) NOT NULL,
  `RANK_NAME` varchar(30) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `rank`
--

INSERT INTO `rank` (`RANK_VALUE`, `RANK_NAME`) VALUES
(1, 'Elève'),
(10, 'Super Utilisateur'),
(20, ''),
(30, ''),
(40, 'Modérateur'),
(50, ''),
(60, ''),
(70, 'Formateur'),
(80, ''),
(90, ''),
(99, 'Administrateur'),
(100, 'Super Administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `USER_ID` int(11) NOT NULL,
  `USER_LOGIN` varchar(42) COLLATE latin1_general_ci NOT NULL,
  `USER_PASS` varchar(42) COLLATE latin1_general_ci NOT NULL,
  `USER_NAME` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `USER_FIRSTNAME` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `USER_PSEUDO` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `USER_RANK_VALUE` int(11) NOT NULL,
  `USER_BIRTHDAY` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `USER_IP` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `USER_BAN` int(1) NOT NULL,
  `USER_MAIL` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `USER_AVATAR` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `USER_LOST` int(1) NOT NULL,
  `USER_TOKEN` varchar(32) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`USER_ID`, `USER_LOGIN`, `USER_PASS`, `USER_NAME`, `USER_FIRSTNAME`, `USER_PSEUDO`, `USER_RANK_VALUE`, `USER_BIRTHDAY`, `USER_IP`, `USER_BAN`, `USER_MAIL`, `USER_AVATAR`, `USER_LOST`, `USER_TOKEN`) VALUES
(1, '*62FFFF36E5D96CE01B428A18F02E5A94059E8786', '*4E83C307EB17D17F7D5F750CEEE3651B6F4A2591', 'LAWLIET', 'Alcene', 'LA', 100, '1988-03-23', '192.168.1.10', 0, 'Alcene1@live.fr', '1.png', 0, ''),
(2, '*3232EE6CDEBCA39B8044E435EC91927EB42E5AFE', '*4E83C307EB17D17F7D5F750CEEE3651B6F4A2591', 'NICE', 'R&eacute;my', 'NR', 1, '1988-03-23', '192.168.1.30', 0, 'Alcene@live.fr', '2.png', 0, ''),
(3, '*D1907F0AE1B8CBF212F998F7213F5B72F4DFA514', '*5B7A07371FB12BD8115253989F993AC74DAAD666', 'BESANÇON', 'Jean-Baptiste', 'BJ', 1, '1978-07-10', '192.168.1.34', 0, 'jbbesancon@free.fr', '3.jpg', 0, ''),
(129, '*96CE2F9FF8EB364DF30FA8057E892D195619C7F9', '*B433BB0468AF2902A6DCA9F8F29DF160652AFC9C', 'CHACALUS', 'Totolus', 'CT', 1, '14/07/1999', '192.168.1.24', 0, 'toto@toto.com', '129.png', 0, ''),
(6, '*DF693557E25F5D62239F00AE3783FC328E844A3E', '*DF693557E25F5D62239F00AE3783FC328E844A3E', 'ARCOLE', 'David', 'AD', 1, '1968-05-30', '192.168.1.18', 0, 'a@a.fr', '6.jpg', 0, ''),
(8, '*9ACE6A3906233B6218CB3EEAD7F09367E257CEC1', '*8479ACBA27D8EE57BD8AC1B3E4FCECE66CB3D9DA', 'ANTOINE', 'Sylvain', 'AS', 1, '1983-11-28', '192.168.1.21', 0, '', '8.jpg', 0, ''),
(9, '*646A86B41A9AA1EA6288FD508F4709865FC57D8E', '*04006A7CDBE60A91CF20CFD5DF7C49E4F4730B7B', 'TAVERNIER', 'Bruno', 'TB', 70, '1900-01-01', '192.168.1.13', 0, 'game@over.com', '9.jpg', 0, ''),
(124, '*2910D2CDB2D6307A31DBA37B388349F73E0D7605', '*003DCEEE930969999307C74F9F561C1061AFA333', 'TETEREL', 'M&eacute;rill', 'TM', 1, '1996-11-09', '192.168.1.26', 0, 'in3xess@gmail.com', '124.jpg', 0, ''),
(11, '*11F6F93FF70523D363426D32BA26A6765EEB4188', '*6E11B2E3FC682FC8C4D7A9E8CB9D200834DD11BF', 'HOURLIER', 'Florian', 'HF', 1, '11/06/1994', '192.168.1.17', 0, 'florian.hourlier@hotmail.fr', '11.jpg', 0, ''),
(12, '*99AC312FBFCE795883047A130695033A36905C4B', '*4CB947971FACB7AB4E93FAF2078DD186A4C91A46', 'NAOUFAL', 'Naoufal', 'NN', 1, '2015-10-20', '192.168.1.22', 0, 'nn@gmail.com', '12.png', 0, ''),
(108, '*62A3CC3499DAE13B99FEB543F8A8F727B046CC53', '*079E89DF098C434E0A56D7927E34A700A76F050C', 'WAUTERS', 'Anthony', 'WA', 1, '06/06/1990', '192.168.1.25', 0, 'aaaaaaaaa', '108.png', 0, ''),
(112, '*F6AFBA2871998CAAFE0EA4D1ACAB9F4A52840794', '*DE07C02219D89745670AAAF91BB48AB12BB5C51F', 'CHERFI', 'Ali', 'CA', 1, '1975-11-01', '192.168.1.15', 0, 'eric.ilahf@gmail.com', '112.png', 0, ''),
(127, '*B40FA2BA50F453A29755A246655A7A3C77DD9185', '*C86F04763EC6CAF83EC2F2FAEC6592CADE3AC227', 'LEPAGE', 'Dominique', 'LD', 1, '19/05/1990', '192.168.1.19', 0, 'chibi_anubis@voila.fr', '127.png', 0, ''),
(128, '*4722F66FB26F9097D6FB287B04BA23C5EEE30928', '*428408C964C7C9F8C9B6CDA05251157AE16A83FA', 'CHOUX', 'Navet', 'CN', 1, '2025-03-29', '192.168.1.38', 0, 'juuuuuuuuu@pooooo.fr', 'Default.jpg', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `user_co`
--

CREATE TABLE IF NOT EXISTS `user_co` (
  `USER_CO_SESSION_ID` int(11) NOT NULL,
  `USER_CO_TIMESTAMP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user_co`
--

INSERT INTO `user_co` (`USER_CO_SESSION_ID`, `USER_CO_TIMESTAMP`) VALUES
(2, 1446716113);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`CHAT_ID`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`COMMENT_ID`),
  ADD KEY `COMMENT_USER_ID` (`COMMENT_USER_ID`),
  ADD KEY `COMMENT_NEWS_ID` (`COMMENT_NEWS_ID`),
  ADD KEY `COMMENT_USER_ID_2` (`COMMENT_USER_ID`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NEWS_ID`);

--
-- Index pour la table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`PAGE_ID`);

--
-- Index pour la table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`RANK_VALUE`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chat`
--
ALTER TABLE `chat`
  MODIFY `CHAT_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=751;
--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `NEWS_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `page`
--
ALTER TABLE `page`
  MODIFY `PAGE_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`COMMENT_NEWS_ID`) REFERENCES `news` (`NEWS_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
