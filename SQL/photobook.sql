-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-12-28 17:19:27
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
-- 資料表結構 `photobook`
--

CREATE TABLE `photobook` (
  `bookid` tinyint(3) UNSIGNED NOT NULL COMMENT '書籍ID',
  `bookname` varchar(255) NOT NULL COMMENT '書籍名稱',
  `author` varchar(13) NOT NULL COMMENT '作者',
  `publisher` varchar(255) NOT NULL COMMENT '出版社',
  `createtime` date NOT NULL COMMENT '建立時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `photobook`
--

INSERT INTO `photobook` (`bookid`, `bookname`, `author`, `publisher`, `createtime`) VALUES
(1, '台灣當代 - 視覺藝術創作\r\n', '陳傳發', '雪嶺文化事業有限公司\r\n', '2016-04-01'),
(2, '台灣攝影\r\n', '張才', '台大攝影季刊\r\n', '2016-04-01'),
(3, '台灣攝影<季刊>\r\n', '張才', '台灣攝影季刊\r\n', '2016-04-01'),
(4, '台灣攝影<季刊>第四號\r\n', '張才', '台灣攝影季刊\r\n', '2016-04-01'),
(5, '10', '查無資料', '志達正片\r\n', '2016-04-01'),
(6, '台灣首屆攝影典藏 - 作品展專輯\r\n', '查無資料', '攝影典藏 典藏攝影\r\n', '2016-04-01'),
(7, '台灣攝影<季刊>別冊I\r\n', '張才', '台灣攝影季刊\r\n', '2016-04-01'),
(8, '台灣攝影<季刊>III\r\n', '張才', '台灣攝影季刊\r\n', '2016-04-01'),
(9, '富士軟片/相紙第一集 - 影比賽得獎作品專輯\r\n', '富士', ' 恆昶實業公司\r\n', '2016-04-01');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `photobook`
--
ALTER TABLE `photobook`
  ADD PRIMARY KEY (`bookid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `photobook`
--
ALTER TABLE `photobook`
  MODIFY `bookid` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '書籍ID', AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
