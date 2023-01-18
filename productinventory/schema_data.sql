
CREATE DATABASE Productinvetory;


DROP TABLE IF EXISTS `category`;


CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191)  NOT NULL,
  `description` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;

INSERT INTO `category` VALUES (1,'Hats','Things you can wear on your head'),
(2,'Socks','Things you can wear on your feet'),
(3,'Shirts','Things you wear on the top half of your body');

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) ,
  `description` varchar(191)  NOT NULL,
  `price` decimal(65,30) NOT NULL,
  `image` varchar(191) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Product_category_id_idx` (`category_id`)
) ENGINE=InnoDB ;

INSERT INTO `product` VALUES (1,'Cool helmet.','A nice helmet to wear on your head',19.950000000000000000000000000000,'/images/helmet.jpg',1),
(2,'Grey T-Shirt','A nice shirt that you can wear on your body',22.950000000000000000000000000000,'/images/shirt.jpg',3),
(3,'Socks','Cool socks that you can wear on your feet',12.950000000000000000000000000000,'/images/socks.jpg',2),
(4,'Sweatshirt','Cool sweatshirt that you can wear on your body',12.950000000000000000000000000000,'/images/sweatshirt.jpg',3);
