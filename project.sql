-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 11:50 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- tạo bảng admin
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- chèn dữ liệu bảng admin
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'nam3523018@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- tạo bảng đáp án
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- chèn dữ liệu bảng đáp án 
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48713'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1f97');

-- --------------------------------------------------------

--
-- tạo bảng phản hồi
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- chèn dữ liệu bảng phản hồi
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'nam', 'namhp123@gmail.com', 'ltw', 'good', '2015-06-19', '09:22:15pm');

-- --------------------------------------------------------

--
-- tạo bảng lịch sử 
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- chèn dữ liệu bảng lịch sử
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `right`, `wrong`, `date`) VALUES
('namhp123@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2015-06-23 09:31:26'),
('tiephap123@gmail.com', '558920ff906b8', 4, 2, 2, 0, '2015-06-23 13:32:09'),
('abc@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2015-06-23 14:33:04'),
('linhhp123@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2015-06-23 14:49:39');

-- --------------------------------------------------------

--
-- tạo bảng đáp án 
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- chèn dữ liệu bảng đáp án
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', '2', '55892169d2efc'),
('55892169bf6a7', '3', '55892169d2f05'),
('55892169bf6a7', '4', '55892169d2f09'),
('55892169bf6a7', '5', '55892169d2f0c'),
('5589216a3646e', '4', '5589216a48713'),
('5589216a3646e', '5', '5589216a4871a'),
('5589216a3646e', '6', '5589216a4871f'),
('5589216a3646e', '7', '5589216a48722'),
('558922117fcef', '6', '5589221195248'),
('558922117fcef', '7', '558922119525a'),
('558922117fcef', '8', '5589221195265'),
('558922117fcef', '9', '5589221195270'),
('55892211e44d5', '8', '55892211f1f97'),
('55892211e44d5', '9', '55892211f1fa7'),
('55892211e44d5', '10', '55892211f1fb4'),
('55892211e44d5', '11', '55892211f1fbd');

-- --------------------------------------------------------

--
-- tạo bảng câu hỏi
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- chèn dữ liệu bảng câu hỏi
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', '1+1=?', 4, 1),
('558920ff906b8', '5589216a3646e', '2+2=?', 4, 2),
('558921841f1ec', '558922117fcef', '3+3=?', 4, 1),
('558921841f1ec', '55892211e44d5', '4+4=?', 4, 2);

-- --------------------------------------------------------

--
-- tạo bảng gói câu hỏi
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- chèn dữ liệu bảng gói câu hỏi
--

INSERT INTO `quiz` (`eid`, `title`, `right`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('558920ff906b8', 'phép toán đơn giản', 2, 1, 2, 5, '', 'dongian', '2015-06-23 09:03:59'),
('558921841f1ec', 'phép toán đơn giản 2', 2, 1, 2, 5, '', 'dongian2', '2015-06-23 09:06:12');

-- --------------------------------------------------------

--
-- tạo bảng xếp hạng
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- chèn dữ liệu bảng xếp hạng
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('namhp123@gmail.com', 9, '2015-06-24 03:22:38'),
('linhhp123@gmail.com', 8, '2015-06-23 14:49:39');

-- --------------------------------------------------------

--
-- tạo bảng user
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- chèn dữ liệu bảng user
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('linh', 'F', 'đại học hàng hải', 'linhhp123@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('nam', 'M', 'đại học hàng hải', 'namhp123@gmail.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e'),
('abc', 'F', 'đại học hàng hải', 'abc@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Tien', 'M', 'đại học hàng hải', 'tiephap123@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e');

--
-- 
--

--
-- set khóa chính cho bảng admin
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- set khóa chính cho bảng user
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- 
--

--
-- set tự động tăng ID cho bảng admin
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
