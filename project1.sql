-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2023 at 11:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(10) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `role`) VALUES
('jh@gmail.com', 'jh', 'head'),
('t1@gmail.com', 't1', 'admin'),
('t2@gmail.com', 't2', 'admin'),
('t3@gmail.com', 't3', 'admin');

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
('649fede32dba0', '649fede32f01b'),
('649fede340e59', '649fede341d80'),
('649fede34691c', '649fede34840c'),
('649feefe82f8a', '649feefe84172'),
('649feefe8a764', '649feefe8b5f0'),
('649feefe8f977', '649feefe90700'),
('649feefe95b23', '649feefe966c8'),
('649fef983f62f', '649fef98404fe'),
('649fef9844562', '649fef9845183');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
('hariharan@gmail.com', '649fed48ebbb2', 0, 3, 1, 2, '2023-07-01 09:21:14'),
('hariharan@gmail.com', '649fef59a13dd', 10, 2, 2, 0, '2023-07-01 09:21:39');

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
('649fede32dba0', 'Attenuation', '649fede32f016'),
('649fede32dba0', 'Signal', '649fede32f01b'),
('649fede32dba0', 'Modulation', '649fede32f01c'),
('649fede32dba0', 'Amplification', '649fede32f01d'),
('649fede340e59', 'Baseband', '649fede341d80'),
('649fede340e59', 'Bandwidth', '649fede341d86'),
('649fede340e59', 'Broadband', '649fede341d87'),
('649fede340e59', 'Range', '649fede341d88'),
('649fede34691c', 'Transformer', '649fede348405'),
('649fede34691c', 'Modem', '649fede34840b'),
('649fede34691c', 'Transducer', '649fede34840c'),
('649fede34691c', 'Repeater', '649fede34840d'),
('649feefe82f8a', 'NN region', '649feefe84169'),
('649feefe82f8a', 'EE region', '649feefe84170'),
('649feefe82f8a', 'FC region', '649feefe84172'),
('649feefe82f8a', 'NA region', '649feefe84173'),
('649feefe8a764', '75,000 Da and 50,000 Da', '649feefe8b5e8'),
('649feefe8a764', '75,000 Da and 25,000 Da', '649feefe8b5ee'),
('649feefe8a764', '25,000 Da and 50,000 Da', '649feefe8b5ef'),
('649feefe8a764', '50,000 Da and 25,000 Da', '649feefe8b5f0'),
('649feefe8f977', 'IgE', '649feefe906fa'),
('649feefe8f977', 'IgM', '649feefe906ff'),
('649feefe8f977', 'IgG', '649feefe90700'),
('649feefe8f977', 'IgA', '649feefe90702'),
('649feefe95b23', 'IgE', '649feefe966c3'),
('649feefe95b23', 'IgA', '649feefe966c6'),
('649feefe95b23', 'IgD', '649feefe966c7'),
('649feefe95b23', 'IgG', '649feefe966c8'),
('649fef983f62f', 'Dennis Ritchie', '649fef98404f8'),
('649fef983f62f', 'Bjarne Stroustrup', '649fef98404fc'),
('649fef983f62f', 'Guido van Rossum', '649fef98404fd'),
('649fef983f62f', 'James Gosling', '649fef98404fe'),
('649fef9844562', ' JVM', '649fef984517c'),
('649fef9844562', 'JDK', '649fef9845183'),
('649fef9844562', 'JIT', '649fef9845185'),
('649fef9844562', 'JRE', '649fef9845186');

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
('649fed48ebbb2', '649fede32dba0', 'What is the electrical analogue of the information produced by the source?', 4, 1),
('649fed48ebbb2', '649fede340e59', 'What refers to the band of frequencies of the original signal?', 4, 2),
('649fed48ebbb2', '649fede34691c', 'Name the device that converts energy from one form to another', 4, 3),
('649fee250db1b', '649feefe82f8a', ' Which region of an antibody is also called a ‘Fragment of Crystallization’?', 4, 1),
('649fee250db1b', '649feefe8a764', 'What is the approximate weight of Heavy and Light chains respectively?', 4, 2),
('649fee250db1b', '649feefe8f977', 'Which of the following antibodies constitute the largest proportion of the total antibodies present?', 4, 3),
('649fee250db1b', '649feefe95b23', 'Which of the following is the smallest antibody?', 4, 4),
('649fef59a13dd', '649fef983f62f', 'Who invented Java Programming?', 4, 1),
('649fef59a13dd', '649fef9844562', ' Which component is used to compile, debug and execute the java programs?', 4, 2);

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
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) DEFAULT NULL,
  `payment` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`, `email`, `payment`) VALUES
('649fed48ebbb2', 'Jee-physics', 2, 1, 3, 5, 'ALL THE BEST! ATTEND ALL THE QUESTIONS!', '', '2023-07-01 09:20:58', 't1@gmail.com', 'Payment Success'),
('649fee250db1b', 'Neet - Biology', 2, 0, 4, 10, 'ALL THE BEST! ATTEND ALL THE QUESTIONS!', '', '2023-07-01 09:13:09', 't2@gmail.com', ''),
('649fef59a13dd', 'Java Programming', 5, 1, 2, 3, 'ALL THE BEST! DO WELL', '', '2023-07-01 09:20:22', 't3@gmail.com', 'Payment Success');

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
('hariharan@gmail.com', 10, '2023-07-01 09:21:39');

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
('Hariharan K', 'M', 'VIT', 'hariharan@gmail.com', 8754699878, '0e23acc40af892013e0276ac38e8a63f'),
('Jayasri S', 'F', 'VIT', 'jayasri@gmail.com', 9080546785, '08d705ebdb54d63071b4229cb76d19c9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
