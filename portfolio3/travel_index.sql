-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-04-05 07:58:11
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `ua`
--

-- --------------------------------------------------------

--
-- 資料表結構 `travel_index`
--

CREATE TABLE `travel_index` (
  `sid` int(11) NOT NULL,
  `travel_sort` varchar(255) NOT NULL,
  `travel_search` varchar(255) NOT NULL,
  `travel_hot` varchar(255) NOT NULL,
  `travel_image` varchar(500) NOT NULL,
  `travel_number` varchar(20) NOT NULL,
  `travel_tags` varchar(255) NOT NULL,
  `travel_name` varchar(20) NOT NULL,
  `travel_description` varchar(255) NOT NULL,
  `travel_outbound` varchar(20) NOT NULL,
  `travel_inbound` varchar(20) NOT NULL,
  `travel_day` varchar(255) NOT NULL,
  `travel_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `travel_index`
--

INSERT INTO `travel_index` (`sid`, `travel_sort`, `travel_search`, `travel_hot`, `travel_image`, `travel_number`, `travel_tags`, `travel_name`, `travel_description`, `travel_outbound`, `travel_inbound`, `travel_day`, `travel_price`) VALUES
(1, 'starsign', 'UAS-003星座starsign白羊座Aries6days\n299999', '', 's4.png', 'UAS-003', '星座starsign', '白羊座Aries', '白羊座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛行和去星座星球旅行。然而，太空旅遊有更廣泛的定義。根據太空旅遊指南...', '2022-03-21', '2022-03-26', '6', '299999'),
(2, 'plant', 'UAP-011星球plant星際迷航瓦肯星vulcan6days499999', '', 'vulcan.png', 'UAP-011', '星球plant、星際迷航', '瓦肯星vulcan', '瓦肯星位於0-0-5星區娜瓦薩恆星系的主恆星娜瓦薩周圍的第二顆行星上。娜瓦薩星是一個三合星系統的主恆星，光譜為K型...', '2023-05-08', '2023-05-13', '6', '499999'),
(3, 'starsign', 'UAS-010主打星座starsign天蠍座Scorpio4days599999', '', 's2.png', 'UAS-010', '星座starsign', '天蠍座Scorpio', '天蠍座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛...', '2022-10-24', '2022-10-27', '4', '599999'),
(4, 'starsign', 'UAS-005主打星座starsign雙子座Gemini7days399999', 'sv', 's10.png', 'UAS-005', '主打星座starsign', '雙子座Gemini', '雙子座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛...', '2022-05-21', '2022-05-27', '7', '399999'),
(5, 'starsign', 'UAS-002星座starsign雙魚座Pisces5days199999', '', 's11.png', 'UAS-002', '星座starsign', '雙魚座Pisces', '雙魚座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛行和去星座星球旅行。然而，太空旅遊有更廣泛的定義。根據太...', '2022-02-20', '2022-02-24', '5', '199999'),
(6, 'plant', 'UAP-003星球plant星際效應米勒星Miller旅遊天數:7days499999', '', 'Miller.jpg', 'UAP-003', '星球plant、星際效應', '米勒星Miller', '米勒星擁有豐富的海洋生態與宇宙級的海島美景，能享受渡假好心情！特別安排獨家 4大亮點，帶您用特殊視角欣賞米勒星美景，享受這趟前所未有的米勒星之旅。', '2023-10-07', '2023-10-13', '7', '499999'),
(7, 'starsign', 'UAS-001星座starsign水瓶座Aquarius5days199999', '', 's8.png', 'UAS-001', '星座starsign', '水瓶座Aquarius', '水瓶座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛行和去星座星球旅行。然而，太空旅遊有更廣泛的定義。根據太空旅遊指南...', '2022-01-21', '2022-01-25', '5', '199999'),
(8, 'plant', 'UAP-008星球plant漫威Marvel蓋亞Gaia5days399999', '', 'gaia.png', 'UAP-008', '星球plant、漫威Marvel', '蓋亞花園Gaia', '蓋亞星球的代表性觀光地「蓋亞花園」。在山坡上有著大小200塊美麗梯田連綿擴展著，並被選為「蓋亞百選」之一。這次要來介紹蓋亞風景──梯田的歷史、值得一看之處以及...', '2023-05-24', '2023-05-28', '5', '399999'),
(9, 'plant', 'UAP-009星球plant阿凡達潘朵拉星Pandora8days699999', '', 'pandora.png', 'UAP-009', '星球plant、阿凡達', '潘朵拉星Pandora', '潘朵拉星上最特別的地形是懸浮山地型，因懸浮山脈區的岩礦含有豐富的 「難得素」（Unobtainium） ，故山體都是靠難得素礦漂浮於空中...', '2023-12-17', '2023-12-19', '8', '699999'),
(10, 'starsign', 'UAS-007主打星座starsign獅子座Leo4days199999', '', 's3.png', 'UAS-007', '星座starsign', '獅子座Leo', '獅子座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛...', '2022-07-23', '2022-07-29', '4', '199999'),
(11, 'plant', 'UAP-012星球plant光環致遠星reach5days499999', '', 'reach.png', 'UAP-012', '星球plant、光環', '致遠星reach', '致遠星是一顆位於天苑四星系的人類近地殖民星球，由於距太陽系僅10.5光年，所以致遠星堪稱地球的門戶。就體積而言，...', '2023-09-14', '2023-09-18', '5', '499999'),
(12, 'starsign', 'UAS-011主打星座starsign射手座Sagittarius4days299999', '', 's7.png', 'UAS-011', '星座starsign', '射手座Sagittarius', '射手座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛...', '2022-11-23', '2022-11-26', '4', '299999'),
(13, 'starsign', 'UAS-008主打星座starsign處女座Virgo7days599999', '', 's5.png', 'UAS-008', '星座starsign', '處女座Virgo', '處女座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛...', '2022-08-23', '2022-08-29', '7', '599999'),
(14, 'plant', 'UAP-005星球plant漫威Marvel拉曼提斯Iamentis8days699999', '', 'lamentis.png', 'UAP-005', '星球plant、漫威Marvel', '拉曼提斯Iamentis', '拉曼提斯是一個舉世聞名的自然奇觀，也是宇宙上自然界七大奇景之一，拉曼提斯大峽谷全長四四六公里，寬六至二十九公里，峽谷平均深一點六公里，最深一八二九公尺...', '2023-06-09', '2023-06-14', '8', '699999'),
(15, 'starsign', 'UAS-012主打星座starsign摩羯座Capricorn4days499999', '', 's12.png', 'UAS-012', '星座starsign', '摩羯座Capricorn', '摩羯座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛...', '2022-12-22', '2022-12-25', '4', '499999'),
(16, 'plant', 'UAP-006星球plant星際大戰火星Mars6days299999', '', 'mars.png', 'UAP-006', '星球plant、星際大戰', '火星Mars', '火星是太陽系第四顆行星。它的名字是羅馬神話中的戰神瑪爾斯，因為其明顯的紅色。此特點也贏得了綽號「紅色星球」。火星有稀薄的大氣層，並具有一顆類地行星的表面特性...', '2023-10-02', '2023-10-07', '6', '299999'),
(17, 'starsign', 'UAS-004主打星座starsign金牛座Taurus6days299999', 'sv', 's1.png', 'UAS-004', '主打星座starsign', '金牛座Taurus', '金牛座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛...', '2022-04-20', '2022-04-25', '6', '299999'),
(18, 'plant', 'UAP-002主打星球plant漫威Marvel柴達星Xandar7days599999', 'pv', 'xandar.jpg', 'UAP-002', '主打星球plant、漫威Marvel', '柴達星Xandar', '在柴達星上有一片彷彿熱帶雨林般的魔幻森林，熱帶氣候造就了園區獨特的植物相，各式各樣的榕屬植物...', '2023-08-01', '2023-08-08', '7', '599999'),
(19, 'starsign', 'UAS-006主打星座starsign巨蟹座Cancer8days699999', 'sv', 's9.png', 'UAS-006', '主打星座starsign', '巨蟹座Cancer', '巨蟹座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛...', '2022-06-22', '2022-06-28', '8', '699999'),
(20, 'plant', 'UAP-004主打星球plant星際效應曼恩星Mann6days399999', 'pv', 'mann.png', 'UAP-004', '主打星球plant、星際效應', '曼恩星Mann', '曼恩星許多人來也是撲空好多次。雖然曼恩星的極光不是那麼好遇見，但曼恩星奇景之一「冰河湖」的...', '2023-11-07', '2023-11-13', '6', '399999'),
(21, 'plant', 'UAP-001主打星球plant漫威Marvel泰坦星Titan8days699999', 'pv', 'titan.png', 'UAP-001', '主打星球plant、漫威Marvel', '泰坦星Titan', '泰坦山谷位於泰坦星的中心位置，海拔3952公尺，為泰坦群山之首，百岳排名第一，也是宇宙的最高峰...', '2023-04-27', '2023-05-04', '8', '699999'),
(22, 'plant', 'UAP-010星球plant變形金剛塞伯坦星cybertron7days599999', '', 'cybertron.png', 'UAP-010', '星球plant、變形金剛', '塞伯坦星cybertron', '賽伯坦，圍繞著半人馬座阿爾法星的軌道運行的賽伯坦是一個和地球近鄰土星一樣大小的巨大的金屬行星。它幾乎是由各種具有不同屬性的金屬礦石所組成...', '2023-07-03', '2023-07-09', '7', '599999'),
(23, 'starsign', 'UAS-009主打星座starsign天秤座Libra4days199999', '', 's6.png', 'UAS-009', '星座starsign', '天秤座Libra', '天秤座太空旅遊是以娛樂或休閑為目的的太空旅行。太空旅遊分為不同類型，包括軌道飛行、亞軌道飛...', '2022-09-23', '2022-09-26', '4', '199999'),
(24, 'plant', 'UAP-007星球plant綠野仙蹤奧茲Oz5days399999', '', 'Oz.jpg', 'UAP-007', '星球plant、綠野仙蹤', '奧茲Oz', '奧茲草原位於奧茲星球，是奧茲星面積第二大草原，這裡地勢平坦，是典型的禾草草甸草原，也是天山南麓最茂盛的夏牧場。每當夏天來臨，草原層巒疊翠，無限綠野，...', '2023-03-15', '2023-03-19', '5', '399999');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `travel_index`
--
ALTER TABLE `travel_index`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `travel_index`
--
ALTER TABLE `travel_index`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
