-- MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `category` (`id`, `name`) VALUES
(1,	'Crime'),
(2,	'Drama'),
(3,	'Biography'),
(4,	'History'),
(5,	'Sport'),
(6,	'Romance'),
(7,	'War');

DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `movie` (`id`, `description`, `image`, `title`) VALUES
(1,	'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',	'https://via.placeholder.com/720x320?text=The%20Godfather',	'The Godfather'),
(2,	'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',	'https://via.placeholder.com/720x320?text=The%20Shawshank%20Redemption',	'The Shawshank Redemption'),
(3,	'In German-occupied Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazi Germans.',	'https://via.placeholder.com/720x320?text=Schindler%27s%20List',	'Schindler\'s List'),
(4,	'The life of boxer Jake LaMotta, as the violence and temper that leads him to the top in the ring destroys his life outside of it.',	'https://via.placeholder.com/720x320?text=Raging%20Bull',	'Raging Bull'),
(5,	'A cynical nightclub owner protects an old flame and her husband from Nazis in Morocco.',	'https://via.placeholder.com/720x320?text=Casablanca',	'Casablanca');

DROP TABLE IF EXISTS `movie_category`;
CREATE TABLE `movie_category` (
  `movie_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  KEY `FKhkem46gi7yq1019e1j8hlvp9y` (`category_id`),
  KEY `FKdhlw8bp2rx2bhkp1orkg12lor` (`movie_id`),
  CONSTRAINT `FKdhlw8bp2rx2bhkp1orkg12lor` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `FKhkem46gi7yq1019e1j8hlvp9y` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `movie_category` (`movie_id`, `category_id`) VALUES
(2,	2),
(3,	2),
(3,	3),
(3,	4),
(4,	2),
(4,	3),
(4,	5),
(5,	2),
(5,	6),
(5,	7),
(1,	2),
(1,	6),
(1,	7);

-- 2018-12-12 22:58:27