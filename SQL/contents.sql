-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-12-29 01:30:11
-- 伺服器版本： 10.10.2-MariaDB-log
-- PHP 版本： 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `webproject`
--

-- --------------------------------------------------------

--
-- 資料表結構 `contents`
--

CREATE TABLE `foodcontents` (
  `contentid` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `timestrap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attribution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `contents`
--
ALTER TABLE `foodcontents`
  ADD PRIMARY KEY (`contentid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contents`
--
ALTER TABLE `foodcontents`
  MODIFY `contentid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
