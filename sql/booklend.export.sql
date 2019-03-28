-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2019 at 08:30 PM
-- Server version: 10.3.13-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booklend`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id_book` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` bigint(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id_book`, `name`, `isbn`) VALUES
(1, 'scelerisque lorem ipsum sodales purus in molestie tortor nibh', 55554716146),
(2, 'enim diam vel arcu. Curabitur ut odio vel est tempor', 4674497139),
(3, 'iaculis', 15549905827),
(4, 'Fusce diam nunc ullamcorper eu euismod', 69609624590),
(5, 'semper. Nam tempor diam dictum sapien. Aenean massa. Integer', 13950353592),
(6, 'dolor dapibus gravida. Aliquam tincidunt', 98332012364),
(7, 'consequat enim diam vel arcu. Curabitur', 57583810106),
(8, 'elementum lorem ut aliquam iaculis lacus pede sagittis augue', 56424553299),
(9, 'feugiat nec diam. Duis mi enim condimentum eget', 245099145),
(10, 'a tortor. Nunc commodo auctor velit. Aliquam', 51491060258),
(11, 'cursus luctus ipsum leo elementum sem', 47076959793),
(12, 'neque. In ornare sagittis felis.', 62475101653),
(13, 'nulla at sem molestie sodales. Mauris blandit enim consequat purus.', 97834402951),
(14, 'nunc sed pede.', 3627397260),
(15, 'laoreet lectus quis massa. Mauris', 11614894426),
(16, 'cursus. Nunc mauris elit dictum', 3745892812),
(17, 'Vestibulum ante ipsum primis', 70471053381),
(18, 'consequat dolor vitae', 20515006192),
(19, 'eu dolor egestas rhoncus. Proin nisl sem consequat nec mollis', 91625535127),
(20, 'neque. Morbi quis urna. Nunc quis arcu vel', 83853799882),
(21, 'Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum', 23146697960),
(22, 'ut sem. Nulla interdum. Curabitur dictum.', 66040778991),
(23, 'in molestie tortor nibh sit amet', 76206354271),
(24, 'aliquet lobortis nisi nibh lacinia orci consectetuer euismod', 73917366808),
(25, 'suscipit est ac facilisis facilisis magna tellus faucibus', 92909628801),
(26, 'sem.', 54023179056),
(27, 'non luctus sit amet faucibus ut nulla. Cras eu tellus', 27719652137),
(28, 'odio vel est tempor', 7098469028),
(29, 'nunc risus', 43497716418),
(30, 'lobortis', 24248923441),
(31, 'hendrerit consectetuer cursus et magna. Praesent interdum', 54743412316),
(32, 'vel venenatis vel', 30309427696),
(33, 'dolor nonummy ac feugiat non lobortis quis pede. Suspendisse', 97313258682),
(34, 'vulputate', 86194696151),
(35, 'fermentum fermentum arcu. Vestibulum', 27124324156),
(36, 'erat.', 10913033833),
(37, 'nisi. Mauris', 70568516414),
(38, 'pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus', 91400486699),
(39, 'Donec non justo.', 14358251523),
(40, 'sit', 16410472153),
(41, 'Quisque fringilla euismod enim. Etiam gravida', 65860498415),
(42, 'metus. Vivamus euismod urna.', 91536769035),
(43, 'sociosqu ad litora torquent per conubia nostra per', 44197223712),
(44, 'tellus eu augue porttitor interdum.', 53330220113),
(45, 'magna sed dui. Fusce aliquam enim nec tempus scelerisque lorem', 23449630478),
(46, 'neque.', 25874145773),
(47, 'nulla. Cras', 32467015090),
(48, 'iaculis', 71087956892),
(49, 'justo. Praesent luctus. Curabitur egestas', 56471948349),
(50, 'scelerisque mollis. Phasellus libero mauris aliquam', 57179325317),
(51, 'et ipsum cursus vestibulum. Mauris magna. Duis dignissim', 78961380310),
(52, 'risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt', 2311453392),
(53, 'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper velit', 31996895217),
(54, 'Maecenas mi felis', 21879991207),
(55, 'tempor erat neque non quam. Pellentesque', 59637596767),
(56, 'sed sapien.', 44463579240),
(57, 'semper tellus id nunc interdum feugiat. Sed nec metus facilisis', 31758391679),
(58, 'fringilla. Donec feugiat metus sit amet ante. Vivamus', 78892076517),
(59, 'orci quis lectus. Nullam suscipit', 29359265227),
(60, 'amet ultricies sem magna nec quam. Curabitur', 6141061547),
(61, 'bibendum sed', 19265946642),
(62, 'ridiculus mus.', 37684932557),
(63, 'quis turpis vitae purus gravida sagittis. Duis', 60944674044),
(64, 'id mollis', 13894468665),
(65, 'odio. Nam interdum enim non nisi. Aenean', 10676126265),
(66, 'est. Nunc laoreet', 73335713757),
(67, 'iaculis', 41684865028),
(68, 'quis tristique ac eleifend vitae erat. Vivamus nisi. Mauris', 87413141141),
(69, 'iaculis lacus', 5411753272),
(70, 'senectus et netus et malesuada fames ac turpis', 79383186481),
(71, 'ornare libero at auctor ullamcorper nisl arcu iaculis enim', 96059202990),
(72, 'nisi. Cum sociis natoque penatibus', 16277580182),
(73, 'posuere vulputate lacus. Cras interdum. Nunc', 32879396151),
(74, 'enim nec tempus scelerisque', 50177735993),
(75, 'lobortis augue scelerisque mollis.', 12622859990),
(76, 'egestas. Aliquam fringilla cursus purus. Nullam', 90096929285),
(77, 'odio. Aliquam vulputate ullamcorper magna. Sed eu', 22679704375),
(78, 'pede malesuada vel venenatis vel faucibus id', 86232799261),
(79, 'lectus pede ultrices a auctor non feugiat nec', 9332095610),
(80, 'odio. Etiam', 60194321485),
(81, 'vitae posuere at velit.', 67344750852),
(82, 'ipsum leo elementum', 69221977973),
(83, 'Proin dolor. Nulla semper tellus id nunc interdum', 85883301234),
(84, 'lobortis quam a felis ullamcorper viverra. Maecenas iaculis', 26444978001),
(85, 'a arcu. Sed', 65857236592),
(86, 'ac feugiat', 10600859627),
(87, 'dui augue', 79287175594),
(88, 'sapien. Cras dolor dolor tempus non lacinia at iaculis', 15605588529),
(89, 'habitant', 4271709415),
(90, 'in hendrerit consectetuer cursus et', 10558710575),
(91, 'adipiscing lacus. Ut nec urna et arcu imperdiet', 73673883071),
(92, 'Duis a', 63374488431),
(93, 'mollis lectus pede et risus. Quisque libero lacus varius et', 84639216807),
(94, 'lorem luctus ut pellentesque eget dictum placerat', 84616740411),
(95, 'consectetuer cursus et magna. Praesent', 20959842465),
(96, 'augue scelerisque mollis. Phasellus libero mauris aliquam eu', 94009952658),
(97, 'porttitor vulputate posuere vulputate lacus. Cras interdum. Nunc sollicitudin', 22460034998),
(98, 'diam. Pellentesque habitant morbi tristique senectus et netus et', 15622882230),
(99, 'penatibus et magnis dis parturient', 61054097698),
(100, 'Mauris blandit enim consequat purus. Maecenas', 44998369256);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id_reservation`, `id_user`, `id_book`, `date_from`, `date_to`) VALUES
(2, 1, 2, '2019-02-17', '2019-08-24'),
(3, 1, 10, '2020-02-18', '2018-04-13'),
(4, 1, 21, '2018-12-02', '2020-03-12'),
(5, 1, 18, '2019-03-05', '2019-08-01'),
(6, 1, 54, '2018-04-26', '2019-12-13'),
(9, 1, 8, '2009-10-11', '2010-11-12'),
(10, 2, 12, '2019-02-11', '2019-07-05'),
(11, 3, 13, '2019-02-17', '2019-08-24'),
(12, 2, 14, '2020-02-18', '2018-04-13'),
(13, 5, 22, '2018-12-02', '2020-03-12'),
(14, 5, 23, '2019-03-05', '2019-08-01'),
(15, 7, 55, '2018-04-26', '2019-12-13'),
(16, 8, 70, '2019-02-11', '2019-07-05'),
(17, 9, 72, '2019-02-17', '2019-08-24'),
(18, 10, 80, '2020-02-18', '2018-04-13'),
(19, 12, 91, '2018-12-02', '2020-03-12'),
(20, 4, 28, '2019-03-05', '2019-08-01'),
(21, 20, 74, '2018-04-26', '2019-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `surname`) VALUES
(1, 'Gloria', 'Guthrie'),
(2, 'Roth', 'Livingston'),
(3, 'Brandon', 'Best'),
(4, 'Guy', 'Madden'),
(5, 'Morgan', 'Eaton'),
(6, 'Hedley', 'Gay'),
(7, 'Breanna', 'Cotton'),
(8, 'Aurelia', 'Daniels'),
(9, 'Darryl', 'Wong'),
(10, 'Kermit', 'Browning'),
(11, 'Lynn', 'Dawson'),
(12, 'Roary', 'Knapp'),
(13, 'Christine', 'Woodward'),
(14, 'Felicia', 'Flores'),
(15, 'Rhona', 'Farmer'),
(16, 'Theodore', 'Byers'),
(17, 'Reed', 'Santos'),
(18, 'Ria', 'Newton'),
(19, 'Simon', 'Moore'),
(20, 'Amir', 'Edwards'),
(21, 'Audrey', 'Holcomb'),
(22, 'Zenia', 'Golden'),
(23, 'Reese', 'Rodriguez'),
(24, 'Sydnee', 'Ochoa'),
(25, 'Maggy', 'Mullins'),
(26, 'Deborah', 'Mayo'),
(27, 'Susan', 'Allison'),
(28, 'Elijah', 'Snow'),
(29, 'Adam', 'Brooks'),
(30, 'Hyacinth', 'Chambers'),
(31, 'Jason', 'Dillard'),
(32, 'Nadine', 'Melendez'),
(33, 'Evangeline', 'Moreno'),
(34, 'Leandra', 'Pacheco'),
(35, 'Martina', 'Burke'),
(36, 'Ignacia', 'Steele'),
(37, 'Mira', 'Velazquez'),
(38, 'Renee', 'Chandler'),
(39, 'Whoopi', 'Brooks'),
(40, 'Yeo', 'Higgins'),
(41, 'Shaine', 'Faulkner'),
(42, 'Halla', 'Barron'),
(43, 'Alexandra', 'Boone'),
(44, 'Nayda', 'Holmes'),
(45, 'Camden', 'Parker'),
(46, 'Quinlan', 'Hays'),
(47, 'Sarah', 'Gardner'),
(48, 'Samson', 'Horton'),
(49, 'Merritt', 'Lara'),
(50, 'Nora', 'Holmes'),
(51, 'Boris', 'Clayton'),
(52, 'Alma', 'Puckett'),
(53, 'Iris', 'Rutledge'),
(54, 'Faith', 'Monroe'),
(55, 'Duncan', 'Long'),
(56, 'Madeson', 'Richardson'),
(57, 'Althea', 'Cole'),
(58, 'Noah', 'Ingram'),
(59, 'Octavius', 'Britt'),
(60, 'Medge', 'Payne'),
(61, 'Amelia', 'Cantu'),
(62, 'Jason', 'Morrow'),
(63, 'Gareth', 'Pratt'),
(64, 'Austin', 'Mccormick'),
(65, 'Alyssa', 'Marshall'),
(66, 'Lucas', 'Brennan'),
(67, 'Quinn', 'Austin'),
(68, 'Sierra', 'Hess'),
(69, 'Tallulah', 'Burt'),
(70, 'Rinah', 'Duran'),
(71, 'Glenna', 'Baldwin'),
(72, 'Sade', 'Holder'),
(73, 'Ruby', 'Frost'),
(74, 'Deacon', 'Goff'),
(75, 'Sybill', 'Lynn'),
(76, 'Nina', 'Schneider'),
(77, 'Geoffrey', 'Reyes'),
(78, 'Ryan', 'Vance'),
(79, 'Perry', 'Baird'),
(80, 'Rafael', 'Mitchell'),
(81, 'Kristen', 'Powell'),
(82, 'Rajah', 'Terrell'),
(83, 'Latifah', 'Patrick'),
(84, 'Tamekah', 'Emerson'),
(85, 'Demetrius', 'Salas'),
(86, 'Noelani', 'Schultz'),
(87, 'Susan', 'Hendrix'),
(88, 'Brynne', 'Taylor'),
(89, 'Violet', 'Price'),
(90, 'Petra', 'Morton'),
(91, 'Bevis', 'Sims'),
(92, 'Bree', 'Osborne'),
(93, 'Adam', 'Cabrera'),
(94, 'Derek', 'Weiss'),
(95, 'Nora', 'Hewitt'),
(96, 'Beverly', 'Schroeder'),
(97, 'Harriet', 'Quinn'),
(98, 'Casey', 'Floyd'),
(99, 'Christian', 'Buckley'),
(100, 'Ava', 'Wolfe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id_book`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_book` (`id_book`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_reservation_book` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservation_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
