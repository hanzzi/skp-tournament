-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2017 at 09:13 AM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dankdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL,
  `gameName` varchar(64) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `gameName`) VALUES
(1, 'Overwatch'),
(2, 'Heroes of the storm'),
(3, 'League of legends'),
(4, 'Counter strike global offensive');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL,
  `teamName` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Users_id` int(11) NOT NULL,
  `team_leader` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_has_games`
--

CREATE TABLE IF NOT EXISTS `team_has_games` (
  `Team_id` int(11) NOT NULL,
  `Team_Users_id` int(11) NOT NULL,
  `Games_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_has_tournaments`
--

CREATE TABLE IF NOT EXISTS `team_has_tournaments` (
  `Team_id` int(11) NOT NULL,
  `Team_Users_id` int(11) NOT NULL,
  `Tournaments_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE IF NOT EXISTS `tournaments` (
  `id` int(11) NOT NULL,
  `t_Name` varchar(45) DEFAULT NULL,
  `Games_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'Admin123', 'druzze@hotmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`,`Users_id`),
  ADD UNIQUE KEY `team_leader_UNIQUE` (`team_leader`),
  ADD KEY `fk_Team_Users_idx` (`Users_id`);

--
-- Indexes for table `team_has_games`
--
ALTER TABLE `team_has_games`
  ADD PRIMARY KEY (`Team_id`,`Team_Users_id`,`Games_id`),
  ADD KEY `fk_Team_has_Games_Games1_idx` (`Games_id`),
  ADD KEY `fk_Team_has_Games_Team1_idx` (`Team_id`,`Team_Users_id`);

--
-- Indexes for table `team_has_tournaments`
--
ALTER TABLE `team_has_tournaments`
  ADD PRIMARY KEY (`Team_id`,`Team_Users_id`,`Tournaments_id`),
  ADD KEY `fk_Team_has_Tournaments_Tournaments1_idx` (`Tournaments_id`),
  ADD KEY `fk_Team_has_Tournaments_Team1_idx` (`Team_id`,`Team_Users_id`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Tournaments_Games1_idx` (`Games_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `fk_team_leader` FOREIGN KEY (`team_leader`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Team_Users` FOREIGN KEY (`Users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `team_has_games`
--
ALTER TABLE `team_has_games`
  ADD CONSTRAINT `fk_Team_has_Games_Games1` FOREIGN KEY (`Games_id`) REFERENCES `games` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Team_has_Games_Team1` FOREIGN KEY (`Team_id`, `Team_Users_id`) REFERENCES `team` (`id`, `Users_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `team_has_tournaments`
--
ALTER TABLE `team_has_tournaments`
  ADD CONSTRAINT `fk_Team_has_Tournaments_Team1` FOREIGN KEY (`Team_id`, `Team_Users_id`) REFERENCES `team` (`id`, `Users_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Team_has_Tournaments_Tournaments1` FOREIGN KEY (`Tournaments_id`) REFERENCES `tournaments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD CONSTRAINT `fk_Tournaments_Games1` FOREIGN KEY (`Games_id`) REFERENCES `games` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
