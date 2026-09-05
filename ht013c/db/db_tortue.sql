-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 05 fév. 2024 à 16:22
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_tortue`
--
CREATE DATABASE IF NOT EXISTS `db_tortue` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_tortue`;

-- --------------------------------------------------------

--
-- Structure de la table `tortue`
--

DROP TABLE IF EXISTS `tortue`;
CREATE TABLE `tortue` (
  `id_tortue` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `surnom` varchar(50) NOT NULL,
  `couleur` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tortue`
--

INSERT INTO `tortue` (`id_tortue`, `nom`, `surnom`, `couleur`, `image`, `source`) VALUES
(1, 'Leonardo', 'Leo', 'bleu', 'Leonardo.jpg', 'https://fr.wikipedia.org/wiki/Leonardo_(Tortues_Ninja)'),
(2, 'Michelangelo', 'Mikey or Mike', 'orange', 'Michelangelo.jpg', 'https://fr.wikipedia.org/wiki/Michelangelo_(Tortues_Ninja)'),
(3, 'Donatello', 'Donnie or Don', 'violet', 'Donatello.jpg', 'https://fr.wikipedia.org/wiki/Donatello_(Tortues_Ninja)'),
(4, 'Raphael', 'Raph', 'rouge', 'Raphael.jpg', 'https://fr.wikipedia.org/wiki/Raphael_(Tortues_Ninja)');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tortue`
--
ALTER TABLE `tortue`
  ADD PRIMARY KEY (`id_tortue`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tortue`
--
ALTER TABLE `tortue`
  MODIFY `id_tortue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
