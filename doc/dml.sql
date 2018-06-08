-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 29 Avril 2018 à 17:14
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `edt`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `NUM_CLA` char(4) NOT NULL,
  `NUM_N` char(4) NOT NULL,
  `LIBELLE_CLA` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `classe`
--

INSERT INTO `classe` (`NUM_CLA`, `NUM_N`, `LIBELLE_CLA`) VALUES
('C1', 'N1', 'F1'),
('C2', 'N1', 'F2'),
('C3', 'N2', 'F3'),
('C4', 'N3', 'M1'),
('C5', 'N3', 'M2');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `NUM_G` char(4) NOT NULL,
  `NUM_S` char(4) NOT NULL,
  `NUM_M` char(4) NOT NULL,
  `NUM_T` char(4) NOT NULL,
  `NUM_H` char(4) NOT NULL,
  `NUM_J` char(4) NOT NULL,
  `LIBELLE_CRS` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `NUM_ELE` char(4) NOT NULL,
  `NUM_CLA` char(4) NOT NULL,
  `NUM_G` char(4) NOT NULL,
  `NOM_ELE` char(20) NOT NULL,
  `PRENOM_ELE` char(20) NOT NULL,
  `MAIL_ELE` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `eleve`
--

INSERT INTO `eleve` (`NUM_ELE`, `NUM_CLA`, `NUM_G`, `NOM_ELE`, `PRENOM_ELE`, `MAIL_ELE`) VALUES
('E11', 'C1', 'F11', 'ACKER', 'Arnaud', 'a.acker@ludus-academie.com'),
('E12', 'C1', 'F12', 'ANDRIAMIANDRARIVO', 'Hubert Brayan', 'h.andriamiandrarivo@ludus-academie.com'),
('E13', 'C1', 'F11', 'ANDRIOLO', 'Caroline', 'c.andriolo@ludus-academie.com'),
('E14', 'C1', 'F11', 'AULEN', 'Lucas', 'l.aulen@ludus-academie.com'),
('E15', 'C1', 'F11', 'AYDIN', 'Kadir', 'k.aydin@ludus-academie.com'),
('E16', 'C1', 'F14', 'BALSON', 'Yann', 'y.balson@ludus-academie.com'),
('E17', 'C1', 'F13', 'BITON', 'Jocelyn', 'j.biton@ludus-academie.com'),
('E18', 'C1', 'F12', 'BORGONDO', 'David', 'd.borgondo@ludus-academie.com'),
('E19', 'C1', 'F14', 'BOULAAJOUL', 'Badr', 'b.boulaajoul@ludus-academie.com'),
('E110', 'C1', 'F11', 'BUTTANI', 'Justine', 'j.buttani@ludus-academie.com'),
('E111', 'C1', 'F14', 'CLAUDE', 'Leo', 'l.claude@ludus-academie.com'),
('E112', 'C1', 'F12', 'CRAGNOLINI', 'Julien', 'j.cragnolini@ludus-academie.com'),
('E113', 'C1', 'F12', 'DE CHENERILLES', 'Pablo', 'p.de chenerilles@ludus-academie.com'),
('E114', 'C1', 'F11', 'DEVEZE', 'Killian', 'k.deveze@ludus-academie.com'),
('E115', 'C1', 'F14', 'DIETSCHIN', 'Valentin', 'v.dietschin@ludus-academie.com'),
('E116', 'C1', 'F11', 'ESCHKE', 'Thomas', 't.eschke@ludus-academie.com'),
('E117', 'C1', 'F11', 'FACHE', 'Bruno', 'b.fache@ludus-academie.com'),
('E118', 'C1', 'F13', 'FERNANDES', 'Yoann', 'y.fernandes@ludus-academie.com'),
('E119', 'C1', 'F13', 'FREYMANN', 'Ludwig', 'l.freymann@ludus-academie.com'),
('E120', 'C1', 'F14', 'FUCHS', 'Emilien', 'e.fuchs@ludus-academie.com'),
('E121', 'C1', 'F14', 'GALATI', 'Gaetan', 'g.galati@ludus-academie.com'),
('E122', 'C1', 'F12', 'GAU', 'Pierre-Alain', 'p.gau@ludus-academie.com'),
('E123', 'C1', 'F14', 'GAWLIK', 'Alexis', 'a.gawlik@ludus-academie.com'),
('E124', 'C1', 'F12', 'GERGES', 'Celine', 'c.gerges@ludus-academie.com'),
('E125', 'C1', 'F12', 'GOETZ', 'Thibaud', 't.goetz@ludus-academie.com'),
('E126', 'C1', 'F13', 'GRIMAZ', 'Jeremie', 'j.grimaz@ludus-academie.com'),
('E127', 'C1', 'F14', 'HAAS', 'Mathieu', 'm.haas@ludus-academie.com'),
('E128', 'C1', 'F11', 'HAJNAL', 'Florian', 'f.hajnal@ludus-academie.com'),
('E129', 'C1', 'F14', 'HELFER', 'Antoine', 'a.helfer@ludus-academie.com'),
('E130', 'C1', 'F13', 'HOEL', 'Julien', 'j.hoel@ludus-academie.com'),
('E131', 'C1', 'F13', 'HOSSANN', 'Vincent', 'v.hossann@ludus-academie.com'),
('E132', 'C1', 'F14', 'ISS', 'Fiona', 'f.iss@ludus-academie.com'),
('E133', 'C1', 'F11', 'KAYSER', 'Matthieu', 'm.kayser@ludus-academie.com'),
('E134', 'C1', 'F12', 'LAMARRE', 'Benoit', 'b.lamarre@ludus-academie.com'),
('E135', 'C1', 'F12', 'LASKOWSKI', 'Axel', 'a.laskowski@ludus-academie.com'),
('E136', 'C1', 'F13', 'LORANGE', 'Pauline', 'p.lorange@ludus-academie.com'),
('E137', 'C1', 'F12', 'MADER', 'Maxime', 'm.mader@ludus-academie.com'),
('E138', 'C1', 'F12', 'MAGGAY', 'Cedric', 'c.maggay@ludus-academie.com'),
('E139', 'C1', 'F12', 'MATHIEU', 'Tristan', 't.mathieu@ludus-academie.com'),
('E140', 'C1', 'F11', 'MOCK', 'Romain', 'r.mock@ludus-academie.com'),
('E141', 'C1', 'F11', 'NOIRET-LEMAIRE', 'Lenny', 'l.noiret-lemaire@ludus-academie.com'),
('E142', 'C1', 'F14', 'NOYON', 'Nathan', 'n.noyon@ludus-academie.com'),
('E143', 'C1', 'F13', 'PROB', 'Bastien', 'b.prob@ludus-academie.com'),
('E144', 'C1', 'F12', 'QUENET', 'Raphael', 'r.quenet@ludus-academie.com'),
('E145', 'C1', 'F12', 'ROCHAS', 'Valentin', 'v.rochas@ludus-academie.com'),
('E146', 'C1', 'F13', 'ROUX', 'Anthony', 'a.roux@ludus-academie.com'),
('E147', 'C1', 'F14', 'SAINT JULIEN', 'Joffrey', 'j.saint julien@ludus-academie.com'),
('E148', 'C1', 'F13', 'SCHEER-ALM', 'Benjamin Claude', 'b.scheer-alm@ludus-academie.com'),
('E149', 'C1', 'F11', 'SCHNEE', 'Louis', 'l.schnee@ludus-academie.com'),
('E150', 'C1', 'F14', 'SIMON', 'Pierre-Andre', 'p.simon@ludus-academie.com'),
('E151', 'C1', 'F13', 'UBRIG', 'Joric', 'j.ubrig@ludus-academie.com'),
('E152', 'C1', 'F14', 'VELTZ', 'Quentin', 'q.veltz@ludus-academie.com'),
('E153', 'C1', 'F11', 'VIE', 'Loic', 'l.vie@ludus-academie.com'),
('E154', 'C1', 'F13', 'VINDIGNI', 'Fabio', 'f.vindigni@ludus-academie.com'),
('E155', 'C1', 'F13', 'VIRION', 'Louis', 'l.virion@ludus-academie.com'),
('E156', 'C1', 'F14', 'WALLISCH', 'Alexis', 'a.wallisch@ludus-academie.com'),
('E157', 'C1', 'F13', 'WERLY', 'Tomeline', 't.werly@ludus-academie.com'),
('E158', 'C1', 'None', 'WILHELM', 'Stephane', 's.wilhelm@ludus-academie.com'),
('E159', 'C1', 'None', 'ZIMMER', 'Noe', 'n.zimmer@ludus-academie.com'),
('E21', 'C2', 'F22', 'ALVES', 'Guillaume', 'g.alves@ludus-academie.com'),
('E22', 'C2', 'F22', 'BARTHLEN', 'Arthur', 'a.barthlen@ludus-academie.com'),
('E23', 'C2', 'F21', 'BAZIN', 'Maxime', 'm.bazin@ludus-academie.com'),
('E24', 'C2', 'F22', 'DENNY', 'Thibaut', 't.denny@ludus-academie.com'),
('E25', 'C2', 'F22', 'ELBERTSE', 'Alexy', 'a.elbertse@ludus-academie.com'),
('E26', 'C2', 'F21', 'GIOVINAZZO', 'Alexis', 'a.giovinazzo@ludus-academie.com'),
('E27', 'C2', 'F21', 'GUERRERO', 'Maxime', 'm.guerrero@ludus-academie.com'),
('E28', 'C2', 'F22', 'HERNANDEZ', 'Alexis', 'a.hernandez@ludus-academie.com'),
('E29', 'C2', 'F21', 'HERRMANN', 'Florian', 'f.herrmann@ludus-academie.com'),
('E210', 'C2', 'F21', 'KERGROHEN', 'Pierre-Yves', 'p.kergrohen@ludus-academie.com'),
('E211', 'C2', 'F21', 'LAMOUR', 'Anthony', 'a.lamour@ludus-academie.com'),
('E212', 'C2', 'F21', 'MARTIN', 'Alexandre', 'a.martin@ludus-academie.com'),
('E213', 'C2', 'F22', 'MONNIER', 'Laetitia', 'l.monnier@ludus-academie.com'),
('E214', 'C2', 'F22', 'MORICONI', 'Lenny', 'l.moriconi@ludus-academie.com'),
('E215', 'C2', 'F22', 'PIN', 'Killian', 'k.pin@ludus-academie.com'),
('E216', 'C2', 'F22', 'RINCK', 'Adrien', 'a.rinck@ludus-academie.com'),
('E217', 'C2', 'F21', 'ROCHE', 'Charles', 'c.roche@ludus-academie.com'),
('E218', 'C2', 'F22', 'TRICHET', 'Florentin', 'f.trichet@ludus-academie.com'),
('E219', 'C2', 'F21', 'UNALAN', 'Gokhan', 'g.unalan@ludus-academie.com'),
('E220', 'C2', 'F22', 'WAHLER', 'Adrian', 'a.wahler@ludus-academie.com'),
('E221', 'C2', 'F21', 'WEILER', 'William', 'w.weiler@ludus-academie.com'),
('E222', 'C2', 'F21', 'WENDLING', 'Bruno', 'b.wendling@ludus-academie.com'),
('E31', 'C3', 'F31', 'ACKERMANN', 'Pierre', 'p.ackermann@ludus-academie.com'),
('E32', 'C3', 'F32', 'BALTA', 'Cindy', 'c.balta@ludus-academie.com'),
('E33', 'C3', 'F31', 'BOURGUIGNON', 'Kevin', 'k.bourguignon@ludus-academie.com'),
('E34', 'C3', 'F31', 'BRIOT', 'Anthony', 'a.briot@ludus-academie.com'),
('E35', 'C3', 'F31', 'BRIOTTET', 'Antoine', 'a.briottet@ludus-academie.com'),
('E36', 'C3', 'F32', 'CAILLAUD', 'Jean-Baptiste', 'j.caillaud@ludus-academie.com'),
('E37', 'C3', 'F31', 'CHEUNG', 'Teva', 't.cheung@ludus-academie.com'),
('E38', 'C3', 'F31', 'CHOUFFERT', 'Tristan', 't.chouffert@ludus-academie.com'),
('E39', 'C3', 'F31', 'FELLRATH', 'Jonathan', 'j.fellrath@ludus-academie.com'),
('E310', 'C3', 'F31', 'FOUBERT', 'Guillaume', 'g.foubert@ludus-academie.com'),
('E311', 'C3', 'F31', 'JUNG', 'Lucas', 'l.jung@ludus-academie.com'),
('E312', 'C3', 'F32', 'KLEINCLAUS', 'Florent', 'f.kleinclaus@ludus-academie.com'),
('E313', 'C3', 'F31', 'KRETZ', 'Teo', 't.kretz@ludus-academie.com'),
('E314', 'C3', 'F32', 'MURE', 'Lucas', 'l.mure@ludus-academie.com'),
('E315', 'C3', 'F32', 'RENCUREL', 'Pierre', 'p.rencurel@ludus-academie.com'),
('E316', 'C3', 'F31', 'RENNER', 'Julien', 'j.renner@ludus-academie.com'),
('E317', 'C3', 'F32', 'RIETSCH', 'Virgile', 'v.rietsch@ludus-academie.com'),
('E318', 'C3', 'F32', 'SCHMIDT', 'Arnaud', 'a.schmidt@ludus-academie.com'),
('E319', 'C3', 'F31', 'STADELMANN', 'Louis', 'l.stadelmann@ludus-academie.com'),
('E320', 'C3', 'F32', 'SUTTERLIN', 'Sebastien', 's.sutterlin@ludus-academie.com'),
('E321', 'C3', 'F32', 'TAUPENOT', 'Flavien', 'f.taupenot@ludus-academie.com'),
('E322', 'C3', 'F32', 'WEBER', 'Max', 'm.weber@ludus-academie.com'),
('E41', 'C4', 'M1', 'DOMINGO', 'Alice', 'a.domingo@ludus-academie.com'),
('E42', 'C4', 'M1', 'GAMPER', 'Rebecca', 'r.gamper@ludus-academie.com'),
('E43', 'C5', 'M2', 'GRASSET', 'Jordan', 'j.grasset@ludus-academie.com'),
('E44', 'C5', 'M2', 'HAEHNEL', 'Valentin', 'v.haehnel@ludus-academie.com'),
('E45', 'C5', 'M2', 'JEHL', 'Regis', 'r.jehl@ludus-academie.com'),
('E46', 'C5', 'M2', 'PALMITESSA', 'Lucas', 'l.palmitessa@ludus-academie.com'),
('E47', 'C5', 'M2', 'SANCHEZ', 'Ines', 'i.sanchez@ludus-academie.com'),
('E48', 'C5', 'M2', 'STEPHAN', 'Paul', 'p.stephan@ludus-academie.com');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `NUM_ENS` char(4) NOT NULL,
  `NOM_ENS` char(20) NOT NULL,
  `PRENOM_ENS` char(20) NOT NULL,
  `MAIL_ENS` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseignant`
--

INSERT INTO `enseignant` (`NUM_ENS`, `NOM_ENS`, `PRENOM_ENS`, `MAIL_ENS`) VALUES
('E1', 'LEHMANN', 'Nicolas', 'n.lehmann@ludus-academie.com'),
('E2', 'LOTH', 'Nicolas', 'n.loth@ludus-academie.com'),
('E3', 'MADEMBO', 'Grâce', 'g.madembo@ludus-academie.com'),
('E4', 'MULLER', 'Charley', 'c.muller@ludus-academie.com'),
('E5', 'BESMOND', 'Marine', 'm.besmond@ludus-academie.com');

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

CREATE TABLE `enseignement` (
  `NUM_M` char(4) NOT NULL,
  `NUM_ENS` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `NUM_G` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `groupe`
--

INSERT INTO `groupe` (`NUM_G`) VALUES
('F11'),
('F12'),
('F13'),
('F14'),
('F21'),
('F22'),
('F31'),
('F32'),
('M1'),
('M2');

-- --------------------------------------------------------

--
-- Structure de la table `jour`
--

CREATE TABLE `jour` (
  `NUM_J` char(4) NOT NULL,
  `LIBELLE_J` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jour`
