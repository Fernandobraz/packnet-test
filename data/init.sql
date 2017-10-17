CREATE DATABASE packnet_test_db;

use packnet_test_db;

CREATE TABLE IF NOT EXISTS `family_member` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(32) NOT NULL,
  `age` DECIMAL(10,0) NOT NULL,
  `created` DATETIME NOT NULL,
  `modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MYISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `family_member` (`id`, `name`, `age`, `created`, `modified`) VALUES
(1, 'Peter', '30', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(2, 'Mary', '29', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(3, 'Lily', '14', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(4, 'Nick', '17', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(5, 'Arthur', '13', '2017-10-17 17:30:26', '2017-10-17 17:30:26');

CREATE TABLE IF NOT EXISTS `albums` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(20) NOT NULL,
  `artist` VARCHAR(20) NOT NULL,
  `num_of_tracks` DECIMAL(10,0) NOT NULL,
  `release_year` DECIMAL(10,0) NOT NULL,
  `created` DATETIME NOT NULL,
  `modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MYISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

 -- seed albums table

INSERT INTO albums SET title='Album 0', artist='artists8', num_of_tracks='18', release_year='1979', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 1', artist='artists13', num_of_tracks='7', release_year='2017', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 2', artist='artists17', num_of_tracks='7', release_year='2004', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 3', artist='artists12', num_of_tracks='16', release_year='2005', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 4', artist='artists22', num_of_tracks='11', release_year='1987', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 5', artist='artists11', num_of_tracks='8', release_year='1997', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 6', artist='artists20', num_of_tracks='10', release_year='2008', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 7', artist='artists11', num_of_tracks='17', release_year='1976', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 8', artist='artists7', num_of_tracks='12', release_year='2017', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 9', artist='artists13', num_of_tracks='19', release_year='2017', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 10', artist='artists5', num_of_tracks='9', release_year='2006', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 11', artist='artists10', num_of_tracks='18', release_year='2002', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 12', artist='artists9', num_of_tracks='9', release_year='2001', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 13', artist='artists18', num_of_tracks='6', release_year='2008', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 14', artist='artists12', num_of_tracks='7', release_year='1987', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 15', artist='artists20', num_of_tracks='10', release_year='2013', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 16', artist='artists20', num_of_tracks='7', release_year='1995', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 17', artist='artists25', num_of_tracks='10', release_year='1986', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 18', artist='artists28', num_of_tracks='8', release_year='1980', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 19', artist='artists25', num_of_tracks='19', release_year='2005', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 20', artist='artists28', num_of_tracks='15', release_year='1992', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 21', artist='artists22', num_of_tracks='14', release_year='2014', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 22', artist='artists5', num_of_tracks='9', release_year='1975', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 23', artist='artists27', num_of_tracks='12', release_year='2016', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 24', artist='artists3', num_of_tracks='16', release_year='1987', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 25', artist='artists21', num_of_tracks='19', release_year='1981', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 26', artist='artists26', num_of_tracks='7', release_year='1989', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 27', artist='artists11', num_of_tracks='17', release_year='1979', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 28', artist='artists21', num_of_tracks='15', release_year='2004', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 29', artist='artists3', num_of_tracks='13', release_year='1982', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 30', artist='artists24', num_of_tracks='16', release_year='2010', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 31', artist='artists9', num_of_tracks='17', release_year='2011', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 32', artist='artists29', num_of_tracks='16', release_year='1991', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 33', artist='artists26', num_of_tracks='13', release_year='1994', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 34', artist='artists29', num_of_tracks='17', release_year='2010', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 35', artist='artists17', num_of_tracks='8', release_year='1987', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 36', artist='artists13', num_of_tracks='18', release_year='1972', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 37', artist='artists25', num_of_tracks='16', release_year='2011', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 38', artist='artists22', num_of_tracks='17', release_year='1988', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 39', artist='artists2', num_of_tracks='16', release_year='1971', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 40', artist='artists13', num_of_tracks='8', release_year='1988', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 41', artist='artists28', num_of_tracks='7', release_year='1998', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 42', artist='artists24', num_of_tracks='15', release_year='1985', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 43', artist='artists13', num_of_tracks='17', release_year='1971', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 44', artist='artists25', num_of_tracks='6', release_year='2014', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 45', artist='artists7', num_of_tracks='16', release_year='1987', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 46', artist='artists18', num_of_tracks='7', release_year='1985', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 47', artist='artists5', num_of_tracks='7', release_year='1974', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 48', artist='artists21', num_of_tracks='11', release_year='1999', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 49', artist='artists17', num_of_tracks='14', release_year='1995', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 50', artist='artists25', num_of_tracks='18', release_year='1984', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 51', artist='artists27', num_of_tracks='16', release_year='1987', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 52', artist='artists30', num_of_tracks='13', release_year='2017', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 53', artist='artists1', num_of_tracks='17', release_year='1981', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 54', artist='artists5', num_of_tracks='13', release_year='1983', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 55', artist='artists27', num_of_tracks='7', release_year='2004', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 56', artist='artists16', num_of_tracks='18', release_year='2014', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 57', artist='artists2', num_of_tracks='19', release_year='2008', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 58', artist='artists20', num_of_tracks='10', release_year='1999', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 59', artist='artists8', num_of_tracks='15', release_year='2004', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 60', artist='artists6', num_of_tracks='5', release_year='2004', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 61', artist='artists8', num_of_tracks='9', release_year='2005', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 62', artist='artists30', num_of_tracks='16', release_year='2007', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 63', artist='artists17', num_of_tracks='5', release_year='1996', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 64', artist='artists22', num_of_tracks='19', release_year='2009', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 65', artist='artists27', num_of_tracks='18', release_year='1974', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 66', artist='artists8', num_of_tracks='19', release_year='1999', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 67', artist='artists26', num_of_tracks='14', release_year='1995', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 68', artist='artists29', num_of_tracks='17', release_year='1984', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 69', artist='artists16', num_of_tracks='18', release_year='1983', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 70', artist='artists28', num_of_tracks='18', release_year='1974', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 71', artist='artists1', num_of_tracks='5', release_year='2008', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 72', artist='artists17', num_of_tracks='7', release_year='1979', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 73', artist='artists9', num_of_tracks='12', release_year='1984', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 74', artist='artists20', num_of_tracks='17', release_year='2015', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 75', artist='artists14', num_of_tracks='17', release_year='1977', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 76', artist='artists3', num_of_tracks='12', release_year='1996', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 77', artist='artists8', num_of_tracks='19', release_year='1977', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 78', artist='artists3', num_of_tracks='15', release_year='2002', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 79', artist='artists29', num_of_tracks='15', release_year='2013', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 80', artist='artists9', num_of_tracks='12', release_year='2005', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 81', artist='artists30', num_of_tracks='19', release_year='2000', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 82', artist='artists3', num_of_tracks='16', release_year='1970', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 83', artist='artists19', num_of_tracks='7', release_year='1975', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 84', artist='artists14', num_of_tracks='10', release_year='1989', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 85', artist='artists5', num_of_tracks='19', release_year='2011', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 86', artist='artists30', num_of_tracks='18', release_year='1983', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 87', artist='artists30', num_of_tracks='5', release_year='1978', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 88', artist='artists27', num_of_tracks='13', release_year='1978', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 89', artist='artists8', num_of_tracks='12', release_year='2002', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 90', artist='artists1', num_of_tracks='8', release_year='1999', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 91', artist='artists30', num_of_tracks='7', release_year='2001', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 92', artist='artists24', num_of_tracks='11', release_year='1978', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 93', artist='artists25', num_of_tracks='11', release_year='1970', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 94', artist='artists25', num_of_tracks='10', release_year='1989', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 95', artist='artists12', num_of_tracks='5', release_year='1997', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 96', artist='artists19', num_of_tracks='8', release_year='1983', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 97', artist='artists2', num_of_tracks='15', release_year='2013', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 98', artist='artists4', num_of_tracks='16', release_year='2003', created='2017-10-17 17:30:26';
INSERT INTO albums SET title='Album 99', artist='artists7', num_of_tracks='12', release_year='1981', created='2017-10-17 17:30:26';


