-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 192.168.40.17
-- 產生時間： 2022-01-11 07:43:32
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `bteam`
--

-- --------------------------------------------------------

--
-- 資料表結構 `boarding_location`
--

CREATE TABLE `boarding_location` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `trans_sid` int(10) NOT NULL,
  `country_sid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `boarding_location`
--

INSERT INTO `boarding_location` (`sid`, `name`, `trans_sid`, `country_sid`) VALUES
(14, 'THSR-Taipei', 1, 5),
(15, 'THSR-Taoyuan', 1, 5),
(16, 'THSR-Zuoying', 1, 5),
(17, 'TPE', 2, 5),
(18, 'TSA', 2, 5),
(19, 'KHH', 2, 5),
(20, 'TWKEL', 3, 5),
(21, 'TWTXG', 3, 5),
(22, 'TWKHH', 3, 5),
(23, 'PEK', 2, 4),
(24, 'PKX', 2, 4),
(25, 'TSN', 2, 4),
(26, 'SJW', 2, 4),
(27, 'TYN', 2, 4),
(28, 'HET', 2, 4),
(29, 'DSN', 2, 4),
(30, 'DLC', 2, 4),
(31, 'HRB', 2, 4),
(32, 'SHA', 2, 4),
(33, 'HGH', 2, 4),
(34, 'TAO', 3, 4),
(35, 'CNNKG', 3, 4),
(36, 'CNHGH', 3, 4),
(37, 'CNTAO', 3, 4),
(38, 'CNDLC', 3, 4),
(39, 'CNZUH', 3, 4),
(40, 'CNSHA', 3, 4),
(41, 'CNFOC', 3, 4),
(42, 'HND', 2, 3),
(43, 'NRT', 2, 3),
(44, 'HND', 2, 3),
(45, 'NGO', 2, 3),
(46, 'ITM', 2, 3),
(47, 'KIX', 2, 3),
(48, 'FUK', 2, 3),
(49, 'CTS', 2, 3),
(50, 'JPTYO', 3, 3),
(51, 'JPOSA', 3, 3),
(52, 'JPUKB', 3, 3),
(53, 'JPCHB', 3, 3),
(54, 'JPSEN', 3, 3),
(55, 'JFK', 2, 1),
(56, 'PHX', 2, 1),
(57, 'LAX', 2, 1),
(58, 'SAN', 2, 1),
(59, 'SFO', 2, 1),
(60, 'DEN', 2, 1),
(61, 'MIA', 2, 1),
(62, 'ATL', 2, 1),
(63, 'BOS', 2, 1),
(64, 'USHOU', 3, 1),
(65, 'USSFO', 3, 1),
(66, 'USNEW', 3, 1),
(67, 'USSEA', 3, 1),
(68, 'USBOS', 3, 1),
(69, 'USLAX', 3, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `cart`
--

CREATE TABLE `cart` (
  `sid` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `member_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `count_number` int(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  `customization` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cart`
--

INSERT INTO `cart` (`sid`, `user_id`, `member_id`, `product_id`, `count_number`, `create_at`, `customization`) VALUES
(1, '1', '1', '14711234560019', 8, '2022-01-07', NULL),
(4, '4', NULL, '4710472144870', 7, '2022-01-10', NULL),
(6, '6', NULL, '4713656919956', 2, '2022-01-10', NULL),
(7, '7', NULL, '18', 4, '2022-01-10', NULL),
(8, '8', NULL, '14', 2, NULL, NULL),
(9, '10', NULL, '19', 5, NULL, NULL),
(10, '10', NULL, '19', 5, NULL, NULL),
(11, '20', NULL, '20', 20, '2022-01-06', NULL),
(12, '30', NULL, '30', 10, '2022-01-10', NULL),
(13, '15', NULL, '15', 15, '2022-01-06', NULL),
(14, '16', NULL, '16', 16, '2022-01-07', NULL),
(16, '3', NULL, '1236750078432', 3, '2022-01-10', NULL),
(17, '4', NULL, '26', 1, '2022-01-07', NULL),
(18, '6', NULL, '27', 5, '2022-01-07', NULL),
(19, '5', NULL, '29', 4, '2022-01-07', NULL),
(20, '2', NULL, '4713980561286', 3, '2022-01-10', NULL),
(21, '50', NULL, '4710455676791', 1, '2022-01-10', NULL),
(22, '60', NULL, '4714589945321', 3, '2022-01-10', NULL),
(23, '70', NULL, '4719896787672', 1, '2022-01-10', NULL),
(24, '31', NULL, '4718854947370', 6, '2022-01-10', NULL),
(26, '100', NULL, '4719876543210', 1, '2022-01-10', NULL),
(27, '200', NULL, '4710570942756', 11, '2022-01-10', NULL),
(28, '45', NULL, '4712223335555', 1, '2022-01-10', NULL),
(30, '46', NULL, '4719998887771', 3, '2022-01-11', NULL),
(31, '47', NULL, '4719998887772', 6, '2022-01-11', NULL),
(32, '48', NULL, '4719998887773', 4, '2022-01-11', NULL),
(33, '49', NULL, '4719998887774', 2, '2022-01-11', NULL),
(35, '50', NULL, '4719998887771', 1, '2022-01-11', NULL),
(36, '51', NULL, '4719998887776', 1, '2022-01-11', NULL),
(37, '52', NULL, '4719998887776', 9, '2022-01-11', NULL),
(38, '53', NULL, '4719994448374', 3, '2022-01-11', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `country`
--

CREATE TABLE `country` (
  `sid` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `country`
--

INSERT INTO `country` (`sid`, `country_name`) VALUES
(1, 'USA'),
(2, 'Canada'),
(3, 'Japan'),
(4, 'China'),
(5, 'Taiwan');

-- --------------------------------------------------------

--
-- 資料表結構 `country_transportation`
--

CREATE TABLE `country_transportation` (
  `sid` int(11) NOT NULL,
  `trans_sid` int(10) NOT NULL,
  `country_sid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `country_transportation`
--

INSERT INTO `country_transportation` (`sid`, `trans_sid`, `country_sid`) VALUES
(1, 1, 5),
(2, 2, 1),
(3, 3, 2),
(5, 2, 3),
(6, 2, 4),
(8, 3, 1),
(9, 3, 4),
(10, 2, 5),
(11, 3, 5);

-- --------------------------------------------------------

--
-- 資料表結構 `destination_address`
--

CREATE TABLE `destination_address` (
  `sid` int(11) NOT NULL,
  `training_address` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `destination_address`
--

INSERT INTO `destination_address` (`sid`, `training_address`) VALUES
(1, ' No. 32, Keyi St., Chunan, Miaoli County, 350, Taiwan(Ljupetje Spaceport Launch Complex)');

-- --------------------------------------------------------

--
-- 資料表結構 `element`
--

CREATE TABLE `element` (
  `sid` int(11) NOT NULL,
  `element_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `element`
--

INSERT INTO `element` (`sid`, `element_name`) VALUES
(1, '水象星'),
(2, '火象星'),
(3, '土象星'),
(4, '風象星');

-- --------------------------------------------------------

--
-- 資料表結構 `flight`
--

CREATE TABLE `flight` (
  `sid` int(11) NOT NULL,
  `flight_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `flight`
--

INSERT INTO `flight` (`sid`, `flight_time`) VALUES
(1, '2022-01-17 09:00:00'),
(2, '2022-01-28 09:00:00'),
(4, '2022-02-04 09:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `flight_seat`
--

CREATE TABLE `flight_seat` (
  `sid` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `flight_seat`
--

INSERT INTO `flight_seat` (`sid`, `level`, `price`) VALUES
(1, '經典艙', 10),
(2, '尊榮艙', 30),
(3, '豪華艙', 50);

-- --------------------------------------------------------

--
-- 資料表結構 `forum_article`
--

CREATE TABLE `forum_article` (
  `sid` int(11) NOT NULL,
  `user_sid` int(11) NOT NULL,
  `art_category_sid` int(11) NOT NULL,
  `art_title` varchar(255) NOT NULL,
  `art_content` varchar(255) NOT NULL,
  `art_photo` varchar(255) DEFAULT NULL,
  `art_create_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `forum_article`
--

INSERT INTO `forum_article` (`sid`, `user_sid`, `art_category_sid`, `art_title`, `art_content`, `art_photo`, `art_create_time`) VALUES
(1, 1, 3, '徹底理解火箭原理', '若無法徹底理解火箭，恐怕會是人類的一大遺憾。哥爾斯密在過去曾經講過，男人最可鄙的莫過於為錢財而結婚。這句話令我不禁感慨問題的迫切性。', NULL, '2022-01-06 04:06:25'),
(2, 2, 1, '前衛的太空', '呂不韋在過去曾經講過，苦之，以驗其志。這句話幾乎解讀出了問題的根本。這必定是個前衛大膽的想法。海塞在不經意間這樣說過，思想和智慧是高尚的美德。這段話讓我所有的疑惑頓時豁然開朗。每個人都不得不面對這些問題。在面對這種問題時，務必詳細考慮太空的各種可能。我們可以很篤定的說，這需要花很多時間來嚴謹地論證。太空可以說是有著成為常識的趨勢。每個人的一生中，幾乎可說碰到太空這件事，是必然會發生的。要想清楚，太空，到底是一種怎麼樣的存在。太空絕對是史無前例的。', NULL, '2022-01-06 04:04:43'),
(3, 2, 1, '升空時該怎麼吃', '在這種困難的抉擇下，本人思來想去，寢食難安。我們要從本質思考，從根本解決問題。我們要學會站在別人的角度思考。既然，羅素在過去曾經講過，無聊，對於道德家來說是一個嚴重的問題，因為人類的罪過半數以上都是源於對它的恐懼。這激勵了我。若發現問題比我們想像的還要深奧，那肯定不簡單。世界需要改革，需要對火箭美食有新的認知。', 'food.jpeg', '2022-01-11 03:45:19'),
(4, 2, 2, '前進太空，旅行的意義', '看看別人，再想想自己，會發現問題的核心其實就在你身旁。在這種困難的抉擇下，本人思來想去，寢食難安。這必定是個前衛大膽的想法。羅丹曾經提過，我可以一再堅持我們的貢獻，那是因為，只有這種看法，才能在世界上有權力贏得人類的同情。這段話非常有意思。旅行究竟是怎麼樣的存在，始終是個謎題。', 'space_travel.jpeg', '2022-01-11 03:45:34'),
(5, 1, 2, '聽什麼好呢？', '把音樂輕鬆帶過，顯然並不適合。要想清楚，音樂，到底是一種怎麼樣的存在。生活中，若音樂出現了，我們就不得不考慮它出現了的事實。這種事實對本人來說意義重大，相信對這個世界也是有一定意義的。就我個人來說，音樂對我的意義，不能不說非常重大。', 'space music.jpeg', '2022-01-11 03:46:00'),
(12, 1, 4, '火星的秘密', '在人生的歷程中，火星的出現是必然的。我們都很清楚，這是個嚴謹的議題。培根說過，深窺自己的心，而後發覺一切的奇蹟在你自己。這句話幾乎解讀出了問題的根本。', 'mars.jpeg', '2022-01-11 03:46:20'),
(13, 2, 6, '雙子座-搞懂後就明白', '探討雙子座時，如果發現非常複雜，那麼想必不簡單。當你搞懂後就會明白了。現在，正視雙子座的問題，是非常非常重要的。因為，對於雙子座，我們不能不去想，卻也不能走火入魔。雙子座可以說是有著成為常識的趨勢。儘管雙子座看似不顯眼，卻佔據了我的腦海', 'gemeni.jpeg', '2022-01-10 08:05:35');

-- --------------------------------------------------------

--
-- 資料表結構 `forum_category`
--

CREATE TABLE `forum_category` (
  `cat_sid` int(11) NOT NULL,
  `for_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `forum_category`
--

INSERT INTO `forum_category` (`cat_sid`, `for_category`) VALUES
(1, '事前準備'),
(2, '旅遊心得'),
(3, '太空冷知識'),
(4, '星球介紹'),
(5, '音樂推薦'),
(6, '星座'),
(7, '太空美食');

-- --------------------------------------------------------

--
-- 資料表結構 `forum_response`
--

CREATE TABLE `forum_response` (
  `sid` int(11) NOT NULL,
  `user_sid` int(11) NOT NULL,
  `res_art_sid` int(11) NOT NULL,
  `res_content` varchar(255) NOT NULL,
  `res_photo` varchar(255) DEFAULT NULL,
  `res_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `forum_response`
--

INSERT INTO `forum_response` (`sid`, `user_sid`, `res_art_sid`, `res_content`, `res_photo`, `res_time`) VALUES
(39, 2, 13, '阿曼達好像是雙子座耶 要不要報名雙子座的行程', NULL, '2022-01-09 11:55:29'),
(40, 4, 13, '好啊 好期待喔～～～', NULL, '2022-01-09 11:55:36'),
(41, 5, 13, '雙子讚 那我們要從哪邊的太空港出發？', NULL, '2022-01-09 11:55:41'),
(42, 6, 13, '我會從日本過去 在發射站跟你們會和、訓練喔！！', NULL, '2022-01-09 11:55:44'),
(43, 7, 13, '麥摳不要遲到了餒', NULL, '2022-01-09 11:55:55'),
(44, 8, 13, '大家體能記得要多多訓練喔～～～', NULL, '2022-01-09 11:55:58');

-- --------------------------------------------------------

--
-- 資料表結構 `forum_user`
--

CREATE TABLE `forum_user` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `forum_user`
--

INSERT INTO `forum_user` (`sid`, `name`, `account`, `email`, `address`) VALUES
(1, 'Amanda', 'amandachiu', 'amanda87006611@gmail.com', 'Taiwan,Taipei'),
(2, 'ZY', 'zy', 'zy@gmail.com', 'Taiwan,Taipei'),
(3, 'Roy', 'roychiu', 'roychiu@gmail.com', 'Taipei,Chaiyi');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `sid` int(11) NOT NULL,
  `ticket_sid` int(100) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`sid`, `ticket_sid`, `member_name`, `passport`) VALUES
(168, 1, 'hello', 'IMG_7540.JPG'),
(169, 1, 'rrr', ''),
(170, 1, 'yyy', 'IMG_7643.JPG'),
(171, 1, 'candy', 'IMG_7540.JPG'),
(172, 1, 'gogo', 'IMG_7542.JPG'),
(173, 0, '', ''),
(192, 234, 'ning,yi', '593616.jpg,682365.jpg'),
(193, 235, 'ning,yi', '593616.jpg,682365.jpg'),
(194, 236, 'ning,yi', '593616.jpg,682365.jpg'),
(195, 237, 'ning,yi', '593616.jpg,682365.jpg'),
(207, 249, 'obama', 'profile1.jpg'),
(217, 259, 'chen', '290555.jpg'),
(222, 264, 'aaaaa', 'pass3.png'),
(225, 267, 'hr,gr', 'cb1c2c973db53afd344ea728930e9f6a175367d2.png,fb98781392df64ad683ab3d51c31e259b446d704.png'),
(227, 269, 'jarvis,bbbb', '22a51b6aa560d66a4f5b1420214e78a9fd9d9c39.jpg,03a1d2c740b7ac49a91a3d529e7715ab1fdb8265.jpg'),
(228, 270, 'aaaa,bbbb', 'b197ea5905a6d9c7fd4d7cbfdebd53969681e2eb.png,486e037efcade1b31e3f5153662e62c85cae8884.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `sid` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`sid`, `category`, `product_name`, `img`, `style`, `size`, `quantity`, `price`, `create_date`, `update_date`) VALUES
(2, '女生', '帽子', 'cuff-beanie_1080x.jpeg1331698484.jpg', '黑', 'F', 10, 6666, '2021-12-31 10:32:24', '2022-01-10 10:00:06'),
(3, '男生', '外套', 'MENS_BOMBER_BLACK_FRONT2.jpg612076850.jpg', '藍', 'L', 1, 500, '2021-12-31 10:36:57', '2022-01-09 22:53:31'),
(6, '女生', '帽子', 'Cap_StarlinkAdjustable_db41a.png1476911311.png', '黑色', 'M', 5, 450, '2021-12-31 10:32:24', '2022-01-09 22:50:33'),
(7, '男生', '外套', 'VaristyZip_1080x.jpeg1092180329.jpg', '黑', 'M', 12, 1200, '2022-01-02 15:49:01', '2022-01-11 11:20:47'),
(8, '女生', 'T恤', 'UNISEX_SPACEX_SWEATSHIRT.png694702512.png', '藍色', 'F', 2, 4500, '2022-01-04 21:48:42', '2022-01-09 22:51:10'),
(9, '男生', '帽子', 'Cap_StarlinkAdjustable_db41a.png374839163.png', '藍色', 'M', 3, 470, '2022-01-04 22:19:21', '2022-01-09 22:51:40'),
(16, '男生', 'T恤', 'BONE_BACKcopy_900x.jpg1478022961.jpg', '白色', 'M', 7, 8900, '2022-01-05 21:57:46', '2022-01-11 11:06:15'),
(17, '男生', 'T恤', 'UNISEX_SPACEX_SWEATSHIRT.png390071914.png', '藍色', 'M', 4, 850, '2022-01-05 21:58:10', '2022-01-11 11:06:31'),
(48, '配件', '外套', 'MENS_BOMBER_BLACK_FRONT2.jpg829220490.jpg', '白色', 'S', 1, 1122, '2022-01-07 17:52:32', '2022-01-08 11:23:36'),
(49, '孩童', '太空裝', 'KIDS_11_SPACEDUIT_ONESIE_00x.png2045464457.png', '白色', 'F', 4, 6750, '2022-01-08 10:35:06', '2022-01-11 11:07:11'),
(50, '男生', 'T恤', 'MENS_oocupymars.jpg1458913085.jpg', '黑色', 'M', 9, 2310, '2022-01-08 16:56:33', '2022-01-08 16:56:33'),
(51, '男生', '外套', 'MENS_BOMBER_BLACK_FRONT2.jpg718758975.jpg', '黑色', 'F', 34, 3424, '2022-01-08 17:15:36', '2022-01-11 11:07:36'),
(53, '男生', '帽子', 'Cap_XAdjustable_front.png1612109716.png', '黑色', 'F', 20, 1680, '2022-01-09 22:49:59', '2022-01-09 22:49:59'),
(54, '女生', 'T恤', 'WOMECREW_BACK_90.png540169118.png', '白色', 'L', 5, 678, '2022-01-09 22:52:53', '2022-01-09 22:52:53'),
(59, '女生', '外套', 'UNISEX_DRAGON900x.png1623564708.png', '黑色', 'F', 67, 777, '2022-01-11 13:23:47', '2022-01-11 13:26:28');

-- --------------------------------------------------------

--
-- 資料表結構 `search`
--

CREATE TABLE `search` (
  `search_sid` int(255) NOT NULL,
  `keyword` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `search`
--

INSERT INTO `search` (`search_sid`, `keyword`) VALUES
(1, '太空'),
(2, '星球'),
(3, '美食');

-- --------------------------------------------------------

--
-- 資料表結構 `seats`
--

CREATE TABLE `seats` (
  `sid` int(5) NOT NULL,
  `seat_kind` varchar(255) NOT NULL,
  `trans_sid` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `seats`
--

INSERT INTO `seats` (`sid`, `seat_kind`, `trans_sid`) VALUES
(4, 'A101', '3'),
(5, 'A102', '3'),
(6, 'A103', '3'),
(7, 'A104', '3'),
(8, 'A105', '3'),
(9, 'A106', '3'),
(10, 'A107', '3'),
(11, 'A108', '3'),
(12, 'A109', '3'),
(13, 'A110', '3'),
(14, 'A111', '3'),
(15, 'A112', '3'),
(16, 'A201', '3'),
(17, 'A202', '3'),
(18, 'A203', '3'),
(19, 'A204', '3'),
(20, 'A205', '3'),
(21, 'A206', '3'),
(22, 'A207', '3'),
(23, 'A208', '3'),
(24, 'A209', '3'),
(25, 'A210', '3'),
(26, 'A211', '3'),
(27, 'A212', '3'),
(28, 'A301', '3'),
(29, 'A302', '3'),
(30, 'A303', '3'),
(31, 'A304', '3'),
(32, 'A305', '3'),
(33, 'A306', '3'),
(34, 'A307', '3'),
(35, 'A308', '3'),
(36, 'A309', '3'),
(37, 'A310', '3'),
(38, 'A311', '3'),
(39, 'A312', '3'),
(40, 'B101', '3'),
(41, 'B102', '3'),
(42, 'B103', '3'),
(43, 'B104', '3'),
(44, 'B105', '3'),
(45, 'B106', '3'),
(46, 'B107', '3'),
(47, 'B108', '3'),
(48, 'B109', '3'),
(49, 'B110', '3'),
(50, 'B111', '3'),
(51, 'B112', '3'),
(52, 'B201', '3'),
(53, 'B202', '3'),
(54, 'B203', '3'),
(55, 'B204', '3'),
(56, 'B205', '3'),
(57, 'B206', '3'),
(58, 'B207', '3'),
(59, 'B208', '3'),
(60, 'B209', '3'),
(61, 'B210', '3'),
(62, 'B211', '3'),
(63, 'B212', '3'),
(64, 'B301', '3'),
(65, 'B302', '3'),
(66, 'B303', '3'),
(67, 'B304', '3'),
(68, 'B305', '3'),
(69, 'B306', '3'),
(70, 'B307', '3'),
(71, 'B308', '3'),
(72, 'B309', '3'),
(73, 'B310', '3'),
(74, 'B311', '3'),
(75, 'B312', '3'),
(76, 'C101', '3'),
(77, 'C102', '3'),
(78, 'C103', '3'),
(79, 'C104', '3'),
(80, 'C105', '3'),
(81, 'C106', '3'),
(82, 'C107', '3'),
(83, 'C108', '3'),
(84, 'C109', '3'),
(85, 'C110', '3'),
(86, 'C111', '3'),
(87, 'C112', '3'),
(88, 'C201', '3'),
(89, 'C202', '3'),
(90, 'C203', '3'),
(91, 'C204', '3'),
(92, 'C205', '3'),
(93, 'C206', '3'),
(94, 'C207', '3'),
(95, 'C208', '3'),
(96, 'C209', '3'),
(97, 'C210', '3'),
(98, 'C211', '3'),
(99, 'C212', '3'),
(100, 'C301', '3'),
(101, 'C302', '3'),
(102, 'C303', '3'),
(103, 'C304', '3'),
(104, 'C305', '3'),
(105, 'C306', '3'),
(106, 'C307', '3'),
(107, 'C308', '3'),
(108, 'C309', '3'),
(109, 'C310', '3'),
(110, 'C311', '3'),
(111, 'C312', '3'),
(112, 'A1', '2'),
(113, 'A2', '2'),
(114, 'A3', '2'),
(115, 'A4', '2'),
(116, 'A5', '2'),
(117, 'A6', '2'),
(118, 'A7', '2'),
(119, 'A8', '2'),
(120, 'A9', '2'),
(121, 'A10', '2'),
(122, 'A11', '2'),
(123, 'A12', '2'),
(124, 'A13', '2'),
(125, 'A14', '2'),
(126, 'A15', '2'),
(127, 'A16', '2'),
(128, 'A17', '2'),
(129, 'A18', '2'),
(130, 'A19', '2'),
(131, 'A20', '2'),
(132, 'B1', '2'),
(133, 'B2', '2'),
(134, 'B3', '2'),
(135, 'B4', '2'),
(136, 'B5', '2'),
(137, 'B6', '2'),
(138, 'B7', '2'),
(139, 'B8', '2'),
(140, 'B9', '2'),
(141, 'B10', '2'),
(142, 'B11', '2'),
(143, 'B12', '2'),
(144, 'B13', '2'),
(145, 'B14', '2'),
(146, 'B15', '2'),
(147, 'B16', '2'),
(148, 'B17', '2'),
(149, 'B18', '2'),
(150, 'B19', '2'),
(151, 'B20', '2'),
(152, 'C1', '2'),
(153, 'C2', '2'),
(154, 'C3', '2'),
(155, 'C4', '2'),
(156, 'C5', '2'),
(157, 'C6', '2'),
(158, 'C7', '2'),
(159, 'C8', '2'),
(160, 'C9', '2'),
(161, 'C10', '2'),
(162, 'C11', '2'),
(163, 'C12', '2'),
(164, 'C13', '2'),
(165, 'C14', '2'),
(166, 'C15', '2'),
(167, 'C16', '2'),
(168, 'C17', '2'),
(169, 'C18', '2'),
(170, 'C19', '2'),
(171, 'C20', '2'),
(172, 'A1', '1'),
(173, 'A2', '1'),
(174, 'A3', '1'),
(175, 'A4', '1'),
(176, 'A5', '1'),
(177, 'A6', '1'),
(178, 'A7', '1'),
(179, 'A8', '1'),
(180, 'A9', '1'),
(181, 'A10', '1'),
(182, 'A11', '1'),
(183, 'A12', '1'),
(184, 'A13', '1'),
(185, 'A14', '1'),
(186, 'A15', '1'),
(187, 'A16', '1'),
(188, 'A17', '1'),
(189, 'A18', '1'),
(190, 'A19', '1'),
(191, 'A20', '1'),
(192, 'A21', '1'),
(193, 'A22', '1'),
(194, 'A23', '1'),
(195, 'A24', '1'),
(196, 'A25', '1'),
(197, 'A26', '1'),
(198, 'A27', '1'),
(199, 'A28', '1'),
(200, 'A29', '1'),
(201, 'A30', '1'),
(202, 'B1', '1'),
(203, 'B2', '1'),
(204, 'B3', '1'),
(205, 'B4', '1'),
(206, 'B5', '1'),
(207, 'B6', '1'),
(208, 'B7', '1'),
(209, 'B8', '1'),
(210, 'B9', '1'),
(211, 'B10', '1'),
(212, 'B11', '1'),
(213, 'B12', '1'),
(214, 'B13', '1'),
(215, 'B14', '1'),
(216, 'B15', '1'),
(217, 'B16', '1'),
(218, 'B17', '1'),
(219, 'B18', '1'),
(220, 'B19', '1'),
(221, 'B20', '1'),
(222, 'B21', '1'),
(223, 'B22', '1'),
(224, 'B23', '1'),
(225, 'B24', '1'),
(226, 'B25', '1'),
(227, 'B26', '1'),
(228, 'B27', '1'),
(229, 'B28', '1'),
(230, 'B29', '1'),
(231, 'B30', '1'),
(232, 'C1', '1'),
(233, 'C2', '1'),
(234, 'C3', '1'),
(235, 'C4', '1'),
(236, 'C5', '1'),
(237, 'C6', '1'),
(238, 'C7', '1'),
(239, 'C8', '1'),
(240, 'C9', '1'),
(241, 'C10', '1'),
(242, 'C11', '1'),
(243, 'C12', '1'),
(244, 'C13', '1'),
(245, 'C14', '1'),
(246, 'C15', '1'),
(247, 'C16', '1'),
(248, 'C17', '1'),
(249, 'C18', '1'),
(250, 'C19', '1'),
(251, 'C20', '1'),
(252, 'C21', '1'),
(253, 'C22', '1'),
(254, 'C23', '1'),
(255, 'C24', '1'),
(256, 'C25', '1'),
(257, 'C26', '1'),
(258, 'C27', '1'),
(259, 'C28', '1'),
(260, 'C29', '1'),
(261, 'C30', '1'),
(262, 'D1', '1'),
(263, 'D2', '1'),
(264, 'D3', '1'),
(265, 'D4', '1'),
(266, 'D5', '1'),
(267, 'D6', '1'),
(268, 'D7', '1'),
(269, 'D8', '1'),
(270, 'D9', '1'),
(271, 'D10', '1'),
(272, 'D11', '1'),
(273, 'D12', '1'),
(274, 'D13', '1'),
(275, 'D14', '1'),
(276, 'D15', '1'),
(277, 'D16', '1'),
(278, 'D17', '1'),
(279, 'D18', '1'),
(280, 'D19', '1'),
(281, 'D20', '1'),
(282, 'D21', '1'),
(283, 'D22', '1'),
(284, 'D23', '1'),
(285, 'D24', '1'),
(286, 'D25', '1'),
(287, 'D26', '1'),
(288, 'D27', '1'),
(289, 'D28', '1'),
(290, 'D29', '1'),
(291, 'D30', '1');

-- --------------------------------------------------------

--
-- 資料表結構 `ticket`
--

CREATE TABLE `ticket` (
  `sid` int(11) NOT NULL,
  `flight_time` datetime NOT NULL,
  `trip_sid` varchar(255) NOT NULL,
  `seat_sid` varchar(255) NOT NULL,
  `member_count` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `ticket`
--

INSERT INTO `ticket` (`sid`, `flight_time`, `trip_sid`, `seat_sid`, `member_count`, `created_at`) VALUES
(207, '2022-01-28 09:00:00', '2', '經典艙', 1, '2022-01-07 06:26:32'),
(208, '2022-01-28 09:00:00', '3', '經典艙', 1, '2022-01-07 06:28:01'),
(210, '2022-01-28 09:00:00', '2', '經典艙', 1, '2022-01-07 07:55:17'),
(211, '2022-01-28 09:00:00', '2', '豪華艙', 1, '2022-01-07 07:56:02'),
(212, '2022-01-28 09:00:00', '1', '經典艙', 1, '2022-01-07 07:57:19'),
(213, '2022-01-17 09:00:00', '10', '30', 1, '2022-01-07 09:52:06'),
(215, '2022-01-28 09:00:00', '20', '50', 1, '2022-01-08 14:17:20'),
(216, '2022-01-28 09:00:00', '20', '50', 1, '2022-01-08 14:17:40'),
(234, '2022-01-17 09:00:00', '102', '50', 2, '2022-01-10 04:33:45'),
(235, '2022-01-17 09:00:00', '102', '50', 2, '2022-01-10 04:33:49'),
(236, '2022-01-17 09:00:00', '102', '50', 2, '2022-01-10 04:33:52'),
(237, '2022-01-17 09:00:00', '102', '50', 2, '2022-01-10 04:33:53'),
(249, '2022-01-17 09:00:00', '102', '50', 1, '2022-01-10 04:37:43'),
(259, '2022-01-17 09:00:00', '102', '10', 1, '2022-01-10 05:03:48'),
(264, '2022-01-28 09:00:00', '20', '30', 1, '2022-01-11 03:38:01'),
(267, '2022-01-28 09:00:00', '30', '30', 2, '2022-01-11 03:42:07'),
(269, '2022-01-28 09:00:00', '40', '50', 2, '2022-01-11 04:06:32'),
(270, '2022-01-28 09:00:00', '30', '30', 2, '2022-01-11 04:08:52');

-- --------------------------------------------------------

--
-- 資料表結構 `transportation`
--

CREATE TABLE `transportation` (
  `sid` int(11) NOT NULL,
  `transport_kind` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `transportation`
--

INSERT INTO `transportation` (`sid`, `transport_kind`) VALUES
(1, 'train'),
(2, 'plan'),
(3, 'curise');

-- --------------------------------------------------------

--
-- 資料表結構 `trans_mainlists`
--

CREATE TABLE `trans_mainlists` (
  `sid` int(11) NOT NULL,
  `user_sid` int(10) NOT NULL,
  `destination_address_main` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `transportation_way` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `boarding_location_main` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `seat_main` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `trans_mainlists`
--

INSERT INTO `trans_mainlists` (`sid`, `user_sid`, `destination_address_main`, `transportation_way`, `schedule`, `boarding_location_main`, `seat_main`) VALUES
(7, 2, ' No. 32, Keyi St., Chunan, Miaoli County, 350, Taiwan(Ljupetje Spaceport Launch Complex)', 'plan', '2022/01/27 - 02', 'JFK', 'A1'),
(19, 3, '', 'curise', '2022-01-27', 'TWKHH', 'A101'),
(35, 4, ' No. 32, Keyi St., Chunan, Miaoli County, 350, Taiwan(Ljupetje Spaceport Launch Complex)', '', '', '', ''),
(36, 5, ' No. 32, Keyi St., Chunan, Miaoli County, 350, Taiwan(Ljupetje Spaceport Launch Complex)', '', '', '', ''),
(37, 6, '', '', '', '', ''),
(38, 7, ' No. 32, Keyi St., Chunan, Miaoli County, 350, Taiwan(Ljupetje Spaceport Launch Complex)', '', '', '', ''),
(39, 8, '', '', '', '', ''),
(40, 30, '', '', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `travel`
--

CREATE TABLE `travel` (
  `sid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `attention` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `travel`
--

INSERT INTO `travel` (`sid`, `name`, `introduction`, `attention`, `price`) VALUES
(3, '雙魚', '所謂雙魚座，關鍵是雙魚座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑。', '所謂雙魚座，關鍵是雙魚座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 10),
(4, '牡羊', '所謂牡羊座，關鍵是牡羊座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。\r\n\r\n', '所謂牡羊座，關鍵是牡羊座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 20),
(5, '獅子', '所謂獅子座，關鍵是獅子座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。\n\n', '所謂獅子座，關鍵是獅子座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 30),
(6, '射手', '所謂射手座，關鍵是射手座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。\n\n', '所謂射手座，關鍵是射手座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 40),
(7, '金牛', '所謂金牛座，關鍵是金牛座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。\n\n', '所謂金牛座，關鍵是金牛座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 50),
(8, '處女', '所謂處女座，關鍵是處女座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。\n\n', '所謂處女座，關鍵是處女座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 60),
(9, '摩羯', '所謂摩羯座，關鍵是摩羯座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。\n\n', '所謂摩羯座，關鍵是摩羯座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 70),
(10, '雙子', '所謂雙子座，關鍵是雙子座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。\n\n', '所謂雙子座，關鍵是雙子座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 80),
(11, '天秤', '所謂天秤座，關鍵是天秤座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', '所謂天秤座，關鍵是天秤座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 90),
(12, '水瓶', '所謂水瓶座，關鍵是水瓶座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。\n\n', '所謂水瓶座，關鍵是水瓶座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 100),
(53, '巨蟹', '所謂巨蟹座，關鍵是巨蟹座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', '所謂巨蟹座，關鍵是巨蟹座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 110),
(59, '天蠍', '所謂天蠍座，關鍵是天蠍座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', '所謂天蠍座，關鍵是天蠍座需要如何解讀。萊蒙托夫在過去曾經講過，意志不可強迫。這句話幾乎解讀出了問題的根本。當前最急迫的事，想必就是釐清疑惑了。', 120);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `img` longblob DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `country_sid` varchar(255) NOT NULL,
  `create-date` datetime NOT NULL,
  `update-date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`sid`, `name`, `email`, `password`, `mobile`, `birthday`, `address`, `img`, `nickname`, `country_sid`, `create-date`, `update-date`) VALUES
(2, 'Michael', 'michael@gmail.com', '123456', '0924093700', '1996-11-14', '1301 Pennsylvania St, Denver, CO 80203', NULL, NULL, '1', '2022-01-03 09:25:28', '0000-00-00 00:00:00'),
(3, 'Tina', 'tina@gmail.com', '123456', '0924093700', '1996-11-15', '1301 Pennsylvania St, Denver, CO 80203', NULL, NULL, '5', '2022-01-03 09:25:28', '2022-01-06 10:43:03'),
(4, 'Sam', 'sam@gmail.com', '123456', '0924093700', '1996-11-16', '1301 Pennsylvania St, Denver, CO 778889', NULL, NULL, '3', '2022-01-03 09:25:28', '0000-00-00 00:00:00'),
(5, 'Amanda', 'amanda@gmail.com', '123456', '0924093700', '1996-11-17', '1301 Pe', NULL, NULL, '3', '2022-01-04 09:25:28', '0000-00-00 00:00:00'),
(6, 'Albert', 'albert@gmail.com', '123456', '0924093700', '1996-11-18', '1301 Pennsylvania St, Denver, CO 80203', NULL, NULL, '4', '2022-01-04 09:25:28', '0000-00-00 00:00:00'),
(7, '婷婷', 'tingting@gmail.com', '123456', '0924093700', '1996-11-16', '1301 Pennsylvania St, Denver, CO 80203', NULL, NULL, '3', '2022-01-04 09:25:28', '2022-01-07 14:32:36'),
(8, 'Troy', 'troy@gmail.com', '123456', '0989888999', '1996-11-17', '1301 Pennsylvania St, Denver, CO 80203', NULL, NULL, '3', '2022-01-04 09:25:28', '2022-01-07 16:51:49'),
(30, '欧粑馬', 'obamasemail@yahoo.com', 'wwww1111', '0922092209', '1996-11-14', ' No. 32, Keyi St., Chunan, Miaoli County, 350, Taiwan(Ljupetje Spaceport Launch Complex)', NULL, NULL, '5', '2022-01-11 06:52:35', '2022-01-11 06:52:35'),
(31, 'Obama', 'obama@gmail.com', '123456', '0988999888', '2022-01-11', '0 0 ', NULL, NULL, '1', '2022-01-11 14:14:51', '0000-00-00 00:00:00'),
(32, '6483frei', 'tina384888@gmail.com', '12345678564', '0968543867', '2022-01-20', '1234567890-=', NULL, NULL, '4', '2022-01-11 14:24:52', '0000-00-00 00:00:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `boarding_location`
--
ALTER TABLE `boarding_location`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `country_transportation`
--
ALTER TABLE `country_transportation`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `destination_address`
--
ALTER TABLE `destination_address`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `flight_seat`
--
ALTER TABLE `flight_seat`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `forum_article`
--
ALTER TABLE `forum_article`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `forum_category`
--
ALTER TABLE `forum_category`
  ADD PRIMARY KEY (`cat_sid`);

--
-- 資料表索引 `forum_response`
--
ALTER TABLE `forum_response`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `forum_user`
--
ALTER TABLE `forum_user`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`search_sid`);

--
-- 資料表索引 `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `trans_mainlists`
--
ALTER TABLE `trans_mainlists`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `boarding_location`
--
ALTER TABLE `boarding_location`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart`
--
ALTER TABLE `cart`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `country`
--
ALTER TABLE `country`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `country_transportation`
--
ALTER TABLE `country_transportation`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `destination_address`
--
ALTER TABLE `destination_address`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `element`
--
ALTER TABLE `element`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `flight`
--
ALTER TABLE `flight`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `flight_seat`
--
ALTER TABLE `flight_seat`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `forum_article`
--
ALTER TABLE `forum_article`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `forum_category`
--
ALTER TABLE `forum_category`
  MODIFY `cat_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `forum_response`
--
ALTER TABLE `forum_response`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `forum_user`
--
ALTER TABLE `forum_user`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `search`
--
ALTER TABLE `search`
  MODIFY `search_sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `seats`
--
ALTER TABLE `seats`
  MODIFY `sid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ticket`
--
ALTER TABLE `ticket`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `transportation`
--
ALTER TABLE `transportation`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `trans_mainlists`
--
ALTER TABLE `trans_mainlists`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `travel`
--
ALTER TABLE `travel`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