--

INSERT INTO `jour` (`NUM_J`, `LIBELLE_J`) VALUES
('J1', 'Lundi'),
('J2', 'Mardi'),
('J3', 'Mercredi'),
('J4', 'Jeudi'),
('J5', 'Vendredi');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `NUM_M` char(4) NOT NULL,
  `LIBELLE_M` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`NUM_M`, `LIBELLE_M`) VALUES
('MAT1', 'Game Design'),
('MAT2', 'Algo'),
('MAT3', 'Web'),
('MAT4', 'Anglais'),
('MAT5', 'Japonais'),
('MAT6', 'Java'),
('MAT7', 'C++'),
('MAT8', 'Europe');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `NUM_N` char(4) NOT NULL,
  `LIBELLE_N` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `niveau`
--

INSERT INTO `niveau` (`NUM_N`, `LIBELLE_N`) VALUES
('N1', 'Foundation'),
('N2', 'Bachelor'),
('N3', 'Master');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `NUM_S` char(4) NOT NULL,
  `LIBELLE_S` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`NUM_S`, `LIBELLE_S`) VALUES
('S1', 'LINK'),
('S2', 'KIRBY'),
('S3', 'CROFT'),
('S4', 'VR'),
('S5', 'SONIC'),
('S6', 'POKEMON');