CREATE TABLE IF NOT EXISTS `genres` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `created` DATETIME NOT NULL,
  `modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MYISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- seed genres
INSERT INTO `genres` (`id`, `name`,`created`, `modified`) VALUES
(1, 'Rock', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(2, 'Metal', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(3, 'Classic', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(4, 'Pop', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(5, 'Grunge', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(6, 'Pop-Rock', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(7, 'Eletronic', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(8, 'Dubstep', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(9, 'Heavy-Metal', '2017-10-17 17:30:26', '2017-10-17 17:30:26'),
(10, 'New-Metal', '2017-10-17 17:30:26', '2017-10-17 17:30:26');

CREATE TABLE IF NOT EXISTS `albums_genres` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `album_id` INT(11) NOT NULL,
  `genre_id` INT(11) NOT NULL,
  `created` DATETIME NOT NULL,
  `modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`album_id`)
  REFERENCES albums(id)
  ON DELETE CASCADE,
  FOREIGN KEY (`genre_id`)
  REFERENCES genres(id)
  ON DELETE CASCADE
) ENGINE=MYISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

INSERT INTO albums_genres SET album_id=6, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=7, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=8, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=9, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=10, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=11, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=12, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=13, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=14, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=15, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=16, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=17, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=18, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=19, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=20, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=21, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=22, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=23, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=24, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=25, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=26, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=27, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=28, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=29, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=30, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=31, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=32, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=33, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=34, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=35, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=36, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=37, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=38, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=39, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=40, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=41, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=42, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=43, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=44, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=45, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=46, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=47, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=48, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=49, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=50, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=51, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=52, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=53, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=54, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=55, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=56, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=57, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=58, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=59, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=60, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=61, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=62, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=63, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=64, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=65, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=66, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=67, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=68, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=69, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=70, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=71, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=72, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=73, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=74, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=75, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=76, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=77, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=78, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=79, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=80, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=81, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=82, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=83, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=84, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=85, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=86, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=87, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=88, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=89, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=90, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=91, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=92, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=93, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=94, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=95, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=96, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=97, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=98, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=99, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=100, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=101, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=102, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=103, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=104, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=105, genre_id=4, created='2017-10-17 17:30:26';

