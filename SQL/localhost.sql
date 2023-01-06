-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2023-01-05 15:27:37
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
-- 資料庫： `board`
--
DROP DATABASE IF EXISTS `board`;
CREATE DATABASE IF NOT EXISTS `board` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `board`;

-- --------------------------------------------------------

--
-- 資料表結構 `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `articles`
--

TRUNCATE TABLE `articles`;
--
-- 傾印資料表的資料 `articles`
--

INSERT INTO `articles` (`id`, `name`, `title`, `content`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '', 'ddwdw', 'dwwwwddd', '2022-12-07 05:59:54', '2022-12-07 05:59:54', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `comments`
--

TRUNCATE TABLE `comments`;
-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `users`
--

TRUNCATE TABLE `users`;
--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'herny', '123@gmail.com', '$2y$10$v/Oi.KpPvhAP8hDxxNvRRu9eyTQEzb/y5VhMl.J3jYqLhjw/8JGt6'),
(2, 'user', 'test@gmail.com', '$2y$10$YV.dvNn/V176avjKQLAqFugx0hx9ugmb9Ip5D/yweEEajMYNoWBNC'),
(3, 'res', 'test@gmail.com', '$2y$10$yndMmczVGIWU3gdQdkrPZua3xDSNWMhQ21JHc5TKGDAiCv/K1rkS2');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `comments`
--
ALTER TABLE `comments`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `article_id` (`article_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- 資料表的限制式 `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
--
-- 資料庫： `class`
--
DROP DATABASE IF EXISTS `class`;
CREATE DATABASE IF NOT EXISTS `class` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci;
USE `class`;

-- --------------------------------------------------------

--
-- 資料表結構 `scorelist`
--

CREATE TABLE `scorelist` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `cID` tinyint(2) UNSIGNED ZEROFILL NOT NULL,
  `course` enum('國文','英文','數學') NOT NULL DEFAULT '國文',
  `score` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `scorelist`
--

TRUNCATE TABLE `scorelist`;
--
-- 傾印資料表的資料 `scorelist`
--

INSERT INTO `scorelist` (`id`, `cID`, `course`, `score`) VALUES
(1, 01, '國文', 82),
(2, 02, '國文', 68),
(3, 03, '國文', 78),
(4, 04, '國文', 85),
(5, 05, '國文', 80),
(6, 06, '國文', 76),
(7, 07, '國文', 90),
(8, 08, '國文', 87),
(9, 09, '國文', 78),
(10, 10, '國文', 65),
(11, 01, '英文', 67),
(12, 02, '英文', 87),
(13, 03, '英文', 88),
(14, 04, '英文', 92),
(15, 05, '英文', 55),
(16, 06, '英文', 62),
(17, 07, '英文', 65),
(18, 08, '英文', 40),
(19, 09, '英文', 89),
(20, 10, '英文', 64),
(21, 01, '數學', 87),
(22, 02, '數學', 52),
(23, 03, '數學', 76),
(24, 04, '數學', 56),
(25, 05, '數學', 72),
(26, 06, '數學', 80),
(27, 07, '數學', 38),
(28, 08, '數學', 68),
(29, 09, '數學', 90),
(30, 10, '數學', 61);

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `cID` tinyint(2) UNSIGNED ZEROFILL NOT NULL,
  `cName` varchar(20) NOT NULL,
  `cSex` enum('F','M') NOT NULL DEFAULT 'F',
  `cBirthday` date NOT NULL,
  `cEmail` varchar(100) DEFAULT NULL,
  `cPhone` varchar(50) DEFAULT NULL,
  `cAddr` varchar(255) DEFAULT NULL,
  `cHeight` tinyint(3) UNSIGNED DEFAULT NULL,
  `cWeight` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `students`
--

TRUNCATE TABLE `students`;
--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`cID`, `cName`, `cSex`, `cBirthday`, `cEmail`, `cPhone`, `cAddr`, `cHeight`, `cWeight`) VALUES
(01, '簡奉君', 'F', '1978-04-04', 'elven@superstar.com', '0922988876', '台北市濟洲北路12號', 160, 49),
(02, '黃靖輪', 'M', '1987-07-01', 'jinglun@superstar.com', '0918181111', '台北市敦化南路93號5樓', 175, 72),
(03, '潘四敬', 'M', '1987-08-11', 'sugie@superstar.com', '0914530768', '台北市中央路201號7樓', 162, 65),
(04, '賴勝恩', 'M', '1984-06-20', 'shane@superstar.com', '0946820035', '台北市建國路177號6樓', 178, 72),
(05, '黎楚寧', 'F', '1988-02-15', 'ivy@superstar.com', '0920981230', '台北市忠孝東路520號6樓', 164, 45),
(06, '蔡中穎', 'M', '1987-05-05', 'zhong@superstar.com', '0951983366', '台北市三民路1巷10號', 172, 75),
(07, '徐佳螢', 'F', '1985-08-30', 'lala@superstar.com', '0918123456', '台北市仁愛路100號', 158, 56),
(08, '林雨媗', 'F', '1986-12-10', 'crystal@superstar.com', '0907408965', '台北市民族路204號', 166, 48),
(09, '林心儀', 'F', '1981-12-01', 'peggy@superstar.com', '0916456723', '台北市建國北路10號', 168, 50),
(10, '王燕博', 'M', '1993-08-10', 'albert@superstar.com', '0918976588', '台北市北環路2巷80號', 169, 68);

-- --------------------------------------------------------

--
-- 資料表結構 `students_1`
--

CREATE TABLE `students_1` (
  `cID` tinyint(3) UNSIGNED NOT NULL,
  `cName` varchar(20) NOT NULL,
  `cSex` enum('F','M') NOT NULL DEFAULT 'F',
  `cBirthday` date NOT NULL,
  `cEmail` varchar(100) DEFAULT NULL,
  `cPhone` varchar(50) DEFAULT NULL,
  `cAddr` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `students_1`
--

TRUNCATE TABLE `students_1`;
--
-- 傾印資料表的資料 `students_1`
--

INSERT INTO `students_1` (`cID`, `cName`, `cSex`, `cBirthday`, `cEmail`, `cPhone`, `cAddr`) VALUES
(1, '張惠玲', 'F', '1987-04-04', 'elven@superstar.com', '0922988876', '台北市濟洲北路12號'),
(2, '彭建志', 'M', '1987-07-01', 'jinglun@superstar.com', '0918181111', '台北市敦化南路93號5樓'),
(3, '謝耿鴻', 'M', '1987-08-11', 'sugie@superstar.com', '0914530768', '台北市中央路201號7樓'),
(4, '蔣志明', 'M', '1984-06-20', 'shane@superstar.com', '0946820035', '台北市建國路177號6樓'),
(5, '王佩珊', 'F', '1988-02-15', 'ivy@superstar.com', '0920981230', '台北市忠孝東路520號6樓'),
(6, '林志宇', 'M', '1987-05-05', 'zhong@superstar.com', '0951983366', '台北市三民路1巷10號'),
(7, '李曉薇', 'F', '1985-08-30', 'lala@superstar.com', '0918123456', '台北市仁愛路100號'),
(8, '賴秀英', 'F', '1986-12-10', 'crystal@superstar.com', '0907408965', '台北市民族路204號'),
(9, '張雅琪', 'F', '1988-12-01', 'peggy@superstar.com', '0916456723', '台北市建國北路10號'),
(10, '許朝元', 'M', '1993-08-10', 'albert@superstar.com', '0918976588', '台北市北環路2巷80號');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `scorelist`
--
ALTER TABLE `scorelist`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`cID`);

--
-- 資料表索引 `students_1`
--
ALTER TABLE `students_1`
  ADD PRIMARY KEY (`cID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `scorelist`
