-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 02 mars 2022 à 17:03
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wf3_php_intermediaire_prenom`
--

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id` int(5) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `postal_code` int(5) NOT NULL,
  `city` varchar(20) NOT NULL,
  `type` enum('location','vente') NOT NULL,
  `price` double(8,2) NOT NULL,
  `reservation_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`) VALUES
(2, 'appartement dans le 1er ', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75001, 'Paris', 'location', 1900.00, 'j&#039;ai besoin de l&#039;apparte demain'),
(5, 'appartement dans le 2eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75002, 'paris', 'location', 1000.00, 'j&#039;ai besoin de cette appretement'),
(6, 'appartement dans le 3eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75003, 'paris', 'location', 800.00, NULL),
(7, 'appartement dans le 4eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75004, 'paris', 'location', 1200.00, NULL),
(8, 'appartement dans le 5eme ', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75005, 'paris', 'location', 1000.00, NULL),
(9, 'appartement dans le 6eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75006, 'paris', 'location', 1200.00, NULL),
(10, 'appartement dans le 7eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75007, 'paris', 'location', 2000.00, NULL),
(11, 'appartement dans le 8eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75008, 'paris', 'location', 3000.00, NULL),
(12, 'appartement dans le 9 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75009, 'paris', 'location', 1300.00, NULL),
(13, 'appartement dans le 10 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75010, 'paris', 'location', 1750.00, NULL),
(14, 'appartement dans le 11 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75011, 'paris', 'vente', 174000.00, NULL),
(15, 'appartement dans le 12 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75012, 'paris', 'location', 1900.00, NULL),
(16, 'appartement dans le 13 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75013, 'paris', 'vente', 45321.99, NULL),
(17, 'appartement dans le 14 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75014, 'paris', 'vente', 45454.00, NULL),
(18, 'appartement dans le 15', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75015, 'paris', 'vente', 45785.99, NULL),
(19, 'appartement dans le 16 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75016, 'paris', 'vente', 14542.99, NULL),
(20, 'appartement dans le 17 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75017, 'paris', 'vente', 4144.99, NULL),
(21, 'appartement dans le 18 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75018, 'paris', 'vente', 1745.00, NULL),
(22, 'appartement dans le 19 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75019, 'paris', 'location', 2000.00, NULL),
(23, 'appartement dans le 20 eme', 'Au c&oelig;ur des Vall&eacute;es, venez d&eacute;couvrir ce bel appartement familial enti&egrave;rement r&eacute;nov&eacute; !\r\n\r\nSitu&eacute; dans une copropri&eacute;t&eacute; s&eacute;curis&eacute;e et de standing, il se compose d&#039;une entr&eacute;e, d&#039;un grand s&eacute;jour avec balcon expos&eacute; SUD, d&#039;une cuisine am&eacute;nag&eacute;e, de 3 chambres, d&#039;une salle d&#039;eau avec wc et d&#039;une salle de bain avec wc.\r\n\r\nUne cave et un parking en sous-sol compl&egrave;te ce bien.\r\n\r\nPour toute demande de renseignement, le service location du Cabinet R.DURAND se tient &agrave; votre enti&egrave;re disposition, N&#039;h&eacute;sitez pas &agrave; nous contacter !', 75020, 'paris', 'location', 1100.00, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
