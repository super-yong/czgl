-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-06-23 14:09:27
-- 服务器版本： 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(4) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `password`) VALUES
(1, '11', '11');

-- --------------------------------------------------------

--
-- 表的结构 `buy_ticket`
--

CREATE TABLE `buy_ticket` (
  `ticket_id` int(10) NOT NULL,
  `from_sp` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `to_sp` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `time_arrive` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `time_leave` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `price` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `sit_num` int(10) NOT NULL,
  `date` varchar(30) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `buy_ticket`
--

INSERT INTO `buy_ticket` (`ticket_id`, `from_sp`, `to_sp`, `time_arrive`, `time_leave`, `price`, `user_id`, `sit_num`, `date`) VALUES
(1, '广州', '梅州', '12', '32', 43, 123, 34, '12-02-6'),
(2, '广州', '梅州', '16点', '11点20分', 50, 1, 11, '2016-12-23'),
(3, 'gz', 'mz', '16点', '11点20分', 50, 7, -5, '2016-12-23'),
(4, 'gz', 'mz', '16点', '11点20分', 50, 7, -4, '2016-12-23'),
(5, 'gz', 'mz', '16点', '11点20分', 50, 7, -3, '2016-12-23'),
(6, 'gz', 'mz', '16点', '11点20分', 50, 7, -2, '2016-12-23'),
(7, 'gz', 'mz', '16点', '11点20分', 50, 7, 15, '2016-12-23'),
(8, 'gz', 'mz', '16点', '11点20分', 50, 7, 16, '2016-12-23'),
(9, 'gz', 'mz', '16点', '11点20分', 50, 7, 17, '2016-12-23'),
(10, '广州', '梅州', '16点', '11点20分', 50, 7, 11, '2016-12-23'),
(11, '广州', '梅州', '16点', '11点20分', 50, 7, 12, '2016-12-23'),
(12, '广州', '梅州', '16点', '11点20分', 50, 7, 13, '2016-12-23');

-- --------------------------------------------------------

--
-- 表的结构 `car`
--

CREATE TABLE `car` (
  `car_id` int(10) NOT NULL,
  `from_sp` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `to_sp` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `number` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `car`
--

INSERT INTO `car` (`car_id`, `from_sp`, `to_sp`, `number`) VALUES
(0, 'gz', 'mz', 50),
(123, '广州', '梅州', 50);

-- --------------------------------------------------------

--
-- 表的结构 `price`
--

CREATE TABLE `price` (
  `p_id` int(10) NOT NULL,
  `rest` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `date` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `time_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `price`
--

INSERT INTO `price` (`p_id`, `rest`, `price`, `date`, `time_id`) VALUES
(1, 40, 90, '2016-06-09', 6),
(2, 40, 130, '2016-06-13', 7),
(3, 40, 126, '2016-06-27', 8),
(4, 40, 50, '2016-06-14', 9),
(5, 40, 50, '16-12-56', 17),
(6, 40, 50, '2016-12-23', 18),
(7, 40, 50, '2016-12-23', 19),
(8, 37, 50, '2016-12-23', 20),
(9, 40, 233, '2016-12-23', 21),
(10, 40, 50, '2016-12-23', 22),
(11, 33, 50, '2016-12-23', 23);

-- --------------------------------------------------------

--
-- 表的结构 `time_table`
--

CREATE TABLE `time_table` (
  `time_id` int(10) NOT NULL,
  `car_id` int(10) NOT NULL,
  `time_leave` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `time_arrive` varchar(30) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `time_table`
--

INSERT INTO `time_table` (`time_id`, `car_id`, `time_leave`, `time_arrive`) VALUES
(6, 123, '11点20分', '16点'),
(7, 123, '11点20分', '16点'),
(8, 123, '11点20分', '16点'),
(9, 123, '11点20分', '16点'),
(10, 123, '11点20分', '16点'),
(11, 123, '11点20分', '16点'),
(12, 123, '11点20分', '16点'),
(13, 123, '11点20分', '16点'),
(14, 123, '11点20分', '16点'),
(15, 123, '11点20分', '16点'),
(16, 123, '11点20分', '16点'),
(17, 123, '11点20分', '16点'),
(18, 123, '11点20分', '16点'),
(19, 123, '11点20分', '16点'),
(20, 123, '11点20分', '16点'),
(21, 123, '11点20分', '16点'),
(22, 123, '11点20分', '16点'),
(23, 0, '11点20分', '16点');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `id_card` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `name`, `password`, `telephone`, `id_card`) VALUES
(6, 'dds', '123456', '15599944055555', 'ksksks'),
(7, 'dds', '123456', '15599944055555', 'ksksks'),
(8, 'dds', '123456', '155999343', 'ksksks'),
(9, 'dds', '123456', '1559993432', 'ksksks'),
(10, 'dds', '123456', '1559993432', 'ksksks'),
(11, 'admin', 'admin', '21', '21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `buy_ticket`
--
ALTER TABLE `buy_ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD UNIQUE KEY `ticket_id` (`ticket_id`),
  ADD KEY `ticket_id_2` (`ticket_id`),
  ADD KEY `ticket_id_3` (`ticket_id`),
  ADD KEY `User_id` (`user_id`),
  ADD KEY `Price` (`price`),
  ADD KEY `Price_2` (`price`),
  ADD KEY `Price_3` (`price`),
  ADD KEY `from_sp` (`from_sp`),
  ADD KEY `sit_num` (`sit_num`),
  ADD KEY `User_id_2` (`user_id`),
  ADD KEY `Price_4` (`price`),
  ADD KEY `time_leave` (`time_leave`),
  ADD KEY `time_arrive` (`time_arrive`),
  ADD KEY `to_sp` (`to_sp`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_id` (`car_id`),
  ADD KEY `car_id_2` (`car_id`),
  ADD KEY `number` (`number`),
  ADD KEY `to_sp` (`to_sp`),
  ADD KEY `from_sp` (`from_sp`),
  ADD KEY `car_id_3` (`car_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`time_id`),
  ADD KEY `time_arrive` (`time_arrive`),
  ADD KEY `time_leave` (`time_leave`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `time_id` (`time_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `buy_ticket`
--
ALTER TABLE `buy_ticket`
  MODIFY `ticket_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `price`
--
ALTER TABLE `price`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `time_table`
--
ALTER TABLE `time_table`
  MODIFY `time_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
