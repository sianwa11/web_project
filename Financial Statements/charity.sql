-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2018 at 11:28 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charity`
--

-- --------------------------------------------------------

--
-- Table structure for table `bemefactor`
--

CREATE TABLE `bemefactor` (
  `user_id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `beneficiary_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bemefactor`
--

INSERT INTO `bemefactor` (`user_id`, `company`, `amount`, `beneficiary_id`) VALUES
(101, 'CompanyA', 95000, 101),
(102, 'CompanyA', 90000, 102),
(103, 'CompanyB', 95000, 103),
(104, 'CompanyB', 100000, 103);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `user_id` int(11) NOT NULL,
  `stories` longtext NOT NULL,
  `location` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `family_status` varchar(100) NOT NULL,
  `school` varchar(255) NOT NULL DEFAULT '1',
  `is_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`user_id`, `stories`, `location`, `age`, `family_status`, `school`, `is_status`) VALUES
(101, 'I am a prospective postgraduate student. I have recently graduated from Anyuniversity, where I was awarded a first-class honours degree in Anysubject.\r\n\r\nHaving completed my undergraduate degree, I am now keen to continue my studies. I would like to further specialise in Anysubject, with the ultimate intention of carrying out a research-based PhD.\r\n\r\nUnfortunately, I cannot currently afford to pay my own way through a postgraduate course. Despite being the recipient of a scholarship from Anyuniversity, the combined cost of tuition fees and living expenses is simply unworkable.\r\n\r\nI am therefore writing to ask whether you would consider offering some form of sponsorship to help me complete my course. I understand that you have existing links with Anyuniversity, and that you have previously, and very generously, sponsored students through postgraduate study.\r\n\r\nMy academic record is excellent, and I have been lucky enough to receive excellent references from my undergraduate tutors. My final marks were amongst the best in my graduating year. I intend to devote myself entirely to my postgraduate study, and would eventually like to forge a career in the field.', 'Bungoma', 17, 'struggling', 'Butere girls', 1),
(102, 'I am a prospective postgraduate student. I have recently graduated from Anyuniversity, where I was awarded a first-class honours degree in Anysubject.\r\n\r\nHaving completed my undergraduate degree, I am now keen to continue my studies. I would like to further specialise in Anysubject, with the ultimate intention of carrying out a research-based PhD.\r\n\r\nUnfortunately, I cannot currently afford to pay my own way through a postgraduate course. Despite being the recipient of a scholarship from Anyuniversity, the combined cost of tuition fees and living expenses is simply unworkable.\r\n\r\nI am therefore writing to ask whether you would consider offering some form of sponsorship to help me complete my course. I understand that you have existing links with Anyuniversity, and that you have previously, and very generously, sponsored students through postgraduate study.\r\n\r\nMy academic record is excellent, and I have been lucky enough to receive excellent references from my undergraduate tutors. My final marks were amongst the best in my graduating year. I intend to devote myself entirely to my postgraduate study, and would eventually like to forge a career in the field.', 'Kiambu', 19, 'struggling', 'Thika boys', 1),
(103, 'I am a prospective postgraduate student. I have recently graduated from Anyuniversity, where I was awarded a first-class honours degree in Anysubject.\r\n\r\nHaving completed my undergraduate degree, I am now keen to continue my studies. I would like to further specialise in Anysubject, with the ultimate intention of carrying out a research-based PhD.\r\n\r\nUnfortunately, I cannot currently afford to pay my own way through a postgraduate course. Despite being the recipient of a scholarship from Anyuniversity, the combined cost of tuition fees and living expenses is simply unworkable.\r\n\r\nI am therefore writing to ask whether you would consider offering some form of sponsorship to help me complete my course. I understand that you have existing links with Anyuniversity, and that you have previously, and very generously, sponsored students through postgraduate study.\r\n\r\nMy academic record is excellent, and I have been lucky enough to receive excellent references from my undergraduate tutors. My final marks were amongst the best in my graduating year. I intend to devote myself entirely to my postgraduate study, and would eventually like to forge a career in the field.', 'Kisumu', 19, 'Struggling', 'Kisumu Mixed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id` int(11) NOT NULL,
  `year` varchar(1000) NOT NULL,
  `no_of_beneficiaries` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`id`, `year`, `no_of_beneficiaries`) VALUES
(1, '2014', 10),
(2, '2015', 20),
(3, '2016', 30),
(4, '2017', 40),
(5, '2014', 10),
(6, '2015', 20),
(7, '2016', 30),
(8, '2017', 40);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `is_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `phone_number`, `gender`, `user_type_id`, `is_status`) VALUES
(101, 'jkingori@gmail.com', '123456', '0788904930', 'female', 2, 1),
(102, 'fh.halid@gmail.com', '123456', '0738921395', 'male', 2, 1),
(103, 'b.ea@gmail.com', '123456', '0788903245', 'male', 2, 1),
(104, 'f.kiaji@gmail.com', '123456', '0788903482', 'female', 2, 1),
(105, 'fr.angel@gmail.com', '123456', '0755890432', 'male', 2, 1),
(106, 'Wings@gmail.com', '123456', '0722709435', 'male', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL,
  `description` varchar(20) NOT NULL,
  `is_satus` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `description`, `is_satus`) VALUES
(1, 'Benefactor', 1),
(2, 'Beneficiary', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bemefactor`
--
ALTER TABLE `bemefactor`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `beneficiary_id` (`beneficiary_id`);

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bemefactor`
--
ALTER TABLE `bemefactor`
  ADD CONSTRAINT `bemefactor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `bemefactor_ibfk_2` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiaries` (`user_id`);

--
-- Constraints for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD CONSTRAINT `beneficiaries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
