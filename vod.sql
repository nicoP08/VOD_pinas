-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 22 juil. 2018 à 21:58
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `vod`
--

-- --------------------------------------------------------

--
-- Structure de la table `a`
--

DROP TABLE IF EXISTS `a`;
CREATE TABLE IF NOT EXISTS `a` (
  `ID_films` int(11) NOT NULL,
  `ID_genre` int(11) NOT NULL,
  PRIMARY KEY (`ID_films`,`ID_genre`),
  KEY `A_genre0_FK` (`ID_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

DROP TABLE IF EXISTS `acteurs`;
CREATE TABLE IF NOT EXISTS `acteurs` (
  `ID_acteurs` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_acteurs`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acteurs`
--

INSERT INTO `acteurs` (`ID_acteurs`, `nom`) VALUES
(1, 'Chris Evans'),
(2, 'Tommy Lee Jones'),
(3, 'Robert Downey JR'),
(4, 'Gwyneth Paltrow'),
(7, 'Chris Hemsworth'),
(8, 'Natalie Portman'),
(9, 'Edward Norton'),
(10, 'Liv Tyler'),
(11, 'Scarlett Johansson'),
(12, 'Chris Pratt'),
(13, 'Zoe Saldana'),
(14, 'Paul Rudd'),
(15, 'Evangeline Lilly'),
(16, 'Tom Holland');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ID_utilisateurs` int(11) NOT NULL,
  `ID_administrateur` int(11) NOT NULL,
  PRIMARY KEY (`ID_utilisateurs`,`ID_administrateur`),
  KEY `admin_administrateur0_FK` (`ID_administrateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `ID_administrateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `identifiant` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_administrateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `administre`
--

DROP TABLE IF EXISTS `administre`;
CREATE TABLE IF NOT EXISTS `administre` (
  `ID_films` int(11) NOT NULL,
  `ID_administrateur` int(11) NOT NULL,
  PRIMARY KEY (`ID_films`,`ID_administrateur`),
  KEY `administre_administrateur0_FK` (`ID_administrateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `annee`
--

DROP TABLE IF EXISTS `annee`;
CREATE TABLE IF NOT EXISTS `annee` (
  `id_annee` int(11) NOT NULL AUTO_INCREMENT,
  `annee` int(11) NOT NULL,
  PRIMARY KEY (`id_annee`)
) ENGINE=InnoDB AUTO_INCREMENT=2020 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `annee`
--

INSERT INTO `annee` (`id_annee`, `annee`) VALUES
(2005, 2005),
(2006, 2006),
(2007, 2007),
(2008, 2008),
(2009, 2009),
(2010, 2010),
(2011, 2011),
(2012, 2012),
(2013, 2013),
(2014, 2014),
(2015, 2015),
(2016, 2016),
(2017, 2017),
(2018, 2018);

-- --------------------------------------------------------

--
-- Structure de la table `est`
--

DROP TABLE IF EXISTS `est`;
CREATE TABLE IF NOT EXISTS `est` (
  `ID_films` int(11) NOT NULL,
  `ID_motcle` int(11) NOT NULL,
  PRIMARY KEY (`ID_films`,`ID_motcle`),
  KEY `est_motcle0_FK` (`ID_motcle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `ID_films` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_films`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`ID_films`, `titre`) VALUES
(1, 'Captain America'),
(2, 'Iron Man'),
(3, 'Iron man 2'),
(4, 'Thor'),
(5, 'Hulk'),
(6, 'Avengers'),
(7, 'Iron Man 3'),
(8, 'Thor 2'),
(9, 'Captain America 2'),
(10, 'Guardiens de la Galaxie'),
(11, 'Ant Man'),
(12, 'Avengers 2'),
(13, 'Captain America 3'),
(14, 'Spiderman Homecoming');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `ID_genre` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

DROP TABLE IF EXISTS `joue`;
CREATE TABLE IF NOT EXISTS `joue` (
  `ID_films` int(11) NOT NULL,
  `ID_acteurs` int(11) NOT NULL,
  PRIMARY KEY (`ID_films`,`ID_acteurs`),
  KEY `joue_acteurs0_FK` (`ID_acteurs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `joue`
--

INSERT INTO `joue` (`ID_films`, `ID_acteurs`) VALUES
(1, 1),
(6, 1),
(9, 1),
(12, 1),
(13, 1),
(1, 2),
(2, 3),
(3, 3),
(6, 3),
(7, 3),
(12, 3),
(13, 3),
(14, 3),
(2, 4),
(3, 4),
(7, 4),
(4, 7),
(6, 7),
(8, 7),
(12, 7),
(4, 8),
(8, 8),
(5, 9),
(5, 10),
(9, 11),
(10, 12),
(10, 13),
(11, 14),
(11, 15),
(14, 16);

-- --------------------------------------------------------

--
-- Structure de la table `motcle`
--

DROP TABLE IF EXISTS `motcle`;
CREATE TABLE IF NOT EXISTS `motcle` (
  `ID_motcle` int(11) NOT NULL AUTO_INCREMENT,
  `motcle` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_motcle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `realisateurs`
--

DROP TABLE IF EXISTS `realisateurs`;
CREATE TABLE IF NOT EXISTS `realisateurs` (
  `ID_realisateurs` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_realisateurs`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `realisateurs`
--

INSERT INTO `realisateurs` (`ID_realisateurs`, `nom`) VALUES
(1, 'Joe Johnston'),
(2, 'Jon Favreau'),
(3, 'Kenneth Branagh'),
(5, 'Louis Leterrier'),
(6, 'Joss Whedon'),
(7, 'Shane Black'),
(8, 'Alan Taylor'),
(9, 'Joe Russo'),
(10, 'Anthony Russo'),
(11, 'James Gunn'),
(12, 'Peyton Reed'),
(13, ' Jon Watts');

-- --------------------------------------------------------

--
-- Structure de la table `realise`
--

DROP TABLE IF EXISTS `realise`;
CREATE TABLE IF NOT EXISTS `realise` (
  `ID_films` int(11) NOT NULL,
  `ID_realisateurs` int(11) NOT NULL,
  PRIMARY KEY (`ID_films`,`ID_realisateurs`),
  KEY `realise_realisateurs0_FK` (`ID_realisateurs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `realise`
--

INSERT INTO `realise` (`ID_films`, `ID_realisateurs`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 5),
(6, 6),
(12, 6),
(7, 7),
(8, 8),
(9, 9),
(13, 9),
(9, 10),
(13, 10),
(10, 11),
(11, 12),
(14, 13);

-- --------------------------------------------------------

--
-- Structure de la table `regarde`
--

DROP TABLE IF EXISTS `regarde`;
CREATE TABLE IF NOT EXISTS `regarde` (
  `ID_films` int(11) NOT NULL,
  `ID_utilisateurs` int(11) NOT NULL,
  PRIMARY KEY (`ID_films`,`ID_utilisateurs`),
  KEY `regarde_utilisateurs0_FK` (`ID_utilisateurs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `resume`
--

DROP TABLE IF EXISTS `resume`;
CREATE TABLE IF NOT EXISTS `resume` (
  `id_synopsis` varchar(50) NOT NULL,
  `ID_films` int(11) NOT NULL,
  PRIMARY KEY (`id_synopsis`,`ID_films`),
  KEY `resume_films0_FK` (`ID_films`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `resume`
--

INSERT INTO `resume` (`id_synopsis`, `ID_films`) VALUES
('ca1', 1),
('im1', 2),
('im2', 3),
('thor', 4),
('hulk', 5),
('avengers', 6),
('im3', 7),
('thor2', 8),
('ca2', 9),
('gog1', 10),
('am', 11),
('avengers2', 12),
('ca3', 13),
('spiderman', 14);

-- --------------------------------------------------------

--
-- Structure de la table `sort`
--

DROP TABLE IF EXISTS `sort`;
CREATE TABLE IF NOT EXISTS `sort` (
  `ID_films` int(11) NOT NULL,
  `id_annee` int(11) NOT NULL,
  PRIMARY KEY (`ID_films`,`id_annee`),
  KEY `sort_annee0_FK` (`id_annee`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sort`
--

INSERT INTO `sort` (`ID_films`, `id_annee`) VALUES
(2, 2008),
(5, 2008),
(3, 2010),
(1, 2011),
(4, 2011),
(6, 2012),
(7, 2013),
(8, 2013),
(9, 2014),
(10, 2014),
(11, 2015),
(12, 2015),
(13, 2016),
(14, 2017);

-- --------------------------------------------------------

--
-- Structure de la table `synopsis`
--

DROP TABLE IF EXISTS `synopsis`;
CREATE TABLE IF NOT EXISTS `synopsis` (
  `id_synopsis` varchar(50) NOT NULL,
  `resume` text NOT NULL,
  PRIMARY KEY (`id_synopsis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `synopsis`
--

INSERT INTO `synopsis` (`id_synopsis`, `resume`) VALUES
('am', '2014, à San Francisco. Après 3 ans de prison pour cambriolage, Scott Lang est hébergé par son ancien voisin de cellule Luis. Scott tente ensuite de trouver un emploi, car la désistance lui permettrait d\'obtenir un droit de visite de sa fille Cassie, âgée de 7 ans, auprès de son ex-femme Maggie, qui s\'est recasée avec le policier Paxton. Pendant ce temps, le Dr Henry « Hank » Pym sort de sa retraite, invité par le docteur Darren Cross, son ancien assistant qui l\'a évincé de la direction de Pym Technologies, à assister à la démonstration de son nouveau projet : le YellowJacket, un costume permettant de réduire la taille de son porteur à celle d\'un insecte, comme le légendaire super-héros Ant-Man dont il s\'inspire. Hope van Dyne est la seule à savoir que son père Hank a réellement été Ant-Man et ce en duo avec sa mère Janet, alias la Guêpe. Hank réalise l\'urgente nécessité de protéger le secret de son costume, pour éviter le pire, en détruisant le YellowJacket et toutes les données du projet. Pour cela, il doit faire en sorte que Scott devienne son successeur et le héros qui est en lui… '),
('avengers', 'Nick Fury, le directeur du S.H.I.E.L.D., l\'organisation qui préserve la paix dans le monde, veut former une équipe d\'irréductibles pour empêcher la destruction du monde. Iron Man, Hulk, Thor, Captain America, Hawkeye et Black Widow répondent présents. La nouvelle équipe, baptisée Avengers, a beau sembler soudée, il reste encore à ses illustres membres à apprendre à travailler ensemble.'),
('avengers2', 'Alors qu\'il tente de récupérer le sceptre de Loki avec l\'aide de ses camarades Avengers, Tony Stark découvre que Strucker avait mis au point une intelligence artificielle révolutionnaire, plus puissante encore que Jarvis. Strucker, mis hors d\'état de nuire, et le sceptre récupéré, Stark conçoit bientôt un projet insensé : relancer son programme de maintien de la paix, jusque-là en sommeil, grâce à cette conscience robotisée ultra-puissante.'),
('ca1', 'Steve Rogers, frêle et timide, se porte volontaire pour participer à un programme expérimental qui va le transformer en un super soldat connu sous le nom de Captain America.'),
('ca2', 'Steve Rogers, plus connu sous le nom de Captain America, s\'est adapté tant bien que mal à son nouvel environnement, et poursuit ses missions en tant qu\'agent du S.H.I.E.L.D., l\'agence militaire chargée d\'assurer l\'ordre international. Mais une organisation secrète aux desseins maléfiques a réussi à infiltrer le S.H.I.E.L.D. qu\'elle gangrène de l\'intérieur.\r\n'),
('ca3', 'Steve Rogers est désormais à la tête des Avengers, dont la mission est de protéger l\'humanité. À la suite d\'une de leurs interventions qui a causé d\'importants dégâts collatéraux, le gouvernement décide de mettre en place un organisme de commandement et de supervision. Cette nouvelle donne provoque une scission au sein de l\'équipe.'),
('gog1', 'Peter Quill est un aventurier traqué par tous les chasseurs de primes pour avoir volé un mystérieux globe convoité par le puissant Ronan, dont les agissements menacent l\'univers tout entier. Lorsqu\'il découvre le véritable pouvoir de ce globe et la menace qui pèse sur la galaxie, il conclut une alliance fragile avec quatre extraterrestres disparates.'),
('hulk', 'Le scientifique Bruce Banner cherche désespérément un antidote aux radiations qui ont créé Hulk. Il vit dans l\'ombre et parcourt la planète à la recherche d\'un remède. La force destructrice de Hulk attire le Général Thaddeus E. Ross et son bras droit Blonsky qui rêvent de l\'utiliser à des fins militaires. Ils tentent de développer un sérum pour créer des soldats surpuissants.'),
('im1', 'Tony Stark, inventeur de génie, vendeur d\'armes et playboy milliardaire, est kidnappé en Aghanistan. Forcé par ses ravisseurs à fabriquer une arme redoutable, il construit en secret une armure high-tech révolutionnaire qu\'il utilise pour s\'échapper. Comprenant la puissance de cette armure, il décide de l\'améliorer et de l\'utiliser pour faire régner la justice et protéger les innocents.'),
('im2', 'Le monde sait désormais que l\'inventeur milliardaire Tony Stark et le super-héros Iron Man ne font qu\'un. Malgré la pression du gouvernement, de la presse et du public pour qu\'il partage sa technologie avec l\'armée, Tony n\'est pas disposé à divulguer les secrets de son armure, redoutant que l\'information atterrisse dans de mauvaises mains.'),
('im3', 'Tony Stark, l\'industriel flamboyant qui est aussi Iron Man, est confronté cette fois à un ennemi qui va attaquer sur tous les fronts. Lorsque son univers personnel est détruit, Stark se lance dans une quête acharnée pour retrouver les coupables. Plus que jamais, son courage va être mis à l\'épreuve, à chaque instant. Dos au mur, il ne peut plus compter que sur ses inventions, son ingéniosité, et son instinct pour protéger ses proches.'),
('spiderman', 'Après ses spectaculaires débuts avec les Avengers, le jeune Peter Parker découvre peu à peu sa nouvelle identité, celle de Spider-Man, le superhéros lanceur de toile. Galvanisé par ses expériences précédentes, Peter rentre chez lui auprès de sa tante May, sous l\'oeil attentif de son nouveau mentor, Tony Stark. L\'apparition d\'un nouvel ennemi, le Vautour, va mettre en danger tout ce qui compte pour lui.'),
('thor', 'Au royaume d\'Asgard, Thor est un guerrier aussi puissant qu\'arrogant dont les actes téméraires déclenchent une guerre ancestrale. Banni et envoyé sur Terre, par son père Odin, il est condamné à vivre parmi les humains. Cependant, lorsque les forces du mal de son royaume s\'apprêtent à se déchaîner sur la Terre, Thor va apprendre à se comporter en véritable héros.'),
('thor2', 'Alors que sur Terre, l\'astrophysicienne Jane Foster, grand amour de Thor, trouve par hasard une substance mystérieuse, l\'Éther, que beaucoup croyaient perdue depuis longtemps, Thor part délivrer son frère adoptif, Loki, dans sa prison d\'Asgard, car il a besoin de son aide. En effet, Malekith, un elfe noir jadis vaincu par Odin et les siens est de retour.');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `ID_utilisateurs` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `identifiant` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_utilisateurs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `a`
--
ALTER TABLE `a`
  ADD CONSTRAINT `A_films_FK` FOREIGN KEY (`ID_films`) REFERENCES `films` (`ID_films`),
  ADD CONSTRAINT `A_genre0_FK` FOREIGN KEY (`ID_genre`) REFERENCES `genre` (`ID_genre`);

--
-- Contraintes pour la table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_administrateur0_FK` FOREIGN KEY (`ID_administrateur`) REFERENCES `administrateur` (`ID_administrateur`),
  ADD CONSTRAINT `admin_utilisateurs_FK` FOREIGN KEY (`ID_utilisateurs`) REFERENCES `utilisateurs` (`ID_utilisateurs`);

--
-- Contraintes pour la table `administre`
--
ALTER TABLE `administre`
  ADD CONSTRAINT `administre_administrateur0_FK` FOREIGN KEY (`ID_administrateur`) REFERENCES `administrateur` (`ID_administrateur`),
  ADD CONSTRAINT `administre_films_FK` FOREIGN KEY (`ID_films`) REFERENCES `films` (`ID_films`);

--
-- Contraintes pour la table `est`
--
ALTER TABLE `est`
  ADD CONSTRAINT `est_films_FK` FOREIGN KEY (`ID_films`) REFERENCES `films` (`ID_films`),
  ADD CONSTRAINT `est_motcle0_FK` FOREIGN KEY (`ID_motcle`) REFERENCES `motcle` (`ID_motcle`);

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `joue_acteurs0_FK` FOREIGN KEY (`ID_acteurs`) REFERENCES `acteurs` (`ID_acteurs`),
  ADD CONSTRAINT `joue_films_FK` FOREIGN KEY (`ID_films`) REFERENCES `films` (`ID_films`);

--
-- Contraintes pour la table `realise`
--
ALTER TABLE `realise`
  ADD CONSTRAINT `realise_films_FK` FOREIGN KEY (`ID_films`) REFERENCES `films` (`ID_films`),
  ADD CONSTRAINT `realise_realisateurs0_FK` FOREIGN KEY (`ID_realisateurs`) REFERENCES `realisateurs` (`ID_realisateurs`);

--
-- Contraintes pour la table `regarde`
--
ALTER TABLE `regarde`
  ADD CONSTRAINT `regarde_films_FK` FOREIGN KEY (`ID_films`) REFERENCES `films` (`ID_films`),
  ADD CONSTRAINT `regarde_utilisateurs0_FK` FOREIGN KEY (`ID_utilisateurs`) REFERENCES `utilisateurs` (`ID_utilisateurs`);

--
-- Contraintes pour la table `resume`
--
ALTER TABLE `resume`
  ADD CONSTRAINT `resume_films0_FK` FOREIGN KEY (`ID_films`) REFERENCES `films` (`ID_films`),
  ADD CONSTRAINT `resume_synopsis_FK` FOREIGN KEY (`id_synopsis`) REFERENCES `synopsis` (`id_synopsis`);

--
-- Contraintes pour la table `sort`
--
ALTER TABLE `sort`
  ADD CONSTRAINT `sort_annee0_FK` FOREIGN KEY (`id_annee`) REFERENCES `annee` (`id_annee`),
  ADD CONSTRAINT `sort_films_FK` FOREIGN KEY (`ID_films`) REFERENCES `films` (`ID_films`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
