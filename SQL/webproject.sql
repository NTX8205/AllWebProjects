-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-12-29 02:31:50
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
CREATE DATABASE IF NOT EXISTS `webproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `webproject`;

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--
-- 建立時間： 2022-12-28 23:03:20
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的關聯 `admin`:
--

--
-- 資料表新增資料前，先清除舊資料 `admin`
--

TRUNCATE TABLE `admin`;
-- --------------------------------------------------------

--
-- 資料表結構 `area`
--
-- 建立時間： 2022-12-28 23:14:19
--

CREATE TABLE `area` (
  `areaID` int(2) NOT NULL COMMENT '區域編號',
  `areaName` varchar(10) NOT NULL COMMENT '分區名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的關聯 `area`:
--

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
-- 建立時間： 2022-12-29 01:24:58
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
-- 資料表的關聯 `articles`:
--   `userID`
--       `user` -> `userID`
--   `userName`
--       `user` -> `userName`
--   `userIcon`
--       `user` -> `userIcon`
--   `articleType`
--       `articlestype` -> `typeID`
--

--
-- 資料表新增資料前，先清除舊資料 `articles`
--

TRUNCATE TABLE `articles`;
-- --------------------------------------------------------

--
-- 資料表結構 `articlestype`
--
-- 建立時間： 2022-12-28 23:01:01
-- 最後更新： 2022-12-28 23:18:36
--

CREATE TABLE `articlestype` (
  `typeID` int(11) NOT NULL,
  `typeName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的關聯 `articlestype`:
--

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
-- 建立時間： 2022-12-29 01:34:30
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
-- 資料表的關聯 `contents`:
--   `attribution`
--       `articles` -> `articleID`
--   `userID`
--       `user` -> `userID`
--

--
-- 資料表新增資料前，先清除舊資料 `contents`
--

TRUNCATE TABLE `contents`;
-- --------------------------------------------------------

--
-- 資料表結構 `food`
--
-- 建立時間： 2022-12-28 23:22:24
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
-- 資料表的關聯 `food`:
--   `areaID`
--       `area` -> `areaID`
--

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
-- 建立時間： 2022-12-29 01:57:37
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
-- 資料表的關聯 `foodcontents`:
--   `attribution`
--       `food` -> `foodID`
--   `userID`
--       `user` -> `userID`
--

--
-- 資料表新增資料前，先清除舊資料 `foodcontents`
--

TRUNCATE TABLE `foodcontents`;
-- --------------------------------------------------------

--
-- 資料表結構 `hostel`
--
-- 建立時間： 2022-12-28 23:12:08
--

CREATE TABLE `hostel` (
  `reserveRoomID` int(2) NOT NULL COMMENT '訂房網編號',
  `areaID` int(1) NOT NULL,
  `reverseRoomName` varchar(32) DEFAULT NULL COMMENT '訂房網名稱',
  `reverseRoomUrl` varchar(255) NOT NULL COMMENT '訂房網站網址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的關聯 `hostel`:
--   `areaID`
--       `area` -> `areaID`
--

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
-- 建立時間： 2022-12-28 23:36:16
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
-- 資料表的關聯 `scenicspot`:
--   `areaID`
--       `area` -> `areaID`
--   `userID`
--       `user` -> `userID`
--   `areaID`
--       `area` -> `areaID`
--   `userID`
--       `user` -> `userID`
--

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
-- 建立時間： 2022-12-29 01:31:37
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
-- 資料表的關聯 `spotcontents`:
--   `attribution`
--       `scenicspot` -> `ScenicSpotID`
--   `userID`
--       `user` -> `userID`
--

--
-- 資料表新增資料前，先清除舊資料 `spotcontents`
--

TRUNCATE TABLE `spotcontents`;
-- --------------------------------------------------------

--
-- 資料表結構 `user`
--
-- 建立時間： 2022-12-28 22:41:27
-- 最後更新： 2022-12-28 23:37:19
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL COMMENT '使用者編號',
  `userName` varchar(20) NOT NULL COMMENT '使用者名稱',
  `email` varchar(50) NOT NULL COMMENT '使用者信箱',
  `password` varchar(255) NOT NULL COMMENT '使用者密碼',
  `userIcon` varchar(40) NOT NULL DEFAULT 'resources/image/userIcon/default.png' COMMENT '使用者圖示'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的關聯 `user`:
--

--
-- 資料表新增資料前，先清除舊資料 `user`
--

TRUNCATE TABLE `user`;
--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`userID`, `userName`, `email`, `password`, `userIcon`) VALUES
(1, '1', '2', '3', 'resources/image/userIcon/default.png'),
(2, '12', '2', '2', 'resources/image/userIcon/default.png'),
(3, '21', '21', '21', 'resources/image/userIcon/default.png'),
(4, '32', '32', '32', 'resources/image/userIcon/default.png'),
(5, '312', '312321', '3213213', 'resources/image/userIcon/default.png'),
(6, '321', '321', '312', 'resources/image/userIcon/default.png');

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
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT COMMENT '使用者編號', AUTO_INCREMENT=7;

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
