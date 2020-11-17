-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 17, 2020 at 01:39 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go2cinema`
--

--
-- Dumping data for table `cinemaHalls`
--

INSERT INTO `cinemaHalls` (`id`, `hallName`, `configHall`, `standardPrice`, `vipPrice`) VALUES
(16, 'Зал 1', '<div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div>', 100, 150),
(17, 'Зал 2', '<div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_vip\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div>', 200, 250);

--
-- Dumping data for table `makeOrder`
--

INSERT INTO `makeOrder` (`id`, `movieName`, `time`, `hallName`, `totalPrice`, `rows`, `seats`, `qrCode`) VALUES
(1, 'Звёздные войны XXIII', '00:00:00', 'Зал 1', 200, 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"5\";}', 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"2\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Звёздные войны XXIII%0AРяд: 1 Место: 3\nРяд: 5 Место: 2\n%0AВ зале: Зал 1%0AНачало сеанса: 00:00%0AСтоимость: 200 рублей'),
(2, 'Звёздные войны XXIII', '10:00:00', 'Зал 1', 300, 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}', 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"3\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Звёздные войны XXIII%0AРяд: 3 Место: 3\nРяд: 4 Место: 3\n%0AВ зале: Зал 1%0AНачало сеанса: 10:00%0AСтоимость: 300 рублей'),
(3, 'Звёздные войны XXIII', '10:00:00', 'Зал 1', 100, 'a:1:{i:0;s:1:\"6\";}', 'a:1:{i:0;s:1:\"5\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Звёздные войны XXIII%0AРяд: 6 Место: 5\n%0AВ зале: Зал 1%0AНачало сеанса: 10:00%0AСтоимость: 100 рублей'),
(4, 'Звёздные войны XXIII', '22:00:00', 'Зал 2', 500, 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"4\";}', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Звёздные войны XXIII%0AРяд: 4 Место: 2\nРяд: 4 Место: 3\n%0AВ зале: Зал 2%0AНачало сеанса: 22:00%0AСтоимость: 500 рублей'),
(5, 'Звёздные войны XXIII', '22:00:00', 'Зал 2', 250, 'a:1:{i:0;s:1:\"6\";}', 'a:1:{i:0;s:1:\"4\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Звёздные войны XXIII%0AРяд: 6 Место: 4\n%0AВ зале: Зал 2%0AНачало сеанса: 22:00%0AСтоимость: 250 рублей'),
(6, 'Хищник', '13:00:00', 'Зал 1', 200, 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"8\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"7\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Хищник%0AРяд: 1 Место: 1\nРяд: 8 Место: 7\n%0AВ зале: Зал 1%0AНачало сеанса: 13:00%0AСтоимость: 200 рублей'),
(7, 'Хищник', '03:00:00', 'Зал 1', 150, 'a:1:{i:0;s:1:\"3\";}', 'a:1:{i:0;s:1:\"3\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Хищник%0AРяд: 3 Место: 3\n%0AВ зале: Зал 1%0AНачало сеанса: 03:00%0AСтоимость: 150 рублей'),
(8, 'Хищник', '19:00:00', 'Зал 2', 750, 'a:3:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";}', 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Хищник%0AРяд: 4 Место: 2\nРяд: 4 Место: 3\nРяд: 4 Место: 4\n%0AВ зале: Зал 2%0AНачало сеанса: 19:00%0AСтоимость: 750 рублей'),
(9, 'Альфа', '06:00:00', 'Зал 1', 150, 'a:1:{i:0;s:1:\"5\";}', 'a:1:{i:0;s:1:\"4\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Альфа%0AРяд: 5 Место: 4\n%0AВ зале: Зал 1%0AНачало сеанса: 06:00%0AСтоимость: 150 рублей'),
(10, 'Альфа', '06:00:00', 'Зал 1', 200, 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"8\";}', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"6\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Альфа%0AРяд: 3 Место: 2\nРяд: 8 Место: 6\n%0AВ зале: Зал 1%0AНачало сеанса: 06:00%0AСтоимость: 200 рублей'),
(11, 'Альфа', '16:00:00', 'Зал 1', 250, 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"8\";}', 'a:2:{i:0;s:1:\"5\";i:1;s:1:\"2\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Альфа%0AРяд: 4 Место: 5\nРяд: 8 Место: 2\n%0AВ зале: Зал 1%0AНачало сеанса: 16:00%0AСтоимость: 250 рублей'),
(12, 'Альфа', '00:00:00', 'Зал 2', 200, 'a:1:{i:0;s:1:\"1\";}', 'a:1:{i:0;s:1:\"2\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Альфа%0AРяд: 1 Место: 2\n%0AВ зале: Зал 2%0AНачало сеанса: 00:00%0AСтоимость: 200 рублей'),
(13, 'Альфа', '00:00:00', 'Зал 2', 450, 'a:2:{i:0;s:1:\"6\";i:1;s:2:\"10\";}', 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"1\";}', 'https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=На фильм: Альфа%0AРяд: 6 Место: 4\nРяд: 10 Место: 1\n%0AВ зале: Зал 2%0AНачало сеанса: 00:00%0AСтоимость: 450 рублей');

--
-- Dumping data for table `Movies`
--

INSERT INTO `Movies` (`filmId`, `movie`, `duration`, `country`, `aboutMovie`) VALUES
(1, 'Звёздные войны XXIII', 90, 'США', 'Две сотни лет назад малороссийские хутора разоряла шайка нехристей-ляхов во главе с могущественным колдуном.'),
(3, 'Хищник', 150, 'Индия', 'Самые опасные хищники Вселенной, прибыв из глубин космоса, высаживаются на улицах маленького городка, чтобы начать свою кровавую охоту. Генетически модернизировав себя с помощью ДНК других видов, охотники стали ещё сильнее, умнее и беспощаднее.'),
(8, 'Альфа', 100, 'Россия', '20 тысяч лет назад Земля была холодным и неуютным местом, в котором смерть подстерегала человека на каждом шагу.');

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `hall`, `movie`, `time`, `style`) VALUES
(46, 'Зал 1', 'Звёздные войны XXIII', '00:00:00', NULL),
(47, 'Зал 1', 'Звёздные войны XXIII', '10:00:00', 300),
(48, 'Зал 1', 'Звёздные войны XXIII', '22:00:00', 660),
(49, 'Зал 1', 'Хищник', '03:00:00', 90),
(50, 'Зал 1', 'Хищник', '13:00:00', 390),
(51, 'Зал 1', 'Альфа', '06:00:00', 180),
(52, 'Зал 1', 'Альфа', '16:00:00', 480),
(53, 'Зал 2', 'Звёздные войны XXIII', '22:00:00', 660),
(54, 'Зал 2', 'Хищник', '19:00:00', 570),
(55, 'Зал 2', 'Альфа', '00:00:00', 0);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `pass`) VALUES
(1, 'test@test.com', '12345');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