-- --------------------------------------------------------

--
-- Structure de la table `tranche_horaire`
--

CREATE TABLE `tranche_horaire` (
  `NUM_H` char(4) NOT NULL,
  `HEURE_DEB` time NOT NULL,
  `HEURE_FIN` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tranche_horaire`
--

INSERT INTO `tranche_horaire` (`NUM_H`, `HEURE_DEB`, `HEURE_FIN`) VALUES
('H1', '09:00:00', '11:00:00'),
('H2', '11:00:00', '13:00:00'),
('H3', '14:00:00', '16:00:00'),
('H4', '16:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `NUM_T` char(4) NOT NULL,
  `LIBELLE_T` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`NUM_T`, `LIBELLE_T`) VALUES
('T1', 'CM'),
('T2', 'TD');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`NUM_CLA`),
  ADD KEY `NUM_N` (`NUM_N`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`NUM_G`,`NUM_S`,`NUM_M`,`NUM_T`,`NUM_H`,`NUM_J`),
  ADD KEY `NUM_S` (`NUM_S`),
  ADD KEY `NUM_M` (`NUM_M`),
  ADD KEY `NUM_T` (`NUM_T`),
  ADD KEY `NUM_H` (`NUM_H`),
  ADD KEY `NUM_J` (`NUM_J`);

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`NUM_ELE`),
  ADD KEY `NUM_CLA` (`NUM_CLA`),
  ADD KEY `NUM_G` (`NUM_G`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`NUM_ENS`);

--
-- Index pour la table `enseignement`
--
ALTER TABLE `enseignement`
  ADD PRIMARY KEY (`NUM_M`,`NUM_ENS`),
  ADD KEY `NUM_ENS` (`NUM_ENS`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`NUM_G`);

--
-- Index pour la table `jour`
--
ALTER TABLE `jour`
  ADD PRIMARY KEY (`NUM_J`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`NUM_M`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`NUM_N`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`NUM_S`);

--
-- Index pour la table `tranche_horaire`
--
ALTER TABLE `tranche_horaire`
  ADD PRIMARY KEY (`NUM_H`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`NUM_T`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
