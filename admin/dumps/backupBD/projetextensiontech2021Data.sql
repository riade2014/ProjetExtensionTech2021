-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 13 avr. 2021 à 11:09
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projetextensiontech2021`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `nom` varchar(50) NOT NULL,
  `mp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`nom`, `mp`) VALUES
('lafaute', 'faute');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `mail`) VALUES
(122, 'loguet', 'eric', 'leric@yahoo.fr'),
(200, 'leclehr', 'arnaud', 'larnaud@gmail.com'),
(220, 'nenkeng', 'armand', 'narmand@yahoo.fr'),
(255, 'lefour', 'marie', 'marie@yahoo.fr');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_fact` int(11) NOT NULL AUTO_INCREMENT,
  `qte` int(11) NOT NULL,
  `nom_ex` varchar(50) NOT NULL,
  `ptot` float NOT NULL,
  PRIMARY KEY (`id_fact`),
  KEY `nom_ex` (`nom_ex`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_fact`, `qte`, `nom_ex`, `ptot`) VALUES
(25, 3, 'lise_blonde', 165),
(26, 2, 'lise_noire', 110),
(27, 5, 'lise_noire', 275),
(28, 3, 'lise_blonde', 165),
(52, 4, 'kinki_long', 480),
(53, 7, 'kinki_avec_closure', 595),
(54, 7, 'kinki_avec_closure', 595),
(55, 1, 'kinki_noir', 55),
(56, 1, 'kinki_noir', 55),
(57, 2, 'kinki_marron', 271.98),
(58, 2, 'kinki_marron', 271.98),
(59, 1, 'kinki_noir', 55),
(60, 7, 'kinki_avec_closure', 595),
(61, 4, 'kinki_long', 480),
(62, 3, 'kinki_avec_closure', 255),
(63, 1, 'kinki_noir', 55),
(64, 4, 'kinki_avec_closure', 340),
(65, 3, 'kinki_long', 360),
(66, 2, 'lise_noire', 210),
(67, 1, 'kinki_avec_closure', 85),
(68, 2, 'lise_noire', 210),
(69, 2, 'kinki_long', 240),
(70, 2, 'kinki_long', 240),
(71, 3, 'lise_noire', 315),
(72, 3, 'lise_blonde', 287.97),
(73, 5, 'lise_noire', 525),
(74, 2, 'lise_noire', 210),
(75, 2, 'lise_noire', 210),
(76, 2, 'lise_noire', 210);

-- --------------------------------------------------------

--
-- Structure de la table `extension`
--

DROP TABLE IF EXISTS `extension`;
CREATE TABLE IF NOT EXISTS `extension` (
  `nom_ex` varchar(50) NOT NULL,
  `prix` float NOT NULL,
  KEY `nom_ex` (`nom_ex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `extension`
--

INSERT INTO `extension` (`nom_ex`, `prix`) VALUES
('kinki_noir', 55),
('lise_noire', 105),
('lise_blonde', 95.99),
('kinki_avec_closure', 85),
('kinki_long', 120),
('kinki_marron', 135.99),
('lise_blanche', 150),
('afro', 10);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_commande_extension` FOREIGN KEY (`nom_ex`) REFERENCES `extension` (`nom_ex`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
