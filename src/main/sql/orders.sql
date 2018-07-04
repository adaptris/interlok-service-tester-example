CREATE TABLE `orders` (
  `orderId` int NOT NULL,
  `orderItem` varchar(45) DEFAULT NULL,
  `orderDate` TIMESTAMP,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
