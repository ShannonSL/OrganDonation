-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2019 at 03:55 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio`
--

DROP TABLE IF EXISTS `tbl_audio`;
CREATE TABLE IF NOT EXISTS `tbl_audio` (
  `audio_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `audio_title` varchar(125) DEFAULT NULL,
  `audio_year` varchar(5) DEFAULT NULL,
  `audio_storyline` text,
  `audio_artist` varchar(75) DEFAULT NULL,
  `audio_cover` varchar(75) DEFAULT 'temp_cover.jpg',
  `audio_src` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`audio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `audio_title`, `audio_year`, `audio_storyline`, `audio_artist`, `audio_cover`, `audio_src`) VALUES
(1, '1979', '1995', '\"1979\" is a song by American alternative rock band the Smashing Pumpkins. Released in 1996 as the second single from their third studio album, Mellon Collie and the Infinite Sadness, \"1979\" was written by frontman Billy Corgan, and features loops and samples that were uncharacteristic of previous Smashing Pumpkins songs.[1] The song was written as a coming of age story by Corgan. In the year 1979, Corgan was 12 and this is what he considered his transition into adolescence.', 'The Smashing Pumpkins', 'pumpkins.jpg', '1979.mp3'),
(2, 'Blurry', '2001', 'Puddle of Mudd\'s lead singer Wes Scantlin wrote this about his desire to be a good father and spend quality time with his son, Jordan. \"Blurry\" angered Jordan\'s mother when she first heard it. She and Scantlin are separated. According to Scantlin, \"Blurry\" facilitated discussion of unresolved issues within their marriage and improved their relationship.', 'Puddle of Mudd', 'mudd.jpg', 'Blurry.mp3'),
(3, 'Bombtrack', '1993', '\"Bombtrack\" is a song by American rap metal band Rage Against the Machine that opens their self-titled debut album. Like most of Rage Against the Machine\'s songs, the song\'s lyrics discuss social inequality, proclaiming that \"landlords and power whores\" were going to \"burn\". The riffs were composed by Rage Against the Machine bassist Tim Commerford. Impressed by their song, Rage Against the Machine named it Bombtrack in reference to hip hop terminology where the word \'bomb\' means \'the greatest\', making the song title literally mean \'the greatest track\'.', 'Rage Against the Machine', 'rage.jpg', 'BombTrack.mp3'),
(4, 'Companion', '1999', 'Wide Mouth Mason is a Canadian blues-based rock band, consisting of Shaun Verreault (Lead Vocals, Guitar), Safwan Javed (Percussion, Backing Vocals), and Gordie Johnson (Bass, Backing Vocals). Former bassist Earl Pereira was also co-founder of Wide Mouth Mason. The band hails from Saskatoon, Saskatchewan and has been active since 1995.', 'Wide Mouth Mason', 'companion.jpg', 'Companion.mp3'),
(5, 'Golden Brown', '1981', '\"Golden Brown\" is a song by the English rock band the Stranglers. It was released as a 7\" single in December 1981 in the United States and in January 1982 in the United Kingdom, on Liberty. It was the second single released from the band\'s sixth album La folie. It peaked at No. 2 in the UK Singles Chart, the band\'s highest ever placing in that chart.', 'The Stranglers', 'goldenbrown.jpg', 'GoldenBrown.mp3'),
(6, 'Hard Sun', '2007', 'From the Into the Wild soundtrack, performed by Eddie Vedder.', 'Eddie Vedder', 'hardsun.jpg', 'HardSun.mp3'),
(7, 'Fookin in the Bushes', '2000', 'From the Snatch soundtrack, Fookin in the Bushes was released on the Standing on the Shoulder of Giants, the fourth studio album by English rock band Oasis, released on 28 February 2000 by Big Brother Records. It is the 16th fastest selling album in UK chart history, selling over 310,000 copies in its first week. Standing on the Shoulder of Giants has been certified double platinum by the British Phonographic Industry[1] and has sold around 208,000 copies in the US.', 'Oasis', 'fookin.jpg', 'InTheBushes.mp3'),
(8, 'Morpheus VS Neo', '1996', 'From the Matrix soundtrack. Neo and Morpheus kung fu fighting!', 'The Matrix soundtrack', 'morpheusneo.jpg', 'MorpheusVNeo.mp3'),
(9, 'Sail', '2010', '\"Sail\" is a song by American rock band Awolnation. It was released as a single on November 8, 2010. The song was first featured on the band\'s debut extended play, Back from Earth (2010), and was later featured on their debut album, Megalithic Symphony (2011). The song was written and produced in Venice, California by group member Aaron Bruno, with Kenny Carkeet performing the audio engineering', 'AWOL Nation', 'AWOL.jpg', 'Sail.mp3'),
(10, 'Interstate Love Song', '1994', '\"Interstate Love Song\" is a song by the American rock band Stone Temple Pilots. Released in 1994, the song is from the band\'s second studio album, Purple. Considered one of the band\'s biggest hits, \"Interstate Love Song\" reached number one on the Mainstream Rock Tracks chart on September 17, 1994.', 'Stone Temple Pilots', 'STP.jpg', 'STP_Interstate_Love_Song.mp3'),
(11, 'Street Spirit', '1996', 'Street Spirit (Fade Out)\" is a song by the English alternative rock band Radiohead. It is the final track on their second album, The Bends, released in 1995. It was released as a single and reached number five on the UK Singles Chart, Radiohead\'s highest chart position up to that point. It has been covered by Peter Gabriel and the Darkness. In 2008, the song was featured on Radiohead: The Best Of.', 'Radiohead', 'temp_cover.jpg', 'StreetSpirit.mp3'),
(12, 'Buddy Holly', '1994', '\"Buddy Holly\" is a song by the American rock band Weezer, written by Rivers Cuomo. It was released as the second single from the band\'s debut album Weezer (The Blue Album) in 1994. The single was released on what would have been Buddy Holly\'s 58th birthday. The lyrics reference the song\'s 1950s namesake and actress Mary Tyler Moore. It reached #2 and #34 on the US Modern Rock Tracks chart and the US Mainstream Rock Tracks chart, respectively.', 'Weezer', 'BuddyHolly.jpg', 'weezer.mp3'),
(13, 'What It\'s Like', '1997', '\"What It\'s Like\" is a song by American musician Everlast. It was released in September 1998 as the lead single from his album Whitey Ford Sings the Blues. The song is typical of the style Everlast embraced after leaving hip hop trio House of Pain, being a combination of rock, hip-hop and blues incorporating characterization and empathy towards impoverished protagonists.', 'Everlast', 'everlast.jpg', 'WhatItsLike.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) DEFAULT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `comments_auth`, `comments_copy`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, NULL, 'Loved it. Chris Pratt is my hero! I LOVE YOU STAR LORD!!', '2018-03-26 19:08:41', 1, 5),
(2, NULL, 'Not quite as good as the first Guardians, but still WAY better that any DC movie... ', '2018-03-26 19:09:57', 1, 4),
(3, NULL, 'It sucked.', '2018-04-01 14:54:32', 1, 1),
(4, NULL, 'It was amazing. I really liked this way better than any DC movie that\'s ever been made, EVER.\n\nCuz DC movies are garbage.', '2018-04-01 14:55:29', 1, 3),
(5, NULL, 'I thought Logan was great.THIS is the way you do comic book dystopia.', '2018-04-01 14:56:55', 3, 4),
(6, NULL, 'Way too violent. I thought Hugh Jackman would at least do a song and dance, but was VERY disappointed.', '2018-04-01 14:57:35', 3, 1),
(7, NULL, 'OMG i can\'t get enough Deadpool.. what a great movie', '2018-04-01 15:11:30', 7, 5),
(8, NULL, 'I really liked this. Prof X made me sad tho. What a way to go...', '2018-04-01 15:51:58', 3, 4),
(9, NULL, 'afsdfsdfa', '2018-04-02 20:59:20', 3, 3),
(10, NULL, 'the most amazingest movie ever to amaze!', '2018-04-07 23:24:41', 1, 3),
(11, NULL, 'best movie ever', '2018-04-07 23:25:17', 1, 5),
(12, NULL, 'undefined', '2018-04-08 17:58:27', 9, 5),
(13, NULL, 'undefined', '2018-04-08 18:01:58', 9, 1),
(14, NULL, 'undefined', '2018-04-08 18:05:54', 1, 4),
(15, NULL, 'undefined', '2018-04-08 18:07:54', 1, 5),
(16, NULL, 'Deadpool smashed quite a few boundaries', '2018-04-08 18:08:45', 7, 5),
(17, NULL, 'last test to see if this works', '2018-04-08 18:09:23', 7, 3),
(18, NULL, 'this looked interesting and then was a bit of a letdown', '2018-04-08 19:03:13', 4, 3),
(19, NULL, 'i like pigs so I didn\'t really like this movie.', '2018-04-08 19:10:07', 4, 1),
(20, NULL, 'pigs are delicious so i think this movie was fantastic. and made me hungry.', '2018-04-08 19:13:06', 4, 3),
(21, NULL, 'i like pork so hooray for super pigs.', '2018-04-08 19:23:53', 4, 3),
(22, NULL, 'I DON\'T like pork so super pigs = boooo!', '2018-04-08 19:25:19', 4, 0),
(23, NULL, 'I ALSO don\'t like super pigs.', '2018-04-08 19:27:19', 4, 1),
(24, NULL, 'I hate super pigs. AND this movie.', '2018-04-08 19:30:01', 4, 0),
(25, NULL, 'I hate super pigs. AND this movie.', '2018-04-08 19:30:32', 4, 1),
(26, NULL, 'I kind of like it. but mostly hated it.', '2018-04-08 19:32:31', 4, 1),
(27, NULL, 'fantabolous', '2018-04-09 15:18:16', 1, 4),
(28, NULL, 'asdfa', '2018-04-27 14:28:12', 5, 3),
(29, NULL, 'afasd', '2018-04-27 15:30:23', 5, 0),
(30, NULL, 'asdfasd', '2018-04-27 16:18:01', 3, 0),
(31, NULL, 'ddddd', '2018-04-27 16:18:11', 3, 0),
(32, NULL, 'vzxvc', '2018-04-27 16:27:32', 5, 0),
(33, NULL, 'dfasdf', '2018-04-27 16:38:46', 2, 0),
(34, NULL, 'sfasdf', '2018-04-27 16:38:49', 2, 0),
(35, NULL, 'aasd', '2018-04-27 16:45:21', 9, 0),
(36, '', 'sadfadsfasdfasdf', '2018-04-27 16:51:40', 5, 3),
(37, NULL, 'adfasdf', '2018-04-27 16:56:50', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'action'),
(2, 'horror'),
(3, 'fantasy'),
(4, 'adventure'),
(5, 'family'),
(6, 'crime'),
(7, 'fairy tale '),
(8, 'sports'),
(9, 'super hero'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  `movies_rating` varchar(10) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`, `movies_rating`) VALUES
(1, 'matrix.jpg', 'Matrix', '1999', '1h45min', 'Computer programmer Thomas Anderson, living a double life as the hacker \"Neo\", feels something is wrong with the world and is puzzled by repeated online encounters with the cryptic phrase \"the Matrix\". A woman known as Trinity contacts him', 'https://www.youtube.com/embed/m8e-FF8MsqU', '1999', 'adult'),
(2, 'terminator.jpg', 'Terminator', '1984', '2h45min', 'In 1984 Los Angeles, a cyborg assassin known as a Terminator arrives from 2029 and steals clothes and guns. Shortly afterward, Kyle Reese, a human soldier sent back in time from the same year, arrives.', 'https://www.youtube.com/embed/k64P4l2Wmeg', '1984', 'adult'),
(3, 'scream.jpg', 'Scream', '1996', '1h50min', 'High school student Casey Becker receives a flirty phone call from an unknown person, asking her, \"What\'s your favorite scary movie?\" However, the caller turns sadistic and threatens her life. He reveals that her boyfriend Steve Orth is being held hostage and demands ', 'https://www.youtube.com/embed/AWm_mkbdpCA', '1996', 'adult'),
(4, 'sixsense.jpg', 'Sixth Sense', '1994', '2h15min', 'Malcolm Crowe, a child psychologist in Philadelphia returns home one night with his wife Anna after having been honored for his work. A young man appears in their bathroom and accuses Malcolm of failing him. Malcolm recognizes him as Vincent, a former patient whom he treated as a child for hallucinations but is shot before he can talk him down.', 'https://www.youtube.com/embed/VG9AGf66tXM', '1994', 'adult'),
(5, 'hook.jpg', 'Hook', '1992', '1h50min', 'Peter Banning is a successful corporate lawyer living in San Francisco. Though he loves his family, his workaholic lifestyle causes him to spend little time with his wife, Moira, and children, 12-year-old Jack and 7-year-old Maggie, and even miss Jack\'s Little League Baseball game, which is straining his relationships with them', 'https://www.youtube.com/embed/qrGpgcQHroY', '1992', 'adult'),
(6, 'mask.jpg', 'Mask', '1993', '2h30min', 'Stanley Ipkiss (Jim Carrey), an insecure bank clerk working at the local Edge City bank is frequently ridiculed by everyone around him except for his co-worker and best friend Charlie Schumaker (Richard Jeni). ', 'https://www.youtube.com/embed/LZl69yk5lEY', '1993', 'adult'),
(7, 'mission.jpg', 'Mission Impossible', '1994', '1h45min', 'Jim Phelps and his team, the Impossible Missions Force (IMF), attempt to retrieve the CIA non-official cover (NOC) list from the American embassy in Prague. Their mission fails: Phelps is shot, his wife Claire dies in a car bombing, and the rest of the team except Ethan Hunt are eliminated by unknown assassins and supposed tech malfunctions. ', 'https://www.youtube.com/embed/Ohws8y572KE', '1996', 'adult'),
(8, 'mummy.jpg', 'The mummy', '1999', '1h50min', 'In Thebes, Egypt, 1290 BC, high priest Imhotep has a love affair with Anck-su-Namun, the mistress of Pharaoh Seti I. When the Pharaoh discovers the affair, Imhotep and Anck-su-Namun assassinate him. ', 'https://www.youtube.com/embed/h3ptPtxWJRs', '1999', 'adult'),
(9, 'mightyduck.jpg', 'The Mighty Ducks', '1992', '2h30min', 'Gordon Bombay (Emilio Estevez) is an arrogant but successful Minneapolis defense attorney. After his 30th successful case, Bombay celebrates by going out drinking and is arrested for drunk driving and sentenced to 500 hours of community service by coaching the local \"District 5\" Pee-Wee hockey team.', 'https://www.youtube.com/embed/PK0SizOkbF4', '1992', 'adult'),
(10, 'matilda.jpg', 'Matilda', '1996', '1h50min', 'In a small Buckinghamshire village, Matilda Wormwood is a five-and-half-year-old girl of unusual precocity, but her parents and older brother, Michael hate her. She resorts to pranks such as gluing her father\'s hat to his head, hiding a friend\'s parrot in the chimney to simulate a burglar or ghost, and secretly bleaching her father\'s hair, to get revenge on her parents', 'https://www.youtube.com/embed/hUGHWje7liM', '1996', 'adult'),
(11, 'suspect.jpg', 'The Usual Suspect', '1996', '1h50min', 'A criminal, Dean Keaton, is lying badly wounded on a ship docked in San Pedro Bay. He is confronted by a mysterious figure whom he calls \"Keyser\", who shoots him dead and sets fire to the ship.', 'https://www.youtube.com/embed/oiXdPolca5w', '1996', 'adult'),
(12, 'heat.jpg', 'Heat', '1995', '2h25min', 'Neil McCauley (De Niro), a highly skilled career criminal, and his crew – Chris Shiherlis (Kilmer), Michael Cheritto (Sizemore), and Trejo – hire Waingro (Gage) to help them rob $1.6 million in bearer bonds from an armored car. ', 'https://www.youtube.com/embed/2GfZl4kuVNI', '1995', 'adult'),
(13, 'giant.jpg', 'Iron Giant', '1995', '1h30min', '\r\nDuring the Cold War shortly after the Soviet Union launches Sputnik 1 in October 1957, an object from space crashes in the ocean just off the coast of Maine, then enters the forest near the town of Rockwell. Nine-year-old Hogarth Hughes investigates and finds a giant robot attempting to eat the transmission lines of an electrical substation. Hogarth eventually befriends the Giant, finding it docile and curious. When it eats railroad tracks in the path of an oncoming train, ', 'https://www.youtube.com/embed/doSJxiYp9yo', '1995', 'kids'),
(14, 'ghost.jpg', 'Ghost in the shell', '1995', '1h45min', 'Ghost in the Shell is a Japanese media franchise originally published as a seinen manga series of the same name written and illustrated by Masamune Shirow. T', 'https://www.youtube.com/embed/p2MEaROKjaE', '1995', 'kids'),
(15, 'lionking.jpg', 'The Lion King', '1995', '88min', 'Scar sets a trap for his brother and nephew, luring Simba into a gorge and having the hyenas drive a large herd of wildebeest into a stampede that will trample him. He informs Mufasa of Simba\'s peril, knowing that king will rush to save his son. ', 'https://www.youtube.com/embed/_ujGv5dhGfk', '1995', 'kids'),
(16, 'toystory.jpg', 'Toy Story', '1994', '90min', 'In a world where toys are living things but pretend to be lifeless when humans are present, a group of toys, owned by a boy named Andy Davis, are caught off-guard when Andy\'s birthday party is moved up a week, as his family', 'https://www.youtube.com/embed/KYz2wyBy3kc', '1994', 'kids'),
(17, 'aladdin.jpg', 'Aladdin', '1992', '95min', 'When a street urchin finds a lamp with a genie inside, he uses the lamp to turn himself into a prince in order to win the heart of a beautiful princess. But an evil vizier is after the lamp too.', 'https://www.youtube.com/embed/HlULSKurtzg', '1992', 'kids'),
(18, 'beautyandbeast.jpg', 'Beauty and the Beast', '1991', '90min', 'A selfish prince is cursed to become a monster for the rest of his life, unless he learns to fall in love with a beautiful young woman he keeps prisoner.', 'https://www.youtube.com/embed/uQ0ODCMC6xs', '1991', 'kids'),
(19, 'momonoke.jpg', 'Princess Mononoke', '1992', '90min', 'On a journey to find the cure for a Tatarigami\'s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.', 'https://www.youtube.com/embed/4OiMOHRDs14', '1992', 'kids'),
(20, 'rescuers.jpg', 'The Rescuers Down Under ', '1992', '90min', 'The R.A.S. agents, Miss Bianca and Bernard, race to Australia to save a little boy and a rare golden eagle from a murderous poacher.', 'https://www.youtube.com/embed/bJMlNrEbk0k', '1992', 'kids'),
(21, 'mulan.jpg', 'Mulan ', '1992', '90min', 'To save her father from death in the army, a young maiden secretly goes in his place and becomes one of China\'s greatest heroines in the process.', 'https://www.youtube.com/embed/MsAniqGowKE', '1992', 'kids'),
(22, 'tarzan.jpg', 'Tarzan ', '1992', '90min', 'A man raised by gorillas must decide where he really belongs when he discovers he is a human.', 'https://www.youtube.com/embed/MwU5ZqyhV5Q', '1992', 'kids'),
(23, 'hercules.jpg', 'Hercules ', '1994', '90min', 'The son of Zeus and Hera is stripped of his immortality as an infant and must become a true hero in order to reclaim it.', 'https://www.youtube.com/embed/ZvtspevZxpg', '1994', 'kids'),
(24, 'pocahontas.jpg', 'Pocahontas', '1995', '90min', 'An English soldier and the daughter of an Algonquin chief share a romance when English colonists invade seventeenth-century Virginia.', 'https://www.youtube.com/embed/hpVNsegX94g', '1995', 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
CREATE TABLE IF NOT EXISTS `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5),
(11, 11, 6),
(12, 12, 6),
(13, 13, 1),
(14, 14, 1),
(15, 15, 3),
(16, 16, 3),
(17, 17, 4),
(18, 18, 4),
(19, 19, 7),
(20, 20, 7),
(21, 21, 8),
(22, 22, 8),
(23, 23, 9),
(24, 24, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
CREATE TABLE IF NOT EXISTS `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
CREATE TABLE IF NOT EXISTS `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
CREATE TABLE IF NOT EXISTS `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_main`
--

DROP TABLE IF EXISTS `tbl_sub_main`;
CREATE TABLE IF NOT EXISTS `tbl_sub_main` (
  `sub_main_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(9) NOT NULL,
  `sub_user_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`sub_main_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_main`
--

INSERT INTO `tbl_sub_main` (`sub_main_id`, `user_id`, `sub_user_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 5, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 7, 9),
(10, 1, 10),
(11, 1, 1),
(12, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_user`
--

DROP TABLE IF EXISTS `tbl_sub_user`;
CREATE TABLE IF NOT EXISTS `tbl_sub_user` (
  `sub_user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sub_user_name` varchar(250) NOT NULL,
  `sub_user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sub_user_ip` varchar(50) DEFAULT NULL,
  `sub_user_bdate` date NOT NULL,
  `sub_user_agedays` int(11) DEFAULT NULL,
  `sub_user_grade` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`sub_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_user`
--

INSERT INTO `tbl_sub_user` (`sub_user_id`, `sub_user_name`, `sub_user_date`, `sub_user_ip`, `sub_user_bdate`, `sub_user_agedays`, `sub_user_grade`) VALUES
(1, 'user1-child', '2019-03-16 03:39:00', NULL, '2019-03-14', 1, 2),
(2, 'user2-child', '2019-03-16 03:39:08', NULL, '2019-03-06', 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
CREATE TABLE IF NOT EXISTS `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_bdate` date DEFAULT NULL,
  `user_agedays` int(11) NOT NULL DEFAULT '0',
  `user_grade` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_bdate`, `user_agedays`, `user_grade`) VALUES
(1, 'user1-adult', 'user1-adult', '1', 'user1-adult@a', '2019-03-16 03:38:43', '::1', '1990-02-06', 10629, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