-- extra genres applicable to few

INSERT INTO albums_genres SET album_id=38, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=13, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=6, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=28, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=64, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=19, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=23, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=62, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=20, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=45, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=38, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=66, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=42, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=39, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=46, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=7, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=60, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=86, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=56, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=19, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=18, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=68, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=74, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=82, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=43, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=27, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=20, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=6, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=56, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=52, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=49, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=49, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=24, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=14, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=90, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=58, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=102, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=71, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=44, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=29, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=102, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=8, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=21, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=27, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=31, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=11, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=39, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=55, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=30, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=105, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=7, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=86, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=87, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=105, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=47, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=50, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=42, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=97, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=16, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=89, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=37, genre_id=7, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=73, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=94, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=72, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=42, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=82, genre_id=5, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=9, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=7, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=39, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=48, genre_id=9, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=47, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=72, genre_id=8, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=79, genre_id=3, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=41, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=33, genre_id=10, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=57, genre_id=1, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=58, genre_id=6, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=49, genre_id=2, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=87, genre_id=4, created='2017-10-17 17:30:26';
INSERT INTO albums_genres SET album_id=28, genre_id=8, created='2017-10-17 17:30:26';

CREATE TABLE IF NOT EXISTS `family_member_album` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `family_member_id` INT(11) NOT NULL,
  `album_id` INT(11) NOT NULL,
  `price` DECIMAL(10,0) NOT NULL,
  `purchase_date` DATE NOT NULL,
  `created` DATETIME NOT NULL,
  `modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`album_id`)
  REFERENCES albums(id)
  ON DELETE CASCADE,
  FOREIGN KEY (`family_member_id`)
  REFERENCES family_member(id)
  ON DELETE CASCADE
) ENGINE=MYISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- albums purchased

INSERT INTO family_member_album SET family_member_id=2, album_id=71, price='47', purchase_date='2010-1-12', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=67, price='74', purchase_date='2010-9-13', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=3, album_id=68, price='35', purchase_date='2010-3-7', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=25, price='60', purchase_date='2011-3-12', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=25, price='74', purchase_date='2015-6-7', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=3, album_id=65, price='29', purchase_date='2011-2-20', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=103, price='24', purchase_date='2013-5-20', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=35, price='7', purchase_date='2011-10-2', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=37, price='36', purchase_date='2015-3-16', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=78, price='83', purchase_date='2016-7-8', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=36, price='66', purchase_date='2011-8-5', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=53, price='93', purchase_date='2012-9-9', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=3, album_id=68, price='37', purchase_date='2012-11-2', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=79, price='18', purchase_date='2016-7-16', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=67, price='52', purchase_date='2017-10-11', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=32, price='56', purchase_date='2014-5-3', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=15, price='80', purchase_date='2013-10-13', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=3, album_id=40, price='28', purchase_date='2012-2-4', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=30, price='81', purchase_date='2012-1-1', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=84, price='27', purchase_date='2012-11-10', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=98, price='41', purchase_date='2016-3-18', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=49, price='45', purchase_date='2011-6-20', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=32, price='13', purchase_date='2012-3-19', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=87, price='76', purchase_date='2012-4-9', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=31, price='73', purchase_date='2015-11-7', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=69, price='100', purchase_date='2016-7-15', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=98, price='9', purchase_date='2014-5-6', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=31, price='62', purchase_date='2016-5-19', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=85, price='7', purchase_date='2011-8-8', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=42, price='43', purchase_date='2016-6-7', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=68, price='19', purchase_date='2012-11-18', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=3, album_id=20, price='63', purchase_date='2014-6-3', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=76, price='43', purchase_date='2013-8-20', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=98, price='49', purchase_date='2017-11-8', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=92, price='6', purchase_date='2012-11-8', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=17, price='81', purchase_date='2010-10-3', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=90, price='67', purchase_date='2014-1-14', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=29, price='12', purchase_date='2010-10-18', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=57, price='67', purchase_date='2012-4-11', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=98, price='51', purchase_date='2014-6-14', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=42, price='32', purchase_date='2016-6-13', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=11, price='59', purchase_date='2011-9-4', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=37, price='71', purchase_date='2017-6-6', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=63, price='20', purchase_date='2016-4-20', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=3, album_id=89, price='66', purchase_date='2012-1-18', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=3, album_id=87, price='89', purchase_date='2017-1-10', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=67, price='48', purchase_date='2012-8-2', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=89, price='97', purchase_date='2016-2-7', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=92, price='46', purchase_date='2012-10-2', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=79, price='15', purchase_date='2016-11-5', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=26, price='19', purchase_date='2013-8-6', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=12, price='84', purchase_date='2011-11-8', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=56, price='44', purchase_date='2012-10-2', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=3, album_id=8, price='15', purchase_date='2010-4-18', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=98, price='99', purchase_date='2016-10-3', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=95, price='80', purchase_date='2012-10-7', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=75, price='77', purchase_date='2010-9-13', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=71, price='31', purchase_date='2016-5-18', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=85, price='6', purchase_date='2012-1-2', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=33, price='91', purchase_date='2015-5-14', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=35, price='57', purchase_date='2015-5-4', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=48, price='14', purchase_date='2010-5-11', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=98, price='21', purchase_date='2017-7-19', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=37, price='26', purchase_date='2016-10-14', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=46, price='96', purchase_date='2011-1-12', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=100, price='23', purchase_date='2010-1-13', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=65, price='23', purchase_date='2012-4-3', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=8, price='93', purchase_date='2014-4-17', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=34, price='26', purchase_date='2011-1-18', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=38, price='87', purchase_date='2010-10-18', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=5, album_id=14, price='93', purchase_date='2010-1-15', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=4, album_id=17, price='43', purchase_date='2012-10-11', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=97, price='82', purchase_date='2011-4-16', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=2, album_id=34, price='29', purchase_date='2014-12-14', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=61, price='64', purchase_date='2017-5-14', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=94, price='10', purchase_date='2016-3-9', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=26, price='74', purchase_date='2013-6-3', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=3, album_id=9, price='80', purchase_date='2017-8-20', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=39, price='37', purchase_date='2010-6-13', created='2017-10-17 17:30:26';
INSERT INTO family_member_album SET family_member_id=1, album_id=37, price='44', purchase_date='2010-11-10', created='2017-10-17 17:30:26';
