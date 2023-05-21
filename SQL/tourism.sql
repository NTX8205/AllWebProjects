-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-12-28 23:11:48
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
-- 資料庫： `tourism`
--

-- --------------------------------------------------------

--
-- 資料表結構 `area`
--

CREATE TABLE `area` (
  `areaID` int(2) NOT NULL COMMENT '區域編號',
  `areaName` varchar(10) NOT NULL COMMENT '分區名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
