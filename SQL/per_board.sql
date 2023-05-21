-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-12-29 12:22:42
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
-- 資料庫： `per_board`
--
CREATE DATABASE IF NOT EXISTS `per_board` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `per_board`;

-- --------------------------------------------------------

--
-- 資料表結構 `mesboard`
--

CREATE TABLE `mesboard` (
  `id` int(11) NOT NULL,
  `mesUser` varchar(50) NOT NULL,
  `title` varchar(30) NOT NULL,
  `messages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `mesboard`
--

TRUNCATE TABLE `mesboard`;
--
-- 傾印資料表的資料 `mesboard`
--

INSERT INTO `mesboard` (`id`, `mesUser`, `title`, `messages`) VALUES
(115, 'res12344', 'hello ', '2021.05.29 hi'),
(116, 'res12344', 'sunny', 'today is hot'),
(117, 'res12344', '測試', 'test'),
(118, '123514', 'hi', '你好'),
(119, '123514', '第四篇文章', 'message 4'),
(120, '123514', '標題一', '吉來看看像⋯簡直啦我，上來幾天謝謝我，覺得老想種是沒有選擇，沒問題我不知前道出，欸的那把自我也是。我有一上一⋯一下爽歡明，子跟樂大像也不是非的地。甜厲害的這時候也是，在一起蓋新居以說電的但反應，一下點冷小太陽，的機會親是我不行你這樣⋯次的更好然。\r\n\r\n維持讓我，聞謝謝旅。黑暗奇妙。\r\n\r\n好像第一果有，的氣我只誕快樂頭點的活。\r\n\r\n好感他有知道因為這⋯雖然震驚每天，我好那時眼前是可是最的弟弟，嗎我讚小的可能會。'),
(121, '123', '2022.09.28', '一行文字'),
(122, '123', '22', '長時間不舒服溫柔會比是什麼，上的事。這也是部份這超好笑可資訊，中有下手遺書，妳啊啊啊辛苦今天，人的都很做的人的送了吧一堆人，得不能到後來看，歡恐怖作會再想的主管也沒。哈哈下去是還我忘記，很喜歡。\r\n\r\n慢慢回望不可很開，怎麼你們今天唱。我沒快樂真尋找看下官出今天微。直接神其實，知不覺最愛⋯還在想攤主演員加幾乎，這麼我不我喜定有送的我就是，學有窩要後就音，以下樣表單。\r\n\r\n實不的也大概會，可以好是是有，什麼這表示下⋯不就剛開始以醒來，跟我那種直接，事的然是。'),
(123, 'myuser', '你猜我是誰', '我是人'),
(124, 'user', 'title1', 'content1');

-- --------------------------------------------------------

--
-- 資料表結構 `resmesboard`
--

CREATE TABLE `resmesboard` (
  `id` int(11) NOT NULL,
  `resid` int(11) NOT NULL,
  `resname` varchar(30) NOT NULL,
  `resmes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `resmesboard`
--

TRUNCATE TABLE `resmesboard`;
--
-- 傾印資料表的資料 `resmesboard`
--

INSERT INTO `resmesboard` (`id`, `resid`, `resname`, `resmes`) VALUES
(20, 116, 'utr0012', 'hi 123'),
(21, 115, 'res12344', 'hello 123'),
(24, 115, '123514', 'yes and no'),
(25, 121, '456', 'abcdefghjiklmn'),
(26, 124, 'user', '12344'),
(27, 124, '123', '123'),
(28, 115, '123', '123'),
(29, 116, '123', '22'),
(30, 118, '123', '1');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `account` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `user`
--

TRUNCATE TABLE `user`;
--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `account`, `password`) VALUES
(7, 'res12344', 'sd036521478'),
(8, 'utr0012', 'qwer1234'),
(9, '123514', '123'),
(10, '123', '123'),
(11, '456', '456'),
(12, 'myuser', '0000'),
(13, 'user', '1234'),
(14, 'ac', '123');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `mesboard`
--
ALTER TABLE `mesboard`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `resmesboard`
--
ALTER TABLE `resmesboard`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`account`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mesboard`
--
ALTER TABLE `mesboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `resmesboard`
--
ALTER TABLE `resmesboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
