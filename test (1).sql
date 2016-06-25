-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2016-06-24 19:50:12
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
(1, 'admin', 'admin');

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
(1001, '广州', '梅州', 60),
(1002, '广州', '梅州', 60),
(1003, '广州', '梅州', 60),
(1004, '广州', '阳江', 60),
(1005, '广州', '阳江', 60),
(1006, '广州', '阳江', 60),
(1007, '广州', '佛山', 60),
(1008, '广州', '佛山', 60),
(1009, '广州', '佛山', 60);

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
(19, 60, 160, '2016-06-24', 26),
(20, 60, 170, '2016-06-24', 27),
(21, 60, 160, '2016-06-24', 28),
(22, 60, 88, '2016-06-24', 29),
(23, 60, 88, '2016-06-24', 30),
(24, 60, 88, '2016-06-24', 31),
(25, 60, 23, '2016-06-24', 32),
(26, 60, 23, '2016-06-24', 33),
(27, 60, 23, '2016-06-24', 34),
(28, 60, 160, '2016-06-25', 26),
(29, 60, 170, '2016-06-25', 27),
(30, 60, 160, '2016-06-25', 28),
(31, 60, 88, '2016-06-25', 29),
(32, 60, 88, '2016-06-25', 30),
(33, 60, 88, '2016-06-25', 31),
(34, 60, 23, '2016-06-25', 32),
(35, 60, 23, '2016-06-25', 33),
(36, 60, 23, '2016-06-25', 34),
(37, 60, 160, '2016-06-26', 26),
(38, 60, 170, '2016-06-26', 27),
(39, 60, 160, '2016-06-26', 28),
(40, 60, 88, '2016-06-26', 29),
(41, 60, 88, '2016-06-26', 30),
(42, 60, 88, '2016-06-26', 31),
(43, 60, 23, '2016-06-26', 32),
(44, 60, 23, '2016-06-26', 33),
(45, 60, 23, '2016-06-26', 34),
(46, 60, 160, '2016-06-27', 26),
(47, 60, 170, '2016-06-27', 27),
(48, 60, 160, '2016-06-27', 28),
(49, 60, 88, '2016-06-27', 29),
(50, 60, 88, '2016-06-27', 30),
(51, 60, 88, '2016-06-27', 31),
(52, 60, 23, '2016-06-27', 32),
(53, 60, 23, '2016-06-27', 33),
(54, 60, 23, '2016-06-27', 34);

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
(23, 0, '11点20分', '16点'),
(24, 43, '7点30分', '23点20分'),
(25, 345, '8点40分', '12点30分'),
(26, 1001, '7点30分', '13点30分'),
(27, 1002, '11点20分', '17点30分'),
(28, 1003, '17点10分', '23点20分'),
(29, 1004, '7点30分', '11点30分'),
(30, 1005, '11点20分', '14点30分'),
(31, 1006, '15点20分', '20点10分'),
(32, 1009, '7点30分', '8点50分'),
(33, 1008, '8点40分', '10点10分'),
(34, 1007, '11点20分', '12点50分');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `id_card` varchar(30) COLLATE utf8mb4_bin NOT NULL
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
(11, 'admin', 'admin', '21', '21'),
(12, 'admin', 'admin', '18813752720', '21d12d1223ws2'),
(13, 'admin', 'admin', '18813752720', '21d12d1223ws2'),
(14, 'admin', 'admin', '18813752720', '21d12d1223ws2'),
(15, 'admin', 'admin', '18813752720', '21d12d1223ws2'),
(16, 'dds', '123456', '1559993432', 'ksksks'),
(17, 'ss', '123456', '1559993432', 'ksksks'),
(18, 'l1d是', '123456', '1559993432', 'ksksks'),
(19, 'l1d是', '123456', '1559993432', 'ksksks'),
(20, 'l1d是', '123456', '1559993432', 'ksksks'),
(21, 'l1d是', '123456', '1559993432', 'ksksks'),
(22, '是', '123456', '1559993432', 'ksksks'),
(23, '是', '123456', '1559993432', 'ksksks'),
(24, 'dds', '123456', '1559993432', 'ksksks'),
(25, '刘', '123456', '1559993432', 'ksksks'),
(26, '刘', '123456', '1559993432', 'ksksks');

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
  MODIFY `ticket_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `price`
--
ALTER TABLE `price`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- 使用表AUTO_INCREMENT `time_table`
--
ALTER TABLE `time_table`
  MODIFY `time_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
