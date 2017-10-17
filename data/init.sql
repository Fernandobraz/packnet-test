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
