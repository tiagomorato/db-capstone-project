CREATE DATABASE  IF NOT EXISTS `littlelemondb2` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `littlelemondb2`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: littlelemondb2
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `BookingID` int NOT NULL AUTO_INCREMENT,
  `BookingTable` int NOT NULL,
  `BookingDate` date NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `fk_Booking_Customer1_idx` (`CustomerID`),
  CONSTRAINT `fk_Booking_Customer1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,2,'2023-03-15',1),(2,4,'2023-03-16',2),(3,1,'2023-03-18',3),(4,3,'2023-03-20',4),(5,2,'2023-03-22',5),(6,4,'2023-03-23',6),(7,1,'2023-03-25',7),(8,3,'2023-03-27',8),(9,2,'2023-03-29',9),(10,4,'2023-03-30',10);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(45) NOT NULL,
  `CustomerPhone` varchar(45) NOT NULL,
  `CustomerBirthdate` date NOT NULL,
  `CustomerEmail` varchar(45) NOT NULL,
  `CustomerAddress` varchar(45) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `CustomerEmail_UNIQUE` (`CustomerEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Doe','1234567890','1985-05-01','john.doe@example.com','123 Main St'),(2,'Jane Smith','2345678901','1990-06-02','jane.smith@example.com','456 Park Ave'),(3,'David Lee','3456789012','1988-03-15','david.lee@example.com','789 Broadway'),(4,'Sarah Chen','4567890123','1995-12-25','sarah.chen@example.com','1010 5th Ave'),(5,'Michael Kim','5678901234','1992-09-10','michael.kim@example.com','432 Park Ave'),(6,'Emily Brown','6789012345','1980-11-11','emily.brown@example.com','345 Madison Ave'),(7,'Daniel Kim','7890123456','1975-01-20','daniel.kim@example.com','100 1st Ave'),(8,'Ava Lee','8901234567','2000-04-30','ava.lee@example.com','200 2nd Ave'),(9,'Oliver Chen','9012345678','1999-07-05','oliver.chen@example.com','300 3rd Ave'),(10,'Sophia Park','0123456789','2005-02-14','sophia.park@example.com','400 4th Ave');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `MenuID` int NOT NULL,
  `MenuCuisine` varchar(45) NOT NULL,
  `MenuName` varchar(45) NOT NULL,
  `MenuItemID` int NOT NULL,
  PRIMARY KEY (`MenuID`),
  KEY `fk_Menu_MenuItem1_idx` (`MenuItemID`),
  CONSTRAINT `fk_Menu_MenuItem1` FOREIGN KEY (`MenuItemID`) REFERENCES `menuitem` (`MenuItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Italian','Set menu 1',1),(2,'Italian','Set menu 2',2),(3,'Indian','Set menu 3',3),(4,'British','Set menu 4',4),(5,'British','Set menu 5',5),(6,'Italian','Set menu 6',6),(7,'Italian','Set menu 7',7),(8,'Indian','Set menu 8',8),(9,'Indian','Set menu 9',9),(10,'British','Set menu 10',10);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitem`
--

DROP TABLE IF EXISTS `menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuitem` (
  `MenuItemID` int NOT NULL,
  `MenuItemCourse` varchar(45) NOT NULL,
  `MenuItemStarter` varchar(45) NOT NULL,
  `MenuItemDessert` varchar(45) NOT NULL,
  `MenuItemDrink` varchar(45) NOT NULL,
  PRIMARY KEY (`MenuItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitem`
--

LOCK TABLES `menuitem` WRITE;
/*!40000 ALTER TABLE `menuitem` DISABLE KEYS */;
INSERT INTO `menuitem` VALUES (1,'Main','Prawn cocktail','Chocolate cake','Coca-cola'),(2,'Main','Tomato soup','Fruit salad','Sprite'),(3,'Main','Chicken curry','Cheesecake','Pepsi'),(4,'Main','Beef stew','Apple pie','Lemonade'),(5,'Main','Fish and chips','Ice cream','Fanta'),(6,'Starter','Garlic bread','Soup of the day','Melon'),(7,'Starter','Bruschetta','Prawn cocktail','Soup of the day'),(8,'Starter','Mushroom soup','Garlic bread','Melon'),(9,'Starter','Prawn cocktail','Bruschetta','Soup of the day'),(10,'Starter','Soup of the day','Mushroom soup','Garlic bread');
/*!40000 ALTER TABLE `menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` date NOT NULL,
  `OrderQty` int NOT NULL,
  `OrderCost` decimal(10,0) NOT NULL,
  `MenuID` int NOT NULL,
  `BookingID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `fk_Orders_Menu1_idx` (`MenuID`),
  KEY `fk_Order_Booking1_idx` (`BookingID`),
  CONSTRAINT `fk_Order_Booking1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`),
  CONSTRAINT `fk_Orders_Menu1` FOREIGN KEY (`MenuID`) REFERENCES `menu` (`MenuID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2022-02-14',2,50,1,1),(2,'2022-02-14',4,100,2,2),(3,'2022-02-15',3,75,3,3),(4,'2022-02-16',2,50,4,4);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdelivery`
--

DROP TABLE IF EXISTS `orderdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdelivery` (
  `DeliveryID` int NOT NULL,
  `DeliveryDate` date NOT NULL,
  `DeliveryStatus` varchar(45) NOT NULL,
  `StaffID` int NOT NULL,
  `OrderID` int NOT NULL,
  PRIMARY KEY (`DeliveryID`),
  KEY `fk_OrdersDelivery_Staff1_idx` (`StaffID`),
  KEY `fk_OrderDelivery_Order1_idx` (`OrderID`),
  CONSTRAINT `fk_OrderDelivery_Order1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`),
  CONSTRAINT `fk_OrdersDelivery_Staff1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdelivery`
--

LOCK TABLES `orderdelivery` WRITE;
/*!40000 ALTER TABLE `orderdelivery` DISABLE KEYS */;
INSERT INTO `orderdelivery` VALUES (1,'2023-03-15','Delivered',1,1),(2,'2023-03-17','In Transit',2,2),(3,'2023-03-20','Out for Delivery',3,3),(4,'2023-03-22','Pending',4,4);
/*!40000 ALTER TABLE `orderdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `RoleID` int NOT NULL,
  `Title` varchar(45) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Manager'),(2,'Chef'),(3,'Waiter'),(4,'Bartender');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `StaffID` int NOT NULL,
  `StaffName` varchar(45) NOT NULL,
  `StaffEmail` varchar(255) NOT NULL,
  `StaffSalary` decimal(10,0) NOT NULL,
  `StaffRole` int NOT NULL,
  PRIMARY KEY (`StaffID`),
  UNIQUE KEY `StaffEmail_UNIQUE` (`StaffEmail`),
  KEY `fk_Staff_Role1_idx` (`StaffRole`),
  CONSTRAINT `fk_Staff_Role1` FOREIGN KEY (`StaffRole`) REFERENCES `role` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'John Doe','johndoe@example.com',50000,1),(2,'Jane Smith','janesmith@example.com',40000,2),(3,'Bob Johnson','bobjohnson@example.com',30000,3),(4,'Amy Lee','amylee@example.com',35000,3),(5,'David Brown','davidbrown@example.com',40000,2),(6,'Sarah Jones','sarahjones@example.com',25000,3),(7,'Mike Davis','mikedavis@example.com',28000,3),(8,'Karen Wilson','karenwilson@example.com',32000,4);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14 18:03:22
