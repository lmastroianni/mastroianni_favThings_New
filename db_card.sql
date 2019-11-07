-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2019 at 07:48 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bio`
--

DROP TABLE IF EXISTS `tbl_bio`;
CREATE TABLE IF NOT EXISTS `tbl_bio` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `profID` tinyint(4) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `Favourites` varchar(60) DEFAULT NULL,
  `classes` varchar(100) DEFAULT NULL,
  `Link` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bio`
--

INSERT INTO `tbl_bio` (`ID`, `profID`, `bio`, `Favourites`, `classes`, `Link`) VALUES
(1, 1, 'An easy favourite,from playing the sport, to watching games and highlights, I have always been a passionate hockey fan, and it will always be my favourite sport.', 'Toronto Maple Leafs, St. Louis Blues', 'MMED30sumthin Web Dev 3', 'Goal Compilation!\r\nhttps://www.youtube.com/watch?v=ML03ZqtgwS8'),
(2, 2, 'Like most people, music has had a crucial impact on my life. I have beenm listening to music for as long as I can remember, and love exploring into different genres and finding new artists. From long car drives to pre game pump ups, music has always been able to match my mood and amplify it for the better.', 'Led Zeppelin, Greta Van Fleet, Tragically Hip, Jon Pardi', 'MMED3012 Multimedia Authoring 3', 'One of my favs!\r\nhttps://www.youtube.com/watch?v=aJg4OJxp-co'),
(3, 3, 'Yes, I am Italian, therefore I love Pasta. It is easily my favourite dinner food, well, food in general really. I basically ate it before each hockey game and I have never had a bad plate of pasta! I love it with alredo, marinara, butter, anything really. The best is when I visit my Nanna\'s because she makes the best homemade sauce and meatballs. In other words, a perfect dinner.', 'Penne, Rigate, Linguini', 'MMED1012 Web Design Fundamentals', 'Hommeade Sauce Recipe!\r\nhttps://www.youtube.com/watch?v=Aqh3QfYHyRs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

DROP TABLE IF EXISTS `tbl_card`;
CREATE TABLE IF NOT EXISTS `tbl_card` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) COLLATE utf8_bin NOT NULL,
  `CompanyName` varchar(30) COLLATE utf8_bin NOT NULL,
  `Address` varchar(150) COLLATE utf8_bin NOT NULL,
  `Logo` varchar(200) COLLATE utf8_bin NOT NULL,
  `URL` varchar(200) COLLATE utf8_bin NOT NULL,
  `Favourites` varchar(100) COLLATE utf8_bin NOT NULL,
  `JobTitle` varchar(60) COLLATE utf8_bin NOT NULL,
  `Phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `Email` varchar(35) COLLATE utf8_bin NOT NULL,
  `Fax` varchar(20) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`ID`, `Name`, `CompanyName`, `Address`, `Logo`, `URL`, `Favourites`, `JobTitle`, `Phone`, `Email`, `Fax`, `avatar`) VALUES
(1, 'Hockey', 'Fanshawe', '200 Dundas', 'https://www.fanshaweonline.ca/d2l/lp/navbars/29533/theme/viewimage/32508983/view?v=20.19.8.17536-327', 'https://www.fanshawec.ca', 'Toronto', 'prof', '1112223333', 'b_pan2@fanshawec.ca', '111222333', 'Untitled.jpg'),
(2, 'Music', 'Fanshawe', '200 Dundas', 'https://www.fanshaweonline.ca/d2l/lp/navbars/29533/theme/viewimage/32508983/view?v=20.19.8.17536-327', 'https://www.fanshawec.ca', 'facebook, twitter, snapchat', 'confuserator', '444555666', 'tvanrys@fanshaweonline.ca', '444555666', 'music.jpg'),
(3, 'Pasta', 'Fanshawe', '200 Dundas', 'https://www.fanshaweonline.ca/d2l/lp/navbars/29533/theme/viewimage/32508983/view?v=20.19.8.17536-327', 'https://www.fanshawec.ca', 'kik, twitter, tik tok', 'coordinator', '7778889999', 'jbrunner@fanshaweonline.ca', '7778889999', 'pasta.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