--
ALTER TABLE `scorelist`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
  MODIFY `cID` tinyint(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students_1`
--
ALTER TABLE `students_1`
  MODIFY `cID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 資料庫： `guestbook`
--
DROP DATABASE IF EXISTS `guestbook`;
CREATE DATABASE IF NOT EXISTS `guestbook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `guestbook`;

-- --------------------------------------------------------

--
-- 資料表結構 `guestbook`
--

CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `guestbook`
--

TRUNCATE TABLE `guestbook`;
--
-- 傾印資料表的資料 `guestbook`
--

INSERT INTO `guestbook` (`id`, `name`, `comment`) VALUES
(1, '7', '04');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 資料庫： `mesboard`
--
DROP DATABASE IF EXISTS `mesboard`;
CREATE DATABASE IF NOT EXISTS `mesboard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `mesboard`;

-- --------------------------------------------------------

--
-- 資料表結構 `mes`
--

CREATE TABLE `mes` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `messagers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `mes`
--

TRUNCATE TABLE `mes`;
--
-- 傾印資料表的資料 `mes`
--

INSERT INTO `mes` (`id`, `title`, `messagers`) VALUES
(26, 'dwdw', 'dwdw'),
(27, 'dwdw', 'dwdw');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `user`
--

TRUNCATE TABLE `user`;
--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `user`, `password`) VALUES
(1, '321', '321312'),
(5, '1123', '123');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mes`
--
ALTER TABLE `mes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 資料庫： `messageboard`
--
DROP DATABASE IF EXISTS `messageboard`;
CREATE DATABASE IF NOT EXISTS `messageboard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `messageboard`;

-- --------------------------------------------------------

--
-- 資料表結構 `articles`
--

CREATE TABLE `articles` (
  `id` int(32) UNSIGNED NOT NULL COMMENT '文章編號',
  `title` varchar(64) NOT NULL COMMENT '文章標題',
  `content` text NOT NULL COMMENT '文章內容',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '創建/修改資料'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `articles`
--

TRUNCATE TABLE `articles`;
--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章編號', AUTO_INCREMENT=2;
--
-- 資料庫： `per_board`
--
DROP DATABASE IF EXISTS `per_board`;
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
--
-- 資料庫： `test`
--
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- 資料庫： `todolist`
--
DROP DATABASE IF EXISTS `todolist`;
CREATE DATABASE IF NOT EXISTS `todolist` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `todolist`;

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2022_12_18_083636_create_tasks_table', 2),
(4, '2022_12_18_090606_add_is_completed_to_tasks_table', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `password_resets`
--

TRUNCATE TABLE `password_resets`;
-- --------------------------------------------------------

--
-- 資料表結構 `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `tasks`
--

TRUNCATE TABLE `tasks`;
--
-- 傾印資料表的資料 `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `user_id`, `created_at`, `updated_at`, `is_completed`) VALUES
(1, '121', 1, '2022-12-18 00:57:07', '2022-12-18 01:32:53', 0),
(2, '12111', 1, '2022-12-18 01:17:20', '2022-12-18 01:32:54', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `users`
--

TRUNCATE TABLE `users`;
--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnn', 'test@gmail.com', NULL, '$2y$10$VAGXALZbPQGTe/.xxRJrvOQx9xcItlk.jVlJc6SgbMuiRG2HkT73a', NULL, '2022-12-18 00:56:53', '2022-12-18 00:56:53');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- 資料庫： `tourism`
--
DROP DATABASE IF EXISTS `tourism`;
CREATE DATABASE IF NOT EXISTS `tourism` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `tourism`;

-- --------------------------------------------------------

--
-- 資料表結構 `area`
--

CREATE TABLE `area` (
  `areaID` int(2) NOT NULL COMMENT '區域編號',
  `areaName` varchar(10) NOT NULL COMMENT '分區名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `area`
--

TRUNCATE TABLE `area`;
--
-- 傾印資料表的資料 `area`
--

INSERT INTO `area` (`areaID`, `areaName`) VALUES
(1, '北部'),
(2, '中部'),
(3, '南部'),
(4, '西部'),
(5, '東部'),
(6, '離島');

-- --------------------------------------------------------

--
-- 資料表結構 `food`
--

CREATE TABLE `food` (
  `foodID` int(2) NOT NULL COMMENT '美食編號',
  `areaID` int(1) NOT NULL COMMENT '區域編號',
  `storeName` varchar(10) NOT NULL COMMENT '店名',
  `storeadress` varchar(20) DEFAULT NULL COMMENT '店面地址',
  `foodName` varchar(10) NOT NULL COMMENT '美食名稱',
  `foodprice` int(4) DEFAULT NULL COMMENT '價格',
  `fInstrution` varchar(255) DEFAULT NULL COMMENT '美食介紹'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `food`
--

TRUNCATE TABLE `food`;
--
-- 傾印資料表的資料 `food`
--

INSERT INTO `food` (`foodID`, `areaID`, `storeName`, `storeadress`, `foodName`, `foodprice`, `fInstrution`) VALUES
(1, 1, '天津蔥抓餅', '台北市大安區永康街6巷1號', '天津蔥抓餅', 25, '天津蔥抓餅就能讓你感受看倒還好一嚐驚人，老師傅將餅鏟的恰當好處，麵皮金黃酥脆不焦黑，只能說不愧是永康街，實力過硬，連蔥抓餅也硬是比別人好吃十倍。'),
(2, 1, '陳三鼎', '台北市中正區羅斯福路三段316巷4號', '青蛙撞奶', 40, '據說是台灣青蛙撞奶的創始人，無奈太多人抄襲，因此自己將招牌改成青蛙鮮奶，黑糖味重，口味偏甜，許多觀光客慕名而來，巴伯Ｑ奶名氣沒那麼大，但在學生間好評率高，鮮奶味濃，而另一邊的墾丁蛋蛋ㄉㄨㄞ奶粉圓Ｑ彈也有不少擁戴者。');

-- --------------------------------------------------------

--
-- 資料表結構 `hostel`
--

CREATE TABLE `hostel` (
  `reserveRoomID` int(2) NOT NULL COMMENT '訂房網編號',
  `areaID` int(1) NOT NULL,
  `reverseRoomName` varchar(32) DEFAULT NULL COMMENT '訂房網名稱',
  `reverseRoomUrl` varchar(255) NOT NULL COMMENT '訂房網站網址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `hostel`
--

TRUNCATE TABLE `hostel`;
--
-- 傾印資料表的資料 `hostel`
--

INSERT INTO `hostel` (`reserveRoomID`, `areaID`, `reverseRoomName`, `reverseRoomUrl`) VALUES
(1, 1, 'Booking.com', 'https://www.booking.com/');

-- --------------------------------------------------------

--
-- 資料表結構 `scenicspot`
--

CREATE TABLE `scenicspot` (
  `ScenicSpotID` int(2) NOT NULL COMMENT '景點編號',
  `userID` int(32) NOT NULL COMMENT '使用者編號',
  `areaID` int(1) NOT NULL COMMENT '區域編號',
  `adress` varchar(30) DEFAULT NULL COMMENT '景點地址',
  `ScenicSpotName` varchar(20) NOT NULL COMMENT '景點名稱',
  `introdution` varchar(255) DEFAULT NULL COMMENT '景點介紹'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `scenicspot`
--

TRUNCATE TABLE `scenicspot`;
--
-- 傾印資料表的資料 `scenicspot`
--

INSERT INTO `scenicspot` (`ScenicSpotID`, `userID`, `areaID`, `adress`, `ScenicSpotName`, `introdution`) VALUES
(1, 1, 2, '台中市清水區', '高美濕地', '高美濕地雖然面積不大，但是由於泥質及沙質灘地兼具，加上與河口沼澤地帶鑲嵌在一起，所以孕育了豐富又複雜的濕地生態，以及目前所知全臺灣最大族群的雲林莞草區，形成乾濕相間伴有植物生長的複雜地形，因為地形多變，生態種類亦相當複雜，主要種類為鳥類、魚類、蟹類及其他無脊椎類等生物；每年秋冬之際，都會有大批的候鳥前往作客，不管是短暫的休息，或是駐足過冬，都為高美濕地增添了不同的生態風貌，更成為賞鳥人士的新據點。'),
(2, 2, 1, '新北市雙溪區', '三貂親水公園', '三貂親水公園就在貂山古道入口不遠處，園區於民國94年竣工，周圍山林綠樹環伺，綠意盎然，藍天白雲佐以徐徐的微風，令人感覺通體舒暢。 園區溪水潺潺，草色青青，旁有農家梯田層層，零星的房舍，純樸優雅，是俯拾寧靜的好去處。'),
(3, 3, 3, '台南市安平區國勝路82號', '安平古堡', '荷蘭人於西元1624年，在安平建造了臺灣第一座城堡「熱蘭遮城」，也就是現在的安平古堡，這裡曾是荷蘭人統治的中樞，更是對外貿易的總樞紐，原本的建築格局分為方形內城與長方形外城。西元1661年，鄭成功來台驅荷後，將此地改名為安平，故熱蘭遮城也稱為「王城」或「臺灣城」，俗稱安平古堡，是臺灣最早的一座城池。'),
(4, 4, 5, '花蓮縣秀林鄉富世291號', '太魯閣國家公園-太魯閣遊客中心', '瀑布是太魯閣國家公園重要的景觀，從太魯閣口到文山間，瀑布相當多，最著名的要屬白楊瀑布、銀帶瀑布、長春瀑布、綠水瀑布等，還有許多不知名的小流瀑。\r\n\r\n燕子口和九曲洞，是太魯閣峽谷最讓人心動的自然奇觀，也是峽谷最窄的兩段，臨溪側闢有人行步道供遊客漫步欣賞。燕子口對岸大理石峭壁上可見到許多小洞穴，每當春夏之際，常有小雨燕和洋燕在峭壁間穿梭鳴唱，或在洞穴內築巢，故而得名燕子口。而九曲洞「如腸之迴、如河之曲」的隧洞景觀，遊客可沿迴轉曲折的半明半暗路線欣賞峽谷風光。'),
(5, 5, 4, '彰化縣彰化市卦山路8-1號', '八卦山', '八卦山大佛風景區是全台灣知名的觀光景點，具備景色優美及朝聖地標，是一處具文化藝術、生態、知性的多元文化旅遊景點。此外華陽公園內的吊橋，因為巨大的晃動幅度被稱為「情人橋」，非常適合情侶去那邊逛逛增進感情喔！'),
(6, 6, 6, '', '小琉球', '小琉球特有的石灰岩洞地形，洞穴溝谷最適合尋幽訪勝，遠眺夢幻珊瑚礁海岸，聆聽波浪拍岸的聲音。\r\n最令人留戀的潔白細緻貝殼沙灘點綴著弧形海岸，冰涼、清澈見底的海水，讓人難忘！\r\n\r\n小琉球擁有豐富的潮間帶物種與珊瑚資源，外型奇妙的螃蟹、小蝦、海膽、海星、海森、海蝸牛等生物，天氣晴朗的退潮時刻可以來一趟潮間帶生態探索之旅，離島特殊美食風味：鬼頭刀炒飯、鮪魚蓋飯、飛魚卵香腸，台灣吃不到的特殊風味；琉球在地及東港新鮮直送的海產。');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`areaID`);

--
-- 資料表索引 `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodID`);

--
-- 資料表索引 `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`reserveRoomID`);

--
-- 資料表索引 `scenicspot`
--
ALTER TABLE `scenicspot`
  ADD PRIMARY KEY (`ScenicSpotID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `area`
--
ALTER TABLE `area`
  MODIFY `areaID` int(2) NOT NULL AUTO_INCREMENT COMMENT '區域編號', AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `food`
--
ALTER TABLE `food`
  MODIFY `foodID` int(2) NOT NULL AUTO_INCREMENT COMMENT '美食編號', AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hostel`
--
ALTER TABLE `hostel`
  MODIFY `reserveRoomID` int(2) NOT NULL AUTO_INCREMENT COMMENT '訂房網編號', AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `scenicspot`
--
ALTER TABLE `scenicspot`
  MODIFY `ScenicSpotID` int(2) NOT NULL AUTO_INCREMENT COMMENT '景點編號', AUTO_INCREMENT=7;
--
-- 資料庫： `webdata`
--
DROP DATABASE IF EXISTS `webdata`;
CREATE DATABASE IF NOT EXISTS `webdata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `webdata`;

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
-- 資料表新增資料前，先清除舊資料 `photobook`
--

TRUNCATE TABLE `photobook`;
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
--
-- 資料庫： `webplatform`
--
DROP DATABASE IF EXISTS `webplatform`;
CREATE DATABASE IF NOT EXISTS `webplatform` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `webplatform`;
--
-- 資料庫： `webproject`
--
DROP DATABASE IF EXISTS `webproject`;
CREATE DATABASE IF NOT EXISTS `webproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `webproject`;

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `admin`
--

TRUNCATE TABLE `admin`;
-- --------------------------------------------------------

--
-- 資料表結構 `area`
--

CREATE TABLE `area` (
  `areaID` int(2) NOT NULL COMMENT '區域編號',
  `areaName` varchar(10) NOT NULL COMMENT '分區名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `area`
--

TRUNCATE TABLE `area`;
--
-- 傾印資料表的資料 `area`
--

INSERT INTO `area` (`areaID`, `areaName`) VALUES
(2, '中部'),
(1, '北部'),
(3, '南部'),
(5, '東部'),
(4, '西部'),
(6, '離島');

-- --------------------------------------------------------

--
-- 資料表結構 `articles`
--

CREATE TABLE `articles` (
  `articleID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `userIcon` varchar(40) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `articleType` int(11) NOT NULL DEFAULT 1,
  `articleContent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `articles`
--

TRUNCATE TABLE `articles`;
-- --------------------------------------------------------

--
-- 資料表結構 `articlestype`
--

CREATE TABLE `articlestype` (
  `typeID` int(11) NOT NULL,
  `typeName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `articlestype`
--

TRUNCATE TABLE `articlestype`;
--
-- 傾印資料表的資料 `articlestype`
--

INSERT INTO `articlestype` (`typeID`, `typeName`) VALUES
(1, '全部'),
(2, '美食'),
(3, '住宿'),
(4, '景點');

-- --------------------------------------------------------

--
-- 資料表結構 `contents`
--

CREATE TABLE `contents` (
  `contentid` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `timestrap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attribution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `contents`
--

TRUNCATE TABLE `contents`;
-- --------------------------------------------------------

--
-- 資料表結構 `food`
--

CREATE TABLE `food` (
  `foodID` int(2) NOT NULL COMMENT '美食編號',
  `areaID` int(1) NOT NULL COMMENT '區域編號',
  `storeName` varchar(10) NOT NULL COMMENT '店名',
  `storeadress` varchar(20) DEFAULT NULL COMMENT '店面地址',
  `foodName` varchar(10) NOT NULL COMMENT '美食名稱',
  `foodprice` int(4) DEFAULT NULL COMMENT '價格',
  `fInstrution` varchar(255) DEFAULT NULL COMMENT '美食介紹'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `food`
--

TRUNCATE TABLE `food`;
--
-- 傾印資料表的資料 `food`
--

INSERT INTO `food` (`foodID`, `areaID`, `storeName`, `storeadress`, `foodName`, `foodprice`, `fInstrution`) VALUES
(1, 1, '天津蔥抓餅', '台北市大安區永康街6巷1號', '天津蔥抓餅', 25, '天津蔥抓餅就能讓你感受看倒還好一嚐驚人，老師傅將餅鏟的恰當好處，麵皮金黃酥脆不焦黑，只能說不愧是永康街，實力過硬，連蔥抓餅也硬是比別人好吃十倍。'),
(2, 1, '陳三鼎', '台北市中正區羅斯福路三段316巷4號', '青蛙撞奶', 40, '據說是台灣青蛙撞奶的創始人，無奈太多人抄襲，因此自己將招牌改成青蛙鮮奶，黑糖味重，口味偏甜，許多觀光客慕名而來，巴伯Ｑ奶名氣沒那麼大，但在學生間好評率高，鮮奶味濃，而另一邊的墾丁蛋蛋ㄉㄨㄞ奶粉圓Ｑ彈也有不少擁戴者。');

-- --------------------------------------------------------

--
-- 資料表結構 `foodcontents`
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
-- 資料表新增資料前，先清除舊資料 `foodcontents`
--

TRUNCATE TABLE `foodcontents`;
-- --------------------------------------------------------

--
-- 資料表結構 `hostel`
--

CREATE TABLE `hostel` (
  `reserveRoomID` int(2) NOT NULL COMMENT '訂房網編號',
  `areaID` int(1) NOT NULL,
  `reverseRoomName` varchar(32) DEFAULT NULL COMMENT '訂房網名稱',
  `reverseRoomUrl` varchar(255) NOT NULL COMMENT '訂房網站網址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `hostel`
--

TRUNCATE TABLE `hostel`;
--
-- 傾印資料表的資料 `hostel`
--

INSERT INTO `hostel` (`reserveRoomID`, `areaID`, `reverseRoomName`, `reverseRoomUrl`) VALUES
(1, 1, 'Booking.com', 'https://www.booking.com/');

-- --------------------------------------------------------

--
-- 資料表結構 `scenicspot`
--

CREATE TABLE `scenicspot` (
  `ScenicSpotID` int(2) NOT NULL COMMENT '景點編號',
  `userID` int(32) NOT NULL COMMENT '使用者編號',
  `areaID` int(1) NOT NULL COMMENT '區域編號',
  `adress` varchar(30) NOT NULL COMMENT '景點地址',
  `ScenicSpotName` varchar(20) NOT NULL COMMENT '景點名稱',
  `introdution` varchar(255) NOT NULL COMMENT '景點介紹'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `scenicspot`
--

TRUNCATE TABLE `scenicspot`;
--
-- 傾印資料表的資料 `scenicspot`
--

INSERT INTO `scenicspot` (`ScenicSpotID`, `userID`, `areaID`, `adress`, `ScenicSpotName`, `introdution`) VALUES
(1, 1, 2, '台中市清水區', '高美濕地', '高美濕地雖然面積不大，但是由於泥質及沙質灘地兼具，加上與河口沼澤地帶鑲嵌在一起，所以孕育了豐富又複雜的濕地生態，以及目前所知全臺灣最大族群的雲林莞草區，形成乾濕相間伴有植物生長的複雜地形，因為地形多變，生態種類亦相當複雜，主要種類為鳥類、魚類、蟹類及其他無脊椎類等生物；每年秋冬之際，都會有大批的候鳥前往作客，不管是短暫的休息，或是駐足過冬，都為高美濕地增添了不同的生態風貌，更成為賞鳥人士的新據點。'),
(2, 2, 1, '新北市雙溪區', '三貂親水公園', '三貂親水公園就在貂山古道入口不遠處，園區於民國94年竣工，周圍山林綠樹環伺，綠意盎然，藍天白雲佐以徐徐的微風，令人感覺通體舒暢。 園區溪水潺潺，草色青青，旁有農家梯田層層，零星的房舍，純樸優雅，是俯拾寧靜的好去處。'),
(3, 3, 3, '台南市安平區國勝路82號', '安平古堡', '荷蘭人於西元1624年，在安平建造了臺灣第一座城堡「熱蘭遮城」，也就是現在的安平古堡，這裡曾是荷蘭人統治的中樞，更是對外貿易的總樞紐，原本的建築格局分為方形內城與長方形外城。西元1661年，鄭成功來台驅荷後，將此地改名為安平，故熱蘭遮城也稱為「王城」或「臺灣城」，俗稱安平古堡，是臺灣最早的一座城池。'),
(4, 4, 5, '花蓮縣秀林鄉富世291號', '太魯閣國家公園-太魯閣遊客中心', '瀑布是太魯閣國家公園重要的景觀，從太魯閣口到文山間，瀑布相當多，最著名的要屬白楊瀑布、銀帶瀑布、長春瀑布、綠水瀑布等，還有許多不知名的小流瀑。\r\n\r\n燕子口和九曲洞，是太魯閣峽谷最讓人心動的自然奇觀，也是峽谷最窄的兩段，臨溪側闢有人行步道供遊客漫步欣賞。燕子口對岸大理石峭壁上可見到許多小洞穴，每當春夏之際，常有小雨燕和洋燕在峭壁間穿梭鳴唱，或在洞穴內築巢，故而得名燕子口。而九曲洞「如腸之迴、如河之曲」的隧洞景觀，遊客可沿迴轉曲折的半明半暗路線欣賞峽谷風光。'),
(5, 5, 4, '彰化縣彰化市卦山路8-1號', '八卦山', '八卦山大佛風景區是全台灣知名的觀光景點，具備景色優美及朝聖地標，是一處具文化藝術、生態、知性的多元文化旅遊景點。此外華陽公園內的吊橋，因為巨大的晃動幅度被稱為「情人橋」，非常適合情侶去那邊逛逛增進感情喔！'),
(6, 6, 6, '', '小琉球', '小琉球特有的石灰岩洞地形，洞穴溝谷最適合尋幽訪勝，遠眺夢幻珊瑚礁海岸，聆聽波浪拍岸的聲音。\r\n最令人留戀的潔白細緻貝殼沙灘點綴著弧形海岸，冰涼、清澈見底的海水，讓人難忘！\r\n\r\n小琉球擁有豐富的潮間帶物種與珊瑚資源，外型奇妙的螃蟹、小蝦、海膽、海星、海森、海蝸牛等生物，天氣晴朗的退潮時刻可以來一趟潮間帶生態探索之旅，離島特殊美食風味：鬼頭刀炒飯、鮪魚蓋飯、飛魚卵香腸，台灣吃不到的特殊風味；琉球在地及東港新鮮直送的海產。');

-- --------------------------------------------------------

--
-- 資料表結構 `spotcontents`
--

CREATE TABLE `spotcontents` (
  `contentid` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `timestrap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attribution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `spotcontents`
--

TRUNCATE TABLE `spotcontents`;
-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL COMMENT '使用者編號',
  `userName` varchar(20) NOT NULL COMMENT '使用者名稱',
  `email` varchar(50) NOT NULL COMMENT '使用者信箱',
  `password` varchar(255) NOT NULL COMMENT '使用者密碼',
  `userIcon` varchar(40) NOT NULL DEFAULT 'resources/image/userIcon/default.png' COMMENT '使用者圖示'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `user`
--

TRUNCATE TABLE `user`;
--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`userID`, `userName`, `email`, `password`, `userIcon`) VALUES
(1, '1', '2', '3', 'resources/image/userIcon/default.png'),
(2, '12', '25', '2', 'resources/image/userIcon/default.png'),
(3, '21', '21', '21', 'resources/image/userIcon/default.png'),
(4, '32', '32', '32', 'resources/image/userIcon/default.png'),
(5, '312', '312321', '3213213', 'resources/image/userIcon/default.png'),
(6, '321', '321', '312', 'resources/image/userIcon/default.png'),
(7, 'users', 'test@gmail.com', '$2y$10$odidOToN08CM926It5hv8eFjbQ9Vr4plTaVciUx6deJq8ZOWpPC1e', 'resources/image/userIcon/default.png'),
(8, '1+', 'chiogen@gmail.com', '$2y$10$uUkU06Qiao.v/gAbxNyjY.O6hLtE.1oyZqW5Cc4HVSkdlTTjmHWgC', 'resources/image/userIcon/default.png');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`areaID`),
  ADD UNIQUE KEY `areaName` (`areaName`);

--
-- 資料表索引 `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`articleID`),
  ADD KEY `articles_ibfk_1` (`userID`),
  ADD KEY `userName` (`userName`),
  ADD KEY `userIcon` (`userIcon`),
  ADD KEY `articleType` (`articleType`),
  ADD KEY `articleContent` (`articleContent`);

--
-- 資料表索引 `articlestype`
--
ALTER TABLE `articlestype`
  ADD PRIMARY KEY (`typeID`);

--
-- 資料表索引 `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`contentid`),
  ADD KEY `contents_ibfk_1` (`attribution`),
  ADD KEY `userID` (`userID`);

--
-- 資料表索引 `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodID`),
  ADD KEY `areaID` (`areaID`);

--
-- 資料表索引 `foodcontents`
--
ALTER TABLE `foodcontents`
  ADD PRIMARY KEY (`contentid`),
  ADD KEY `foodcontents_ibfk_1` (`attribution`),
  ADD KEY `userID` (`userID`);

--
-- 資料表索引 `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`reserveRoomID`),
  ADD KEY `areaID` (`areaID`);

--
-- 資料表索引 `scenicspot`
--
ALTER TABLE `scenicspot`
  ADD PRIMARY KEY (`ScenicSpotID`),
  ADD KEY `scenicspot_ibfk_1` (`areaID`),
  ADD KEY `userID` (`userID`);

--
-- 資料表索引 `spotcontents`
--
ALTER TABLE `spotcontents`
  ADD PRIMARY KEY (`contentid`),
  ADD KEY `attribution` (`attribution`),
  ADD KEY `userID` (`userID`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userName` (`userName`),
  ADD KEY `userIcon` (`userIcon`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `area`
--
ALTER TABLE `area`
  MODIFY `areaID` int(2) NOT NULL AUTO_INCREMENT COMMENT '區域編號', AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `articles`
--
ALTER TABLE `articles`
  MODIFY `articleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `articlestype`
--
ALTER TABLE `articlestype`
  MODIFY `typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contents`
--
ALTER TABLE `contents`
  MODIFY `contentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `food`
--
ALTER TABLE `food`
  MODIFY `foodID` int(2) NOT NULL AUTO_INCREMENT COMMENT '美食編號', AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `foodcontents`
--
ALTER TABLE `foodcontents`
  MODIFY `contentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hostel`
--
ALTER TABLE `hostel`
  MODIFY `reserveRoomID` int(2) NOT NULL AUTO_INCREMENT COMMENT '訂房網編號', AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `scenicspot`
--
ALTER TABLE `scenicspot`
  MODIFY `ScenicSpotID` int(2) NOT NULL AUTO_INCREMENT COMMENT '景點編號', AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `spotcontents`
--
ALTER TABLE `spotcontents`
  MODIFY `contentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT COMMENT '使用者編號', AUTO_INCREMENT=9;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`userIcon`) REFERENCES `user` (`userIcon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_ibfk_4` FOREIGN KEY (`articleType`) REFERENCES `articlestype` (`typeID`);

--
-- 資料表的限制式 `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`attribution`) REFERENCES `articles` (`articleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contents_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`areaID`) REFERENCES `area` (`areaID`);

--
-- 資料表的限制式 `foodcontents`
--
ALTER TABLE `foodcontents`
  ADD CONSTRAINT `foodcontents_ibfk_1` FOREIGN KEY (`attribution`) REFERENCES `food` (`foodID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foodcontents_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `scenicspot`
--
ALTER TABLE `scenicspot`
  ADD CONSTRAINT `scenicspot_ibfk_1` FOREIGN KEY (`areaID`) REFERENCES `area` (`areaID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scenicspot_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `spotcontents`
--
ALTER TABLE `spotcontents`
  ADD CONSTRAINT `spotcontents_ibfk_1` FOREIGN KEY (`attribution`) REFERENCES `scenicspot` (`ScenicSpotID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `spotcontents_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
