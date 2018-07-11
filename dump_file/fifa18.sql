-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.0.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for fifa18
CREATE DATABASE IF NOT EXISTS `fifa18` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fifa18`;


-- Dumping structure for table fifa18.matches
CREATE TABLE IF NOT EXISTS `matches` (
  `venue` varchar(15) NOT NULL,
  `location` varchar(24) NOT NULL,
  `status` varchar(9) NOT NULL,
  `time` varchar(9) DEFAULT NULL,
  `fifa_id` int(11) NOT NULL,
  `home_team_statisticsattempts_on_goal` int(11) DEFAULT NULL,
  `home_team_statisticson_target` int(11) DEFAULT NULL,
  `home_team_statisticsoff_target` int(11) DEFAULT NULL,
  `home_team_statisticsblocked` int(11) DEFAULT NULL,
  `home_team_statisticswoodwork` int(11) DEFAULT NULL,
  `home_team_statisticscorners` int(11) DEFAULT NULL,
  `home_team_statisticsoffsides` int(11) DEFAULT NULL,
  `home_team_statisticsball_possession` int(11) DEFAULT NULL,
  `home_team_statisticspass_accuracy` int(11) DEFAULT NULL,
  `home_team_statisticsnum_passes` int(11) DEFAULT NULL,
  `home_team_statisticspasses_completed` int(11) DEFAULT NULL,
  `home_team_statisticsdistance_covered` int(11) DEFAULT NULL,
  `home_team_statisticsballs_recovered` int(11) DEFAULT NULL,
  `home_team_statisticstackles` int(11) DEFAULT NULL,
  `home_team_statisticsclearances` int(11) DEFAULT NULL,
  `home_team_statisticsyellow_cards` int(11) DEFAULT NULL,
  `home_team_statisticsred_cards` bit(1) DEFAULT NULL,
  `home_team_statisticsfouls_committed` int(11) DEFAULT NULL,
  `home_team_statisticscountry` varchar(10) DEFAULT NULL,
  `away_team_statisticsattempts_on_goal` int(11) DEFAULT NULL,
  `away_team_statisticson_target` int(11) DEFAULT NULL,
  `away_team_statisticsoff_target` int(11) DEFAULT NULL,
  `away_team_statisticsblocked` int(11) DEFAULT NULL,
  `away_team_statisticswoodwork` int(11) DEFAULT NULL,
  `away_team_statisticscorners` int(11) DEFAULT NULL,
  `away_team_statisticsoffsides` int(11) DEFAULT NULL,
  `away_team_statisticsball_possession` int(11) DEFAULT NULL,
  `away_team_statisticspass_accuracy` int(11) DEFAULT NULL,
  `away_team_statisticsnum_passes` int(11) DEFAULT NULL,
  `away_team_statisticspasses_completed` int(11) DEFAULT NULL,
  `away_team_statisticsdistance_covered` int(11) DEFAULT NULL,
  `away_team_statisticsballs_recovered` int(11) DEFAULT NULL,
  `away_team_statisticstackles` int(11) DEFAULT NULL,
  `away_team_statisticsclearances` int(11) DEFAULT NULL,
  `away_team_statisticsyellow_cards` int(11) DEFAULT NULL,
  `away_team_statisticsred_cards` bit(1) DEFAULT NULL,
  `away_team_statisticsfouls_committed` int(11) DEFAULT NULL,
  `away_team_statisticscountry` varchar(14) DEFAULT NULL,
  `datetime` varchar(20) NOT NULL,
  `last_event_update_at` varchar(20) DEFAULT NULL,
  `last_score_update_at` varchar(20) DEFAULT NULL,
  `home_teamcountry` varchar(16) NOT NULL,
  `home_teamcode` varchar(3) NOT NULL,
  `home_teamgoals` int(11) DEFAULT NULL,
  `away_teamcountry` varchar(16) NOT NULL,
  `away_teamcode` varchar(3) NOT NULL,
  `away_teamgoals` int(11) DEFAULT NULL,
  `winner` varchar(8) DEFAULT NULL,
  `winner_code` varchar(4) DEFAULT NULL,
  `home_team_events0id` int(11) DEFAULT NULL,
  `home_team_events0type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events0player` varchar(19) DEFAULT NULL,
  `home_team_events0time` varchar(3) DEFAULT NULL,
  `home_team_events1id` int(11) DEFAULT NULL,
  `home_team_events1type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events1player` varchar(19) DEFAULT NULL,
  `home_team_events1time` varchar(3) DEFAULT NULL,
  `home_team_events2id` int(11) DEFAULT NULL,
  `home_team_events2type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events2player` varchar(19) DEFAULT NULL,
  `home_team_events2time` varchar(3) DEFAULT NULL,
  `home_team_events3id` int(11) DEFAULT NULL,
  `home_team_events3type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events3player` varchar(20) DEFAULT NULL,
  `home_team_events3time` date DEFAULT NULL,
  `home_team_events4id` int(11) DEFAULT NULL,
  `home_team_events4type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events4player` varchar(16) DEFAULT NULL,
  `home_team_events4time` date DEFAULT NULL,
  `home_team_events5id` int(11) DEFAULT NULL,
  `home_team_events5type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events5player` varchar(18) DEFAULT NULL,
  `home_team_events5time` date DEFAULT NULL,
  `home_team_events6id` int(11) DEFAULT NULL,
  `home_team_events6type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events6player` varchar(17) DEFAULT NULL,
  `home_team_events6time` varchar(6) DEFAULT NULL,
  `home_team_events7id` int(11) DEFAULT NULL,
  `home_team_events7type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events7player` varchar(16) DEFAULT NULL,
  `home_team_events7time` varchar(6) DEFAULT NULL,
  `home_team_events8id` int(11) DEFAULT NULL,
  `home_team_events8type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events8player` varchar(19) DEFAULT NULL,
  `home_team_events8time` varchar(6) DEFAULT NULL,
  `home_team_events9id` int(11) DEFAULT NULL,
  `home_team_events9type_of_event` varchar(11) DEFAULT NULL,
  `home_team_events9player` varchar(19) DEFAULT NULL,
  `home_team_events9time` date DEFAULT NULL,
  `home_team_events10id` int(11) DEFAULT NULL,
  `home_team_events10type_of_event` varchar(16) DEFAULT NULL,
  `home_team_events10player` varchar(15) DEFAULT NULL,
  `home_team_events10time` varchar(6) DEFAULT NULL,
  `home_team_events11id` int(11) DEFAULT NULL,
  `home_team_events11type_of_event` varchar(15) DEFAULT NULL,
  `home_team_events11player` varchar(17) DEFAULT NULL,
  `home_team_events11time` varchar(6) DEFAULT NULL,
  `away_team_events0id` int(11) DEFAULT NULL,
  `away_team_events0type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events0player` varchar(20) DEFAULT NULL,
  `away_team_events0time` varchar(3) DEFAULT NULL,
  `away_team_events1id` int(11) DEFAULT NULL,
  `away_team_events1type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events1player` varchar(19) DEFAULT NULL,
  `away_team_events1time` varchar(6) DEFAULT NULL,
  `away_team_events2id` int(11) DEFAULT NULL,
  `away_team_events2type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events2player` varchar(21) DEFAULT NULL,
  `away_team_events2time` varchar(3) DEFAULT NULL,
  `away_team_events3id` int(11) DEFAULT NULL,
  `away_team_events3type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events3player` varchar(22) DEFAULT NULL,
  `away_team_events3time` date DEFAULT NULL,
  `away_team_events4id` int(11) DEFAULT NULL,
  `away_team_events4type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events4player` varchar(18) DEFAULT NULL,
  `away_team_events4time` date DEFAULT NULL,
  `away_team_events5id` int(11) DEFAULT NULL,
  `away_team_events5type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events5player` varchar(18) DEFAULT NULL,
  `away_team_events5time` date DEFAULT NULL,
  `away_team_events6id` int(11) DEFAULT NULL,
  `away_team_events6type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events6player` varchar(19) DEFAULT NULL,
  `away_team_events6time` varchar(6) DEFAULT NULL,
  `away_team_events7id` int(11) DEFAULT NULL,
  `away_team_events7type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events7player` varchar(19) DEFAULT NULL,
  `away_team_events7time` varchar(6) DEFAULT NULL,
  `away_team_events8id` int(11) DEFAULT NULL,
  `away_team_events8type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events8player` varchar(21) DEFAULT NULL,
  `away_team_events8time` varchar(6) DEFAULT NULL,
  `away_team_events9id` int(11) DEFAULT NULL,
  `away_team_events9type_of_event` varchar(16) DEFAULT NULL,
  `away_team_events9player` varchar(19) DEFAULT NULL,
  `away_team_events9time` date DEFAULT NULL,
  `away_team_events10id` int(11) DEFAULT NULL,
  `away_team_events10type_of_event` varchar(15) DEFAULT NULL,
  `away_team_events10player` varchar(16) DEFAULT NULL,
  `away_team_events10time` varchar(6) DEFAULT NULL,
  `home_team_statistics` varchar(30) DEFAULT NULL,
  `away_team_statistics` varchar(30) DEFAULT NULL,
  `home_teamteam_tbd` varchar(3) DEFAULT NULL,
  `away_teamteam_tbd` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`venue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fifa18.matches: ~0 rows (approximately)
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;


-- Dumping structure for table fifa18.match_results
CREATE TABLE IF NOT EXISTS `match_results` (
  `id` int(11) NOT NULL,
  `country` varchar(14) NOT NULL,
  `alternate_name` varchar(30) DEFAULT NULL,
  `fifa_code` varchar(3) NOT NULL,
  `group_id` int(11) NOT NULL,
  `group_letter` varchar(1) NOT NULL,
  `wins` int(11) NOT NULL,
  `draws` bit(1) NOT NULL,
  `losses` int(11) NOT NULL,
  `games_played` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `goals_for` int(11) NOT NULL,
  `goals_against` int(11) NOT NULL,
  `goal_differential` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fifa18.match_results: ~0 rows (approximately)
/*!40000 ALTER TABLE `match_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `match_results` ENABLE KEYS */;


-- Dumping structure for table fifa18.team
CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL,
  `country` varchar(14) NOT NULL,
  `alternate_name` varchar(30) DEFAULT NULL,
  `fifa_code` varchar(3) NOT NULL,
  `group_id` int(11) NOT NULL,
  `group_letter` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fifa18.team: ~0 rows (approximately)
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
