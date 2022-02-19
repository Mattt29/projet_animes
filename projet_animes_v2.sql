-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 19 fév. 2022 à 11:50
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_animes`
--

-- --------------------------------------------------------

--
-- Structure de la table `anime`
--

CREATE TABLE `anime` (
  `id_anime` int(6) NOT NULL,
  `titre_anime` varchar(100) NOT NULL,
  `note_generale_anime` float DEFAULT NULL,
  `image_url_anime` varchar(100) DEFAULT NULL,
  `titre_anglais_anime` varchar(100) DEFAULT NULL,
  `fini_anime` tinyint(1) NOT NULL,
  `nb_episode_anime` int(5) DEFAULT NULL,
  `duree_anime` varchar(50) DEFAULT NULL,
  `type_anime` varchar(15) NOT NULL,
  `data_anime` varchar(50) DEFAULT NULL,
  `classification_anime` varchar(50) NOT NULL,
  `nb_note_anime` int(7) NOT NULL DEFAULT '0',
  `rang_anime` int(5) DEFAULT NULL,
  `popularite_anime` int(5) DEFAULT NULL,
  `contexte_anime` text,
  `studio_anime` varchar(30) DEFAULT NULL,
  `genre_anime` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `animelist`
--

CREATE TABLE `animelist` (
  `id_anime` int(5) DEFAULT NULL,
  `titre_anime` varchar(100) DEFAULT NULL,
  `titre_anglais_anime` varchar(108) DEFAULT NULL,
  `image_url_anime` varchar(51) DEFAULT NULL,
  `type_anime` varchar(7) DEFAULT NULL,
  `nb_episode_anime` int(4) DEFAULT NULL,
  `fini_anime` varchar(5) DEFAULT NULL,
  `date_anime` varchar(28) DEFAULT NULL,
  `duree_anime` varchar(21) DEFAULT NULL,
  `classification_anime` varchar(30) DEFAULT NULL,
  `note_generale_anime` varchar(4) DEFAULT NULL,
  `nb_note_anime` int(7) DEFAULT NULL,
  `rang_anime` int(5) DEFAULT NULL,
  `popularite_anime` int(5) DEFAULT NULL,
  `contexte_anime` varchar(1432) DEFAULT NULL,
  `studio_anime` varchar(80) DEFAULT NULL,
  `genre_anime` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `avoir_vu`
--

CREATE TABLE `avoir_vu` (
  `num_anime` int(11) NOT NULL,
  `num_utilisateur` int(11) NOT NULL,
  `note_utilisateur` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id_commentaire` int(15) NOT NULL,
  `message` text NOT NULL,
  `id_discussion` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `discussion`
--

