CREATE TABLE `pizza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`)
);