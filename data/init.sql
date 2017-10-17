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