-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 16, 2022 at 02:59 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ispan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `id` int(10) UNSIGNED NOT NULL,
  `cname` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cust`
--

INSERT INTO `cust` (`id`, `cname`, `tel`, `birthday`) VALUES
(1, 'brad', '123', '1999-01-02'),
(2, 'Justin', '1234', '1999-05-06'),
(4, 'Brad', '9487', '1999-03-04'),
(5, 'Brad', '9487', '1999-03-04'),
(6, 'Brad', '9487', '1999-03-04'),
(7, 'Brad', '9487', '1999-03-04'),
(8, 'Brad', '9487', '1999-03-04'),
(9, 'Brad', '9487', '1999-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `addr` varchar(256) NOT NULL,
  `tel` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `town` varchar(256) NOT NULL,
  `pic` varchar(256) NOT NULL,
  `lat` varchar(256) NOT NULL,
  `lng` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `addr`, `tel`, `city`, `town`, `pic`, `lat`, `lng`) VALUES
(1, '湖莓宴餐坊', '苗栗縣大湖鄉富興村八寮彎2-7號4樓', '037-995677', '苗栗縣', '大湖鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151007173924.jpg', '24.4402288', '120.876103'),
(2, '神雕邨複合式茶棧', '苗栗縣三義鄉廣盛村廣聲新城38鄰2巷26號', '037-875858', '苗栗縣', '三義鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151007173728.jpg', '24.4053747', '120.760789'),
(3, '甘露自然蔬食餐廳', '苗栗縣三義鄉廣盛村中正路 80號 /苗栗縣通霄鎮楓樹里楓樹窩92-2號', '037-877546 ', '苗栗縣', '三義鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151007173235.jpg', '24.4146177', '120.772363'),
(4, '卓也小屋田媽媽', '苗栗縣三義鄉雙潭村崩山下 1-9 號', '(037) 879-198', '苗栗縣', '三義鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102094332.jpg', '24.3914167', '120.793373'),
(5, '秘密花園', '苗栗縣西湖鄉金獅村茶亭6號', '037-923029', '苗栗縣', '西湖鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102114827.jpg', '24.5510936', '120.784089'),
(6, '龍門口活魚餐廳', '苗栗縣南庄鄉獅山村15鄰165號', '037-822829', '苗栗縣', '南庄鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102115013.jpg', '24.634451', '121.012781'),
(7, '巧軒餐館', '苗栗縣公館鄉石墻村11鄰223-1號 ', '037-226868', '苗栗縣', '公館鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102115125.jpg', '24.4722121', '120.819438'),
(8, '金葉山莊餐飲部', '苗栗縣卓蘭鎮豐田里13鄰185號', '04-25892292', '苗栗縣', '卓蘭鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102115236.jpg', '24.3289359', '120.821143'),
(9, '建成有機農場', '台中市北屯區軍功里建成巷16號', '04-22391019   ', '臺中市', '北屯區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102115355.jpg', '24.186409', '120.721109'),
(10, '麻芛糕餅工作坊', '台中市南屯區萬和路一段94號', '04-23899857', '臺中市', '南屯區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102121003.jpg', '24.1384674', '120.639664'),
(11, '議蘆餐廳', '台中市霧峰區中正路734號', '04-23338818', '臺中市', '霧峰區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102121043.jpg', '24.0596532', '120.698056'),
(12, '后里傳統米食舖', '台中市后里區仁里村圳尞路67號', '04-25575171', '臺中市', '后里區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102144158.jpg', '24.3088765', '120.722370'),
(13, '欣燦客家小館', '台中市潭子區興華一路219號', '04-25345178 ', '臺中市', '潭子區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102144349.jpg', '24.2084682', '120.703266'),
(14, '石圍牆客家田園小吃', '台中市東勢區茂興里東蘭路196-65 號', '04-25879197', '臺中市', '東勢區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102145151.jpg', '24.2892535', '120.796522'),
(15, '石岡傳統美食小舖', '台中市石岡區九房村豐勢路889-1號', '04-25721490', '臺中市', '石岡區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102145243.jpg', '24.2749995', '120.780480'),
(16, '清水追菜香', '台中市清水區清水里中山路333號2樓', '04-26221188 ', '臺中市', '清水區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102145321.jpg', '24.271447', '120.576177'),
(17, '劉員外餐點米食', '台中市外埔區六分路280巷8號', '04-26832197 ', '臺中市', '外埔區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102162853.jpg', '24.3324888', '120.656466'),
(18, '紫艾烘焙屋', '台中市潭子區南門街121號', ' 手機：0937-229597', '臺中市', '潭子區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102144458.jpg', '24.2168661', '120.700831'),
(19, '蓉貽健康工作坊', '台中市潭子區栗林里中山路三段 275 巷 47 號', '(04) 2535-3748', '臺中市', '潭子區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102144649.jpg', '24.2216107', '120.704339'),
(20, '九個果子', '台中市潭子區東寶村大德一路2段45號', '04-25330351', '臺中市', '潭子區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102144730.jpg', '24.2046868', '120.679966'),
(21, '品佳客家小吃部', '台中市東勢區粵寧里東蘭路34-7號', '04-25870502', '臺中市', '東勢區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102145023.jpg', '24.2640236', '120.826105'),
(22, '東勢阿嬤客家傳統美食', '台中市東勢區東關路民安巷9-1號', '04-25773017', '臺中市', '東勢區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102145113.jpg', '24.2447523', '120.830560'),
(23, '外埔肉粽', '台中市外埔區中山村中山路486號', '04-26834054', '臺中市', '外埔區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102162934.jpg', '24.3386973', '120.656205'),
(24, '森林咖啡屋', '台中市東勢區勢林街6-1號', '04-25872191#727', '臺中市', '東勢區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102163029.jpg', '24.273462', '120.847931'),
(25, '古早雞傳統米食', '彰化縣芬園鄉彰南路5段451巷36號', '049-2524362', '彰化縣', '芬園鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102163111.jpg', '24.0371467', '120.621062'),
(26, '台稉九號體驗館', '彰化縣田中鎮東路里南北街68號', '04-8749211#228', '彰化縣', '田中鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102163212.jpg', '23.8596621', '120.586382'),
(27, '艾馨園', '彰化縣花壇鄉灣東村灣東路239號', '(04)7881318、7874012', '彰化縣', '花壇鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20160901120229.jpg', '24.0317891', '120.576981'),
(28, '陽光水棧', '彰化縣芳苑鄉漁港六路38號', '04-8933323', '彰化縣', '芳苑鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102163331.jpg', '23.966235', '120.346433'),
(29, '漢寶G場', '彰化縣芳苑鄉漢寶村芳漢路漢二段129號', '04-8991027', '彰化縣', '芳苑鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102163415.jpg', '24.0111686', '120.380901'),
(30, '圓夢工坊', '南投縣竹山鎮下橫街38號', '049-2644077#332', '南投縣', '竹山鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102163506.jpg', '23.756698', '120.684630'),
(31, '耄饕客棧', '南投縣竹山鎮延和里安定巷146號1樓', '049-2657828', '南投縣', '竹山鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102163634.jpg', '23.7635721', '120.687017'),
(32, '京麟廚房', '南投縣名間鄉大坑村大廈巷66-66號', '049-2730637', '南投縣', '名間鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102163734.jpg', '23.8565721', '120.670966'),
(33, '田媽媽社區餐廳', '南投市軍功里東山路215號', '049-2203318 ', '南投縣', '南投市', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102163835.jpg', '23.9174168', '120.704938'),
(34, '田媽媽美食館', '南投縣鹿谷鄉中正路一段231號', '049-2751692', '南投縣', '鹿谷鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102164029.jpg', '23.7409705', '120.757563'),
(35, '桑園工坊', '南投縣國姓鄉國姓村1鄰成功街282巷26號', ' 手機：0933-181476', '南投縣', '國姓鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102164345.jpg', '24.0408812', '120.852720'),
(36, '仁上風味坊', '南投縣國姓鄉大石村昌榮巷40-1號', ' 手機：0928-912268', '南投縣', '國姓鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102164420.jpg', '23.9838851', '120.841640'),
(37, '伊娜泰雅風味館', '南投縣仁愛鄉南豐村松原巷 80 號', '0953-558112', '南投縣', '仁愛鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102164528.jpg', '24.0068257', '121.087615'),
(38, '蛤仔輝漁產料理', '雲林縣台西鄉五港村五港路428號', '05-6984911', '雲林縣', '台西鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102164712.jpg', '23.7149614', '120.201218'),
(39, '火雞森林', '嘉義縣新港鄉宮前村新民路254-300號', '05-3741851', '嘉義縣', '新港鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102165406.jpg', '23.5549537', '120.355289'),
(40, '友茶居', '嘉義縣梅山鄉太和樟樹湖1鄰5號', '05-2562307', '嘉義縣', '梅山鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102173912.jpg', '23.5217369', '120.711640'),
(41, '古道廚娘', '嘉義縣竹崎鄉中和村奮起湖165-2號(奮起湖鐵道旁)', '05-2561645', '嘉義縣', '竹崎鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102173953.jpg', '23.5060758', '120.695633'),
(42, '茶香山味屋', '嘉義縣阿里山鄉茶山村3鄰60號', '05-2513278', '嘉義縣', '阿里山鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102174121.jpg', '23.300549', '120.666883'),
(43, '田媽媽 QQ 米香屋', '嘉義縣六腳鄉蒜頭村3鄰23號', '05-3805306 ', '嘉義縣', '六腳鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102174245.jpg', '23.479446', '120.299716'),
(44, '東石采風味', '嘉義縣東石鄉蔦松村22-1號', '05-3796562', '嘉義縣', '東石鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102174509.jpg', '23.4731849', '120.219537'),
(45, '柿菓子手作烘焙坊', '嘉義縣番路鄉新福村8鄰10號', '05-2591846', '嘉義縣', '番路鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102174721.jpg', '23.4576875', '120.542301'),
(46, '鄉土美食坊-米食餐點、麵食餐點', '高雄市仁武區仁武里中正路137號', '07-3711331', '高雄市', '仁武區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103115225.jpg', '22.7013496', '120.347080'),
(47, '羊咩咩的家', '高雄市路竹區甲北里永華路302之96號', '07-6961317', '高雄市', '路竹區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103135155.jpg', '22.8863299', '120.272081'),
(48, '彌鄉緣美食', '高雄市彌陀區漯底村樂安路2號', '07-6170885', '高雄市', '彌陀區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103135233.jpg', '22.76439', '120.243381'),
(49, '戀戀蚵仔寮', '高雄市梓官區漁港2路32號', '07-6192554', '高雄市', '梓官區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103135521.jpg', '22.7258567', '120.256825'),
(50, '虱想起料理便當烘焙產品', '高雄市彌陀區南寮村漁港一街60號', '07-6177063', '高雄市', '彌陀區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103135717.jpg', '22.762474', '120.236034'),
(51, '深夜食堂', '高雄市鳳山區五甲一路451之4號', '07-7551011', '高雄市', '鳳山區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103135821.jpg', '22.6146401', '120.352689'),
(52, '巧婦店', '屏東縣潮州鎮中山路182號', '08-7882011', '屏東縣', '潮州鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103135945.jpg', '', ''),
(53, '走馬瀨田媽媽草香餐坊', '台南市大內區二溪村唭子瓦60號 ', '06-5760123#3003、3008', '臺南市', '大內區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102181604.jpg', '23.1421962', '23.1421962'),
(54, '鹽水鎮農會田媽媽農產美食坊', '台南市鹽水區中山路49號', '066521177/066525071', '臺南市', '鹽水區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102181527.jpg', '23.3198853', '120.265829'),
(55, 'ㄋㄋ 寶傳統米麵食餐點', '台南市柳營區士林村柳營路2段77號', '06-622-3994', '臺南市', '柳營區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151102181945.jpg', '23.2778199', '120.312328'),
(56, '村長庭園咖啡', '台南市東山區高原村高原100-9號', '06-6861885', '臺南市', '東山區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103104159.jpg', '23.28544', '120.496241'),
(57, '仙湖農場 (仙湖休閒農場)', '台南市東山區南勢村1鄰賀老寮6-2號', '06-6863635', '臺南市', '東山區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103104615.jpg', '23.283982', '120.491207'),
(58, '故鄉情蔬菜醃漬', '台南市官田區官田村59-40號', '06-6900331', '臺南市', '官田區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20160930153347.jpg', '', ''),
(59, '台南鴨莊', '台南市官田區渡頭村29鄰三塊厝178-1號', '06-6901101', '臺南市', '官田區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103114018.jpg', '23.1535588', '120.343906'),
(60, '官豐美食餐廳', '台南市官田區隆田村文化街25號', '06-6901044', '臺南市', '官田區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20160930122337.jpg', '23.193826', '120.316139'),
(61, '菱成粽藝坊', '台南市官田區湖山里烏山頭7-1號', '06-6981921', '臺南市', '官田區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103114110.jpg', '23.202222', '120.368333'),
(62, '農特產水果酥烘焙坊', '台南市山上區山上村238號', '06-5783649', '臺南市', '山上區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103114508.jpg', '23.1028361', '120.357900'),
(63, '采竹鄉美食', '台南市龍崎區崎頂村7鄰新市子223號', '06-5941114', '臺南市', '龍崎區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103114630.jpg', '22.966049', '120.360127'),
(64, '大坑休閒農場', '台南市新化區大坑里82號', '06-5941555 ', '臺南市', '新化區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103114730.jpg', '22.9540045', '120.378138'),
(65, '臺江美食棧', '台南市安南區四草里大眾路360-6號', '06-2842427 ', '臺南市', '安南區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103114842.jpg', '23.019784', '120.135165'),
(66, '長盈海味屋', '台南市北門區三寮灣慈安里484號', '06-7850577 ', '臺南市', '北門區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103114933.jpg', '23.241465', '120.109740'),
(67, '阿里港田媽媽', '屏東縣里港鄉春林村中山路24號', '08-7758406', '屏東縣', '里港鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103140109.jpg', '22.776136', '120.494524'),
(68, '魩之鄉休閒咖啡', '屏東縣枋寮鄉保生村保生路437號', '08-8781324', '屏東縣', '枋寮鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103140156.jpg', '22.363132', '120.594226'),
(69, '東港美食園', '屏東縣東港鎮朝安里新生三路175號', '08-8323122', '屏東縣', '東港鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103140300.jpg', '22.4675985', '120.442814'),
(70, '東遊季養生美食餐館', '台東縣卑南鄉溫泉村溫泉路376巷18號', '089-516111', '臺東縣', '卑南鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20161027120113.jpg', '22.6966889', '121.01824'),
(71, '初鹿黃金果班', '台東縣卑南鄉明峰村牧場28鄰6號', '089-572397', '臺東縣', '卑南鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151011.jpg', '22.8572027', '121.108024'),
(72, '田媽媽米香園', '台東縣關山鎮德高里2鄰11號', '089-931473', '臺東縣', '關山鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151053.jpg', '23.0610213', '121.168735'),
(73, '池農養生美食餐坊', '台東縣池上鄉新興村7鄰85-6號', '089-862203#36', '臺東縣', '池上鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151139.jpg', '23.1123826', '121.203033'),
(74, '正一茶園餐坊', '台東縣鹿野鄉永安村7鄰永安路588號', '089-551818 ', '臺東縣', '鹿野鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151221.jpg', '22.9334917', '121.118225'),
(75, '旗魚咖啡', '台東縣成功鎮大同路65-1號', '089-854899 ', '臺東縣', '成功鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151307.jpg', '23.102968', '121.375777'),
(76, '台11線花田料理餐館', '台東縣成功鎮忠孝里美山路139號', '089-871848', '臺東縣', '成功鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151353.jpg', '23.1556804', '121.399820'),
(77, '青山農場', '台東縣太麻里鄉大王村佳崙196號', '089-781677 ', '臺東縣', '太麻里鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151437.jpg', '22.6355349', '120.968516'),
(78, '達基力部落屋', '花蓮縣秀林鄉崇德村7鄰96號', '03-8621033 ', '花蓮縣', '秀林鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151624.jpg', '24.1580846', '121.649521'),
(79, '貞饌美食坊', '花蓮縣新城鄉北埔村26鄰北埔路343號', '03-8268698', '花蓮縣', '新城鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151711.jpg', '24.0378545', '121.602959'),
(80, '田園健康補給站', '花蓮縣壽豐鄉豐坪路2段5號', '03-8655111 ', '花蓮縣', '壽豐鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151805.jpg', '23.8310487', '121.506617'),
(81, '富里養生餐坊', '花蓮縣富里鄉羅山村9鄰7號', '03-8821873', '花蓮縣', '富里鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151857.jpg', '23.1838646', '121.296967'),
(82, '富麗禾風', '花蓮縣富里鄉羅山村9鄰6號', '03-8821991', '花蓮縣', '富里鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103151948.jpg', '23.1838646', '121.296967'),
(83, '魚鮮上岸', '花蓮縣花蓮市港濱路37號', '03-8222968', '花蓮縣', '花蓮市', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103152039.jpg', '24.0062297', '121.638531'),
(84, '米那度海吧餐廳', '花蓮縣豐濱鄉石梯灣港口村76-1號', '03-8781168', '花蓮縣', '豐濱鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103152153.jpg', '23.4936022', '121.505678'),
(85, '星月灣海田料理餐廳', '澎湖縣西嶼鄉大池村131號', '06-9984159 ', '澎湖縣', '西嶼鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103152306.jpg', '23.6228457', '119.507870'),
(86, '元貝漁場料理舫', '澎湖縣白沙鄉歧頭村20-2號', '06-9932305 ', '澎湖縣', '白沙鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103152415.jpg', '23.6499826', '119.609415'),
(87, '鮮豐食堂', '金門縣金沙鎮國中路7號', '082-351633 ', '金門縣', '金沙鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151103152520.jpg', '24.4888915', '118.414127'),
(88, '泰雅風味館', '宜蘭縣大同鄉松羅村玉蘭巷2號', '03-9801903', '宜蘭縣', '大同鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030140458.jpg', '24.6667357', '121.590429'),
(89, '夢田食堂(五結鄉農會夢田觀光米廠)', '宜蘭縣五結鄉孝威村孝威路402號', '03-9506391', '宜蘭縣', '五結鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20160901133833.JPG', '24.7000419', '121.810415'),
(90, '菇鍋美食體驗館', '宜蘭縣冬山鄉永興路二段46-1號', '03-9581157', '宜蘭縣', '冬山鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20160901140206.JPG', '24.6559463', '121.756851'),
(91, '花之泉生活坊', '宜蘭縣員山鄉尚德村八甲路15-1號', '03-9221506', '宜蘭縣', '員山鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030114926.jpg', '24.7286194', '121.704466'),
(92, '金益田園美食坊', '宜蘭縣壯圍鄉新南村霧罕路3號', '03-9253517', '宜蘭縣', '壯圍鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030115033.jpg', '24.7205496', '121.805012'),
(93, '田園香美食坊', '宜蘭縣頭城鎮中崙里三和路363號2樓', '03-9774778', '宜蘭縣', '頭城鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030115123.jpg', '24.8360797', '121.804543'),
(94, '一佳村養生餐廳', '宜蘭縣冬山鄉中山村中城二路 58 巷 11 號', '03-958-8852', '宜蘭縣', '冬山鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20160118171201.jpg', '24.6273109', '121.746450'),
(95, '茶之鄉', '宜蘭縣大同鄉泰雅路二段28號', '03-9801118', '宜蘭縣', '大同鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030135620.jpg', '24.66446', '121.590085'),
(96, '玉露茶驛站', '宜蘭縣大同鄉松羅村鹿場路10-2號', '03-9801111', '宜蘭縣', '大同鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030140215.jpg', '24.666272', '121.591144'),
(97, '山舍茶園', '宜蘭縣大同鄉松羅村鹿場路10號', '039-802168', '宜蘭縣', '大同鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030140345.jpg', '24.666272', '121.591144'),
(98, '蔥蒜美食館', '宜蘭縣三星鄉義德村中山路31號', '03-9895179', '宜蘭縣', '三星鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030140622.jpg', '24.6679321', '121.652284'),
(99, '北海驛站石農肉粽', '新北市石門區石門村中央路2號', '02-26381005', '新北市', '石門區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030140729.jpg', '25.291834', '121.56555'),
(100, '神仙的窩', '新北市瑞芳區龍潭里逢甲路39號', '02-24965363', '新北市', '瑞芳區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030141633.jpg', '25.1089262', '121.808758'),
(101, '快樂農家米食坊', '新北市坪林區坪林村水柳118-3號', '02-26656041', '新北市', '坪林區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030141857.jpg', '24.9252749', '121.689978'),
(102, '千戶傳奇', '新北市三峽區有木里有木154-3 號', '02-26720748 ', '新北市', '三峽區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030142055.jpg', '24.8451834', '121.449486'),
(103, '海景咖啡簡餐', '新北市貢寮區福隆村東興街6-19號', '02-24992073 ', '新北市', '貢寮區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030142334.jpg', '25.023474', '121.967969'),
(104, '桃仔園烘焙坊', '桃園市桃園區新生路165號', '03-3365303', '桃園市', '桃園區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030144817.jpg', '24.9962219', '121.308044'),
(105, '巧婦米食烘焙點心坊', '桃園市平鎮區南東路2號', '', '桃園市', '平鎮區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030144916.jpg', '24.9197609', '121.211818'),
(106, '寶聰牧場點心坊', '桃園市大園區五權村15鄰中正東路2段24號', '03-3818015', '桃園市', '大園區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030144958.jpg', '25.0264701', '121.231390'),
(107, '耀輝米食點心坊', '桃園市楊梅區瑞原里12鄰91-4號', '03-4758049', '桃園市', '楊梅區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030152516.jpg', '24.9372834', '121.085969'),
(108, '新屋庄米點烘焙坊', '桃園市新屋區中華路242號', '03-4772124#503', '桃園市', '新屋區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20160901122137.jpg', '24.9723113', '121.105403'),
(109, '飛鳳傳情米點坊', '新竹縣芎林鄉文林村文昌街120號', '03-5921173#32', '新竹縣', '芎林鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030152652.jpg', '24.774204', '121.080357'),
(110, '新埔鎮農會特有餐飲美食坊', '新竹縣新埔鎮四座里楊新路一段 322 號', '03-5891658', '新竹縣', '新埔鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030152815.jpg', '24.8312961', '121.088394'),
(111, '月嵋莊', '新竹縣峨眉鄉峨眉村10鄰88號', '0936-031715', '新竹縣', '峨眉鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030152938.jpg', '24.6894118', '121.015997'),
(112, '海岸風情', '新竹市北區南寮街 195 號', '03-5364805', '新竹市', '北區', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030153217.jpg', '24.8480908', '120.929390'),
(113, '八五山泉養殖場', '新竹縣尖石鄉新樂村8鄰36-2號', '03-5842560', '新竹縣', '尖石鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20161027135535.jpg', '24.717516', '121.268399'),
(114, '烘焙西點米食坊', '苗栗市玉清里11鄰復興路四段197號', '037-279502', '苗栗縣', '苗栗市', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030182948.jpg', '24.5667617', '120.829079'),
(115, '牛奶故鄉餐坊', '苗栗縣造橋鄉豐湖村5鄰上山下2號', '037-561126', '苗栗縣', '造橋鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151030183133.jpg', '', ''),
(116, '大坡塘客家農莊', '苗栗縣獅潭鄉豐林村1鄰3-1號', '037-932862', '苗栗縣', '獅潭鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151007175341.jpg', '24.4930123', '120.901564'),
(117, '仙山美食小棧', '苗栗縣獅潭鄉新店村小東勢24-1號', '037-932008', '苗栗縣', '獅潭鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151007174954.jpg', '24.5396694', '120.950200'),
(118, '雲也居一 (雲也居一休閒農場)', '苗栗縣大湖鄉栗林村 9 鄰薑麻園 6 號', '037-951530', '苗栗縣', '大湖鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20160118173959.jpg', '24.3849628', '120.825660'),
(119, '石門客棧', '苗栗縣大湖鄉栗林村16鄰竹橋20號', '037-951129', '苗栗縣', '大湖鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/TainmaMain01/APPLY_D/20151007174205.jpg', '24.3633101', '120.844888'),
(120, '葉山藥園休閒農場', '基隆市七堵區瑪陵坑大成街43號', '02-24565075(葉金印)', '基隆市', '七堵區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151014182256.jpg', '25.1098949', '121.6877652'),
(121, '北新休閒農場', '新北市淡水區忠寮里演戲埔腳 3-2 號', '02-26231428', '新北市', '淡水區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015100918.jpg', '25.1926177', '121.4713779'),
(122, '準休閒農場', '新北市五股區新五路二段 70 號', '02-22922466', '新北市', '五股區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015100553.jpg', '25.0740743', '121.4362209'),
(123, '蕃婆林休閒農場', '新北市三芝區錫板里17鄰蕃婆林44號', '02-26362716、0921-070169', '新北市', '三芝區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015101245.jpg', '25.2373648', '121.4923676'),
(124, '頭城休閒農場', '宜蘭縣頭城鎮更新路 125 號', '03-9772222', '宜蘭縣', '頭城鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20160510113729.jpg', '24.907152', '121.8472792'),
(125, '花泉休閒農場 ', '宜蘭縣員山鄉尚德村八甲路15-1號', '03-9221506(楊六科)', '宜蘭縣', '員山鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151014172622.jpg', '24.7286194', '121.7044667'),
(126, '蓮荷園休閒農場', '桃園市觀音區藍埔里11鄰金華路690號', '03-4871683、03-4776972', '桃園市', '觀音區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151014181909.jpg', '25.0128548', '121.1158935'),
(127, '好時節休閒農場', '桃園市大溪區康莊路三段225號', '03-3889689', '桃園市', '大溪區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151014180221.jpg', '24.8549664', '121.2827270'),
(128, '飛牛牧場休閒農場', '苗栗縣通霄鎮南和里166號', '037-782999', '苗栗縣', '通霄鎮', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151014175509.jpg', '24.4422393', '120.7384526'),
(129, '雲也居一休閒農場', '苗栗縣大湖鄉栗林村薑麻園9鄰6號', '037-951530', '苗栗縣', '大湖鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151014180724.jpg', '24.3849628', '120.827849'),
(130, '森十八休閒農場', '南投縣名間鄉田仔村田仔巷16-8號', '049-2273797', '南投縣', '名間鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151014174400.jpg', '23.865896', '120.674956'),
(131, '獨角仙休閒農場', '嘉義縣中埔鄉石硦村 15 鄰石硦 45-2 號', '(05) 203-0666、(05) 253-5336', '嘉義縣', '中埔鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015104711.jpg', '23.4072537', '120.5500473'),
(132, '南元休閒農場', '台南市柳營區果毅里南湖25號', '06-6990726', '臺南市', '柳營區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015111637.jpg', '23.2541488', '120.3776262'),
(133, '大坑休閒農場', '台南市新化區大坑里82號 ', '06-5941555', '臺南市', '新化區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015110854.jpg', '23.0068316', '120.3904069'),
(134, '仙湖休閒農場', '台南市東山區南勢里賀老寮一鄰6-2號', '06-6863635', '臺南市', '東山區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015103009.jpg', '24.778289', '120.988108'),
(135, '走馬瀨休閒農場', '台南市大內區二溪里唭子瓦 60 號', '06-5760121~3', '臺南市', '大內區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015103848.jpg', '23.122445', '120.4184781'),
(136, '吉園休閒農場', '台南市麻豆區南勢里總爺104-1號', '06-5725715、06-5727689(梁茂隆)', '臺南市', '麻豆區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015104244.jpg', '23.1864136', '120.2696488'),
(137, '春園休閒農場', '台南市七股區看坪村看坪46-10號', '06-7895588(林朝明)', '臺南市', '七股區', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015112514.jpg', '23.1195166', '120.1011836'),
(138, '鶉園休閒農場', '屏東縣萬巒鄉萬金村營區路 1 巷 8 號', '(08) 783-4236', '屏東縣', '萬巒鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151014174847.jpg', '22.6117306', '120.6228502'),
(139, '東遊季養生美食餐館', '台東縣卑南鄉溫泉村溫泉路376巷18號', '089-516111 #700、089-516111 #801(謝小姐、黃先生)', '臺東縣', '卑南鄉', 'https://ezgo.coa.gov.tw/Uploads/opendata/AgriFood01/APPLY_D/20151015105857.jpg', '22.6966841', '121.0204340');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(10) UNSIGNED NOT NULL,
  `account` varchar(100) NOT NULL,
  `passwd` varchar(256) NOT NULL,
  `realname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `account`, `passwd`, `realname`) VALUES
(1, 'brad', '$2y$10$0WlI6XMwxc2xvaDHBA1c8uSYhBQb3L4Iqjpz7NfjArDOzbge2hhx2', '趙令文'),
(5, 'ccc', '$2y$10$OXDCWpllbWBCrRdsoStTk.lXu.HphADfR52TfBcZKAJOywE8HU.f.', 'ccc'),
(7, 'eee4', '$2y$10$pjK9mUgDnBgWM3udBTNwQ.QQ71xE6IqAB0UF5apwuvAqdwF/rRuKa', 'eee3'),
(8, 'fff', '$2y$10$BOeeLoV3/28gfUZjs3sB7OZWYexJUUhoJ7LqJKzUa6t/PBrSa9d6m', 'fff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust`
--
ALTER TABLE `cust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`account`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust`
--
ALTER TABLE `cust`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