CREATE TABLE `discussion` (
  `id_discussion` int(10) NOT NULL,
  `titre_discussion` varchar(200) NOT NULL,
  `date_discussion` datetime NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etre_ami`
--

CREATE TABLE `etre_ami` (
  `id_utilisateur1` int(11) NOT NULL,
  `id_utilisateur2` int(11) NOT NULL,
  `date_ajout` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `feuille1`
--

CREATE TABLE `feuille1` (
  `id_anime` int(3) DEFAULT NULL,
  `titre_anime` varchar(63) DEFAULT NULL,
  `titre_anglais_anime` varchar(62) DEFAULT NULL,
  `image_url_anime` varchar(51) DEFAULT NULL,
  `type_anime` varchar(7) DEFAULT NULL,
  `nb_episode_anime` int(3) DEFAULT NULL,
  `fini_anime` varchar(5) DEFAULT NULL,
  `date_anime` varchar(28) DEFAULT NULL,
  `duree_anime` varchar(20) DEFAULT NULL,
  `classification_anime` varchar(30) DEFAULT NULL,
  `note_generale_anime` varchar(4) DEFAULT NULL,
  `nb_note_anime` int(7) DEFAULT NULL,
  `rang_anime` int(3) DEFAULT NULL,
  `popularite_anime` int(4) DEFAULT NULL,
  `contexte_anime` varchar(1214) DEFAULT NULL,
  `studio_anime` varchar(31) DEFAULT NULL,
  `genre_anime` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `feuille1`
--

INSERT INTO `feuille1` (`id_anime`, `titre_anime`, `titre_anglais_anime`, `image_url_anime`, `type_anime`, `nb_episode_anime`, `fini_anime`, `date_anime`, `duree_anime`, `classification_anime`, `note_generale_anime`, `nb_note_anime`, `rang_anime`, `popularite_anime`, `contexte_anime`, `studio_anime`, `genre_anime`) VALUES
(1, 'Fullmetal Alchemist: Brotherhood', 'Fullmetal Alchemist: Brotherhood', 'https://myanimelist.net/images/anime/5/47421.jpg', 'TV', 64, 'FALSE', 'Apr 5, 2009 to Jul 4, 2010', '24 min. per ep.', 'R - 17+ (violence & profanity)', '9.25', 733592, 1, 4, 'Fullmetal Alchemist: Brotherhood is an alternate retelling of Hiromu Arakawa\'s Fullmetal Alchemist manga that is closer to the source material than the previous 2003 adaptation, this time covering the entire story.On March 31, 2016, FUNimation Entertainment\'s license to the series expired.', 'Bones', 'Action, Military, Adventure, Comedy, Drama, Magic, Fantasy, Shounen'),
(2, 'Kimi no Na wa.', 'Your Name.', 'https://myanimelist.net/images/anime/5/87048.jpg', 'Movie', 1, 'FALSE', 'Aug 26, 2016', '1 hr. 46 min.', 'PG-13 - Teens 13 or older', '9.19', 471398, 2, 33, NULL, 'CoMix Wave Films', 'Supernatural, Drama, Romance, School'),
(3, 'Gintama°', 'Gintama Season 4', 'https://myanimelist.net/images/anime/3/72078.jpg', 'TV', 51, 'FALSE', 'Apr 8, 2015 to Mar 30, 2016', '24 min. per ep.', 'R - 17+ (violence & profanity)', '9.15', 71751, 3, 383, 'This is a fourth season of Gintama. In the episode continuity corresponds to episodes 266-316 of Gintama. ', 'Bandai Namco Pictures', 'Action, Comedy, Historical, Parody, Samurai, Sci-Fi, Shounen'),
(4, 'Steins;Gate 0', NULL, 'https://myanimelist.net/images/anime/1031/90444.jpg', 'TV', 23, 'TRUE', 'Apr 12, 2018 to ?', '23 min. per ep.', 'PG-13 - Teens 13 or older', '9.15', 26739, 4, 323, NULL, 'White Fox', 'Sci-Fi, Thriller'),
(5, 'Steins;Gate', 'Steins;Gate', 'https://myanimelist.net/images/anime/5/73199.jpg', 'TV', 24, 'FALSE', 'Apr 6, 2011 to Sep 14, 2011', '24 min. per ep.', 'PG-13 - Teens 13 or older', '9.14', 563857, 5, 8, 'Steins;Gate is based on 5pb. and Nitroplus\' visual novel of the same title.', 'White Fox', 'Thriller, Sci-Fi'),
(6, 'Ginga Eiyuu Densetsu', 'Legend of the Galactic Heroes', 'https://myanimelist.net/images/anime/13/13225.jpg', 'OVA', 110, 'FALSE', 'Jan 8, 1988 to Mar 17, 1997', '26 min. per ep.', 'R - 17+ (violence & profanity)', '9.11', 29036, 6, 671, 'Legend of the Galactic heroes was adapted from a series of ten novels, published 1982&ndash;87, by Yoshiki Tanaka. The novels won the Seiun Award for the best long-form Japanese science fiction in 1988.At the start of its production the anime was distributed through a subscription system in which episodes were mailed to existing fans of the novels. It was made in four separate tranches over nearly a decade, with the production of side-stories continuing for several further years. The main series has the largest voice cast of any anime, with well over 300 voice actors, and it is the longest OVA series ever made.The novels have also been adapted into a manga, a stage musical by the Takarazuka Revue and a number of games.', 'Artland, Magic Bus', 'Military, Sci-Fi, Space, Drama'),
(7, 'Gintama\'', 'Gintama Season 2', 'https://myanimelist.net/images/anime/4/50361.jpg', 'TV', 51, 'FALSE', 'Apr 4, 2011 to Mar 26, 2012', '24 min. per ep.', 'PG-13 - Teens 13 or older', '9.11', 92025, 7, 342, 'This is the second season of Gintama. In the episode continuity corresponds to episodes 202-252 of Gintama.', 'Sunrise', 'Action, Sci-Fi, Comedy, Historical, Parody, Samurai, Shounen'),
(8, 'Hunter x Hunter (2011)', 'Hunter x Hunter', 'https://myanimelist.net/images/anime/11/33657.jpg', 'TV', 148, 'FALSE', 'Oct 2, 2011 to Sep 24, 2014', '23 min. per ep.', 'PG-13 - Teens 13 or older', '9.11', 403377, 8, 35, NULL, 'Madhouse', 'Action, Adventure, Super Power, Shounen'),
(9, '3-gatsu no Lion 2nd Season', 'March Comes In Like A Lion 2nd Season', 'https://myanimelist.net/images/anime/1959/92119.jpg', 'TV', 22, 'FALSE', 'Oct 14, 2017 to Mar 31, 2018', '25 min. per ep.', 'PG-13 - Teens 13 or older', '9.1', 30779, 9, 990, NULL, 'Shaft', 'Drama, Game, Seinen, Slice of Life'),
(10, 'Gintama\': Enchousen', 'Gintama: Enchousen', 'https://myanimelist.net/images/anime/6/75172.jpg', 'TV', 13, 'FALSE', 'Oct 4, 2012 to Mar 28, 2013', '24 min. per ep.', 'PG-13 - Teens 13 or older', '9.07', 63468, 10, 685, 'This is a third season of Gintama. In the episode continuity corresponds to episodes 253-265 of Gintama.', 'Sunrise', 'Action, Comedy, Historical, Parody, Samurai, Sci-Fi, Shounen'),
(11, 'Gintama Movie 2: Kanketsu-hen - Yorozuya yo Eien Nare', NULL, 'https://myanimelist.net/images/anime/10/51723.jpg', 'Movie', 1, 'FALSE', 'Jul 6, 2013', '1 hr. 50 min.', 'PG-13 - Teens 13 or older', '9.04', 61010, 11, 826, NULL, 'Sunrise', 'Action, Sci-Fi, Comedy, Historical, Parody, Samurai, Shounen'),
(12, 'Koe no Katachi', 'A Silent Voice', 'https://myanimelist.net/images/anime/3/80136.jpg', 'Movie', 1, 'FALSE', 'Sep 17, 2016', '2 hr. 10 min.', 'PG-13 - Teens 13 or older', '9.04', 296261, 12, 77, NULL, 'Kyoto Animation', 'Drama, School, Shounen'),
(13, 'Gintama.', 'Gintama Season 5', 'https://myanimelist.net/images/anime/3/83528.jpg', 'TV', 12, 'FALSE', 'Jan 9, 2017 to Mar 27, 2017', '24 min. per ep.', 'PG-13 - Teens 13 or older', '9.02', 40441, 13, 934, NULL, 'Bandai Namco Pictures', 'Action, Comedy, Historical, Parody, Samurai, Sci-Fi, Shounen'),
(14, 'Owarimonogatari 2nd Season', 'Owarimonogatari Second Season', 'https://myanimelist.net/images/anime/6/87322.jpg', 'TV', 7, 'FALSE', 'Aug 12, 2017 to Aug 13, 2017', '22 min. per ep.', 'R - 17+ (violence & profanity)', '9.02', 42842, 13, 762, NULL, 'Shaft', 'Comedy, Mystery, Supernatural, Vampire'),
(15, 'Clannad: After Story', 'Clannad ~After Story~', 'https://myanimelist.net/images/anime/13/24647.jpg', 'TV', 24, 'FALSE', 'Oct 3, 2008 to Mar 27, 2009', '24 min. per ep.', 'PG-13 - Teens 13 or older', '9.01', 363239, 14, 55, NULL, 'Kyoto Animation', 'Slice of Life, Comedy, Supernatural, Drama, Romance'),
(16, 'Gintama', 'Gintama', 'https://myanimelist.net/images/anime/2/10038.jpg', 'TV', 201, 'FALSE', 'Apr 4, 2006 to Mar 25, 2010', '24 min. per ep.', 'PG-13 - Teens 13 or older', '9.01', 141830, 15, 95, 'Several games based on Gintama have been released on a variety of platforms such as the Sony PlayStation 2, PlayStation Portable and Nintendo DS. Characters from the series have also appeared in Weekly Shounen Jump\'s crossover titles such as Jump Super Stars and Jump Ultimate Stars.The series received high-definition reruns of older episodes by TV Tokyo from April 5, 2010 till March 28, 2011 under the name Yorinuki Gintama-san which included 51 selected episodes as well as 4 new Openings and Endings. Sentai Filmworks licensed and released only the first 49 episodes of Gintama, along with the first movie; in 2016, Crunchyroll gained the license and plans to release the entire series dubbed/subtitled at some point in the future.', 'Sunrise', 'Action, Sci-Fi, Comedy, Historical, Parody, Samurai, Shounen'),
(17, 'Haikyuu!!: Karasuno Koukou VS Shiratorizawa Gakuen Koukou', 'Haikyu!! 3rd Season', 'https://myanimelist.net/images/anime/7/81992.jpg', 'TV', 10, 'FALSE', 'Oct 8, 2016 to Dec 10, 2016', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.99', 157934, 17, 274, NULL, 'Production I.G', 'Comedy, Sports, Drama, School, Shounen'),
(18, 'Code Geass: Hangyaku no Lelouch R2', 'Code Geass: Lelouch of the Rebellion R2', 'https://myanimelist.net/images/anime/4/9391.jpg', 'TV', 25, 'FALSE', 'Apr 6, 2008 to Sep 28, 2008', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.95', 543904, 18, 22, 'Code Geass: Hangyaku no Lelouch R2 is an original anime series by Sunrise animation studio with original character designs by the all-female Japanese manga artist group CLAMP. Manga and light novels based off the show have been published by Kadokawa Shoten. The show has sold millions of DVDs and Blu-ray volumes and is extremely popular in both Japan and North America. The show is known for its multi-genre appeal and for its diverse cast of characters who face many moral dilemmas over the course of the series.The series won: \"The Best TV Animation\" award at the thirteenth Animation Kobe event in 2008, and \"The Most Popular Anime\" award at the Animage \'s 30th Annual Anime Grand Prix.', 'Sunrise', 'Action, Military, Sci-Fi, Super Power, Drama, Mecha'),
(19, 'Sen to Chihiro no Kamikakushi', 'Spirited Away', 'https://myanimelist.net/images/anime/6/79597.jpg', 'Movie', 1, 'FALSE', 'Jul 20, 2001', '2 hr. 5 min.', 'PG - Children', '8.92', 498602, 19, 39, 'Sen to Chihiro no Kamikakushi is the highest grossing film in Japanese history, with a total of ￥30.4 billion from Japanese box office sales alone. It is also the most successful film to debut from Japan, with a total of $289 million worldwide. This critically acclaimed film has won numerous awards, including the Academy Award, more commonly known as \"Oscar\", for Best Animated Feature at the 75th Academy Awards in 2003, as well as the Golden Bear at the 2002 Berlin International Film Festival (alongside Bloody Sunday). It is also among the top ten in the British Film Institute\'s list of the \"50 films you should see by the age of 14\". The English version of Sen to Chihiro no Kamikakushi was dubbed by Walt Disney Pictures and premiered in 2002. The film was released on DVD and VHS formats in North America by Buena Vista Home Entertainment in 2003.', 'Studio Ghibli', 'Adventure, Supernatural, Drama'),
(20, 'Made in Abyss', 'Made in Abyss', 'https://myanimelist.net/images/anime/1922/91900.jpg', 'TV', 13, 'FALSE', 'Jul 7, 2017 to Sep 29, 2017', '25 min. per ep.', 'R - 17+ (violence & profanity)', '8.91', 166905, 20, 178, NULL, 'Kinema Citrus', 'Sci-Fi, Adventure, Mystery, Drama, Fantasy'),
(21, 'Shigatsu wa Kimi no Uso', 'Your Lie in April', 'https://myanimelist.net/images/anime/3/67177.jpg', 'TV', 22, 'FALSE', 'Oct 10, 2014 to Mar 20, 2015', '22 min. per ep.', 'PG-13 - Teens 13 or older', '8.88', 413527, 21, 37, 'Winner in the anime division of the 2016 Sugoi Japan&reg; Awards.', 'A-1 Pictures', 'Drama, Music, Romance, School, Shounen'),
(22, 'Haikyuu!! Second Season', 'Haikyu!! 2nd Season', 'https://myanimelist.net/images/anime/9/76662.jpg', 'TV', 25, 'FALSE', 'Oct 4, 2015 to Mar 27, 2016', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.87', 205597, 22, 171, 'Haikyuu!! Second Season is the sequel to the first anime adaptation of the ongoing manga of the same name, Haikyuu!!, which was ranked in 4th place in Honya Club\'s prestigious \'Zenkoku Shotenin ga Eranda Osusume Comic\' ranking in 2013. Sentai Filmworks has announced their exclusive licensing rights for digital and home release in North America.', 'Production I.G', 'Comedy, Sports, Drama, School, Shounen'),
(23, 'Kizumonogatari III: Reiketsu-hen', NULL, 'https://myanimelist.net/images/anime/8/82911.jpg', 'Movie', 1, 'FALSE', 'Jan 6, 2017', '1 hr. 23 min.', 'R - 17+ (violence & profanity)', '8.87', 62314, 23, 649, NULL, 'Shaft', 'Action, Mystery, Supernatural, Vampire'),
(24, 'Shouwa Genroku Rakugo Shinjuu: Sukeroku Futatabi-hen', 'Descending Stories: Showa Genroku Rakugo Shinju', 'https://myanimelist.net/images/anime/10/82947.jpg', 'TV', 12, 'FALSE', 'Jan 7, 2017 to Mar 25, 2017', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.87', 27311, 24, 1107, NULL, 'Studio Deen', 'Drama, Historical, Josei'),
(25, 'Gintama.: Shirogane no Tamashii-hen', NULL, 'https://myanimelist.net/images/anime/12/89603.jpg', 'TV', 12, 'FALSE', 'Jan 8, 2018 to Mar 26, 2018', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.85', 14981, 25, 1724, NULL, 'Bandai Namco Pictures', 'Action, Sci-Fi, Comedy, Historical, Parody, Samurai, Shounen'),
(26, 'Mushishi Zoku Shou 2nd Season', NULL, 'https://myanimelist.net/images/anime/9/68095.jpg', 'TV', 10, 'FALSE', 'Oct 19, 2014 to Dec 21, 2014', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.83', 48786, 26, 727, NULL, 'Artland', 'Adventure, Fantasy, Historical, Mystery, Seinen, Slice of Life, Supernatural'),
(27, 'Cowboy Bebop', 'Cowboy Bebop', 'https://myanimelist.net/images/anime/4/19644.jpg', 'TV', 26, 'FALSE', 'Apr 3, 1998 to Apr 24, 1999', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.81', 365465, 27, 38, 'When Cowboy Bebop first aired in spring of 1998 on TV Tokyo, only episodes 2, 3, 7-15, and 18 were broadcast, it was concluded with a recap special known as Yose Atsume Blues. This was due to anime censorship having increased following the big controversies over Evangelion, as a result most of the series was pulled from the air due to violent content. Satellite channel WOWOW picked up the series in the fall of that year and aired it in its entirety uncensored. Cowboy Bebop was not a ratings hit in Japan, but sold over 19,000 DVD units in the initial release run, and 81,000 overall. Protagonist Spike Spiegel won Best Male Character, and Megumi Hayashibara won Best Voice Actor for her role as Faye Valentine in the 1999 and 2000 Anime Grand Prix, respectively.Cowboy Bebop\'s biggest influence has been in the United States, where it premiered on Adult Swim in 2001 with many reruns since. The show\'s heavy Western influence struck a chord with American viewers, where it became a \"gateway drug\" to anime aimed at adult audiences.', 'Sunrise', 'Action, Adventure, Comedy, Drama, Sci-Fi, Space'),
(28, 'Hajime no Ippo', 'Fighting Spirit', 'https://myanimelist.net/images/anime/10/2025.jpg', 'TV', 75, 'FALSE', 'Oct 4, 2000 to Mar 27, 2002', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.8', 116681, 28, 313, NULL, 'Madhouse', 'Comedy, Sports, Drama, Shounen'),
(29, 'Mononoke Hime', 'Princess Mononoke', 'https://myanimelist.net/images/anime/7/75919.jpg', 'Movie', 1, 'FALSE', 'Jul 12, 1997', '2 hr. 10 min.', 'PG-13 - Teens 13 or older', '8.8', 333730, 29, 79, 'In 1997 the film won Best Japanese Movie, Best Animation and Japanese Movie Fans\' Choice awards during the 52nd Mainichi Film Awards. In 1998 the film won the Best Picture award during the 21st Japan Academy Awards.', 'Studio Ghibli', 'Action, Adventure, Fantasy'),
(30, 'Code Geass: Hangyaku no Lelouch', 'Code Geass: Lelouch of the Rebellion', 'https://myanimelist.net/images/anime/5/50331.jpg', 'TV', 25, 'FALSE', 'Oct 6, 2006 to Jul 29, 2007', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.79', 627740, 30, 9, 'Code Geass: Hangyaku no Lelouch is an original anime series by Sunrise animation studio with original character designs by the all-female Japanese manga artist group Clamp. Manga and light novels based off the show have been published by Kadokawa Shoten. The show has sold millions of DVDs and Blu-ray volumes and is extremely popular in both Japan and North America. The show is known for its multi-genre appeal and for its diverse cast of characters who face many moral dilemmas over the course of the series.The last two episodes received a pre-airing on an event, July 21, 2007. Regular broadcasting was on July 29, 2007.The series won: \"The Best Anime TV Series\" award at the 2007 Tokyo International Anime Fair, \"The Best TV animation\" award at the twelfth Animation Kobe, and \"The Most Popular Anime\" award at the Animage \'s 29th Annual Anime Grand Prix. ', 'Sunrise', 'Action, Military, Sci-Fi, Super Power, Drama, Mecha, School'),
(31, 'Rurouni Kenshin: Meiji Kenkaku Romantan - Tsuioku-hen', 'Samurai X: Trust and Betrayal', 'https://myanimelist.net/images/anime/9/13160.jpg', 'OVA', 4, 'FALSE', 'Feb 20, 1999 to Sep 22, 1999', '30 min. per ep.', 'R - 17+ (violence & profanity)', '8.79', 89117, 31, 481, NULL, 'Studio Deen', 'Action, Historical, Drama, Romance, Martial Arts, Samurai'),
(32, 'Monogatari Series: Second Season', 'Monogatari Series: Second Season', 'https://myanimelist.net/images/anime/3/52133.jpg', 'TV', 26, 'FALSE', 'Jul 7, 2013 to Dec 29, 2013', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.77', 161651, 32, 207, 'The series is composed of 23 episodes adapted from the novels and 3 summary episodes. 5 of the 6 novels of the Monogatari Series: Second Season light novel series were adapted, while the 3rd novel, Hanamonogatari, was aired separately in August 2014.', 'Shaft', 'Mystery, Comedy, Supernatural, Romance, Vampire'),
(33, 'Mushishi Zoku Shou', 'MUSHI-SHI -Next Passage-', 'https://myanimelist.net/images/anime/13/58533.jpg', 'TV', 10, 'FALSE', 'Apr 5, 2014 to Jun 21, 2014', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.77', 60600, 33, 569, NULL, 'Artland', 'Adventure, Slice of Life, Mystery, Historical, Supernatural, Fantasy, Seinen'),
(34, 'Ookami Kodomo no Ame to Yuki', 'Wolf Children', 'https://myanimelist.net/images/anime/9/35721.jpg', 'Movie', 1, 'FALSE', 'Jul 21, 2012', '1 hr. 57 min.', 'PG - Children', '8.77', 204744, 34, 148, 'Ookami Kodomo no Ame to Yuki won the 2013 Japan Academy Prize for Animation of the Year, the 2012 Mainichi Film Award for Best Animation Film, and the 2013 Animation of the Year award at the Tokyo International Anime Fair. It won two awards at the Oslo Films from the South festival in Norway: the main award, the Silver Mirror, and the audience award. It won an Audience Award at 2013 New York International Children\'s Film Festival and the 2014 Best Anime Disc award from Home Media Magazine.', 'Studio Chizu', 'Slice of Life, Fantasy'),
(35, 'Boku no Hero Academia 2nd Season', 'My Hero Academia 2', 'https://myanimelist.net/images/anime/12/85221.jpg', 'TV', 25, 'FALSE', 'Apr 1, 2017 to Sep 30, 2017', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.76', 350352, 35, 57, NULL, 'Bones', 'Action, Comedy, Super Power, School, Shounen'),
(36, 'Boku no Hero Academia 3rd Season', 'My Hero Academia 3', 'https://myanimelist.net/images/anime/1319/92084.jpg', 'TV', 25, 'TRUE', 'Apr 7, 2018 to ?', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.75', 46664, 36, 233, NULL, 'Bones', 'Action, Comedy, School, Shounen, Super Power'),
(37, 'Great Teacher Onizuka', 'Great Teacher Onizuka', 'https://myanimelist.net/images/anime/13/11460.jpg', 'TV', 43, 'FALSE', 'Jun 30, 1999 to Sep 17, 2000', '25 min. per ep.', 'R - 17+ (violence & profanity)', '8.74', 187442, 37, 146, NULL, 'Studio Pierrot', 'Comedy, Drama, School, Shounen, Slice of Life'),
(38, 'Mushishi', 'Mushi-Shi', 'https://myanimelist.net/images/anime/2/73862.jpg', 'TV', 26, 'FALSE', 'Oct 23, 2005 to Jun 19, 2006', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.74', 147314, 38, 115, 'Mushishi is an adaptation of Yuki Urushibara\'s award-winning manga of the same name. The series adapts the first 26 chapters of the manga, adapting one per episode. The anime aired these stories in a different order than that of the manga.The series won the Tokyo Anime Award in the Television category in 2006. The series premiered on October 23, 2005, but went on hiatus on March 12, 2006 after having aired 20 episodes. Broadcast resumed on May 15, and aired the remaining 6 episodes, concluding on June 19, 2006.', 'Artland', 'Adventure, Fantasy, Historical, Mystery, Seinen, Slice of Life, Supernatural'),
(39, 'Natsume Yuujinchou Roku', 'Natsume\'s Book of Friends Season 6', 'https://myanimelist.net/images/anime/6/84416.jpg', 'TV', 11, 'FALSE', 'Apr 12, 2017 to Jun 21, 2017', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.74', 24355, 39, 1227, NULL, 'Shuka', 'Drama, Fantasy, Shoujo, Slice of Life, Supernatural'),
(40, 'No Game No Life: Zero', NULL, 'https://myanimelist.net/images/anime/1085/90759.jpg', 'Movie', 1, 'FALSE', 'Jul 15, 2017', '1 hr. 46 min.', 'PG-13 - Teens 13 or older', '8.74', 78743, 40, 320, NULL, 'Madhouse', 'Comedy, Ecchi, Fantasy, Game, Supernatural'),
(41, 'Tengen Toppa Gurren Lagann', 'Gurren Lagann', 'https://myanimelist.net/images/anime/4/5123.jpg', 'TV', 27, 'FALSE', 'Apr 1, 2007 to Sep 30, 2007', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.74', 449656, 41, 24, 'Gurren Lagann received widespread critical acclaim since its release. The series received an Excellence Prize at the 2007 Japan Media Arts Festival. Its director Hiroyuki Imaishi received an individual award for \"Personal Best\" at the 12th Animation Kobe Festival that same year for his work on the series.In 2008, during the 7th annual Tokyo Anime Awards held at the Tokyo International Anime Fair, Gurren Lagann won the \"Best Television Production\" award. In addition, the \"Best Character Design\" award was given to the character designer Atsushi Nishigori for his work on the anime.', 'Gainax', 'Action, Adventure, Comedy, Mecha, Sci-Fi'),
(42, 'Hajime no Ippo: New Challenger', 'Fighting Spirit: New Challenger', 'https://myanimelist.net/images/anime/8/56617.jpg', 'TV', 26, 'FALSE', 'Jan 7, 2009 to Jul 1, 2009', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.73', 77718, 42, 663, NULL, 'Madhouse', 'Comedy, Sports, Drama, Shounen'),
(43, 'Howl no Ugoku Shiro', 'Howl\'s Moving Castle', 'https://myanimelist.net/images/anime/5/75810.jpg', 'Movie', 1, 'FALSE', 'Nov 20, 2004', '1 hr. 57 min.', 'G - All Ages', '8.73', 334114, 43, 89, 'Howl No Ugoku Shiro premiered at the Venice Film Festival in 2004 and was later released to Japanese theaters in November, making it one of only three Studio Ghibli films not to be released in July. In 2004 the film won the Osella Awards for Technical Achievement in the 61st Venice Film Festival, the Best Japanese Movie Overall in the Mainichi Film Awards and an Excellence Prize, Animation in the Japan Media Arts Festival. In 2005 the film won the Animation of the Year in the Tokyo International Anime Fair and the Audience Award in the Maui Film Festival. In 2006 it was nominated for the Best Animated Feature in the 78th Academy Award, but lost to the movie Wallace and Gromit: The Curse of the Were-Rabbit.', 'Studio Ghibli', 'Adventure, Drama, Fantasy, Romance'),
(44, 'One Punch Man', 'One Punch Man', 'https://myanimelist.net/images/anime/12/76049.jpg', 'TV', 12, 'FALSE', 'Oct 5, 2015 to Dec 21, 2015', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.73', 691845, 44, 5, 'Episodes 1 and 2 were previewed at a screening in Saitama city cultural center (small hall) on September 6, 2015. Regular broadcasting began on October 5, 2015. One Punch Man is based on Yusuke Murata\'s manga remake of ONE\'s original web comic. The anime adapts the first 7 volumes of the manga.', 'Madhouse', 'Action, Sci-Fi, Comedy, Parody, Super Power, Supernatural, Seinen'),
(45, 'Suzumiya Haruhi no Shoushitsu', 'The Disappearance of Haruhi Suzumiya', 'https://myanimelist.net/images/anime/2/73842.jpg', 'Movie', 1, 'FALSE', 'Feb 6, 2010', '2 hr. 42 min.', 'PG-13 - Teens 13 or older', '8.73', 179475, 45, 181, 'The film won the Best Theatrical Film award at the 2010 Animation Kobe Awards.', 'Kyoto Animation', 'Comedy, Mystery, Romance, School, Sci-Fi, Supernatural'),
(46, 'Natsume Yuujinchou Shi', 'Natsume\'s Book of Friends Season 4', 'https://myanimelist.net/images/anime/3/37449.jpg', 'TV', 13, 'FALSE', 'Jan 3, 2012 to Mar 27, 2012', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.72', 62108, 46, 633, NULL, 'Brain\'s Base', 'Slice of Life, Supernatural, Drama, Fantasy, Shoujo'),
(47, 'Mushishi Zoku Shou: Suzu no Shizuku', NULL, 'https://myanimelist.net/images/anime/9/72689.jpg', 'Movie', 1, 'FALSE', 'May 16, 2015', '47 min.', 'PG-13 - Teens 13 or older', '8.71', 22283, 47, 1432, NULL, 'Artland', 'Adventure, Fantasy, Historical, Mystery, Seinen, Slice of Life, Supernatural'),
(48, 'Kizumonogatari II: Nekketsu-hen', 'Kizumonogatari Part 2: Nekketsu', 'https://myanimelist.net/images/anime/8/80930.jpg', 'Movie', 1, 'FALSE', 'Aug 19, 2016', '1 hr. 4 min.', 'R - 17+ (violence & profanity)', '8.69', 71298, 48, 612, NULL, 'Shaft', 'Action, Mystery, Supernatural, Vampire'),
(49, 'Monster', 'Monster', 'https://myanimelist.net/images/anime/10/18793.jpg', 'TV', 74, 'FALSE', 'Apr 7, 2004 to Sep 28, 2005', '24 min. per ep.', 'R+ - Mild Nudity', '8.69', 118856, 49, 152, NULL, 'Madhouse', 'Drama, Horror, Mystery, Police, Psychological, Seinen, Thriller'),
(50, 'Bakuman. 3rd Season', 'Bakuman.', 'https://myanimelist.net/images/anime/6/41845.jpg', 'TV', 25, 'FALSE', 'Oct 6, 2012 to Mar 30, 2013', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.67', 107767, 50, 426, NULL, 'J.C.Staff', 'Comedy, Drama, Romance, Shounen'),
(51, 'Death Note', 'Death Note', 'https://myanimelist.net/images/anime/9/9453.jpg', 'TV', 37, 'FALSE', 'Oct 4, 2006 to Jun 27, 2007', '23 min. per ep.', 'R - 17+ (violence & profanity)', '8.67', 1009477, 51, 1, 'Death Note has been adapted into live action films, TV dramas, video games, light novels and a musical composed by a Broadway composer. It is licensed in North America by Viz Media.', 'Madhouse', 'Mystery, Police, Psychological, Supernatural, Thriller, Shounen'),
(52, 'Saiki Kusuo no Ψ-nan (TV) 2', 'The Disastrous Life of Saiki K. 2', 'https://myanimelist.net/images/anime/1961/91383.jpg', 'TV', 24, 'TRUE', 'Jan 17, 2018 to ?', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.67', 13954, 52, 1319, NULL, 'J.C.Staff, Egg Firm', 'Slice of Life, Comedy, Supernatural, School, Shounen'),
(53, 'Ansatsu Kyoushitsu 2nd Season', 'Assassination Classroom Second Season', 'https://myanimelist.net/images/anime/8/77966.jpg', 'TV', 25, 'FALSE', 'Jan 8, 2016 to Jul 1, 2016', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.66', 213765, 53, 134, NULL, 'Lerche', 'Action, Comedy, School, Shounen'),
(54, 'Fate/Zero 2nd Season', 'Fate/Zero Season 2', 'https://myanimelist.net/images/anime/8/41125.jpg', 'TV', 12, 'FALSE', 'Apr 8, 2012 to Jun 24, 2012', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.66', 313188, 54, 81, NULL, 'ufotable', 'Action, Supernatural, Magic, Fantasy'),
(55, 'Hajime no Ippo: Rising', 'Hajime No Ippo: The Fighting!', 'https://myanimelist.net/images/anime/6/56147.jpg', 'TV', 25, 'FALSE', 'Oct 6, 2013 to Mar 29, 2014', '22 min. per ep.', 'PG-13 - Teens 13 or older', '8.66', 59310, 55, 845, NULL, 'Madhouse, MAPPA', 'Comedy, Sports, Drama, Shounen'),
(56, 'Pingu in the City', NULL, 'https://myanimelist.net/images/anime/8/89791.jpg', 'TV', 26, 'FALSE', 'Oct 7, 2017 to Mar 31, 2018', '7 min. per ep.', 'G - All Ages', '8.66', 6346, 56, 2546, NULL, 'Polygon Pictures', 'Slice of Life, Comedy, Kids'),
(57, 'Haikyuu!!', 'Haikyu!!', 'https://myanimelist.net/images/anime/7/76014.jpg', 'TV', 25, 'FALSE', 'Apr 6, 2014 to Sep 21, 2014', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.65', 278372, 57, 86, 'Haikyuu!! adapts the first 8 volumes of Haruichi Furudate\'s manga of the same name.', 'Production I.G', 'Comedy, Drama, School, Shounen, Sports'),
(58, 'Ping Pong The Animation', 'Ping Pong the Animation', 'https://myanimelist.net/images/anime/10/58041.jpg', 'TV', 11, 'FALSE', 'Apr 11, 2014 to Jun 20, 2014', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.65', 72887, 58, 563, 'Ping Pong The Animation won the Animation of the Year award in the Television category for the Tokyo Anime Award Festival in 2015.', 'Tatsunoko Production', 'Sports, Psychological, Drama, Seinen'),
(59, 'Natsume Yuujinchou San', 'Natsume\'s Book of Friends Season 3', 'https://myanimelist.net/images/anime/8/82394.jpg', 'TV', 13, 'FALSE', 'Jul 5, 2011 to Sep 27, 2011', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.65', 68833, 58, 596, NULL, 'Brain\'s Base', 'Drama, Fantasy, Shoujo, Slice of Life, Supernatural'),
(60, 'Sora yori mo Tooi Basho', 'A Place Further Than The Universe', 'https://myanimelist.net/images/anime/6/89879.jpg', 'TV', 13, 'FALSE', 'Jan 2, 2018 to Mar 27, 2018', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.65', 41939, 60, 765, NULL, 'Madhouse', 'Slice of Life, Adventure'),
(61, 'Yojouhan Shinwa Taikei', 'The Tatami Galaxy', 'https://myanimelist.net/images/anime/10/50457.jpg', 'TV', 11, 'FALSE', 'Apr 23, 2010 to Jul 2, 2010', '23 min. per ep.', 'R - 17+ (violence & profanity)', '8.65', 60508, 61, 421, 'Based on the novel by Tomihiko Morimi, published in December 2004.Yojouhan Shinwa Taikei won the grand prize for the animation category in the Japan Media Arts Festival on December 8, 2010. ', 'Madhouse', 'Mystery, Comedy, Psychological, Romance'),
(62, 'Mushishi Special: Hihamukage', 'The Shadow that Devours the Sun', 'https://myanimelist.net/images/anime/10/59315.jpg', 'Special', 1, 'FALSE', 'Jan 4, 2014', '45 min.', 'PG-13 - Teens 13 or older', '8.64', 36043, 62, 1201, NULL, 'Artland', 'Adventure, Slice of Life, Mystery, Historical, Supernatural, Fantasy, Seinen'),
(63, 'Natsume Yuujinchou Go', 'Natsume\'s Book of Friends Season 5', 'https://myanimelist.net/images/anime/11/81755.jpg', 'TV', 11, 'FALSE', 'Oct 5, 2016 to Dec 21, 2016', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.64', 31558, 63, 1038, NULL, 'Shuka', 'Slice of Life, Supernatural, Drama, Fantasy, Shoujo'),
(64, 'JoJo no Kimyou na Bouken: Diamond wa Kudakenai', 'JoJo\'s Bizarre Adventure: Diamond is Unbreakable', 'https://myanimelist.net/images/anime/3/79156.jpg', 'TV', 39, 'FALSE', 'Apr 2, 2016 to Dec 24, 2016', '23 min. per ep.', 'R - 17+ (violence & profanity)', '8.63', 99372, 64, 432, 'JoJo no Kimyou na Bouken: Diamond wa Kudakenai is a full adaptation of the fourth part of the JoJo no Kimyou na Bouken manga series. ', 'David Production', 'Action, Adventure, Comedy, Supernatural, Drama, Shounen'),
(65, 'Kara no Kyoukai 5: Mujun Rasen', 'the Garden of sinners Chapter 5: Paradox Paradigm', 'https://myanimelist.net/images/anime/8/9246.jpg', 'Movie', 1, 'FALSE', 'Aug 16, 2008', '1 hr. 54 min.', 'R - 17+ (violence & profanity)', '8.63', 78701, 65, 594, 'Includes claymation short which was shown before the movie in theaters.', 'ufotable', 'Action, Mystery, Supernatural, Drama, Romance, Thriller'),
(66, 'Shouwa Genroku Rakugo Shinjuu', 'Showa Genroku Rakugo Shinju', 'https://myanimelist.net/images/anime/2/77907.jpg', 'TV', 13, 'FALSE', 'Jan 9, 2016 to Apr 2, 2016', '26 min. per ep.', 'PG-13 - Teens 13 or older', '8.63', 47463, 66, 590, 'Shouwa Genroku Rakugo Shinjuu covers the first five volumes of the manga. The original voice cast of the OVA reprised their roles for the animated TV series.', 'Studio Deen', 'Drama, Historical, Josei'),
(67, 'Tengen Toppa Gurren Lagann Movie 2: Lagann-hen', 'Gurren Lagann The Movie: The Lights in the Sky are Stars', 'https://myanimelist.net/images/anime/12/19698.jpg', 'Movie', 1, 'FALSE', 'Apr 22, 2009', '2 hr. 5 min.', 'R+ - Mild Nudity', '8.62', 55073, 67, 759, NULL, 'Gainax', 'Action, Sci-Fi, Space, Super Power, Mecha'),
(68, 'Zoku Natsume Yuujinchou', 'Natsume\'s Book of Friends Season 2', 'https://myanimelist.net/images/anime/4/79738.jpg', 'TV', 13, 'FALSE', 'Jan 6, 2009 to Mar 31, 2009', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.62', 77455, 68, 558, NULL, 'Brain\'s Base', 'Drama, Fantasy, Shoujo, Slice of Life, Supernatural'),
(69, 'Ashita no Joe 2', 'Rocky Joe 2', 'https://myanimelist.net/images/anime/3/45028.jpg', 'TV', 47, 'FALSE', 'Oct 13, 1980 to Aug 31, 1981', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.6', 4275, 69, 3364, NULL, 'Tokyo Movie Shinsha', 'Action, Drama, Shounen, Slice of Life, Sports'),
(70, 'Aria The Origination', 'Aria The Origination', 'https://myanimelist.net/images/anime/6/77623.jpg', 'TV', 13, 'FALSE', 'Jan 8, 2008 to Apr 1, 2008', '24 min. per ep.', 'G - All Ages', '8.59', 18041, 70, 1158, NULL, 'Hal Film Maker', 'Fantasy, Sci-Fi, Shounen, Slice of Life'),
(71, 'Gintama.: Porori-hen', 'Gintama.: Slip Arc', 'https://myanimelist.net/images/anime/11/88325.jpg', 'TV', 13, 'FALSE', 'Oct 2, 2017 to Dec 25, 2017', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.59', 23130, 71, 1464, NULL, 'Bandai Namco Pictures', 'Action, Sci-Fi, Comedy, Historical, Parody, Samurai, Shounen'),
(72, 'Rainbow: Nisha Rokubou no Shichinin', 'Rainbow', 'https://myanimelist.net/images/anime/9/72697.jpg', 'TV', 26, 'FALSE', 'Apr 7, 2010 to Sep 29, 2010', '22 min. per ep.', 'R - 17+ (violence & profanity)', '8.59', 78226, 72, 384, 'FUNimation Entertainment simulcasted Rainbow: Nisha Rokubou no Shichinin in North America, but didn\'t give it a physical release due to poor streaming numbers. It is no longer streaming via FUNimation.', 'Madhouse', 'Drama, Historical, Seinen, Thriller'),
(73, 'Violet Evergarden', 'Violet Evergarden', 'https://myanimelist.net/images/anime/1329/90618.jpg', 'TV', 13, 'FALSE', 'Jan 11, 2018 to Apr 5, 2018', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.59', 111769, 73, 157, NULL, 'Kyoto Animation', 'Slice of Life, Drama, Fantasy'),
(74, 'Shokugeki no Souma: San no Sara - Toutsuki Ressha-hen', NULL, 'https://myanimelist.net/images/anime/1337/91798.jpg', 'TV', 0, 'TRUE', 'Apr 9, 2018 to ?', '24 min.', 'PG-13 - Teens 13 or older', '8.58', 20271, 74, 599, NULL, 'J.C.Staff', 'Ecchi, School, Shounen'),
(75, 'Steins;Gate Movie: Fuka Ryouiki no Déjà vu', 'Steins;Gate: The Movie − Load Region of Déjà Vu', 'https://myanimelist.net/images/anime/3/50317.jpg', 'Movie', 1, 'FALSE', 'Apr 20, 2013', '1 hr. 30 min.', 'PG-13 - Teens 13 or older', '8.58', 166598, 75, 232, 'The series won the 2013 Newtype Anime Awards for Best Anime Film.', 'White Fox', 'Sci-Fi, Drama'),
(76, 'Gintama Movie 1: Shinyaku Benizakura-hen', 'Gintama: The Movie', 'https://myanimelist.net/images/anime/4/28803.jpg', 'Movie', 1, 'FALSE', 'Apr 24, 2010', '1 hr. 35 min.', 'R - 17+ (violence & profanity)', '8.57', 42409, 76, 1138, NULL, 'Sunrise', 'Action, Sci-Fi, Comedy, Historical, Parody, Samurai, Shounen'),
(77, 'Boku dake ga Inai Machi', 'ERASED', 'https://myanimelist.net/images/anime/10/77957.jpg', 'TV', 12, 'FALSE', 'Jan 8, 2016 to Mar 25, 2016', '23 min. per ep.', 'R - 17+ (violence & profanity)', '8.56', 440402, 77, 40, 'Boku dake ga Inai Machi is based on Kei Sanbe\'s manga series of the same title. The anime adapts the full story of the manga, though it condenses and alters the events that take place in volumes 6 to 8.<br /> <br /> The first two episodes were shown at an event on January 5, 2016, at Shinjuku Ward 9. A live-action movie adaptation was released in Japan on March 19, 2016 which also featured an alternate ending. A live-action Netflix TV series was released on December 15, 2017.', 'A-1 Pictures', 'Mystery, Psychological, Seinen, Supernatural'),
(78, 'JoJo no Kimyou na Bouken: Stardust Crusaders 2nd Season', 'JoJo\'s Bizarre Adventure: Stardust Crusaders - Battle in Egypt', 'https://myanimelist.net/images/anime/11/75045.jpg', 'TV', 24, 'FALSE', 'Jan 10, 2015 to Jun 20, 2015', '23 min. per ep.', 'R - 17+ (violence & profanity)', '8.56', 121404, 78, 400, 'The 2nd season covers the remaining 83 chapters of the manga (the Egypt arc).', 'David Production', 'Action, Adventure, Drama, Shounen, Supernatural'),
(79, 'Saiki Kusuo no Ψ-nan (TV)', 'The Disastrous Life of Saiki K.', 'https://myanimelist.net/images/anime/11/80167.jpg', 'TV', 120, 'FALSE', 'Jul 4, 2016 to Dec 26, 2016', '5 min. per ep.', 'PG-13 - Teens 13 or older', '8.56', 59498, 79, 580, 'Saiki Kusuo no &Psi;-nan aired weekly from Monday to Friday short 5 minute episodes in the morning block until November 4, 2016. A full episode every Sunday night followed the morning block short, but later became the main broadcast time. ', 'J.C.Staff, Egg Firm', 'Slice of Life, Comedy, Supernatural, School, Shounen'),
(80, 'Uchuu Kyoudai', 'Space Brothers', 'https://myanimelist.net/images/anime/7/37573.jpg', 'TV', 99, 'FALSE', 'Apr 1, 2012 to Mar 22, 2014', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.56', 26666, 80, 881, NULL, 'A-1 Pictures', 'Comedy, Sci-Fi, Seinen, Slice of Life, Space'),
(81, 'Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai.', 'anohana: The Flower We Saw That Day', 'https://myanimelist.net/images/anime/5/79697.jpg', 'TV', 11, 'FALSE', 'Apr 15, 2011 to Jun 24, 2011', '22 min. per ep.', 'PG-13 - Teens 13 or older', '8.55', 397955, 81, 45, 'Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai. reunites the lead production staff of the 2008 anime series Toradora! It was first teased in December 2010 as a joint production of Aniplex, Fuji Television, and animation studio A-1 Pictures under the title AnoHana Project. The series is set in the city of Chichibu, Saitama Prefecture.The first Blu-ray volume, which went on sale on June 29, 2011, sold more than 31,000 copies in the first week of release. At the time, that first week sales figure was the third highest for a first volume Blu-ray release of a television anime, after Mahou Shoujo Madoka★Magica (2011) and K-On! (2009). AnoHana received a Jury Selection award in the Animation division of the 15th Japan Media Arts Festival.A visual novel adaptation for the PlayStation Portable, which diverges from the story of the anime and contains an original ending, was developed by Guyzware and published by 5pb. on August 30, 2012. AnoHana was also adapted into a special live-action television drama, which aired on Fuji Television on September 21, 2015.', 'A-1 Pictures', 'Slice of Life, Supernatural, Drama'),
(82, 'Ghost in the Shell: Stand Alone Complex 2nd GIG', 'Ghost in the Shell: Stand Alone Complex 2nd GIG', 'https://myanimelist.net/images/anime/11/51465.jpg', 'TV', 26, 'FALSE', 'Jan 1, 2004 to Jan 8, 2005', '25 min. per ep.', 'R - 17+ (violence & profanity)', '8.55', 72222, 82, 545, NULL, 'Production I.G', 'Action, Military, Sci-Fi, Mystery, Police, Mecha, Seinen'),
(83, 'Hotaru no Haka', 'Grave of the Fireflies', 'https://myanimelist.net/images/anime/7/75808.jpg', 'Movie', 1, 'FALSE', 'Apr 16, 1988', '1 hr. 28 min.', 'PG-13 - Teens 13 or older', '8.55', 146968, 83, 284, 'Hotaru no Haka is based on the 1967 semi-autobiographical short story of the same name by Akiyuki Nosaka, which is centered on his experiences during and after the American firebombing of Kobe in 1945, and was released as a double feature with My Neighbor Totoro.The movie has won several awards including the Japan Catholic Film Award in 1988, the Special Award in the 31st Blue Ribbon Awards in 1989, the Animation Jury and Rights of the Child Awards in the Chicago International Children\'s Film Festival in 1994, and the 1st Moscow International Children\'s and Youth\'s Film Festival Grand Prix in 1998.', 'Studio Ghibli', 'Drama, Historical'),
(84, 'Hotarubi no Mori e', NULL, 'https://myanimelist.net/images/anime/8/38229.jpg', 'Movie', 1, 'FALSE', 'Sep 17, 2011', '45 min.', 'G - All Ages', '8.55', 174657, 84, 196, NULL, 'Brain\'s Base', 'Drama, Romance, Shoujo, Supernatural'),
(85, 'Shokugeki no Souma', 'Food Wars! Shokugeki no Soma', 'https://myanimelist.net/images/anime/3/72943.jpg', 'TV', 24, 'FALSE', 'Apr 4, 2015 to Sep 26, 2015', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.55', 356271, 85, 54, NULL, 'J.C.Staff', 'Ecchi, School, Shounen'),
(86, 'Slam Dunk', 'Slam Dunk', 'https://myanimelist.net/images/anime/4/19655.jpg', 'TV', 101, 'FALSE', 'Oct 16, 1993 to Mar 23, 1996', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.55', 55013, 86, 753, NULL, 'Toei Animation', 'Comedy, Sports, Drama, School, Shounen'),
(87, 'Kamisama Hajimemashita: Kako-hen', NULL, 'https://myanimelist.net/images/anime/3/81250.jpg', 'OVA', 4, 'FALSE', 'Aug 20, 2015 to Aug 19, 2016', '30 min. per ep.', 'PG-13 - Teens 13 or older', '8.54', 27168, 87, 1305, NULL, 'TMS Entertainment', 'Comedy, Demons, Supernatural, Romance, Fantasy, Shoujo'),
(88, 'Kuroko no Basket 3rd Season', 'Kuroko\'s Basketball 3', 'https://myanimelist.net/images/anime/4/68299.jpg', 'TV', 25, 'FALSE', 'Jan 11, 2015 to Jun 30, 2015', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.54', 174065, 88, 226, NULL, 'Production I.G', 'Comedy, Sports, School, Shounen'),
(89, 'Kuroshitsuji Movie: Book of the Atlantic', 'Black Butler: Book of the Atlantic', 'https://myanimelist.net/images/anime/9/85792.jpg', 'Movie', 1, 'FALSE', 'Jan 21, 2017', '1 hr. 40 min.', 'R - 17+ (violence & profanity)', '8.54', 18459, 89, 1327, NULL, 'A-1 Pictures', 'Action, Comedy, Historical, Demons, Supernatural, Fantasy'),
(90, 'Major S5', NULL, 'https://myanimelist.net/images/anime/9/75218.jpg', 'TV', 25, 'FALSE', 'Jan 10, 2009 to Jun 27, 2009', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.54', 23101, 90, 1835, NULL, 'SynergySP', 'Comedy, Drama, Romance, Sports'),
(91, 'One Piece', 'One Piece', 'https://myanimelist.net/images/anime/6/73245.jpg', 'TV', 0, 'TRUE', 'Oct 20, 1999 to ?', '24 min.', 'PG-13 - Teens 13 or older', '8.54', 423868, 91, 35, 'Several anime-original arcs have been adapted into light novels, and the series has inspired 40 video games as of 2016.', 'Toei Animation', 'Action, Adventure, Comedy, Super Power, Drama, Fantasy, Shounen'),
(92, 'Hellsing Ultimate', 'Hellsing Ultimate', 'https://myanimelist.net/images/anime/6/7333.jpg', 'OVA', 10, 'FALSE', 'Feb 10, 2006 to Dec 26, 2012', '50 min. per ep.', 'R - 17+ (violence & profanity)', '8.53', 221939, 92, 105, 'Hellsing Ultimate was initially licensed and distributed by Geneon Entertainment USA up until their closure in late 2007. FUNimation Entertainment later picked up the series and finished dubbing it in late 2014. ', 'Madhouse, Satelight, Graphinica', 'Action, Military, Horror, Supernatural, Vampire, Seinen'),
(93, 'Kiseijuu: Sei no Kakuritsu', 'Parasyte -the maxim-', 'https://myanimelist.net/images/anime/3/73178.jpg', 'TV', 24, 'FALSE', 'Oct 9, 2014 to Mar 26, 2015', '23 min. per ep.', 'R - 17+ (violence & profanity)', '8.52', 410107, 94, 42, 'The anime was simulcast by Crunchyroll outside of Asia.Aside from the manga and anime, the series also has two live-action film adaptations.The Chinese Ministry of Culture blacklisted Kiseijuu: Sei no Kakuritsu as well as 37 other works on June 9, 2015.', 'Madhouse', 'Action, Sci-Fi, Horror, Psychological, Drama, Seinen'),
(94, 'Kara no Kyoukai 7: Satsujin Kousatsu (Kou)', 'the Garden of sinners Chapter 7: Murder Speculation Part B', 'https://myanimelist.net/images/anime/9/56619.jpg', 'Movie', 1, 'FALSE', 'Aug 8, 2009', '2 hr. 1 min.', 'R - 17+ (violence & profanity)', '8.52', 66674, 94, 707, 'Includes claymation short which was shown before the movie in theaters.', 'ufotable', 'Action, Mystery, Supernatural, Romance, Thriller'),
(95, 'Mushishi Zoku Shou: Odoro no Michi', 'Mushishi Path of Thorns', 'https://myanimelist.net/images/anime/8/63539.jpg', 'Special', 1, 'FALSE', 'Aug 20, 2014', '47 min.', 'PG-13 - Teens 13 or older', '8.52', 25401, 95, 1548, NULL, 'Artland', 'Adventure, Slice of Life, Mystery, Historical, Supernatural, Fantasy, Seinen'),
(96, 'Nichijou', 'Nichijou - My Ordinary Life', 'https://myanimelist.net/images/anime/3/75617.jpg', 'TV', 26, 'FALSE', 'Apr 3, 2011 to Sep 25, 2011', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.52', 151872, 96, 136, 'Bandai Entertainment had licensed Nichijou, but on January 2, 2012, it was announced they were leaving the North American anime market with all unreleased titles including Nichijou being cancelled. The series would remain unlicensed until November 4, 2016 when FUNimation Entertainment announced that it had acquired the series, and would be releasing it sub-only in a complete Blu-ray & DVD combo pack.', 'Kyoto Animation', 'Slice of Life, Comedy, School'),
(97, 'Usagi Drop', 'Bunny Drop', 'https://myanimelist.net/images/anime/2/29665.jpg', 'TV', 11, 'FALSE', 'Jul 8, 2011 to Sep 16, 2011', '22 min. per ep.', 'PG-13 - Teens 13 or older', '8.52', 139627, 97, 256, NULL, 'Production I.G', 'Josei, Slice of Life'),
(98, 'Kingdom 2nd Season', 'Kingdom: Season 2', 'https://myanimelist.net/images/anime/13/53589.jpg', 'TV', 39, 'FALSE', 'Jun 8, 2013 to Mar 2, 2014', '25 min. per ep.', 'R - 17+ (violence & profanity)', '8.51', 21659, 99, 1621, NULL, 'Studio Pierrot', 'Action, Military, Historical, Seinen'),
(99, 'Mob Psycho 100', 'Mob Psycho 100', 'https://myanimelist.net/images/anime/8/80356.jpg', 'TV', 12, 'FALSE', 'Jul 11, 2016 to Sep 27, 2016', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.51', 272959, 100, 84, NULL, 'Bones', 'Action, Slice of Life, Comedy, Supernatural'),
(100, 'Nana', 'Nana', 'https://myanimelist.net/images/anime/2/11232.jpg', 'TV', 47, 'FALSE', 'Apr 5, 2006 to Mar 28, 2007', '23 min. per ep.', 'R+ - Mild Nudity', '8.51', 108693, 101, 262, 'Nana was also adapted into two successful live action films in 2006, starring Mika Nakashima and Aoi Miyazaki. The manga won the Shogakukan Manga Award for shoujo and it sold more than 40 million copies to this date.', 'Madhouse', 'Music, Slice of Life, Comedy, Drama, Romance, Shoujo'),
(101, 'Bakemono no Ko', 'The Boy and the Beast', 'https://myanimelist.net/images/anime/11/73540.jpg', 'Movie', 1, 'FALSE', 'Jul 11, 2015', '1 hr. 58 min.', 'PG-13 - Teens 13 or older', '8.5', 90673, 102, 482, 'With over &yen;5.8 billion in total, Bakemono no Ko was Japan\'s second highest-grossing domestic film of 2015. It won the Japan Academy Prize for Best Animated Feature, and was also nominated for an Annie Award in its independent category.', 'Studio Chizu', 'Adventure, Supernatural'),
(102, 'Cross Game', 'Cross Game', 'https://myanimelist.net/images/anime/6/22103.jpg', 'TV', 50, 'FALSE', 'Apr 5, 2009 to Mar 28, 2010', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.5', 29517, 102, 1167, NULL, 'SynergySP', 'Comedy, Drama, Romance, School, Sports'),
(103, 'Gintama°: Aizome Kaori-hen', NULL, 'https://myanimelist.net/images/anime/8/79704.jpg', 'OVA', 2, 'FALSE', 'Aug 4, 2016 to Nov 4, 2016', '26 min. per ep.', 'PG-13 - Teens 13 or older', '8.5', 16455, 104, 1979, NULL, 'Bandai Namco Pictures', 'Comedy, Parody'),
(104, 'Samurai Champloo', 'Samurai Champloo', 'https://myanimelist.net/images/anime/11/29134.jpg', 'TV', 26, 'FALSE', 'May 20, 2004 to Mar 19, 2005', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.5', 298034, 105, 67, 'Samurai Champloo is the only anime to have featured music from the Japanese hip-hop producer Nujabes prior to his death in 2010. The anime also spawned the 2006 video game Samurai Champloo: Sidetracked for the PlayStation 2.The show aired in two parts, with the first half airing Thursdays at 2:28 AM on Fuji TV from May 20, 2004 to September 23, 2004, and the second half airing Saturdays at 10:30 AM on BS Fuji from January 22, 2005 to March 19, 2005.Geneon Entertainment USA originally licensed and released the show in North America, but after their closure in late 2007, the show went out of print. FUNimation Entertainment later entered a distribution deal with Geneon to distribute some of their titles, including Samurai Champloo. After the distribution deal ended, FUNimation later outright licensed the series. ', 'Manglobe', 'Action, Adventure, Comedy, Historical, Samurai, Shounen'),
(105, 'Shokugeki no Souma: San no Sara', 'Food Wars! The Third Plate', 'https://myanimelist.net/images/anime/3/88434.jpg', 'TV', 12, 'FALSE', 'Oct 4, 2017 to Dec 20, 2017', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.5', 129754, 106, 282, NULL, 'J.C.Staff', 'Ecchi, School, Shounen'),
(106, 'Baccano!', 'Baccano!', 'https://myanimelist.net/images/anime/3/14547.jpg', 'TV', 13, 'FALSE', 'Jul 27, 2007 to Nov 2, 2007', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.49', 221916, 107, 87, 'Baccano! is based on Ryohgo Narita\'s award-winning light novels of the same title and mainly adapts the first 4 novels. While more faithful to the first 3 novels, the 4th novel (1932) is followed more loosely and is mostly an anime-exclusive story. In addition, content from later novels is briefly included in the anime as well. Unlike the novels however, which follow a mostly linear narrative per book, the anime adopts a non-linear storytelling style; the tale of each novel is told simultaneously with one another, with the focus jumping back and forth in time between and within the different plotlines.', 'Brain\'s Base', 'Action, Mystery, Comedy, Historical, Supernatural'),
(107, 'Bakuman. 2nd Season', 'Bakuman.', 'https://myanimelist.net/images/anime/3/34923.jpg', 'TV', 25, 'FALSE', 'Oct 1, 2011 to Mar 24, 2012', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.49', 122090, 108, 374, NULL, 'J.C.Staff', 'Comedy, Drama, Romance, Shounen'),
(108, 'Kuroko no Basket 2nd Season', 'Kuroko\'s Basketball 2', 'https://myanimelist.net/images/anime/9/56155.jpg', 'TV', 25, 'FALSE', 'Oct 6, 2013 to Mar 30, 2014', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.49', 224182, 109, 153, NULL, 'Production I.G', 'Comedy, Sports, School, Shounen'),
(109, 'Shingeki no Kyojin', 'Attack on Titan', 'https://myanimelist.net/images/anime/10/47347.jpg', 'TV', 25, 'FALSE', 'Apr 7, 2013 to Sep 29, 2013', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.49', 940211, 110, 2, 'Shingeki no Kyojin adapts content from the first 8 volumes of Hajime Isayama\'s award-winning manga of the same name.The last episode received a pre-airing in Tokyo, Marunouchi Piccadilly 1 theater on Saturday, September 28, 2013. TV broadcast took place after midnight, a few hours later.', 'Wit Studio', 'Action, Military, Mystery, Super Power, Drama, Fantasy, Shounen'),
(110, 'Shinsekai yori', 'From the New World', 'https://myanimelist.net/images/anime/12/36775.jpg', 'TV', 25, 'FALSE', 'Sep 29, 2012 to Mar 23, 2013', '22 min. per ep.', 'R - 17+ (violence & profanity)', '8.49', 157863, 111, 114, NULL, 'A-1 Pictures', 'Sci-Fi, Mystery, Horror, Psychological, Supernatural, Drama'),
(111, 'Houseki no Kuni (TV)', 'Land of the Lustrous', 'https://myanimelist.net/images/anime/3/88293.jpg', 'TV', 12, 'FALSE', 'Oct 7, 2017 to Dec 23, 2017', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.48', 52156, 112, 651, NULL, 'Orange', 'Action, Mystery, Drama, Fantasy, Seinen'),
(112, 'Neon Genesis Evangelion: The End of Evangelion', 'Neon Genesis Evangelion: The End of Evangelion', 'https://myanimelist.net/images/anime/12/39305.jpg', 'Movie', 1, 'FALSE', 'Jul 19, 1997', '1 hr. 27 min.', 'R+ - Mild Nudity', '8.48', 193744, 113, 216, 'Shinseiki Evangelion Gekijouban: The End of Evangelion is an alternate version of the series ending, which either supplements or replaces episodes 25 and 26, depending on how they are viewed.The movie was awarded the Animage Anime Grand Prix prize for 1997, the Japan Academy Prize for Biggest Public Sensation of the Year, and Special Audience Choice Award by the 1997 Animation Kobe.', 'Gainax, Production I.G', 'Sci-Fi, Dementia, Psychological, Drama, Mecha');
INSERT INTO `feuille1` (`id_anime`, `titre_anime`, `titre_anglais_anime`, `image_url_anime`, `type_anime`, `nb_episode_anime`, `fini_anime`, `date_anime`, `duree_anime`, `classification_anime`, `note_generale_anime`, `nb_note_anime`, `rang_anime`, `popularite_anime`, `contexte_anime`, `studio_anime`, `genre_anime`) VALUES
(113, 'Yuu☆Yuu☆Hakusho', 'Yu Yu Hakusho: Ghost Files', 'https://myanimelist.net/images/anime/8/25152.jpg', 'TV', 112, 'FALSE', 'Oct 10, 1992 to Jan 7, 1995', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.48', 135610, 114, 246, 'Yuu☆Yuu☆Hakusho was voted as the second best anime of the year in 1993 and best anime of the year in 1994 and 1995 at the Animage Anime Grand Prix.', 'Studio Pierrot', 'Action, Comedy, Demons, Supernatural, Martial Arts, Shounen'),
(114, 'Barakamon', 'Barakamon', 'https://myanimelist.net/images/anime/5/59321.jpg', 'TV', 12, 'FALSE', 'Jul 6, 2014 to Sep 28, 2014', '22 min. per ep.', 'PG-13 - Teens 13 or older', '8.47', 176274, 115, 176, NULL, 'Kinema Citrus', 'Comedy, Slice of Life'),
(115, 'Chihayafuru 2', NULL, 'https://myanimelist.net/images/anime/6/47435.jpg', 'TV', 25, 'FALSE', 'Jan 12, 2013 to Jun 29, 2013', '22 min. per ep.', 'PG-13 - Teens 13 or older', '8.47', 62720, 116, 757, NULL, 'Madhouse', 'Drama, Game, Josei, School, Slice of Life, Sports'),
(116, 'Detective Conan: Episode One - The Great Detective Turned Small', NULL, 'https://myanimelist.net/images/anime/5/81968.jpg', 'Special', 1, 'FALSE', 'Dec 9, 2016', '1 hr. 33 min.', 'PG-13 - Teens 13 or older', '8.47', 4330, 117, 3629, NULL, 'TMS Entertainment', 'Adventure, Mystery, Comedy, Police, Shounen'),
(117, 'Hunter x Hunter', 'Hunter x Hunter', 'https://myanimelist.net/images/anime/8/19473.jpg', 'TV', 62, 'FALSE', 'Oct 16, 1999 to Mar 31, 2001', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.47', 115140, 118, 310, NULL, 'Nippon Animation', 'Action, Adventure, Shounen, Super Power'),
(118, 'Fate/stay night Movie: Heaven\'s Feel - I. Presage Flower', 'Fate/stay night: Heaven\'s Feel - I. Presage Flower', 'https://myanimelist.net/images/anime/5/87106.jpg', 'Movie', 1, 'FALSE', 'Oct 14, 2017', '2 hr.', 'R - 17+ (violence & profanity)', '8.47', 11235, 118, 853, NULL, 'ufotable', 'Action, Fantasy, Magic, Supernatural'),
(119, 'Mahou Shoujo Madoka★Magica Movie 3: Hangyaku no Monogatari', 'Puella Magi Madoka Magica the Movie: Rebellion', 'https://myanimelist.net/images/anime/5/54231.jpg', 'Movie', 1, 'FALSE', 'Oct 26, 2013', '1 hr. 56 min.', 'PG-13 - Teens 13 or older', '8.47', 112763, 120, 403, 'Mahou Shoujo Madoka★Magica Movie 3: Hangyaku no Monogatari is an original story which takes place after the events of the previous films. The film was released in Japanese theaters by Warner Bros. Pictures on October 26, 2013, with a manga adaptation by Hanokage released by Houbunsha between November 2013 and January 2014.Rebellion was one of 19 animated films submitted for Best Animated Feature for the 86th Academy Awards, but was not nominated. The film earned 2.25 billion yen in the Japanese box office. Rebellion was nominated for the Japan Academy Prize for Animation of the Year at the 37th Japan Academy Prize and won the Best Theatrical Film Award at the 19th Animation Kobe Awards.', 'Shaft', 'Psychological, Drama, Magic, Thriller'),
(120, 'Kaze no Tani no Nausicaä', 'Nausicaä of the Valley of the Wind', 'https://myanimelist.net/images/anime/10/75914.jpg', 'Movie', 1, 'FALSE', 'Mar 11, 1984', '1 hr. 57 min.', 'PG-13 - Teens 13 or older', '8.47', 119092, 120, 407, 'In 1984 the film was awarded the Oufuji Noburou Award at the Mainichi Film Awards. In 1985 it was awarded the Best Short Film Award at the Fantafestival.', 'Studio Ghibli, Studio Hibari', 'Adventure, Fantasy'),
(121, 'Natsume Yuujinchou Roku Specials', NULL, 'https://myanimelist.net/images/anime/10/87615.jpg', 'Special', 2, 'FALSE', 'Sep 27, 2017 to Oct 25, 2017', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.47', 4916, 122, 3294, NULL, 'Shuka', 'Slice of Life, Supernatural, Drama, Fantasy, Shoujo'),
(122, 'Shingeki no Kyojin Season 2', 'Attack on Titan Season 2', 'https://myanimelist.net/images/anime/4/84177.jpg', 'TV', 12, 'FALSE', 'Apr 1, 2017 to Jun 17, 2017', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.47', 349192, 123, 46, NULL, 'Wit Studio', 'Action, Military, Mystery, Super Power, Drama, Fantasy, Shounen'),
(123, 'Ghost in the Shell: Stand Alone Complex', 'Ghost in the Shell: Stand Alone Complex', 'https://myanimelist.net/images/anime/11/50857.jpg', 'TV', 26, 'FALSE', 'Oct 1, 2002 to Oct 1, 2003', '25 min. per ep.', 'R - 17+ (violence & profanity)', '8.46', 110294, 124, 273, NULL, 'Production I.G', 'Action, Military, Sci-Fi, Police, Mecha, Seinen'),
(124, 'Mahou Shoujo Madoka★Magica', 'Puella Magi Madoka Magica', 'https://myanimelist.net/images/anime/11/55225.jpg', 'TV', 12, 'FALSE', 'Jan 7, 2011 to Apr 22, 2011', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.46', 380424, 125, 50, 'Mahou Shoujo Madoka★Magica has received widespread critical acclaim, with critics praising the writing, visuals and soundtrack of the series, as well as its approach to the magical girl subgenre. It has also been a commercial success, with each BD volume selling more than 50,000 copies.The series won several awards in Japan, such as the Television Award at the 16th Animation Kobe Awards, as well as 12 Newtype Anime Awards and the Grand Prize for animation in the 2011 Japan Media Arts awards. In 2015, the show was also awarded the inaugural Sugoi Japan Grand Prix, Japan\'s nationwide vote for manga, anime, and novels considered as cultural assets that have the potential to be beloved all over the world, among all the works published since 2005.', 'Shaft', 'Drama, Magic, Psychological, Thriller'),
(125, 'Major S6', NULL, 'https://myanimelist.net/images/anime/2/75216.jpg', 'TV', 25, 'FALSE', 'Apr 3, 2010 to Sep 25, 2010', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.46', 19988, 127, 1985, NULL, 'SynergySP', 'Comedy, Drama, Sports'),
(126, 'Major: World Series', NULL, 'https://myanimelist.net/images/anime/5/75220.jpg', 'OVA', 2, 'FALSE', 'Dec 16, 2011 to Jan 18, 2012', '28 min. per ep.', 'PG-13 - Teens 13 or older', '8.46', 10983, 127, 2742, NULL, 'SynergySP', 'Comedy, Drama, Sports'),
(127, 'Mobile Suit Gundam: The Origin', 'Mobile Suit Gundam: The Origin', 'https://myanimelist.net/images/anime/4/72702.jpg', 'OVA', 6, 'FALSE', 'Apr 24, 2015 to May 5, 2018', '1 hr. 3 min. per ep.', 'R+ - Mild Nudity', '8.46', 5544, 128, 2189, NULL, 'Sunrise', 'Action, Military, Sci-Fi, Space, Mecha, Shounen'),
(128, 'Mononoke', 'Mononoke', 'https://myanimelist.net/images/anime/3/20713.jpg', 'TV', 12, 'FALSE', 'Jul 13, 2007 to Sep 28, 2007', '22 min. per ep.', 'R - 17+ (violence & profanity)', '8.46', 36972, 129, 664, 'The main protagonist of the series, Kusuriuri, was first introduced in \"Bakeneko,\" the final chapter of the Ayakashi: Japanese Classic Horror anthology series. Mononoke was originally broadcast during the NoitaminA programming block in Japan.', 'Toei Animation', 'Mystery, Historical, Horror, Demons, Psychological, Supernatural, Fantasy, Seinen'),
(129, 'Shokugeki no Souma: Ni no Sara', 'Food Wars! The Second Plate', 'https://myanimelist.net/images/anime/8/79353.jpg', 'TV', 13, 'FALSE', 'Jul 2, 2016 to Sep 24, 2016', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.46', 235613, 130, 127, NULL, 'J.C.Staff', 'Ecchi, School, Shounen'),
(130, 'Uchuu Senkan Yamato 2199', 'Star Blazers 2199', 'https://myanimelist.net/images/anime/2/36607.jpg', 'OVA', 26, 'FALSE', 'May 25, 2012 to Oct 25, 2013', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.46', 21150, 131, 1282, 'The series will be sold in the same theaters that show the Yamato movies on the same days, i.e. a simultaneous release.The first two episodes of the TV series (which is the same as the OVA series) were pre-aired on the Family Gekijou able and satellite channel on 6th and 7th of April, 2012. The rest of the episodes will be aired on MBS & TBS beginning April 7, 2013.', 'Xebec, AIC', 'Action, Military, Sci-Fi, Space, Drama'),
(131, 'Kenpuu Denki Berserk', 'Berserk', 'https://myanimelist.net/images/anime/12/18520.jpg', 'TV', 25, 'FALSE', 'Oct 8, 1997 to Apr 1, 1998', '25 min. per ep.', 'R+ - Mild Nudity', '8.45', 153890, 132, 210, 'Kenpuu Denki Berserk is the first anime adaptation of the long-running, ongoing seinen manga series published in the bi-weekly magazine Young Animal created by Kentaro Miura in 1989. While the story in the anime is fairly loyal to the source material, heavy modifications were made to exclude some of the more graphic depictions of violence, as well as characters and other content that could not be covered within the length of the anime&rsquo;s running time. These changes were approved by the series creator himself.', 'OLM', 'Action, Adventure, Demons, Drama, Fantasy, Horror, Military, Romance, Seinen, Supernatural'),
(132, 'Mahou Shoujo Madoka★Magica Movie 2: Eien no Monogatari', 'Puella Magi Madoka Magica the Movie Part 2: Eternal', 'https://myanimelist.net/images/anime/6/42265.jpg', 'Movie', 1, 'FALSE', 'Oct 13, 2012', '1 hr. 49 min.', 'PG-13 - Teens 13 or older', '8.45', 58463, 133, 763, 'Eien no Monogatari is the second of the recap movies, released on October 13, 2012. It features the theme song \"Hikari Furu\" by Kalafina. It is 109 minutes long, covering the remaining four episodes of the anime series. Eien no Monogatari grossed more than &yen;500 million at the Japanese box office.', 'Shaft', 'Drama, Magic, Psychological, Thriller'),
(133, 'Romeo no Aoi Sora', 'Romeo and the Black Brothers', 'https://myanimelist.net/images/anime/4/17979.jpg', 'TV', 33, 'FALSE', 'Jan 15, 1995 to Dec 17, 1995', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.45', 7943, 134, 2528, 'Romeo no Aoi Sora is based on the 1941 German novel Die schwarzen Br&uuml;der by Lisa Tetzner.', 'Nippon Animation', 'Adventure, Drama, Historical, Slice of Life'),
(134, 'Psycho-Pass', 'Psycho-Pass', 'https://myanimelist.net/images/anime/5/43399.jpg', 'TV', 22, 'FALSE', 'Oct 12, 2012 to Mar 22, 2013', '23 min. per ep.', 'R - 17+ (violence & profanity)', '8.45', 377003, 134, 29, 'An edited version of the series received a rebroadcast starting July 10, 2014. 22 episodes of the original series were combined into eleven 46-minute long episodes with some scenes being slightly extended. Psycho-Pass aired on Fuji Television\'s noitaminA block. In the 2013 Newtype Anime Awards it was voted as fourth best title of the year. It\'s 11th episode was awarded \"Best Episode\" in the Noitamina 10th anniversary fan vote. It has spawned several video-game spin-offs, a novel series and a manga series as well. ', 'Production I.G', 'Action, Police, Psychological, Sci-Fi'),
(135, 'Tonari no Totoro', 'My Neighbor Totoro', 'https://myanimelist.net/images/anime/4/75923.jpg', 'Movie', 1, 'FALSE', 'Apr 16, 1988', '1 hr. 26 min.', 'G - All Ages', '8.45', 262204, 135, 118, 'In 1988, Tonari no Totoro won the Best Film and Ofuji Noburo awards in the Mainichi Film Awards, the Special Award in the 31st Blue Ribbon Awards, the Grand Prix in the Animage Anime Awards, and the Best Film and Reader\'s Choice Award: Best Japanese Film awards in the Kinema Junpo Awards.', 'Studio Ghibli', 'Adventure, Comedy, Supernatural'),
(136, 'Boku no Hero Academia', 'My Hero Academia', 'https://myanimelist.net/images/anime/10/78745.jpg', 'TV', 13, 'FALSE', 'Apr 3, 2016 to Jun 26, 2016', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.44', 494037, 137, 27, 'Mangaka Horikoushi Kouhei has noted that American superhero comics are the inspiration for the series, and has based character pages on logos for Marvel and DC comic characters.', 'Bones', 'Action, Comedy, School, Shounen, Super Power'),
(137, 'Evangelion: 2.0 You Can (Not) Advance', 'Evangelion: 2.0 You Can (Not) Advance', 'https://myanimelist.net/images/anime/5/74983.jpg', 'Movie', 1, 'FALSE', 'Jul 27, 2009', '1 hr. 52 min.', 'PG-13 - Teens 13 or older', '8.44', 141762, 138, 295, 'Evangelion: 2.0 You Can (Not) Advance won first place in the animation category of the French Lyon Asian Film Festival, narrowly beating Symphony in August in an audience vote. It also won the Award of Excellence in the animation category at the 33rd Japan Academy Awards and, consequently, nominated for Animation of the Year at the same event in 2010.', 'Khara', 'Action, Sci-Fi, Mecha'),
(138, 'Fate/Zero', 'Fate/Zero', 'https://myanimelist.net/images/anime/2/73249.jpg', 'TV', 13, 'FALSE', 'Oct 2, 2011 to Dec 25, 2011', '28 min. per ep.', 'R - 17+ (violence & profanity)', '8.44', 374576, 139, 43, 'Fate/Zero was simulcasted around the world, with subtitles covering eight major languages. It is currently licensed by Aniplex of America for release in North America.', 'ufotable', 'Action, Supernatural, Magic, Fantasy'),
(139, 'Katanagatari', 'Katanagatari', 'https://myanimelist.net/images/anime/2/50023.jpg', 'TV', 12, 'FALSE', 'Jan 26, 2010 to Dec 11, 2010', '50 min. per ep.', 'R - 17+ (violence & profanity)', '8.44', 118251, 139, 228, 'Katanagatari is a complete adaptation of Nisio Isin\'s light novel series of the same title with each episode adapting 1 volume. The anime was released monthly, mimicking the release style of the original novels. ', 'White Fox', 'Action, Adventure, Historical, Martial Arts, Romance'),
(140, 'Kino no Tabi: The Beautiful World', 'Kino\'s Journey', 'https://myanimelist.net/images/anime/7/14415.jpg', 'TV', 13, 'FALSE', 'Apr 8, 2003 to Jul 8, 2003', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.44', 51109, 140, 560, NULL, 'A.C.G.T.', 'Action, Adventure, Slice of Life, Psychological'),
(141, 'Magi: The Kingdom of Magic', 'Magi: The Kingdom of Magic', 'https://myanimelist.net/images/anime/13/55039.jpg', 'TV', 25, 'FALSE', 'Oct 6, 2013 to Mar 30, 2014', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.44', 202063, 142, 140, 'Episodes 1 and 2 were previewed at a screening in Tokyo on September 22, 2013. Regular broadcasting began on October 6, 2013.', 'A-1 Pictures', 'Action, Adventure, Magic, Fantasy, Shounen'),
(142, 'Megalo Box', NULL, 'https://myanimelist.net/images/anime/1427/91055.jpg', 'TV', 13, 'TRUE', 'Apr 6, 2018 to ?', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.44', 18547, 143, 855, NULL, 'TMS Entertainment', 'Action, Drama, Sci-Fi, Shounen, Slice of Life, Sports'),
(143, 'Owarimonogatari', 'Owarimonogatari', 'https://myanimelist.net/images/anime/8/76479.jpg', 'TV', 12, 'FALSE', 'Oct 4, 2015 to Dec 20, 2015', '26 min. per ep.', 'R - 17+ (violence & profanity)', '8.44', 89141, 144, 393, NULL, 'Shaft', 'Mystery, Comedy, Supernatural, Vampire'),
(144, 'Sakamichi no Apollon', 'Kids on the Slope', 'https://myanimelist.net/images/anime/12/79781.jpg', 'TV', 12, 'FALSE', 'Apr 13, 2012 to Jun 29, 2012', '22 min. per ep.', 'PG-13 - Teens 13 or older', '8.44', 93986, 145, 390, 'Pre-airing event on April 7, 2012. The anime officially aired on April 13, 2012. The final episode received an early screening at a special event held at Odaiba Cinema Mediage on June 24, 2012. The regular TV broadcast was held on June 29, 2012.', 'Tezuka Productions, MAPPA', 'Drama, Josei, Music, Romance, School'),
(145, 'Shirobako', 'Shirobako', 'https://myanimelist.net/images/anime/1835/91537.jpg', 'TV', 24, 'FALSE', 'Oct 9, 2014 to Mar 26, 2015', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.44', 74220, 146, 325, 'Shirobako won the Animation Kobe Television Award in 2015.', 'P.A. Works', 'Comedy, Drama'),
(146, 'Steins;Gate: Oukoubakko no Poriomania', 'Steins;Gate: Egoistic Poriomania', 'https://myanimelist.net/images/anime/7/36531.jpg', 'Special', 1, 'FALSE', 'Feb 22, 2012', '24 min.', 'PG-13 - Teens 13 or older', '8.44', 144391, 146, 328, NULL, 'White Fox', 'Sci-Fi, Comedy, Thriller'),
(147, '3-gatsu no Lion', 'March comes in like a lion', 'https://myanimelist.net/images/anime/12/82901.jpg', 'TV', 22, 'FALSE', 'Oct 8, 2016 to Mar 18, 2017', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.43', 66567, 148, 391, NULL, 'Shaft', 'Game, Slice of Life, Drama, Seinen'),
(148, 'Doukyuusei (Movie)', 'Doukyusei -Classmates-', 'https://myanimelist.net/images/anime/3/78606.jpg', 'Movie', 1, 'FALSE', 'Feb 20, 2016', '1 hr.', 'PG-13 - Teens 13 or older', '8.43', 31473, 149, 1242, NULL, 'A-1 Pictures', 'Slice of Life, Romance, School, Shounen Ai'),
(149, 'Kemono no Souja Erin', 'Erin', 'https://myanimelist.net/images/anime/9/19845.jpg', 'TV', 50, 'FALSE', 'Jan 10, 2009 to Dec 26, 2009', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.43', 12328, 150, 1544, NULL, 'Production I.G, Trans Arts', 'Drama, Fantasy, Slice of Life'),
(150, 'Kizumonogatari I: Tekketsu-hen', 'Kizumonogatari Part 1: Tekketsu', 'https://myanimelist.net/images/anime/12/76485.jpg', 'Movie', 1, 'FALSE', 'Jan 8, 2016', '1 hr. 4 min.', 'R - 17+ (violence & profanity)', '8.43', 81479, 150, 392, NULL, 'Shaft', 'Mystery, Supernatural, Vampire'),
(151, 'Ookami to Koushinryou II', 'Spice and Wolf II', 'https://myanimelist.net/images/anime/6/59399.jpg', 'TV', 12, 'FALSE', 'Jul 9, 2009 to Sep 24, 2009', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.43', 161240, 151, 240, NULL, 'Brain\'s Base, Marvy Jack', 'Adventure, Historical, Romance, Fantasy'),
(152, 'Diamond no Ace: Second Season', 'Ace of Diamond: Second Season', 'https://myanimelist.net/images/anime/9/74398.jpg', 'TV', 51, 'FALSE', 'Apr 6, 2015 to Mar 28, 2016', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.42', 29267, 153, 1384, NULL, 'Production I.G, Madhouse', 'Comedy, Sports, School, Shounen'),
(153, 'Re:Zero kara Hajimeru Isekai Seikatsu', 'Re:ZERO -Starting Life in Another World-', 'https://myanimelist.net/images/anime/11/79410.jpg', 'TV', 25, 'FALSE', 'Apr 4, 2016 to Sep 19, 2016', '25 min. per ep.', 'R - 17+ (violence & profanity)', '8.43', 438250, 153, 36, 'Re:Zero adapts the first 9 volumes of Tappei Nagatsuki\'s light novel series of the same title.', 'White Fox', 'Psychological, Drama, Thriller, Fantasy'),
(154, 'Girls & Panzer Movie', 'Girls und Panzer der Film', 'https://myanimelist.net/images/anime/1776/91467.jpg', 'Movie', 1, 'FALSE', 'Nov 21, 2015', '2 hr.', 'PG-13 - Teens 13 or older', '8.42', 22674, 155, 1626, 'Winner of the 2016 \"Sanctuary\" Award at the Japan Movie Critics Awards. It also won the 2016 Seiun Award for Best Dramatic Presentation.', 'Actas', 'Sports, Military, School'),
(155, 'Shingeki no Kyojin: Kuinaki Sentaku', NULL, 'https://myanimelist.net/images/anime/8/69497.jpg', 'OVA', 2, 'FALSE', 'Dec 9, 2014 to Apr 9, 2015', '27 min. per ep.', 'R - 17+ (violence & profanity)', '8.42', 90169, 156, 504, 'Shingeki no Kyojin: Kuinaki Sentaku is based on the visual novel of the same name. The visual novel was bundled with the first press release of the 6th Blu-ray volume of the anime\'s 1st season and was supervised by Shingeki no Kyojin creator Hajime Isayama. It was later adapted into a 2-volume manga series which was serialized in shoujo magazine ARIA and illustrated by Hikaru Suruga.The OVA was released for the Western audience when bundled with Kodansha Comics USA\'s Attack on Titan Special Edition manga. The first part of the OVA was included with the manga\'s 18th volume on April 5, 2016 while the second part was included with the 19th volume\'s release on August 2, 2016.', 'Wit Studio', 'Action, Fantasy, Shoujo'),
(156, 'Cowboy Bebop: Tengoku no Tobira', 'Cowboy Bebop: The Movie', 'https://myanimelist.net/images/anime/6/14331.jpg', 'Movie', 1, 'FALSE', 'Sep 1, 2001', '1 hr. 54 min.', 'R - 17+ (violence & profanity)', '8.41', 111344, 157, 438, NULL, 'Bones', 'Action, Space, Drama, Mystery, Sci-Fi'),
(157, 'Detective Conan Movie 06: The Phantom of Baker Street', 'Case Closed: The Phantom of Baker Street', 'https://myanimelist.net/images/anime/10/51209.jpg', 'Movie', 1, 'FALSE', 'Apr 20, 2002', '1 hr. 47 min.', 'PG-13 - Teens 13 or older', '8.41', 23635, 158, 1833, NULL, 'TMS Entertainment', 'Adventure, Mystery, Police, Shounen'),
(158, 'JoJo no Kimyou na Bouken (TV)', 'JoJo\'s Bizarre Adventure', 'https://myanimelist.net/images/anime/3/40409.jpg', 'TV', 26, 'FALSE', 'Oct 6, 2012 to Apr 6, 2013', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.41', 187286, 159, 166, 'JoJo no Kimyou na Bouken was announced on July 5, 2012 at a press conference celebrating the 25th anniversary Hirohiko Araki\'s long-running series. The anime is a full adaptation of the first two parts in the series, Phantom Blood and Sentou Chuuryuu (Battle Tendency). While the animation was produced by David Production, the opening theme animations were produced by the studio Kamikaze Douga (神風動画).', 'David Production', 'Action, Adventure, Supernatural, Vampire, Shounen'),
(159, 'Nanatsu no Taizai: Imashime no Fukkatsu', NULL, 'https://myanimelist.net/images/anime/11/90089.jpg', 'TV', 24, 'TRUE', 'Jan 13, 2018 to ?', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.41', 45471, 160, 349, NULL, 'A-1 Pictures', 'Action, Adventure, Supernatural, Magic, Fantasy, Shounen'),
(160, 'Natsume Yuujinchou: Itsuka Yuki no Hi ni', NULL, 'https://myanimelist.net/images/anime/11/79742.jpg', 'OVA', 1, 'FALSE', 'Feb 1, 2014', '23 min.', 'PG-13 - Teens 13 or older', '8.41', 19299, 161, 1736, NULL, 'Brain\'s Base', 'Drama, Fantasy, Shoujo, Slice of Life, Supernatural'),
(161, 'No Game No Life', 'No Game, No Life', 'https://myanimelist.net/images/anime/5/65187.jpg', 'TV', 12, 'FALSE', 'Apr 9, 2014 to Jun 25, 2014', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.41', 623227, 162, 11, 'No Game No Life adapts the first three volumes of Yuu Kamiya\'s light novel series of the same title.', 'Madhouse', 'Game, Adventure, Comedy, Supernatural, Ecchi, Fantasy'),
(162, 'Nodame Cantabile', 'Nodame Cantabile', 'https://myanimelist.net/images/anime/9/11986.jpg', 'TV', 23, 'FALSE', 'Jan 12, 2007 to Jun 15, 2007', '22 min. per ep.', 'PG-13 - Teens 13 or older', '8.41', 87363, 163, 381, NULL, 'J.C.Staff', 'Music, Slice of Life, Comedy, Drama, Romance, Josei'),
(163, 'Noragami Aragoto', 'Noragami Aragoto', 'https://myanimelist.net/images/anime/4/75627.jpg', 'TV', 13, 'FALSE', 'Oct 3, 2015 to Dec 26, 2015', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.41', 324545, 164, 66, NULL, 'Bones', 'Action, Adventure, Comedy, Supernatural, Shounen'),
(164, 'Shelter', 'Shelter', 'https://myanimelist.net/images/anime/5/82388.jpg', 'Music', 1, 'FALSE', 'Oct 18, 2016', '6 min.', 'G - All Ages', '8.41', 108477, 165, 508, NULL, 'A-1 Pictures', 'Sci-Fi, Music'),
(165, 'Fate/stay night: Unlimited Blade Works 2nd Season', 'Fate/stay night [Unlimited Blade Works] Season 2', 'https://myanimelist.net/images/anime/11/72863.jpg', 'TV', 13, 'FALSE', 'Apr 5, 2015 to Jun 28, 2015', '23 min. per ep.', 'R - 17+ (violence & profanity)', '8.4', 215056, 166, 169, 'Episodes 1, 2, and 3 were previewed at a screening at Shinjuku Wald 9 in Tokyo on March 28, 2015. Regular broadcasting began on April 5, 2015.', 'ufotable', 'Action, Supernatural, Magic, Fantasy'),
(166, 'One Outs', 'One Outs', 'https://myanimelist.net/images/anime/13/22669.jpg', 'TV', 25, 'FALSE', 'Oct 8, 2008 to Apr 1, 2009', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.4', 58908, 167, 743, NULL, 'Madhouse', 'Sports, Psychological, Seinen'),
(167, 'Rurouni Kenshin: Meiji Kenkaku Romantan', 'Rurouni Kenshin', 'https://myanimelist.net/images/anime/7/6803.jpg', 'TV', 94, 'FALSE', 'Jan 10, 1996 to Sep 8, 1998', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.4', 135713, 168, 240, NULL, 'Studio Gallop, Studio Deen', 'Action, Adventure, Comedy, Historical, Romance, Samurai'),
(168, 'Stranger: Mukou Hadan', 'Sword of the Stranger', 'https://myanimelist.net/images/anime/9/87066.jpg', 'Movie', 1, 'FALSE', 'Sep 29, 2007', '1 hr. 43 min.', 'R - 17+ (violence & profanity)', '8.4', 93041, 169, 463, 'Stranger: Mukou Hadan won the award for Best Animated Feature at Brazil\'s International Fantastic Film Festival and was nominated for the same categories at the Asia Pacific Screen Awards and 81st Academy Awards. It also won the 2009 \"Menzione Speciale\" recognition at Italy\'s Future Film Festival. ', 'Bones', 'Action, Adventure, Historical, Samurai'),
(169, 'Tsubasa: Tokyo Revelations', 'Tsubasa RESERVoir CHRoNiCLE: Tokyo Revelations', 'https://myanimelist.net/images/anime/4/49129.jpg', 'OVA', 3, 'FALSE', 'Nov 16, 2007 to Mar 17, 2008', '30 min. per ep.', 'R - 17+ (violence & profanity)', '8.4', 35355, 170, 1209, 'Tsubasa: Tokyo Revelations is an OVA series that was bundled with limited editions of volumes 21, 22 and 23 of the manga and is not connected with the anime TV series which takes an alternate path of events from Record Country onwards.', 'Production I.G', 'Action, Adventure, Drama, Romance, Fantasy, Shounen'),
(170, 'Hunter x Hunter: Yorkshin City Kanketsu-hen', NULL, 'https://myanimelist.net/images/anime/1/137.jpg', 'OVA', 8, 'FALSE', 'Jan 17, 2002 to Apr 17, 2002', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.39', 39820, 171, 1198, NULL, 'Nippon Animation', 'Action, Adventure, Super Power, Shounen'),
(171, 'Kono Sekai no Katasumi ni', 'In This Corner of the World', 'https://myanimelist.net/images/anime/2/87704.jpg', 'Movie', 1, 'FALSE', 'Nov 12, 2016', '2 hr. 6 min.', 'PG-13 - Teens 13 or older', '8.38', 14708, 172, 1540, 'Winner of the 40th Japan Academy Award for Best Animation Award, the 90th Kinema Junpo Best Ten Japan Film Best 1 and Director Award, 71st Mainichi Film Concurs Japanese Movie Excellence Award and Ofuji Nobushiro Prize, 59th Blue Ribbon Award Director Award, Hiroshima Peace Film Award during the 3rd Hiroshima International Film Festival, and the Best Film during the 38th Yokohama Film Festival.', 'MAPPA', 'Historical, Drama, Seinen'),
(172, 'Natsume Yuujinchou', 'Natsume\'s Book of Friends', 'https://myanimelist.net/images/anime/7/28859.jpg', 'TV', 13, 'FALSE', 'Jul 8, 2008 to Sep 30, 2008', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.39', 107891, 173, 229, 'Natsume Yuujinchou was licensed for an English release as Natsume\'s Book of Friends by NIS America, Inc. It was released October 9, 2012 as a Season 1 and 2 DVD Premium Edition followed by a DVD Standard Edition release February 4, 2014. It is currently streaming on Crunchyroll and Hulu.', 'Brain\'s Base', 'Slice of Life, Supernatural, Drama, Fantasy, Shoujo'),
(173, 'Toradora!', 'Toradora!', 'https://myanimelist.net/images/anime/13/22128.jpg', 'TV', 25, 'FALSE', 'Oct 2, 2008 to Mar 26, 2009', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.39', 557898, 174, 13, 'Toradora! was selected as a recommended work by the awards jury of the 13th Japan Media Arts Festival in 2009.The light novel was also adapted into video games for PlayStation Portable, published by Namco Bandai Games in 2009.', 'J.C.Staff', 'Slice of Life, Comedy, Romance, School'),
(174, 'Hunter x Hunter: Greed Island Final', NULL, 'https://myanimelist.net/images/anime/1/139.jpg', 'OVA', 14, 'FALSE', 'Mar 3, 2004 to Aug 18, 2004', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.38', 43270, 175, 1145, NULL, 'Nippon Animation', 'Action, Adventure, Shounen, Super Power'),
(175, 'Major S1', NULL, 'https://myanimelist.net/images/anime/13/73973.jpg', 'TV', 26, 'FALSE', 'Nov 13, 2004 to May 21, 2005', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.38', 28913, 176, 1456, NULL, 'Studio Hibari', 'Comedy, Sports, Drama, Shounen'),
(176, 'Natsume Yuujinchou Go Specials', NULL, 'https://myanimelist.net/images/anime/3/84887.jpg', 'Special', 2, 'FALSE', 'Mar 22, 2017 to Apr 26, 2017', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.38', 6595, 177, 2960, NULL, 'Shuka', 'Slice of Life, Supernatural, Drama, Fantasy, Shoujo'),
(177, 'NHK ni Youkoso!', 'Welcome to the N.H.K.', 'https://myanimelist.net/images/anime/3/52675.jpg', 'TV', 24, 'FALSE', 'Jul 10, 2006 to Dec 18, 2006', '24 min. per ep.', 'R+ - Mild Nudity', '8.38', 189128, 178, 132, NULL, 'Gonzo', 'Comedy, Psychological, Drama, Romance'),
(178, 'Tenkuu no Shiro Laputa', 'Castle in the Sky', 'https://myanimelist.net/images/anime/5/37799.jpg', 'Movie', 1, 'FALSE', 'Aug 2, 1986', '2 hr. 5 min.', 'PG - Children', '8.38', 131138, 179, 364, 'Tenkuu no Shiro Laputa was the first film to be produced and released by Studio Ghibli. It won the Animage Anime Grand Prix in 1986.', 'Studio Ghibli', 'Adventure, Fantasy, Romance, Sci-Fi'),
(179, 'Versailles no Bara', 'The Rose of Versailles', 'https://myanimelist.net/images/anime/9/57043.jpg', 'TV', 40, 'FALSE', 'Oct 10, 1979 to Sep 3, 1980', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.38', 14055, 180, 1664, NULL, 'Tokyo Movie Shinsha', 'Military, Historical, Drama, Romance, Shoujo'),
(180, 'Beck', 'Beck: Mongolian Chop Squad', 'https://myanimelist.net/images/anime/11/11636.jpg', 'TV', 26, 'FALSE', 'Oct 7, 2004 to Mar 31, 2005', '25 min. per ep.', 'R - 17+ (violence & profanity)', '8.37', 87024, 181, 414, NULL, 'Madhouse', 'Comedy, Drama, Music, Shounen, Slice of Life'),
(181, 'Gintama: Shiroyasha Koutan', NULL, 'https://myanimelist.net/images/anime/6/16161.jpg', 'Special', 1, 'FALSE', 'Sep 21, 2008', '10 min.', 'PG-13 - Teens 13 or older', '8.37', 18965, 182, 1894, NULL, 'Sunrise', 'Action, Sci-Fi, Comedy, Historical, Parody'),
(182, 'Kuroko no Basket', 'Kuroko\'s Basketball', 'https://myanimelist.net/images/anime/11/50453.jpg', 'TV', 25, 'FALSE', 'Apr 8, 2012 to Sep 22, 2012', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.37', 288339, 183, 85, 'Kuroko no Basket also has a series of light novels, audio CDs, and several games for the Nintendo 3DS. Kuroko also appears in the crossover fighting game J-Stars Victory VS.', 'Production I.G', 'Comedy, School, Shounen, Sports'),
(183, 'Hajime no Ippo: Champion Road', 'Fighting Spirit: Champion Road', 'https://myanimelist.net/images/anime/9/2361.jpg', 'Special', 1, 'FALSE', 'Apr 18, 2003', '1 hr. 30 min.', 'PG-13 - Teens 13 or older', '8.37', 40967, 183, 1262, NULL, 'Madhouse', 'Comedy, Shounen, Sports'),
(184, 'Kono Subarashii Sekai ni Shukufuku wo! 2', 'KonoSuba: God\'s Blessing on This Wonderful World! 2', 'https://myanimelist.net/images/anime/2/83188.jpg', 'TV', 10, 'FALSE', 'Jan 12, 2017 to Mar 16, 2017', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.36', 254435, 186, 112, 'Kono Subarashii Sekai ni Shukufuku wo! 2 adapts volumes 3 and 4 of Natsume Akatsuki\'s light novel series of the same name.', 'Studio Deen', 'Adventure, Comedy, Parody, Supernatural, Magic, Fantasy'),
(185, 'Detective Conan Movie 13: The Raven Chaser', 'Detective Conan: The Jet Black Chaser', 'https://myanimelist.net/images/anime/2/22558.jpg', 'Movie', 1, 'FALSE', 'Apr 18, 2009', '1 hr. 51 min.', 'PG-13 - Teens 13 or older', '8.36', 17095, 186, 2137, NULL, 'Tokyo Movie Shinsha', 'Action, Police, Mystery, Shounen'),
(186, 'Major S2', NULL, 'https://myanimelist.net/images/anime/6/73972.jpg', 'TV', 26, 'FALSE', 'Dec 10, 2005 to Jun 10, 2006', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.36', 26374, 188, 1778, NULL, 'Studio Hibari', 'Comedy, Drama, Shounen, Sports'),
(187, 'Major S3', NULL, 'https://myanimelist.net/images/anime/9/73971.jpg', 'TV', 26, 'FALSE', 'Jan 6, 2007 to Jun 30, 2007', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.36', 25149, 189, 1824, NULL, 'Studio Hibari', 'Drama, Shounen, Sports'),
(188, 'Planetes', 'Planetes', 'https://myanimelist.net/images/anime/8/50463.jpg', 'TV', 26, 'FALSE', 'Oct 4, 2003 to Apr 17, 2004', '25 min. per ep.', 'PG-13 - Teens 13 or older', '8.36', 46179, 190, 599, 'Planetes is the winner of the 2005 Seiun Award for Best Dramatic Presentation in science fiction.', 'Sunrise', 'Drama, Romance, Sci-Fi, Seinen, Space'),
(189, 'Quanzhi Gaoshou (2018)', 'The King\'s Avatar (2018)', 'https://myanimelist.net/images/anime/1825/91514.jpg', 'ONA', 3, 'FALSE', 'Apr 27, 2018 to May 11, 2018', '30 min. per ep.', 'PG-13 - Teens 13 or older', '8.36', 1926, 190, 2461, 'Based on The King\'s Avatar (全职高手) a Chinese web serial novel. Written by Butterfly Blue (蝴蝶蓝) about esports. It received the title for Best Work in 2013 and is the first and only 1000 Pledged Work on Qi Dian.', NULL, 'Action, Game'),
(190, 'Bakemonogatari', 'Bakemonogatari', 'https://myanimelist.net/images/anime/11/75274.jpg', 'TV', 15, 'FALSE', 'Jul 3, 2009 to Jun 25, 2010', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.35', 354216, 191, 44, NULL, 'Shaft', 'Romance, Supernatural, Mystery, Vampire'),
(191, 'Ghost in the Shell', 'Ghost in the Shell', 'https://myanimelist.net/images/anime/10/82594.jpg', 'Movie', 1, 'FALSE', 'Nov 18, 1995', '1 hr. 22 min.', 'R+ - Mild Nudity', '8.35', 182809, 192, 174, 'Mamoru Oshii\'s Ghost in the Shell was the first film to adapt Masumane Shirow\'s manga of the same name. It heavily condenses the original storyline, reducing the original material\'s comic relief and sexual content in favor of a more serious tone and changing the setting from Japan to a city modelled after Hong Kong. The artwork within the animated film was produced using an innovative mix of cel animation and digital effects. Ghost in the Shell is one of the world\'s most famous Japanese animated films, being the first to reach #1 on Billboard magazine\'s video best-seller list, and also served as a major inspiration for the Wachowskis in their creation of the Matrix movies. A special edition titled Ghost in the Shell: 2.0 was released in 2008, which features scenes reanimated with additional CGI to match the style of the 2004\'s sequel, Ghost in the Shell: Innocence.', 'Production I.G', 'Action, Sci-Fi, Police, Psychological, Mecha, Seinen'),
(192, 'Higurashi no Naku Koro ni Kai', 'When They Cry: Kai', 'https://myanimelist.net/images/anime/12/14114.jpg', 'TV', 24, 'FALSE', 'Jul 6, 2007 to Dec 18, 2007', '24 min. per ep.', 'R - 17+ (violence & profanity)', '8.35', 147214, 193, 251, NULL, 'Studio Deen', 'Mystery, Psychological, Supernatural, Thriller'),
(193, 'Toki wo Kakeru Shoujo', 'The Girl Who Leapt Through Time', 'https://myanimelist.net/images/anime/1/2432.jpg', 'Movie', 1, 'FALSE', 'Jul 15, 2006', '1 hr. 38 min.', 'PG - Children', '8.35', 249571, 194, 113, '&ldquo;Toki wo Kakeru Shojo&rdquo; is a juvenile novel written by Tsutsui Yasutaka. It became TV drama, movie, and Manga several times. However, this is the first time to become anime. The main character, Konno Makoto, is brighter and more easygoing than any other characters in movie or TV drama made before. At once she knows she acquires the power of &ldquo;time leap&rdquo;. She uses it without hesitation to satisfy her own desire.In 2006 the film won the Best Animated Film in the Sitges Film Festival. In 2007 it won the Animation of the Year during the Japan Academy Prize. Also during the Tokyo Anime Awards it won the Animation of the Year and the Best Original Story/Work. The staff that worked for the film won the Director Award, the Script-writing Award, the Achievement in Art Direction and the Character Design Award. It won the Animation Grand Award, given to the year\'s most entertaining animated film, at the prestigious sixty-first Annual Mainichi Film Awards. It received the Grand Prize in the animation division at the 2006 Japan Media Arts Festival. The film won the Special Distinction for Feature Film at France\'s thirty-first Annecy International Animated Film Festival on June 16, 2007.', 'Madhouse', 'Sci-Fi, Adventure, Drama, Romance'),
(194, 'Tsuki ga Kirei', 'Tsukigakirei', 'https://myanimelist.net/images/anime/2/85592.jpg', 'TV', 12, 'FALSE', 'Apr 7, 2017 to Jun 30, 2017', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.35', 76357, 195, 474, NULL, 'feel.', 'Romance, School'),
(195, 'Yuru Camp△', 'Laid-Back Camp', 'https://myanimelist.net/images/anime/4/89877.jpg', 'TV', 12, 'FALSE', 'Jan 4, 2018 to Mar 22, 2018', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.35', 42692, 195, 777, NULL, 'C-Station', 'Slice of Life, Comedy'),
(196, 'Ballroom e Youkoso', 'Welcome to the Ballroom', 'https://myanimelist.net/images/anime/5/86739.jpg', 'TV', 24, 'FALSE', 'Jul 9, 2017 to Dec 17, 2017', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.34', 49283, 196, 707, NULL, 'Production I.G', 'Comedy, Sports, Drama, Romance, School, Shounen'),
(197, 'Danshi Koukousei no Nichijou', 'Daily Lives of High School Boys', 'https://myanimelist.net/images/anime/3/33257.jpg', 'TV', 12, 'FALSE', 'Jan 10, 2012 to Mar 27, 2012', '24 min. per ep.', 'PG-13 - Teens 13 or older', '8.34', 190559, 197, 139, 'This entry also includes the eight pre-airings of about 5 minutes length which were distributed through Nico Nico Douga. These pre-airings were all eventually shown during the TV series\' run and are considered trailers by MAL.', 'Sunrise', 'Slice of Life, Comedy, School'),
(198, 'Fate/stay night: Unlimited Blade Works', 'Fate/stay night [Unlimited Blade Works]', 'https://myanimelist.net/images/anime/12/67333.jpg', 'TV', 12, 'FALSE', 'Oct 12, 2014 to Dec 28, 2014', '28 min. per ep.', 'R - 17+ (violence & profanity)', '8.34', 256555, 198, 108, 'Episode 1 was previewed at screenings in Tokyo and Tokushima on September 28, 2014. Regular broadcasting began on October 12, 2014.The first episode is 48 minutes in length, which is included in the average episode duration.', 'ufotable', 'Action, Supernatural, Magic, Fantasy'),
(199, 'Hachimitsu to Clover II', 'Honey and Clover II', 'https://myanimelist.net/images/anime/6/11040.jpg', 'TV', 12, 'FALSE', 'Jun 30, 2006 to Sep 15, 2006', '23 min. per ep.', 'PG-13 - Teens 13 or older', '8.34', 38439, 199, 1148, 'Hachimitsu to Clover II aired on Fuji Television\'s noitaminA block.', 'J.C.Staff', 'Drama, Josei, Romance, Slice of Life'),
(200, 'K-On! Movie', 'K-ON! The Movie', 'https://myanimelist.net/images/anime/5/76233.jpg', 'Movie', 1, 'FALSE', 'Dec 3, 2011', '1 hr. 50 min.', 'PG-13 - Teens 13 or older', '8.34', 88868, 201, 534, 'The series won the 2012 Newtype Anime Awards for Best Anime Film.', 'Kyoto Animation', 'Music, Slice of Life, Comedy'),
(1, 'Fullmetal Alchemist: Brotherhood', 'Fullmetal Alchemist: Brotherhood', 'https://myanimelist.net/images/anime/5/47421.jpg', 'TV', 64, 'FALSE', 'Apr 5, 2009 to Jul 4, 2010', '24 min. per ep.', 'R - 17+ (violence & profanity)', '9.25', 733592, 1, 4, 'Fullmetal Alchemist: Brotherhood is an alternate retelling of Hiromu Arakawa\'s Fullmetal Alchemist manga that is closer to the source material than the previous 2003 adaptation, this time covering the entire story.On March 31, 2016, FUNimation Entertainment\'s license to the series expired.', 'Bones', 'Action, Military, Adventure, Comedy, Drama, Magic, Fantasy, Shounen'),
(2, 'Kimi no Na wa.', 'Your Name.', 'https://myanimelist.net/images/anime/5/87048.jpg', 'Movie', 1, 'FALSE', 'Aug 26, 2016', '1 hr. 46 min.', 'PG-13 - Teens 13 or older', '9.19', 471398, 2, 33, NULL, 'CoMix Wave Films', 'Supernatural, Drama, Romance, School'),
(3, 'Gintama°', 'Gintama Season 4', 'https://myanimelist.net/images/anime/3/72078.jpg', 'TV', 51, 'FALSE', 'Apr 8, 2015 to Mar 30, 2016', '24 min. per ep.', 'R - 17+ (violence & profanity)', '9.15', 71751, 3, 383, 'This is a fourth season of Gintama. In the episode continuity corresponds to episodes 266-316 of Gintama. ', 'Bandai Namco Pictures', 'Action, Comedy, Historical, Parody, Samurai, Sci-Fi, Shounen'),
(4, 'Steins;Gate 0', NULL, 'https://myanimelist.net/images/anime/1031/90444.jpg', 'TV', 23, 'TRUE', 'Apr 12, 2018 to ?', '23 min. per ep.', 'PG-13 - Teens 13 or older', '9.15', 26739, 4, 323, NULL, 'White Fox', 'Sci-Fi, Thriller'),
(5, 'Steins;Gate', 'Steins;Gate', 'https://myanimelist.net/images/anime/5/73199.jpg', 'TV', 24, 'FALSE', 'Apr 6, 2011 to Sep 14, 2011', '24 min. per ep.', 'PG-13 - Teens 13 or older', '9.14', 563857, 5, 8, 'Steins;Gate is based on 5pb. and Nitroplus\' visual novel of the same title.', 'White Fox', 'Thriller, Sci-Fi');

-- --------------------------------------------------------

--
-- Structure de la table `lister_a_voir`
--

CREATE TABLE `lister_a_voir` (
  `num_anime` int(11) NOT NULL,
  `num_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `photo de profil`
--

CREATE TABLE `photo de profil` (
  `id_photo_de_profil` int(10) NOT NULL,
  `url_pp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(8) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `pseudo` varchar(30) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `id_photo_de_profil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id_anime`);

--
-- Index pour la table `avoir_vu`
--
ALTER TABLE `avoir_vu`
  ADD PRIMARY KEY (`num_anime`,`num_utilisateur`),
  ADD KEY `num_utilisateur` (`num_utilisateur`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD KEY `ECRIRE` (`id_utilisateur`),
  ADD KEY `APPARTENIR` (`id_discussion`);

--
-- Index pour la table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id_discussion`),
  ADD KEY `CREER` (`id_utilisateur`);

--
-- Index pour la table `etre_ami`
--
ALTER TABLE `etre_ami`
  ADD PRIMARY KEY (`id_utilisateur1`,`id_utilisateur2`),
  ADD KEY `id_utilisateur2` (`id_utilisateur2`);

--
-- Index pour la table `lister_a_voir`
--
ALTER TABLE `lister_a_voir`
  ADD PRIMARY KEY (`num_anime`,`num_utilisateur`),
  ADD KEY `num_utilisateur` (`num_utilisateur`);

--
-- Index pour la table `photo de profil`
--
ALTER TABLE `photo de profil`
  ADD PRIMARY KEY (`id_photo_de_profil`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD KEY `a_choisi` (`id_photo_de_profil`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avoir_vu`
--
ALTER TABLE `avoir_vu`
  ADD CONSTRAINT `avoir_vu_ibfk_1` FOREIGN KEY (`num_anime`) REFERENCES `anime` (`id_anime`),
  ADD CONSTRAINT `avoir_vu_ibfk_2` FOREIGN KEY (`num_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `APPARTENIR` FOREIGN KEY (`id_discussion`) REFERENCES `discussion` (`id_discussion`),
  ADD CONSTRAINT `ECRIRE` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `discussion`
--
ALTER TABLE `discussion`
  ADD CONSTRAINT `CREER` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `etre_ami`
--
ALTER TABLE `etre_ami`
  ADD CONSTRAINT `etre_ami_ibfk_1` FOREIGN KEY (`id_utilisateur1`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `etre_ami_ibfk_2` FOREIGN KEY (`id_utilisateur2`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `lister_a_voir`
--
ALTER TABLE `lister_a_voir`
  ADD CONSTRAINT `lister_a_voir_ibfk_1` FOREIGN KEY (`num_anime`) REFERENCES `anime` (`id_anime`),
  ADD CONSTRAINT `lister_a_voir_ibfk_2` FOREIGN KEY (`num_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `a_choisi` FOREIGN KEY (`id_photo_de_profil`) REFERENCES `photo de profil` (`id_photo_de_profil`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
