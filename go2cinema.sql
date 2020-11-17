-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 17, 2020 at 12:50 AM
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
(7, 'Звёздные войны XXIII', '10:00:00', 'Зал 1', 250, 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"4\";}', 'a:2:{i:0;s:1:\"5\";i:1;s:1:\"3\";}', 'czoyNjE6Imh0dHBzOi8vYXBpLnFyc2VydmVyLmNvbS92MS9jcmVhdGUtcXItY29kZS8/c2l6ZT00MDB4NDAwJmRhdGE90J3QsCDRhNC40LvRjNC8OiDQl9Cy0ZHQt9C00L3Ri9C1INCy0L7QudC90YsgWFhJSUklMEHQoNGP0LQ6IDIg0JzQtdGB0YLQvjogNQrQoNGP0LQ6IDQg0JzQtdGB0YLQvjogMwolMEHQkiDQt9Cw0LvQtTog0JfQsNC7IDElMEHQndCw0YfQsNC70L4g0YHQtdCw0L3RgdCwOiAxMDowMCUwQdCh0YLQvtC40LzQvtGB0YLRjDogMjUwINGA0YPQsdC70LXQuSI7'),
(8, 'Хищник', '13:00:00', 'Зал 1', 150, 'a:1:{i:0;s:1:\"4\";}', 'a:1:{i:0;s:1:\"4\";}', 'czoyMTY6Imh0dHBzOi8vYXBpLnFyc2VydmVyLmNvbS92MS9jcmVhdGUtcXItY29kZS8/c2l6ZT00MDB4NDAwJmRhdGE90J3QsCDRhNC40LvRjNC8OiDQpdC40YnQvdC40LolMEHQoNGP0LQ6IDQg0JzQtdGB0YLQvjogNAolMEHQkiDQt9Cw0LvQtTog0JfQsNC7IDElMEHQndCw0YfQsNC70L4g0YHQtdCw0L3RgdCwOiAxMzowMCUwQdCh0YLQvtC40LzQvtGB0YLRjDogMTUwINGA0YPQsdC70LXQuSI7'),
(9, 'Альфа', '00:00:00', 'Зал 2', 500, 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"6\";}', 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"3\";}', 'czoyMzg6Imh0dHBzOi8vYXBpLnFyc2VydmVyLmNvbS92MS9jcmVhdGUtcXItY29kZS8/c2l6ZT00MDB4NDAwJmRhdGE90J3QsCDRhNC40LvRjNC8OiDQkNC70YzRhNCwJTBB0KDRj9C0OiA0INCc0LXRgdGC0L46IDQK0KDRj9C0OiA2INCc0LXRgdGC0L46IDMKJTBB0JIg0LfQsNC70LU6INCX0LDQuyAyJTBB0J3QsNGH0LDQu9C+INGB0LXQsNC90YHQsDogMDA6MDAlMEHQodGC0L7QuNC80L7RgdGC0Yw6IDUwMCDRgNGD0LHQu9C10LkiOw=='),
(10, 'Альфа', '16:00:00', 'Зал 1', 300, 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"5\";}', 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"4\";}', 'czoyMzg6Imh0dHBzOi8vYXBpLnFyc2VydmVyLmNvbS92MS9jcmVhdGUtcXItY29kZS8/c2l6ZT00MDB4NDAwJmRhdGE90J3QsCDRhNC40LvRjNC8OiDQkNC70YzRhNCwJTBB0KDRj9C0OiA0INCc0LXRgdGC0L46IDQK0KDRj9C0OiA1INCc0LXRgdGC0L46IDQKJTBB0JIg0LfQsNC70LU6INCX0LDQuyAxJTBB0J3QsNGH0LDQu9C+INGB0LXQsNC90YHQsDogMTY6MDAlMEHQodGC0L7QuNC80L7RgdGC0Yw6IDMwMCDRgNGD0LHQu9C10LkiOw=='),
(11, 'Хищник', '19:00:00', 'Зал 2', 450, 'a:2:{i:0;s:1:\"4\";i:1;s:2:\"10\";}', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"7\";}', 'czoyNDE6Imh0dHBzOi8vYXBpLnFyc2VydmVyLmNvbS92MS9jcmVhdGUtcXItY29kZS8/c2l6ZT00MDB4NDAwJmRhdGE90J3QsCDRhNC40LvRjNC8OiDQpdC40YnQvdC40LolMEHQoNGP0LQ6IDQg0JzQtdGB0YLQvjogMgrQoNGP0LQ6IDEwINCc0LXRgdGC0L46IDcKJTBB0JIg0LfQsNC70LU6INCX0LDQuyAyJTBB0J3QsNGH0LDQu9C+INGB0LXQsNC90YHQsDogMTk6MDAlMEHQodGC0L7QuNC80L7RgdGC0Yw6IDQ1MCDRgNGD0LHQu9C10LkiOw=='),
(14, 'Звёздные войны XXIII', '22:00:00', 'Зал 2', 450, 'a:2:{i:0;s:1:\"4\";i:1;s:2:\"10\";}', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"2\";}', 'czoyNjI6Imh0dHBzOi8vYXBpLnFyc2VydmVyLmNvbS92MS9jcmVhdGUtcXItY29kZS8/c2l6ZT00MDB4NDAwJmRhdGE90J3QsCDRhNC40LvRjNC8OiDQl9Cy0ZHQt9C00L3Ri9C1INCy0L7QudC90YsgWFhJSUklMEHQoNGP0LQ6IDQg0JzQtdGB0YLQvjogMgrQoNGP0LQ6IDEwINCc0LXRgdGC0L46IDIKJTBB0JIg0LfQsNC70LU6INCX0LDQuyAyJTBB0J3QsNGH0LDQu9C+INGB0LXQsNC90YHQsDogMjI6MDAlMEHQodGC0L7QuNC80L7RgdGC0Yw6IDQ1MCDRgNGD0LHQu9C10LkiOw=='),
(15, 'Альфа', '16:00:00', 'Зал 1', 100, 'a:1:{i:0;s:1:\"8\";}', 'a:1:{i:0;s:1:\"2\";}', 'czoyMTQ6Imh0dHBzOi8vYXBpLnFyc2VydmVyLmNvbS92MS9jcmVhdGUtcXItY29kZS8/c2l6ZT00MDB4NDAwJmRhdGE90J3QsCDRhNC40LvRjNC8OiDQkNC70YzRhNCwJTBB0KDRj9C0OiA4INCc0LXRgdGC0L46IDIKJTBB0JIg0LfQsNC70LU6INCX0LDQuyAxJTBB0J3QsNGH0LDQu9C+INGB0LXQsNC90YHQsDogMTY6MDAlMEHQodGC0L7QuNC80L7RgdGC0Yw6IDEwMCDRgNGD0LHQu9C10LkiOw=='),
(17, 'Альфа', '16:00:00', 'Зал 1', 100, 'a:1:{i:0;s:1:\"6\";}', 'a:1:{i:0;s:1:\"6\";}', 'czoyMTQ6Imh0dHBzOi8vYXBpLnFyc2VydmVyLmNvbS92MS9jcmVhdGUtcXItY29kZS8/c2l6ZT00MDB4NDAwJmRhdGE90J3QsCDRhNC40LvRjNC8OiDQkNC70YzRhNCwJTBB0KDRj9C0OiA2INCc0LXRgdGC0L46IDYKJTBB0JIg0LfQsNC70LU6INCX0LDQuyAxJTBB0J3QsNGH0LDQu9C+INGB0LXQsNC90YHQsDogMTY6MDAlMEHQodGC0L7QuNC80L7RgdGC0Yw6IDEwMCDRgNGD0LHQu9C10LkiOw==');

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
