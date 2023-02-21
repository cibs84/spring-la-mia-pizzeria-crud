-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2023 at 10:29 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`id`, `description`, `name`, `photo`, `price`) VALUES
(1, 'Mozzarella di bufala, pomodoro e basilico', 'Margherita con bufala', 'https://www.atuttofarro.it/wp-content/uploads/2019/02/atuttofarro_pizzarossa_bufala.jpg', '9.50'),
(2, 'Mozzarella, pomodoro e acciughe', 'Napoletana', 'https://wips.plug.it/cips/buonissimo.org/cms/2012/07/pizza-napoli-5.jpg?w=713&a=c&h=407', '8.00'),
(3, 'Pomodoro, aglio e origano', 'Marinara', 'https://wips.plug.it/cips/buonissimo.org/cms/2012/05/pizza-alla-marinara.jpg?w=712&a=c&h=406', '6.00'),
(4, 'Mozzarella, funghi e salsiccia', 'Boscaiola', 'https://www.edoardomondi.it/public/Files/rif000001/281/pizzasalsicciafunghi.jpg', '11.00'),
(5, 'Mozzarella, fiori di zucca e alici', 'Fiori e alici', 'https://www.beatitudiniculinarie.it/home/wp-content/uploads/2021/09/pizza-con-fiori-di-zucca-e-acciughe-940x627.jpg', '10.00'),
(6, 'Mozzarella, pomodoro e salame pizzante', 'Diavola', 'https://www.cucinare.it/uploads/wp-content/uploads/2015/10/ricetta_pizza_alla_diavola.jpg', '12.00'),
(7, 'Mozzarella, pomodoro, cotto e uovo', 'Calzone', 'https://ricetta.it/Uploads/Imgs/calzone.jpg', '14.00'),
(8, 'Mozzarella, pomodoro, tonno e cipolla', 'Tonno e cipolla', 'https://rusticslice.ca/wp-content/uploads/2015/08/placeholder-pizza.jpg', '13.00'),
(9, 'Mozzarella, panna e prosciutto cotto', 'Fior di neve', 'https://rusticslice.ca/wp-content/uploads/2015/08/placeholder-pizza.jpg', '15.00'),
(10, 'Mozzarella, pomodoro e funghi', 'Funghi', 'https://rusticslice.ca/wp-content/uploads/2015/08/placeholder-pizza.jpg', '11.00'),
(11, 'Mozzarella, pomodoro e gorgonzola', 'Gorgonzola', 'https://www.petitchef.it/imgupl/recipe/pizza-al-gorgonzola--450185p695925.jpg', '12.50'),
(12, 'Mozzarella, pomodoro, speck', 'Speck', 'https://rusticslice.ca/wp-content/uploads/2015/08/placeholder-pizza.jpg', '14.00'),
(13, 'Mozzarella, pomodoro, gorgonzola e noci', 'Gorgonzola e Noci', 'https://rusticslice.ca/wp-content/uploads/2015/08/placeholder-pizza.jpg', '16.00'),
(14, 'Mozzarella, pomodoro e basilico', 'Margherita', 'https://www.lemilleeunabontadifranci.it/wp-content/uploads/2021/04/Pizza-margherita-fatta-in-casa-orizzontale.jpg', '7.00');