-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2025 at 12:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('677aa37e45e7f', '677aa37e46227'),
('677aa37e46fb8', '677aa37e47281'),
('677aa37e4876b', '677aa37e48fa2'),
('677ab64d772eb', '677ab64d77783'),
('677ab64d78d08', '677ab64d78ff4'),
('677ab64d7a320', '677ab64d7a5f6'),
('677b4924192c6', '677b49241975f'),
('677b49241ae1c', '677b49241b150'),
('677b49241c689', '677b49241cf61'),
('677b4a86295c1', '677b4a8629aa2'),
('677b4a862abbd', '677b4a862aeec'),
('677b4a862cac7', '677b4a862d36f');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('fzalakbar25@gmail.com', '677ab5ee1cc88', 12, 3, 3, 0, '2025-01-05 16:43:12'),
('fzalakbar25@gmail.com', '677aa32fa183a', 6, 3, 2, 1, '2025-01-06 02:54:29'),
('saya@gmail.com', '677aa32fa183a', 6, 3, 2, 1, '2025-01-06 03:00:33'),
('saya@gmail.com', '677ab5ee1cc88', 12, 3, 3, 0, '2025-01-06 03:01:29'),
('admin@admin.com', '677b47fd1ef81', 2, 3, 1, 2, '2025-01-06 03:08:36'),
('fzalakbar25@gmail.com', '677b47fd1ef81', -3, 3, 0, 3, '2025-01-06 03:09:13'),
('admin@admin.com', '677b49f14a574', -3, 3, 0, 3, '2025-01-06 10:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('677aa37e45e7f', '3', '677aa37e46226'),
('677aa37e45e7f', '2', '677aa37e46227'),
('677aa37e45e7f', '1', '677aa37e46228'),
('677aa37e45e7f', '4', '677aa37e46229'),
('677aa37e46fb8', '1', '677aa37e47281'),
('677aa37e46fb8', '11', '677aa37e47283'),
('677aa37e46fb8', '111', '677aa37e47284'),
('677aa37e46fb8', '2', '677aa37e47285'),
('677aa37e4876b', 'dan yap', '677aa37e48fa2'),
('677aa37e4876b', 'ril', '677aa37e48fa4'),
('677aa37e4876b', 'amasing', '677aa37e48fa5'),
('677aa37e4876b', 'mumet coeg', '677aa37e48fa6'),
('677ab64d772eb', '1941', '677ab64d7777f'),
('677ab64d772eb', '1944', '677ab64d77782'),
('677ab64d772eb', '1945', '677ab64d77783'),
('677ab64d772eb', '1235', '677ab64d77784'),
('677ab64d78d08', 'adit', '677ab64d78ff0'),
('677ab64d78d08', 'ayah adid', '677ab64d78ff2'),
('677ab64d78d08', 'ibu adid', '677ab64d78ff3'),
('677ab64d78d08', 'pembuat sepeda', '677ab64d78ff4'),
('677ab64d7a320', '5', '677ab64d7a5f6'),
('677ab64d7a320', '2', '677ab64d7a5f8'),
('677ab64d7a320', '3', '677ab64d7a5f9'),
('677ab64d7a320', '4', '677ab64d7a5fa'),
('677b4924192c6', 'Bangkok', '677b49241975f'),
('677b4924192c6', 'Bekasi', '677b492419760'),
('677b4924192c6', 'Blitar', '677b492419761'),
('677b4924192c6', 'Manila', '677b492419762'),
('677b49241ae1c', 'Asia, Afrika, dan Amerika Selatan', '677b49241b150'),
('677b49241ae1c', 'Asia, Eropa, dan Amerika Utara', '677b49241b151'),
('677b49241ae1c', 'Afrika, Australia, dan Amerika Utara', '677b49241b152'),
('677b49241ae1c', 'Asia, Afrika, dan Eropa', '677b49241b153'),
('677b49241c689', 'Samudra Atlantic', '677b49241cf5e'),
('677b49241c689', 'Samudra Brantas', '677b49241cf5f'),
('677b49241c689', 'Samudra Hindia', '677b49241cf60'),
('677b49241c689', 'Samudra Pasifik', '677b49241cf61'),
('677b4a86295c1', 'Oskadon', '677b4a8629aa1'),
('677b4a86295c1', 'Oksigen', '677b4a8629aa2'),
('677b4a86295c1', 'Oksida', '677b4a8629aa3'),
('677b4a86295c1', 'Osmium', '677b4a8629aa4'),
('677b4a862abbd', 'Bekasi', '677b4a862aee9'),
('677b4a862abbd', 'Merkirius', '677b4a862aeeb'),
('677b4a862abbd', 'mars', '677b4a862aeec'),
('677b4a862abbd', 'venus', '677b4a862aeed'),
('677b4a862cac7', 'Energi suara', '677b4a862d36f'),
('677b4a862cac7', 'Energi listrik', '677b4a862d370'),
('677b4a862cac7', 'Energi Mahkluk halus', '677b4a862d371'),
('677b4a862cac7', 'Energi cakra', '677b4a862d372');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('677aa32fa183a', '677aa37e45e7f', '1+1', 4, 1),
('677aa32fa183a', '677aa37e46fb8', '2-1', 4, 2),
('677aa32fa183a', '677aa37e4876b', 'phpmemeq', 4, 3),
('677ab5ee1cc88', '677ab64d772eb', 'tahun kemerdekaan indonesia', 4, 1),
('677ab5ee1cc88', '677ab64d78d08', 'penemu sepeda', 4, 2),
('677ab5ee1cc88', '677ab64d7a320', 'tanggal lahir adid', 4, 3),
('677b47fd1ef81', '677b4924192c6', 'Apa ibu kota Thailand?', 4, 1),
('677b47fd1ef81', '677b49241ae1c', 'Sebutkan tiga benua yang dilintasi oleh garis Khatulistiwa!\r\n', 4, 2),
('677b47fd1ef81', '677b49241c689', 'Apa nama samudra terbesar di dunia?\r\n', 4, 3),
('677b49f14a574', '677b4a86295c1', 'Apa unsur kimia dengan simbol \"O\"?', 4, 1),
('677b49f14a574', '677b4a862abbd', 'Planet apa yang dikenal sebagai \"Planet Merah\"?\r\n', 4, 2),
('677b49f14a574', '677b4a862cac7', 'Apa bentuk energi yang dihasilkan oleh getaran?\r\n', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('677aa32fa183a', 'Math', 3, 0, 3, 1, '', 'Matematika', '2025-01-05 15:20:15'),
('677ab5ee1cc88', 'Sejarah', 4, 4, 3, 1, '', 'prasejarah', '2025-01-05 16:40:14'),
('677b47fd1ef81', 'Geografi', 4, 1, 3, 1, 'soal geografi', '#geografi', '2025-01-06 03:03:25'),
('677b49f14a574', 'Sains', 4, 1, 3, 1, 'Soal Quiz Sains', '#Sains', '2025-01-06 03:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('fzalakbar25@gmail.com', 15, '2025-01-06 03:09:13'),
('saya@gmail.com', 15, '2025-01-06 03:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL,
  `jawaban_benar` varchar(255) NOT NULL,
  `poin` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `tingkat_kesulitan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `pertanyaan`, `jawaban`, `jawaban_benar`, `poin`, `kategori`, `tingkat_kesulitan`) VALUES
(1, 'Apa ibukota Indonesia?', 'Jakarta,Bandung,Surabaya,Medan', 'Jakarta', 10, 'Geografi', 'Mudah'),
(2, 'Siapa penemu gravitasi?', 'Albert Einstein,Isaac Newton,Galileo Galilei,Nikola Tesla', 'Isaac Newton', 15, 'Sains', 'Sedang');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Aditya', 'M', 'adt', 'fzalakbar25@gmail.com', 258469994, '827ccb0eea8a706c4c34a16891f84e7b'),
('Testingdit', 'M', 'adid', 'saya@gmail.com', 85551746254, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
