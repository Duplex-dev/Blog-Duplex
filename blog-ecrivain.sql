-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 10 fév. 2021 à 21:28
-- Version du serveur :  8.0.21
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog-ecrivain`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint NOT NULL DEFAULT '0',
  `signals` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 0, 0),
(100, 15, 'SUPER!', 40, '2021-02-08 21:34:41', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`, `modifieddate`) VALUES
(46, 'Rivière Oi ', '<p>Depuis votre ryokan, vous monterez &agrave; bord d&rsquo;une p&eacute;niche privatis&eacute;e, voguerez au gr&eacute; de la rivi&egrave;re Oi le long des plaines bucoliques tapies de cerisiers en fleurs. Ce sont plus de 1 500 cerisiers qui s&rsquo;offriront ainsi &agrave; vous, parmi lesquels quelques vari&eacute;t&eacute;s de&nbsp;<em>yoshino</em>&nbsp;et de&nbsp;<em>yamazakura</em>&nbsp;qui remonteraient au d&eacute;but de XIII&egrave;me si&egrave;cle</p>', '46.jpg', '2021-02-09 13:24:58', '2021-02-09 13:38:48'),
(48, 'PAGODE CHUREITO', '<p>La pagode Chureito est un monument appartenant au sanctuaire Arakurayama Sengen, situ&eacute; &agrave; Fujiyoshida, dans la pr&eacute;fecture de Yamanashi. Perch&eacute;e sur les hauteurs du parc, face &agrave; la ville, elle b&eacute;n&eacute;ficie d\'une vue imprenable sur le Mont Fuji. Au printemps avec ses cerisiers et &agrave; l\'automne avec ses &eacute;rables, ce paysage s\'av&egrave;re l&rsquo;un des clich&eacute;s les plus connus du Japon.</p>\r\n<p>Assez r&eacute;cente, la pagode date de 1963, &eacute;rig&eacute;e en tant que m&eacute;morial de la paix au sein du&nbsp;<a title=\"Jardins japonais et parcs\" href=\"https://www.kanpai.fr/jardins-japonais-parcs\">parc</a>&nbsp;Arakurayama Sengen. Elle n&rsquo;a, &agrave; vrai dire, rien d&rsquo;exceptionnel architecturalement parlant. On lui conc&egrave;de m&ecirc;me un petit c&ocirc;t&eacute; artificiel et trop propre compar&eacute;e &agrave; certaines de ses cousines plus anciennes et stylis&eacute;es. Pourtant, le panorama qu\'elle offre sur papier glac&eacute;, lorsqu\'elle est photographi&eacute;e au c&ocirc;t&eacute; du Fuji-<a title=\"Suffixes en japonais apr&egrave;s les noms\" href=\"https://www.kanpai.fr/apprendre-japonais/suffixes-honorifiques-japonais-san-kun-chan\">san</a>, donne &agrave; plus d\'un l\'envie de venir la contempler en vrai.</p>\r\n<p>Pour acc&eacute;der &agrave; flanc du Mont Arakura o&ugrave; Chureito se niche, il faut compter sur la force de ses jambes afin de monter plusieurs escaliers en pierre. L&rsquo;entr&eacute;e au bas de la colline est marqu&eacute;e par un grand&nbsp;<em>torii&nbsp;<span class=\"emoji\">⛩️</span></em>&nbsp;faisant face &agrave; la&nbsp;<a title=\"Randonn&eacute;es au Japon\" href=\"https://www.kanpai.fr/randonnees-excursions-japon\">montagne</a>&nbsp;sacr&eacute;e. En&nbsp;<a title=\"Automne au Japon\" href=\"https://www.kanpai.fr/automne-japon\">automne</a>&nbsp;<span class=\"emoji\">', '48.jpg', '2021-02-10 17:25:32', NULL),
(40, 'Mont Fuji', '<p>Que le mont Fuji soit sacr&eacute; n&rsquo;a rien de surprenant. C&rsquo;est en effet une montagne d&rsquo;une beaut&eacute; exceptionnelle, qui attire le regard de tr&egrave;s loin : elle est visible de Tokyo, &agrave; 100 kilom&egrave;tres au nord-est. Elle a toujours fascin&eacute; les artistes, parmi lesquels le peintre et graveur Hokusai, qui r&eacute;alisa la c&eacute;l&egrave;bre s&eacute;rie des Trente-Six Vues du mont Fuji, dans les ann&eacute;es 1820. Embarquez pour un voyage inoubliable gr&acirc;ce &agrave; cet extrait de notre livre consacr&eacute; aux plus beaux lieux sacr&eacute;s. Le mont Fuji est un c&ocirc;ne volcanique &agrave; la sym&eacute;trie presque parfaite. Il doit cette forme remarquable &agrave; sa derni&egrave;re &eacute;ruption, en 1707-1708. La neige qui le recouvre la plus grande partie de l&rsquo;ann&eacute;e lui conf&egrave;re une puret&eacute; immacul&eacute;e, quoiqu&rsquo;il se cache souvent dans un nuage. Ce volcan, culminant &agrave; 3 776 m&egrave;tres, n&rsquo;est pas seulement le plus haut sommet du Japon, c&rsquo;est aussi la plus sacr&eacute;e de ses trois montagnes sacr&eacute;es (les autres &eacute;tant les monts Tate et Haku). Le Fuji &eacute;tait d&eacute;j&agrave; r&eacute;v&eacute;r&eacute; par les premiers habitants du pays, les A&iuml;nous, qui le connurent dans une phase plus active : son nom d&eacute;riverait de celui de leur dieu du Feu, Fuchi. La montagne est &eacute;galement sacr&eacute;e pour les adeptes du shinto&iuml;sme, religion propre au Japon, fortement empreinte d&rsquo;animisme, qui consid&egrave;re les sites naturels comme des lieux o&ugrave; r&eacute;sident les esprits, ou kami. Le kami du mont Fuji est la d&eacute;esse Sengen-sama, aussi appel&eacute;e Konohanasakuya-hime, force vitale associ&eacute;e &agrave; la floraison des arbres. Elle emp&ecirc;che le volcan d&rsquo;entrer en &eacute;ruption, pourvu que l&rsquo;on lui t&eacute;moigne le respect qui lui est d&ucirc;. Gravir le mont Fuji est une mani&egrave;re d&rsquo;honorer Sengen-sama, tout autant que l&rsquo;un des grands symboles du Japon. Pour les bouddhistes, l&rsquo;ascension est une m&eacute;taphore du chemin vers l&rsquo;&eacute;veil : de la base verdoyante du c&ocirc;ne, le monde terrestre, on s&rsquo;&eacute;l&egrave;ve, au-del&agrave; des arbres, jusqu&rsquo;aux hautes terres d&eacute;sol&eacute;es, faites de d&eacute;bris volcaniques rouges : le monde des dieux et de la mort. Accomplir ce voyage et en revenir constitue un rituel de purification. La secte Shugendo, qui naquit apr&egrave;s le VIIe si&egrave;cle d&rsquo;un syncr&eacute;tisme entre bouddhisme et shinto&iuml;sme, fut la premi&egrave;re &agrave; faire de l&rsquo;ascension des sommets une pratique de d&eacute;votion, affirmant que les montagnes constituaient le cadre id&eacute;al pour communiquer avec les dieux et les kami. Au XVIe si&egrave;cle, une autre secte, d&eacute;nomm&eacute;e Fujiko, promut &agrave; son tour l&rsquo;ascension du mont Fuji, et de celui-ci exclusivement, suivant les enseignements de Hasegawa Kakugyo. Au fil des si&egrave;cles, sur les flancs de la montagne, furent am&eacute;nag&eacute;s des sentiers, aujourd&rsquo;hui ponctu&eacute;s de sanctuaires, de maisons de th&eacute; et de portes torii &ndash; des monuments shinto&iuml;stes marquant le seuil entre profane et sacr&eacute;. Le Yoshida Guchi (Guchi signifie &laquo; sentier &raquo;) gravit la face nord. Il d&eacute;marre au niveau du Kitaguchi Hongu Sengen Jinja (&laquo; Sanctuaire principal de Sengen &agrave; l&rsquo;entr&eacute;e nord &raquo;), un tr&egrave;s beau temple shinto&iuml;ste qui daterait de 788, &eacute;tabli parmi des arbres ancestraux et d&eacute;di&eacute; &agrave; Sengen-sama. La secte Shugendo &eacute;tablit sur la face sud la voie Murayama, aujourd&rsquo;hui d&eacute;nomm&eacute;e Fujinomiya Guchi.</p>', 'Mont.fuji.jpg', '2021-02-09 11:31:55', '2021-02-09 13:49:11'),
(45, 'Le sakura', '<p>La floraison ne dure que quelques jours, mais c&rsquo;est un moment magique. Le&nbsp;<em>sakura</em>, qui ne donne pas de fruit, est un symbole de beaut&eacute; &eacute;ph&eacute;m&egrave;re, une m&eacute;taphore de la vie. Chaque ville poss&egrave;de sa promenade sous les cerisiers.</p>', '45.jpg', '2021-02-09 10:40:04', '2021-02-09 13:42:04');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'test@test.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'Romain'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom'),
(15, 'touotsap@gmail.com', '4ef5f59c1ddf260b6269c19f2e49d68208032b97', 0, 'DPX');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_id` int NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int NOT NULL,
  `vote` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
