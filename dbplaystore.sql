-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 15, 2018 at 07:46 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbplaystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `app_id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `collectionID` int(11) DEFAULT NULL,
  `categoryID` int(11) NOT NULL,
  `developerID` varchar(255) NOT NULL,
  `date_scraped` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`app_id`, `description`, `title`, `url`, `collectionID`, `categoryID`, `developerID`, `date_scraped`) VALUES
('com.instagram.android', 'Instagram is a simple way to capture and share the world’s moments. Follow your friends and family to see what they’re up to, and discover accounts from all over the world that are sharing things you love. Join the community of over 1 billion people and e', 'Instagram', 'https://play.google.com/store/apps/details?id=com.instagram.android', NULL, 56, 'Instagram', '2018-11-15 14:35'),
('com.whatsapp', 'WhatsApp Messenger is a FREE messaging app available for Android and other smartphones. WhatsApp uses your phone\'s Internet connection (4G/3G/2G/EDGE or Wi-Fi, as available) to let you message and call friends and family. Switch from SMS to WhatsApp to se', 'WhatsApp Messenger', 'https://play.google.com/store/apps/details?id=com.whatsapp', NULL, 12, 'WhatsApp+Inc.', '2018-11-14 15:24'),
('io.voodoo.paper2', 'You liked Paper.io ? You\'ll love Paper2.io!\nConquer as much territory as possible and beat the competition.\nA smooth drawing experience!', 'Paper.io 2', 'https://play.google.com/store/apps/details?id=io.voodoo.paper2', NULL, 28, 'VOODOO', '2018-11-14 15:28');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `name`) VALUES
(5, 'ANDROID_WEAR'),
(6, 'ART_AND_DESIGN'),
(7, 'AUTO_AND_VEHICLES'),
(8, 'BEAUTY'),
(9, 'BOOKS_AND_REFERENCE'),
(10, 'BUSINESS'),
(11, 'COMICS'),
(12, 'COMMUNICATION'),
(13, 'DATING'),
(14, 'EDUCATION'),
(15, 'ENTERTAINMENT'),
(16, 'EVENTS'),
(17, 'FAMILY'),
(18, 'FAMILY_ACTION'),
(19, 'FAMILY_BRAINGAMES'),
(20, 'FAMILY_CREATE'),
(21, 'FAMILY_EDUCATION'),
(22, 'FAMILY_MUSICVIDEO'),
(23, 'FAMILY_PRETEND'),
(24, 'FINANCE'),
(25, 'FOOD_AND_DRINK'),
(26, 'GAME_ACTION'),
(27, 'GAME_ADVENTURE'),
(28, 'GAME_ARCADE'),
(29, 'GAME_BOARD'),
(30, 'GAME_CARD'),
(31, 'GAME_CASINO'),
(32, 'GAME_CASUAL'),
(33, 'GAME_EDUCATIONAL'),
(34, 'GAME_MUSIC'),
(35, 'GAME_PUZZLE'),
(36, 'GAME_RACING'),
(37, 'GAME_ROLE_PLAYING'),
(38, 'GAME_SIMULATION'),
(39, 'GAME_SPORTS'),
(40, 'GAME_STRATEGY'),
(41, 'GAME_TRIVIA'),
(42, 'GAME_WORD'),
(43, 'HEALTH_AND_FITNESS'),
(44, 'HOUSE_AND_HOME'),
(45, 'LIBRARIES_AND_DEMO'),
(46, 'LIFESTYLE'),
(47, 'MAPS_AND_NAVIGATION'),
(48, 'MEDICAL'),
(49, 'MUSIC_AND_AUDIO'),
(50, 'NEWS_AND_MAGAZINES'),
(51, 'PARENTING'),
(52, 'PERSONALIZATION'),
(53, 'PHOTOGRAPHY'),
(54, 'PRODUCTIVITY'),
(55, 'SHOPPING'),
(56, 'SOCIAL'),
(57, 'SPORTS'),
(58, 'TOOLS'),
(59, 'TRAVEL_AND_LOCAL'),
(60, 'VIDEO_PLAYERS'),
(61, 'WEATHER');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `collectionID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`collectionID`, `name`) VALUES
(2, 'NEW_FREE'),
(3, 'NEW_PAID'),
(4, 'TOP_FREE'),
(5, 'TOP_PAID'),
(6, 'TOP_GROSSING'),
(7, 'TRENDING');

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `developerID` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dev_url` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`developerID`, `name`, `dev_url`, `email`, `address`) VALUES
('1', 'test', 'test', 'test', 'test'),
('4647998716943242763', 'Ubisoft Entertainment', 'https://www.ubisoft.com/en-gb/game/hungry-shark-world/', 'android.support@ubisoft.com', 'UBISOFT MOBILE GAMES\n38-42 rue Cuvier\n93100 Montreuil Sous Bois\nFRANCE'),
('4658626098021065387', 'Dingo Games', 'http://www.dingogames.com', 'rjsayer@gmail.com', 'James Sayer\n2708A Huband Road\nCourtenay, BC, V9J1L4\nCanada'),
('4864673505117639552', 'mobirix', 'https://www.facebook.com/mobirixplayen', 'help@mobirix.com', '#901 9F JEI PLATZ, 186 ,Gasan digital 1-ro Geumcheon-gu Seoul, Republic of Korea\n08502\nASI|KR|KS013|SEOUL'),
('4894008586539345362', 'GDCompany', 'http://gt-race.net/privacy/PrivacyPolicy.html', 'assistance.gdc@gmail.com', '143403, ?????????? ???????, ?. ???????????, ??. ??????, 8'),
('4902292580226786937', 'Space Ape Games', 'http://www.spaceapegames.com', 'support@fastlanertr.com', '100 New Oxford Street\nLondon\nWC1A 1HB'),
('5584164941825017957', 'Kabam Games, Inc.', 'http://www.playcontestofchampions.com', 'contact@kabam.com', '1118 Alberni Street, Suite 200, Vancouver, v6e1a5, Canada'),
('5630538819012062144', 'Outfit7 Limited', 'http://outfit7.com/contact/android/', 'support@outfit7.com', 'Outfit7 Limited\nAgiou Georgiou\n4607 Pissouri\nCyprus'),
('5700313618786177705', 'Google LLC', 'http://www.google.com/chrome/android', 'apps-help@google.com', '1600 Amphitheatre Parkway, Mountain View 94043'),
('5933611429942957630', 'Miniclip.com', 'http://www.miniclip.com/', 'support@miniclip.com', 'Miniclip SA\nCase Postale 2671\n2001 Neuchâtel\nSwitzerland'),
('6258770168633898802', 'Gameloft', 'http://www.gameloft.com/', 'android.support@gameloft.com', 'Gameloft Inc.\n50 West 23rd Street\n10th FL\nNew York, NY 10010'),
('6367901761320314739', 'Game Insight', 'https://gameinsight.helpshift.com/a/guns-of-boom/', 'support_gob@game-insight.com', 'Antakalnio st. 17, LT-10312, Vilnius, Lithuania'),
('6375024885749937863', 'Play365', 'https://sites.google.com/view/play365/privacy-policy', 'TameikaHastin@gmail.com', '9709 Kenneth Oren drive\nCharlotte, NC 28213\nUnited States'),
('6762212273028554913', 'Halfbrick Studios', 'http://www.halfbrick.com', 'fight@fruitninja.com', '23 Musgrave Road, Red Hill, Queensland 4059, Australia'),
('6790926766572360607', 'Nordcurrent', 'http://www.nordcurrent.com', 'snipersupport@nordcurrent.com', 'Nordcurrent Group UAB\nGostauto 40a,\nVilnius, 03163\nLithuania'),
('7086639890153802127', 'Rockstar Games', 'http://www.rockstargames.com', 'support@rockstargames.com', '622 Broadway\n4th Floor\nNew York NY 10012'),
('7198858100628736130', 'FPS Shooter', 'https://docs.google.com/document/d/1SKtw7QgX2nqzd5BfAF15IfZFN_ntvVaH9r0C1iSeNl4/edit', 'pixelunknown.game@gmail.com', 'Presnenskaya embankment, 12, floor 29, room A28\n??????\n??????\n123317'),
('7277267556905944956', 'Nintendo Co., Ltd.', 'https://supermariorun.com/', 'supermariorun-support@nintendo.co.jp', '??????????????11-1'),
('7309208351846755609', 'Genera Games', 'http://www.generagames.com/', 'indiesupport@generagames.com', 'Calle Cardenal Bueno Monreal\nNúmero 50, planta 2º, puerta 1\n41013 Sevilla'),
('7486814720100409246', 'Playgendary', 'http://www.playgendary.com/', 'support@playgendary.com', 'Landshuter Allee 8-10, 80637 Munich, Germany'),
('7514532260246976284', 'NEKKI', 'https://nekki.helpshift.com/a/shadow-fight-2/?p=android', 'support@nekki.mail.helpshift.com', '116 Gladstonos Street M. KYPRIANOU HOUSE, 3&4 floor, 3032, Limassol, Cyprus.'),
('7891627917012506149', 'Homecooked Games', 'https://hc-games.com', 'oguztecimer@gmail.com', 'Me?rutiyet Mahallesi, Kodaman Sk. No:89, 34363 ?i?li/?stanbul'),
('7891990035506213180', 'SEGA', 'http://help.sega.net', 'googleplay@segaofamerica.zendesk.com', 'SEGA Networks Inc\nSecond Floor, 612 Howard Street\nSan Francisco\nCA 91405'),
('7977642132858801607', 'Cartoon Network', 'http://www.cartoonnetwork.com', 'advanced.platforms@turner.com', '1050 Techwood Drive\nAtlanta, GA 30318'),
('8155782941676464587', 'ZeptoLab', 'http://zeptolab.com', 'cats@zeptolab.com', 'Zeptolab UK\nSuite/ Office/ Flat 161\n2 Old Brompton Road\nSW7 3DQ London'),
('8186084684070471579', 'Fun Games For Free', 'https://www.fungames-forfree.com/games/warmachines', 'support+warmachines@fungames-forfree.com', 'Unit A, 2/F, St. John’s Building, 33 Garden Road, Central | Hong Kong'),
('8347901481645278558', 'Timuz Games', 'http://bestfreegames.co/', 'games@bestfreegames.co', 'Hitech City,\nHyderabad, Telangana.\nIndia'),
('8474288931624668520', 'FT Games', 'http://www.feelingtouch.com/feelingtouch_privacy.htm', 'seasnake.198209@gmail.com', 'RM 1701(228) 17/F HENAN BLDG\nNO 90 JAFFE RD WANCHAI\nHongKong'),
('8532907581042995001', 'Moonton', 'https://forum.mobilelegends.com/forum.php?mod=forumdisplay&fid=47', 'MobileLegendsGame@gmail.com', 'UNIT 17, 9/F, TOWER A, NEW MADARIN PLAZA, No. 14 SCIENCE MUSEUM RD, TST, KL'),
('8638120915920097780', 'Tencent Games', 'http://www.pubgmobile.com', 'PUBGMOBILE_CS@tencentgames.com', '10 ANSON ROAD  #21-07 INTERNATIONAL PLAZA SINGAPORE (079903)'),
('8784294396882762556', 'Kefir!', 'http://kefirgames.ru/en', 'support@kefirgames.com', '102 Lenina Prosp., Office 311\nVolgograd, 400078\nRussia'),
('9060101706093336387', 'HERO Game', 'http://game.yingxiong.com/h5/cc/protocol-en.html', 'theoutlived@herogame.com', '3rd floor, Hongyuan Building, Jiuxianqiao Road, ChaoYang District, Beijing, China'),
('9170985961245337722', 'Futureplay', 'http://www.futureplaygames.com', 'support@futureplaygames.com', 'Kalevankatu 34 A10\n00180 Helsinki\nFinland'),
('Action.io', 'Action.io', 'http://policy.dna9vh4.com/policy.html', 'jiangwentao123654@gmail.com', NULL),
('Axlebolt', 'Axlebolt', 'https://www.facebook.com/Standoff2Official', 'standoff2@axlebolt.com', '420107, Kazan, Tatarstan, Russia'),
('BANDAI+NAMCO+Entertainment+Inc.', 'BANDAI NAMCO Entertainment Inc.', 'http://bandainamcoent.co.jp/', 'ww_gp_dragonball-legends_ad@net.bandai.co.jp', '??????5-37-8?????????????'),
('Bearbit+Studios+B.V.', 'Bearbit Studios B.V.', 'http://www.smashyroad.com/', 'support@bearbitstudios.com', 'Bearbit Studios B.V.\n\nWilgenhorst 13\n2215WS Voorhout\nNetherlands'),
('Chuck+E.+Cheese%27s', 'Chuck E. Cheese\'s', 'http://www.chuckecheese.com', 'memories@cecentertainment.com', '4441 West Airport Freeway\nIrving, TX 75062'),
('Crazy+Labs+by+TabTale', 'Crazy Labs by TabTale', 'https://www.tabtale.com', 'WeCare@TabTale.com', '24 Raul Wallenberg, Ziv towers, Building D, Tel Aviv, Israel, 6971924'),
('End+Game', 'End Game', 'https://zombsroyale.io/', 'yang@masterylvl.com', 'Lol Analytics,LLC\n27780 Novi Rd.\n#220\nNovi, MI 48377'),
('Facebook', 'Facebook', 'https://www.facebook.com/facebook', 'android-support@fb.com', '1 Hacker Way\nMenlo Park, CA 94025'),
('FoxNext+Games', 'FoxNext Games', 'https://www.marvelstrikeforce.com/', 'foxnextgames.support@fox.com', '12121 West Bluff Creek Drive\nPlaya Vista, CA 90064'),
('GARENA+INTERNATIONAL+I+PRIVATE+LIMITED', 'GARENA INTERNATIONAL I PRIVATE LIMITED', 'https://ff.garena.com', 'freefire@garena.com', '1 FUSIONOPOLIS PLACE, 17-10, GALAXIS, Singapore'),
('Good+Job+Games', 'Good Job Games', 'http://www.goodjobgames.com', 'contact@goodjobgames.com', 'Akat Mahallesi Besiktas Istanbul Turkey'),
('HIPSTER+WHALE', 'HIPSTER WHALE', 'http://www.crossyroad.com', 'inappsupport-googleplay@crossyroad.com', 'Level 2\n164 Kings Way\nSouth Melbourne  VIC  3205\nAUSTRALIA'),
('Imangi+Studios', 'Imangi Studios', 'http://www.imangistudios.com/contact.html', 'support-android@imangistudios.com', 'Imangi Studios\n4601 Six Forks Rd\nSuite 121\nRaleigh, NC 27609'),
('Instagram', 'Instagram', 'http://help.instagram.com/', 'android-support@instagram.com', NULL),
('J-PARK', 'J-PARK', 'http://appgame.blogspot.kr', 'pjh097@gmail.com', '??? ??? ??? 133, 810? ( ???? )'),
('Lowtech+Studios', 'Lowtech Studios', 'http://slither.io', 'team@slither.io', 'PO Box 76\nJenison, MI 49429'),
('Pixel+Gun+3D', 'Pixel Gun 3D', 'http://mobile.pixelgun3d.com/', 'android.support@pixelgun3d.com', '3 Themistokli Dervi Street, Julia House, CY-1066 Nicosia, Cyprus'),
('Pixel+Pros', 'Pixel Pros', 'https://app.termly.io/document/privacy-policy/fb33ecf5-d818-4375-bbc2-27542c8c6298', 'info@pixelpros.us', '2959 Makaha Way, San Diego 92154'),
('PIXONIC', 'PIXONIC', 'http://pixonic.com', 'wwr_support@pixonic.com', '243, 28 th Oktovriou Street, 7 th Floor, Apartment 702/802, at Christiana Sea View Court, 3035 Limassol, Cyprus'),
('Playrific+Games', 'Playrific Games', 'https://cannonsnballs.wordpress.com/terms-of-service/', 'spraybubble34@gmail.com', NULL),
('tastypill', 'tastypill', 'http://tastypill.com/', 'support@tastypill.com', '302 Aurora Ave\nWoodstock, GA 30188'),
('Telegram+FZ-LLC', 'Telegram FZ-LLC', 'http://telegram.org', 'support@telegram.org', 'Business Central Towers, Tower A, Office 1003/1004, P.O. Box 501919, Dubai, United Arab Emirates'),
('VOODOO', 'VOODOO', 'http://www.voodoo.io/', 'support@voodoo.io', '82 Rue du Faubourg Saint Martin, 75010 Paris'),
('WhatsApp+Inc.', 'WhatsApp Inc.', 'http://www.whatsapp.com/', 'android@support.whatsapp.com', '1601 Willow Road\nMenlo Park, CA 94025'),
('X+Games+Tube', 'X Games Tube', 'https://sites.google.com/view/carbumperioprivatepolicy/', 'ztdiymobile@gmail.com', '245-251 Hennessy Road, Wan Chai, Hong Kong'),
('ZuoMasterDeveloper', 'ZuoMasterDeveloper', 'http://www.creative-destruction.com', 'support@creative-destruction.com', 'Area: Central And Western, Hong Kong Island\n\nAddress: 23-39, Lyndhurst Street');

-- --------------------------------------------------------

--
-- Table structure for table `method`
--

CREATE TABLE `method` (
  `method_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `perm_id` int(11) NOT NULL,
  `protect_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `method`
--

INSERT INTO `method` (`method_id`, `name`, `perm_id`, `protect_id`) VALUES
(2, '<android.location.LocationManager: void requestLocationUpdates(long,float,android.location.Criteria,android.location.LocationListener,android.os.Looper)>', 4, 1),
(5, '<android.location.LocationManager: java.util.List getProviders(android.location.Criteria,boolean)>', 4, 1),
(6, '<android.location.LocationManager: void requestSingleUpdate(android.location.Criteria,android.app.PendingIntent)>', 4, 1),
(7, '<android.location.LocationManager: android.location.LocationProvider getProvider(java.lang.String)>', 4, 1),
(8, '<android.location.LocationManager: android.location.Location getLastKnownLocation(java.lang.String)>', 4, 1),
(9, '<android.location.LocationManager: boolean isProviderEnabled(java.lang.String)>', 4, 1),
(10, '<android.location.LocationManager: void addProximityAlert(double,double,float,long,android.app.PendingIntent)>', 4, 1),
(11, '<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener)>', 4, 1),
(12, '<android.location.LocationManager: java.lang.String getBestProvider(android.location.Criteria,boolean)>', 4, 1),
(13, '<android.telephony.TelephonyManager: java.util.List getNeighboringCellInfo()>', 4, 1),
(14, '<android.telephony.TelephonyManager: android.telephony.CellLocation getCellLocation()>', 4, 1),
(15, '<android.telephony.TelephonyManager: void listen(android.telephony.PhoneStateListener,int)>', 4, 1),
(16, '<android.location.LocationManager: java.util.List getProviders(boolean)>', 4, 1),
(17, '<android.location.LocationManager: void requestLocationUpdates(long,float,android.location.Criteria,android.app.PendingIntent)>', 4, 1),
(18, '<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.app.PendingIntent)>', 4, 1),
(19, '<android.location.LocationManager: boolean sendExtraCommand(java.lang.String,java.lang.String,android.os.Bundle)>', 4, 1),
(20, '<android.location.LocationManager: void requestSingleUpdate(java.lang.String,android.location.LocationListener,android.os.Looper)>', 4, 1),
(21, '<android.location.LocationManager: void requestSingleUpdate(android.location.Criteria,android.location.LocationListener,android.os.Looper)>', 4, 1),
(22, '<android.location.LocationManager: void requestSingleUpdate(java.lang.String,android.app.PendingIntent)>', 4, 1),
(23, '<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener,android.os.Looper)>', 4, 1),
(24, '<android.location.LocationManager: void requestLocationUpdates(long,float,android.location.Criteria,android.location.LocationListener,android.os.Looper)>', 5, 1),
(25, '<android.location.LocationManager: java.util.List getProviders(android.location.Criteria,boolean)>', 5, 1),
(26, '<android.location.LocationManager: void requestSingleUpdate(android.location.Criteria,android.app.PendingIntent)>', 5, 1),
(27, '<android.location.LocationManager: android.location.LocationProvider getProvider(java.lang.String)>', 5, 1),
(28, '<android.location.LocationManager: android.location.Location getLastKnownLocation(java.lang.String)>', 5, 1),
(29, '<android.location.LocationManager: boolean isProviderEnabled(java.lang.String)>', 5, 1),
(30, '<android.location.LocationManager: void addProximityAlert(double,double,float,long,android.app.PendingIntent)>', 5, 1),
(31, '<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener)>', 5, 1),
(32, '<android.location.LocationManager: java.lang.String getBestProvider(android.location.Criteria,boolean)>', 5, 1),
(33, '<android.telephony.TelephonyManager: java.util.List getNeighboringCellInfo()>', 5, 1),
(34, '<android.telephony.TelephonyManager: android.telephony.CellLocation getCellLocation()>', 5, 1),
(35, '<android.location.LocationManager: java.util.List getProviders(boolean)>', 5, 1),
(36, '<android.location.LocationManager: void requestLocationUpdates(long,float,android.location.Criteria,android.app.PendingIntent)>', 5, 1),
(37, '<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.app.PendingIntent)>', 5, 1),
(38, '<android.location.LocationManager: boolean sendExtraCommand(java.lang.String,java.lang.String,android.os.Bundle)>', 5, 1),
(39, '<android.location.LocationManager: void requestSingleUpdate(java.lang.String,android.location.LocationListener,android.os.Looper)>', 5, 1),
(40, '<android.location.LocationManager: void requestSingleUpdate(android.location.Criteria,android.location.LocationListener,android.os.Looper)>', 5, 1),
(41, '<android.location.LocationManager: void requestSingleUpdate(java.lang.String,android.app.PendingIntent)>', 5, 1),
(42, '<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener,android.os.Looper)>', 5, 1),
(43, '<android.location.LocationManager: boolean sendExtraCommand(java.lang.String,java.lang.String,android.os.Bundle)>', 6, 2),
(44, '<android.location.LocationManager: void clearTestProviderLocation(java.lang.String)>', 7, 3),
(45, '<android.location.LocationManager: void clearTestProviderEnabled(java.lang.String)>', 7, 3),
(46, '<android.location.LocationManager: void addTestProvider(java.lang.String,boolean,boolean,boolean,boolean,boolean,boolean,boolean,int,int)>', 7, 3),
(47, '<android.location.LocationManager: void setTestProviderLocation(java.lang.String,android.location.Location)>', 7, 3),
(48, '<android.location.LocationManager: void removeTestProvider(java.lang.String)>', 7, 3),
(49, '<android.location.LocationManager: void setTestProviderEnabled(java.lang.String,boolean)>', 7, 3),
(50, '<android.location.LocationManager: void setTestProviderStatus(java.lang.String,int,android.os.Bundle,long)>', 7, 3),
(51, '<android.location.LocationManager: void clearTestProviderStatus(java.lang.String)>', 7, 3),
(52, '<android.net.ConnectivityManager: android.net.NetworkInfo getNetworkInfo(int)>', 7, 3),
(53, '<android.net.ConnectivityManager: boolean isActiveNetworkMetered()>', 7, 3),
(54, '<android.net.ConnectivityManager: int getNetworkPreference()>', 7, 3),
(55, '<android.net.ConnectivityManager: void setNetworkPreference(int)>', 7, 3),
(56, '<android.net.ConnectivityManager: android.net.NetworkInfo getActiveNetworkInfo()>', 7, 3),
(57, '<android.net.ConnectivityManager: android.net.NetworkInfo[] getAllNetworkInfo()>', 7, 3),
(58, '<android.net.ConnectivityManager: int stopUsingNetworkFeature(int,java.lang.String)>', 7, 3),
(59, '<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>', 7, 3),
(60, '<android.net.ConnectivityManager: android.net.NetworkInfo getNetworkInfo(int)>', 8, 2),
(61, '<android.net.ConnectivityManager: boolean isActiveNetworkMetered()>', 8, 2),
(62, '<android.net.ConnectivityManager: int getNetworkPreference()>', 8, 2),
(63, '<android.net.ConnectivityManager: void setNetworkPreference(int)>', 8, 2),
(64, '<android.net.ConnectivityManager: android.net.NetworkInfo getActiveNetworkInfo()>', 8, 2),
(65, '<android.net.ConnectivityManager: android.net.NetworkInfo[] getAllNetworkInfo()>', 8, 2),
(66, '<android.net.ConnectivityManager: int stopUsingNetworkFeature(int,java.lang.String)>', 8, 2),
(67, '<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>', 8, 2),
(68, '<android.net.wifi.WifiManager: java.util.List getScanResults()>', 9, 2),
(69, '<android.net.wifi.WifiManager: android.net.DhcpInfo getDhcpInfo()>', 9, 2),
(70, '<android.net.wifi.WifiManager: boolean pingSupplicant()>', 9, 2),
(71, '<android.net.wifi.WifiManager: boolean isWifiEnabled()>', 9, 2),
(72, '<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>', 9, 2),
(73, '<android.net.wifi.WifiManager: android.net.wifi.WifiInfo getConnectionInfo()>', 9, 2),
(74, '<android.net.wifi.WifiManager: int getWifiState()>', 9, 2),
(75, '<android.net.wifi.WifiManager: java.util.List getConfiguredNetworks()>', 9, 2),
(76, '<android.bluetooth.BluetoothAdapter: int getProfileConnectionState(int)>', 10, 2),
(77, '<android.bluetooth.BluetoothDevice: java.lang.String getName()>', 10, 2),
(78, '<android.bluetooth.BluetoothHeadset: java.util.List getDevicesMatchingConnectionStates(int[])>', 10, 2),
(79, '<android.bluetooth.BluetoothHeadset: java.util.List getConnectedDevices()>', 10, 2),
(80, '<android.media.AudioManager: void startBluetoothSco()>', 10, 2),
(81, '<android.bluetooth.BluetoothDevice: android.bluetooth.BluetoothClass getBluetoothClass()>', 10, 2),
(82, '<android.bluetooth.BluetoothHealth: int getConnectionState(android.bluetooth.BluetoothDevice)>', 10, 2),
(83, '<android.bluetooth.BluetoothAdapter: android.os.ParcelUuid[] getUuids()>', 10, 2),
(84, '<android.bluetooth.BluetoothHeadset: boolean isAudioConnected(android.bluetooth.BluetoothDevice)>', 10, 2),
(85, '<android.bluetooth.BluetoothA2dp: java.util.List getConnectedDevices()>', 10, 2),
(86, '<android.bluetooth.BluetoothHealth: boolean isEnabled()>', 10, 2),
(87, '<android.bluetooth.BluetoothA2dp: boolean isEnabled()>', 10, 2),
(88, '<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>', 10, 2),
(89, '<android.bluetooth.BluetoothAdapter: java.util.Set getBondedDevices()>', 10, 2),
(90, '<android.bluetooth.BluetoothHeadset: boolean stopVoiceRecognition(android.bluetooth.BluetoothDevice)>', 10, 2),
(91, '<android.bluetooth.BluetoothDevice: boolean fetchUuidsWithSdp()>', 10, 2),
(92, '<android.bluetooth.BluetoothHealth: boolean unregisterAppConfiguration(android.bluetooth.BluetoothHealthAppConfiguration)>', 10, 2),
(93, '<android.bluetooth.BluetoothAdapter: android.bluetooth.BluetoothServerSocket listenUsingRfcommWithServiceRecord(java.lang.String,java.util.UUID)>', 10, 2),
(94, '<android.bluetooth.BluetoothA2dp: boolean disconnect(android.bluetooth.BluetoothDevice)>', 10, 2),
(95, '<android.bluetooth.BluetoothA2dp: boolean setPriority(android.bluetooth.BluetoothDevice,int)>', 10, 2),
(96, '<android.bluetooth.BluetoothAdapter: int getConnectionState()>', 10, 2),
(97, '<android.bluetooth.BluetoothHeadset: boolean startVoiceRecognition(android.bluetooth.BluetoothDevice)>', 10, 2),
(98, '<android.bluetooth.BluetoothHeadset: boolean connect(android.bluetooth.BluetoothDevice)>', 10, 2),
(99, '<android.bluetooth.BluetoothAdapter: boolean isDiscovering()>', 10, 2),
(100, '<android.net.ConnectivityManager: void setNetworkPreference(int)>', 10, 2),
(101, '<android.bluetooth.BluetoothAdapter: boolean cancelDiscovery()>', 10, 2),
(102, '<android.bluetooth.BluetoothAdapter: boolean isEnabled()>', 10, 2),
(103, '<android.bluetooth.BluetoothHealth: java.util.List getConnectedDevices()>', 10, 2),
(104, '<android.bluetooth.BluetoothAdapter: java.lang.String getName()>', 10, 2),
(105, '<android.bluetooth.BluetoothSocket: void <init>(int,int,boolean,boolean,android.bluetooth.BluetoothDevice,int,android.os.ParcelUuid)>', 10, 2),
(106, '<android.bluetooth.BluetoothA2dp: int getPriority(android.bluetooth.BluetoothDevice)>', 10, 2),
(107, '<android.bluetooth.BluetoothAdapter: int getScanMode()>', 10, 2),
(108, '<android.media.AudioManager: void setMode(int)>', 10, 2),
(109, '<android.bluetooth.BluetoothDevice: android.os.ParcelUuid[] getUuids()>', 10, 2),
(110, '<android.bluetooth.BluetoothHeadset: boolean isEnabled()>', 10, 2),
(111, '<android.bluetooth.BluetoothHealth: boolean disconnectChannel(android.bluetooth.BluetoothDevice,android.bluetooth.BluetoothHealthAppConfiguration,int)>', 10, 2),
(112, '<android.bluetooth.BluetoothHealth: java.util.List getDevicesMatchingConnectionStates(int[])>', 10, 2),
(113, '<android.bluetooth.BluetoothA2dp: boolean isA2dpPlaying(android.bluetooth.BluetoothDevice)>', 10, 2),
(114, '<android.bluetooth.BluetoothDevice: int getBondState()>', 10, 2),
(115, '<android.bluetooth.BluetoothHealth: android.os.ParcelFileDescriptor getMainChannelFd(android.bluetooth.BluetoothDevice,android.bluetooth.BluetoothHealthAppConfiguration)>', 10, 2),
(116, '<android.bluetooth.BluetoothAdapter: boolean startDiscovery()>', 10, 2),
(117, '<android.nfc.NfcAdapter: void dispatch(android.nfc.Tag)>', 10, 2),
(118, '<android.bluetooth.BluetoothAdapter: java.lang.String getAddress()>', 10, 2),
(119, '<android.bluetooth.BluetoothHeadset: int getPriority(android.bluetooth.BluetoothDevice)>', 10, 2),
(120, '<android.bluetooth.BluetoothA2dp: int getConnectionState(android.bluetooth.BluetoothDevice)>', 10, 2),
(121, '<android.bluetooth.BluetoothAdapter: android.bluetooth.BluetoothServerSocket listenUsingInsecureRfcommWithServiceRecord(java.lang.String,java.util.UUID)>', 10, 2),
(122, '<android.bluetooth.BluetoothHeadset: boolean setPriority(android.bluetooth.BluetoothDevice,int)>', 10, 2),
(123, '<android.bluetooth.BluetoothSocket: void connect()>', 10, 2),
(124, '<android.bluetooth.BluetoothAdapter: int getState()>', 10, 2),
(125, '<android.bluetooth.BluetoothHeadset: int getConnectionState(android.bluetooth.BluetoothDevice)>', 10, 2),
(126, '<android.media.AudioManager: void stopBluetoothSco()>', 10, 2),
(127, '<android.bluetooth.BluetoothServerSocket: void <init>(int,boolean,boolean,int)>', 10, 2),
(128, '<android.bluetooth.BluetoothAdapter: boolean setName(java.lang.String)>', 10, 2),
(129, '<android.bluetooth.BluetoothDevice: android.bluetooth.BluetoothSocket createRfcommSocketToServiceRecord(java.util.UUID)>', 10, 2),
(130, '<android.bluetooth.BluetoothDevice: android.bluetooth.BluetoothSocket createInsecureRfcommSocketToServiceRecord(java.util.UUID)>', 10, 2),
(131, '<android.bluetooth.BluetoothHealth: boolean registerSinkAppConfiguration(java.lang.String,int,android.bluetooth.BluetoothHealthCallback)>', 10, 2),
(132, '<android.bluetooth.BluetoothA2dp: boolean connect(android.bluetooth.BluetoothDevice)>', 10, 2),
(133, '<android.net.ConnectivityManager: int stopUsingNetworkFeature(int,java.lang.String)>', 10, 2),
(134, '<android.bluetooth.BluetoothHealth: boolean connectChannelToSource(android.bluetooth.BluetoothDevice,android.bluetooth.BluetoothHealthAppConfiguration)>', 10, 2),
(135, '<android.bluetooth.BluetoothHeadset: boolean disconnect(android.bluetooth.BluetoothDevice)>', 10, 2),
(136, '<android.media.AudioManager: void setMode(int)>', 11, 2),
(137, '<android.bluetooth.BluetoothAdapter: boolean enable()>', 11, 2),
(138, '<android.media.AudioManager: void startBluetoothSco()>', 11, 2),
(139, '<android.bluetooth.BluetoothA2dp: boolean isA2dpPlaying(android.bluetooth.BluetoothDevice)>', 11, 2),
(140, '<android.bluetooth.BluetoothAdapter: boolean startDiscovery()>', 11, 2),
(141, '<android.nfc.NfcAdapter: void dispatch(android.nfc.Tag)>', 11, 2),
(142, '<android.bluetooth.BluetoothHeadset: int getPriority(android.bluetooth.BluetoothDevice)>', 11, 2),
(143, '<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>', 11, 2),
(144, '<android.bluetooth.BluetoothHeadset: boolean stopVoiceRecognition(android.bluetooth.BluetoothDevice)>', 11, 2),
(145, '<android.bluetooth.BluetoothHeadset: boolean setPriority(android.bluetooth.BluetoothDevice,int)>', 11, 2),
(146, '<android.bluetooth.BluetoothA2dp: boolean disconnect(android.bluetooth.BluetoothDevice)>', 11, 2),
(147, '<android.bluetooth.BluetoothHeadset: boolean disconnect(android.bluetooth.BluetoothDevice)>', 11, 2),
(148, '<android.bluetooth.BluetoothA2dp: boolean setPriority(android.bluetooth.BluetoothDevice,int)>', 11, 2),
(149, '<android.bluetooth.BluetoothHeadset: boolean startVoiceRecognition(android.bluetooth.BluetoothDevice)>', 11, 2),
(150, '<android.bluetooth.BluetoothHeadset: boolean connect(android.bluetooth.BluetoothDevice)>', 11, 2),
(151, '<android.media.AudioManager: void stopBluetoothSco()>', 11, 2),
(152, '<android.bluetooth.BluetoothAdapter: boolean setName(java.lang.String)>', 11, 2),
(153, '<android.net.ConnectivityManager: void setNetworkPreference(int)>', 11, 2),
(154, '<android.bluetooth.BluetoothA2dp: boolean connect(android.bluetooth.BluetoothDevice)>', 11, 2),
(155, '<android.bluetooth.BluetoothAdapter: boolean cancelDiscovery()>', 11, 2),
(156, '<android.bluetooth.BluetoothAdapter: boolean disable()>', 11, 2),
(157, '<android.net.ConnectivityManager: int stopUsingNetworkFeature(int,java.lang.String)>', 11, 2),
(158, '<android.media.AudioManager: void setMode(int)>', 12, 3),
(159, '<android.content.ContextWrapper: void removeStickyBroadcast(android.content.Intent)>', 12, 3),
(160, '<android.content.Context: void sendStickyBroadcast(android.content.Intent)>', 12, 3),
(161, '<android.media.AudioManager: void startBluetoothSco()>', 12, 3),
(162, '<android.content.ContextWrapper: void sendStickyOrderedBroadcast(android.content.Intent,android.content.BroadcastReceiver,android.os.Handler,int,java.lang.String,android.os.Bundle)>', 12, 3),
(163, '<android.content.Context: void removeStickyBroadcast(android.content.Intent)>', 12, 3),
(164, '<android.media.AudioManager: void stopBluetoothSco()>', 12, 3),
(165, '<android.content.ContextWrapper: void sendStickyBroadcast(android.content.Intent)>', 12, 3),
(166, '<android.content.Context: void sendStickyOrderedBroadcast(android.content.Intent,android.content.BroadcastReceiver,android.os.Handler,int,java.lang.String,android.os.Bundle)>', 12, 3),
(167, '<android.media.MediaRecorder: void setVideoSource(int)>', 13, 1),
(168, '<android.hardware.Camera: android.hardware.Camera open()>', 13, 1),
(169, '<android.net.ConnectivityManager: void setNetworkPreference(int)>', 14, 3),
(170, '<android.net.ConnectivityManager: boolean requestRouteToHost(int,int)>', 14, 3),
(171, '<android.net.ConnectivityManager: int stopUsingNetworkFeature(int,java.lang.String)>', 14, 3),
(172, '<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>', 14, 3),
(173, '<android.net.wifi.WifiManager: boolean reassociate()>', 15, 2),
(174, '<android.net.wifi.WifiManager: boolean startScan()>', 15, 2),
(175, '<android.net.wifi.WifiManager: void setCountryCode(java.lang.String,boolean)>', 15, 2),
(176, '<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>', 15, 2),
(177, '<android.net.wifi.WifiManager: boolean disableNetwork(int)>', 15, 2),
(178, '<android.net.wifi.WifiManager: int updateNetwork(android.net.wifi.WifiConfiguration)>', 15, 2),
(179, '<android.net.wifi.WifiManager: boolean removeNetwork(int)>', 15, 2),
(180, '<android.net.wifi.WifiManager: boolean reconnect()>', 15, 2),
(181, '<android.net.wifi.WifiManager: int addNetwork(android.net.wifi.WifiConfiguration)>', 15, 2),
(182, '<android.net.wifi.WifiManager: boolean enableNetwork(int,boolean)>', 15, 2),
(183, '<android.net.wifi.WifiManager: boolean disconnect()>', 15, 2),
(184, '<android.net.wifi.WifiManager: boolean setWifiEnabled(boolean)>', 15, 2),
(185, '<android.net.ConnectivityManager: void setNetworkPreference(int)>', 15, 2),
(186, '<android.net.wifi.WifiManager: boolean saveConfiguration()>', 15, 2),
(187, '<android.net.ConnectivityManager: int stopUsingNetworkFeature(int,java.lang.String)>', 15, 2),
(188, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture confirmCredentials(android.accounts.Account,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(189, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture editProperties(java.lang.String,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(190, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(191, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(192, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenByFeatures(java.lang.String,java.lang.String,java.lang.String[],android.app.Activity,android.os.Bundle,android.os.Bundle,android.accounts.AccountManagerCallback,android.os', 16, 1),
(193, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture addAccount(java.lang.String,java.lang.String,java.lang.String[],android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(194, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAccountsByTypeAndFeatures(java.lang.String,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(195, '<android.accounts.AccountManager: void addOnAccountsUpdatedListener(android.accounts.OnAccountsUpdateListener,android.os.Handler,boolean)>', 16, 1),
(196, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture removeAccount(android.accounts.Account,android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(197, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(198, '<android.accounts.AccountManager: android.accounts.Account[] getAccountsByType(java.lang.String)>', 16, 1),
(199, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenLabel(java.lang.String,java.lang.String,android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(200, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenLabel(java.lang.String,java.lang.String,android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(201, '<android.provider.Browser: void clearHistory(android.content.ContentResolver)>', 16, 1),
(202, '<android.accounts.AccountManager: android.accounts.Account[] getAccounts()>', 16, 1),
(203, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture hasFeatures(android.accounts.Account,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>', 16, 1),
(204, '<android.accounts.AccountManager: java.lang.String blockingGetAuthToken(android.accounts.Account,java.lang.String,boolean)>', 16, 1),
(205, '<android.app.ActivityManager: java.util.List getRecentTasks(int,int)>', 17, 2),
(206, '<android.app.ActivityManager: java.util.List getRunningTasks(int)>', 17, 2),
(207, '<android.app.ActivityManager: java.util.List getRunningTasks(int,int,android.app.IThumbnailReceiver)>', 17, 2),
(208, '<android.net.nsd.NsdManager: void <init>(android.content.Context,android.net.nsd.INsdManager)>', 18, 2),
(209, '<android.app.DownloadManager: android.net.Uri getUriForDownloadedFile(long)>', 18, 2),
(210, '<android.net.nsd.NsdManager: void init()>', 18, 2),
(211, '<android.app.DownloadManager: long enqueue(android.app.DownloadManager$Request)>', 18, 2),
(212, '<android.app.ActivityManager: void restartPackage(java.lang.String)>', 19, 2),
(213, '<android.app.ActivityManager: void killBackgroundProcesses(java.lang.String)>', 19, 2),
(214, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture confirmCredentials(android.accounts.Account,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(215, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture editProperties(java.lang.String,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(216, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(217, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture removeAccount(android.accounts.Account,android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(218, '<android.accounts.AccountManager: void clearPassword(android.accounts.Account)>', 20, 2),
(219, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(220, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenLabel(java.lang.String,java.lang.String,android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(221, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(222, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenByFeatures(java.lang.String,java.lang.String,java.lang.String[],android.app.Activity,android.os.Bundle,android.os.Bundle,android.accounts.AccountManagerCallback,android.os', 20, 2),
(223, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture addAccount(java.lang.String,java.lang.String,java.lang.String[],android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(224, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture updateCredentials(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(225, '<android.accounts.AccountManager: void invalidateAuthToken(java.lang.String,java.lang.String)>', 20, 2),
(226, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture hasFeatures(android.accounts.Account,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(227, '<android.accounts.AccountManager: java.lang.String blockingGetAuthToken(android.accounts.Account,java.lang.String,boolean)>', 20, 2),
(228, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAccountsByTypeAndFeatures(java.lang.String,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>', 20, 2),
(229, '<android.media.AudioManager: void setMode(int)>', 21, 2),
(230, '<android.media.AudioManager: void startBluetoothSco()>', 21, 2),
(231, '<android.media.AudioManager: void setSpeakerphoneOn(boolean)>', 21, 2),
(232, '<android.net.sip.SipAudioCall: void setSpeakerMode(boolean)>', 21, 2),
(233, '<android.media.AudioManager: void setBluetoothScoOn(boolean)>', 21, 2),
(234, '<android.media.AudioManager: void setMicrophoneMute(boolean)>', 21, 2),
(235, '<android.media.AudioManager: void setParameter(java.lang.String,java.lang.String)>', 21, 2),
(236, '<android.bluetooth.BluetoothHeadset: boolean stopVoiceRecognition(android.bluetooth.BluetoothDevice)>', 21, 2),
(237, '<android.media.AudioManager: boolean isWiredHeadsetOn()>', 21, 2),
(238, '<android.inputmethodservice.KeyboardView: void setKeyboard(android.inputmethodservice.Keyboard)>', 21, 2),
(239, '<android.inputmethodservice.KeyboardView: boolean onTouchEvent(android.view.MotionEvent)>', 21, 2),
(240, '<android.bluetooth.BluetoothHeadset: boolean startVoiceRecognition(android.bluetooth.BluetoothDevice)>', 21, 2),
(241, '<android.inputmethodservice.KeyboardView: boolean onHoverEvent(android.view.MotionEvent)>', 21, 2),
(242, '<android.media.AudioManager: void stopBluetoothSco()>', 21, 2),
(243, '<android.media.AudioManager: void setParameters(java.lang.String)>', 21, 2),
(244, '<android.media.AudioManager: boolean isBluetoothA2dpOn()>', 21, 2),
(245, '<android.nfc.NfcAdapter: void enableForegroundDispatch(android.app.Activity,android.app.PendingIntent,android.content.IntentFilter[],java.lang.String[][])>', 22, 2),
(246, '<android.nfc.NfcAdapter: void setNdefPushMessage(android.nfc.NdefMessage,android.app.Activity,android.app.Activity[])>', 22, 2),
(247, '<android.nfc.NfcAdapter: void setBeamPushUris(android.net.Uri[],android.app.Activity)>', 22, 2),
(248, '<android.nfc.NfcAdapter: void enableForegroundNdefPush(android.app.Activity,android.nfc.NdefMessage)>', 22, 2),
(249, '<android.nfc.NfcAdapter: void disableForegroundDispatch(android.app.Activity)>', 22, 2),
(250, '<android.nfc.NfcAdapter: void disableForegroundNdefPush(android.app.Activity)>', 22, 2),
(251, '<android.provider.CalendarContract.Instances: android.database.Cursor query(android.content.ContentResolver,java.lang.String[],long,long)>', 23, 1),
(252, '<android.provider.CalendarContract.CalendarAlerts: android.net.Uri insert(android.content.ContentResolver,long,long,long,long,int)>', 23, 1),
(253, '<android.provider.CalendarContract.EventDays: android.database.Cursor query(android.content.ContentResolver,int,int,java.lang.String[])>', 23, 1),
(254, '<android.provider.CalendarContract.Instances: android.database.Cursor query(android.content.ContentResolver,java.lang.String[],long,long,java.lang.String)>', 23, 1),
(255, '<android.provider.CalendarContract.Attendees: android.database.Cursor query(android.content.ContentResolver,long,java.lang.String[])>', 23, 1),
(256, '<android.provider.CalendarContract.Reminders: android.database.Cursor query(android.content.ContentResolver,long,java.lang.String[])>', 23, 1),
(257, '<android.provider.CallLog.Calls: java.lang.String getLastOutgoingCall(android.content.Context)>', 24, 1),
(258, '<android.widget.QuickContactBadge: void assignContactFromEmail(java.lang.String,boolean)>', 25, 1),
(259, '<android.widget.QuickContactBadge: void onClick(android.view.View)>', 25, 1),
(260, '<android.widget.QuickContactBadge: void assignContactFromPhone(java.lang.String,boolean)>', 25, 1),
(261, '<android.telephony.TelephonyManager: java.lang.String getSubscriberId()>', 26, 1),
(262, '<android.telephony.TelephonyManager: java.lang.String getDeviceSoftwareVersion()>', 26, 1),
(263, '<android.telephony.TelephonyManager: void listen(android.telephony.PhoneStateListener,int)>', 26, 1),
(264, '<android.telephony.TelephonyManager: java.lang.String getLine1Number()>', 26, 1),
(265, '<android.telephony.TelephonyManager: java.lang.String getSimSerialNumber()>', 26, 1),
(266, '<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>', 26, 1),
(267, '<android.telephony.TelephonyManager: java.lang.String getVoiceMailAlphaTag()>', 26, 1),
(268, '<android.telephony.TelephonyManager: java.lang.String getVoiceMailNumber()>', 26, 1),
(269, '<android.telephony.TelephonyManager: java.lang.String getVoiceMailNumber()>', 26, 1),
(270, '<android.widget.QuickContactBadge: void assignContactFromPhone(java.lang.String,boolean)>', 27, 1),
(271, '<android.widget.QuickContactBadge: void onClick(android.view.View)>', 27, 1),
(272, '<android.content.ContentResolver: boolean getMasterSyncAutomatically()>', 27, 1),
(273, '<android.content.ContentResolver: java.util.List getPeriodicSyncs(android.accounts.Account,java.lang.String)>', 27, 1),
(274, '<android.content.ContentResolver: boolean getSyncAutomatically(android.accounts.Account,java.lang.String)>', 27, 1),
(275, '<android.content.ContentResolver: int getIsSyncable(android.accounts.Account,java.lang.String)>', 27, 1),
(276, '<android.test.mock.MockContentResolver: boolean getSyncAutomatically(android.accounts.Account,java.lang.String)>', 27, 1),
(277, '<android.test.mock.MockContentResolver: int getIsSyncable(android.accounts.Account,java.lang.String)>', 27, 1),
(278, '<android.test.mock.MockContentResolver: boolean getMasterSyncAutomatically()>', 27, 1),
(279, '<android.widget.QuickContactBadge: void assignContactFromPhone(java.lang.String,boolean)>', 28, 2),
(280, '<android.widget.QuickContactBadge: void onClick(android.view.View)>', 28, 2),
(281, '<android.widget.QuickContactBadge: void assignContactFromEmail(java.lang.String,boolean)>', 28, 2),
(282, '<android.content.ContentResolver: boolean isSyncActive(android.accounts.Account,java.lang.String)>', 29, 2),
(283, '<android.test.mock.MockContentResolver: boolean isSyncActive(android.accounts.Account,java.lang.String)>', 29, 2),
(284, '<android.test.mock.MockContentResolver: boolean isSyncPending(android.accounts.Account,java.lang.String)>', 29, 2),
(285, '<android.test.SyncBaseInstrumentation: void syncProvider(android.net.Uri,java.lang.String,java.lang.String)>', 29, 2),
(286, '<android.content.ContentResolver: android.content.SyncInfo getCurrentSync()>', 29, 2),
(287, '<android.content.ContentResolver: java.util.List getCurrentSyncs()>', 29, 2),
(288, '<android.test.mock.MockContentResolver: android.content.SyncInfo getCurrentSync()>', 29, 2),
(289, '<android.content.ContentResolver: boolean isSyncPending(android.accounts.Account,java.lang.String)>', 29, 2),
(290, '<android.test.mock.MockContentResolver: java.util.List getCurrentSyncs()>', 29, 2),
(291, '<android.provider.UserDictionary.Words: void addWord(android.content.Context,java.lang.String,int,java.lang.String,java.util.Locale)>', 30, 2),
(292, '<android.provider.UserDictionary.Words: void addWord(android.content.Context,java.lang.String,int,int)>', 30, 2),
(293, '<android.speech.SpeechRecognizer: void stopListening()>', 31, 1),
(294, '<android.speech.SpeechRecognizer: void setRecognitionListener(android.speech.RecognitionListener)>', 31, 1),
(295, '<android.speech.SpeechRecognizer: void cancel()>', 31, 1),
(296, '<android.media.AudioRecord: void <init>(int,int,int,int,int)>', 31, 1),
(297, '<android.speech.SpeechRecognizer: void startListening(android.content.Intent)>', 31, 1),
(298, '<android.media.MediaRecorder: void setAudioSource(int)>', 31, 1),
(299, '<android.app.ActivityManager: void moveTaskToFront(int,int,android.os.Bundle)>', 32, 2),
(300, '<android.app.ActivityManager: void moveTaskToFront(int,int)>', 32, 2),
(301, '<android.app.ActivityManager: void killBackgroundProcesses(java.lang.String)>', 33, 2),
(302, '<android.app.ActivityManager: void restartPackage(java.lang.String)>', 33, 2),
(303, '<android.telephony.gsm.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>', 34, 1),
(304, '<android.telephony.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>', 34, 1),
(305, '<android.telephony.gsm.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>', 34, 1),
(306, '<android.telephony.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>', 34, 1),
(307, '<android.telephony.gsm.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>', 34, 1),
(308, '<android.telephony.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>', 34, 1),
(309, '<android.app.AlarmManager: void setTimeZone(java.lang.String)>', 35, 3),
(310, '<android.content.ContextWrapper: void setWallpaper(android.graphics.Bitmap)>', 36, 2),
(311, '<android.app.WallpaperManager: void setBitmap(android.graphics.Bitmap)>', 36, 2),
(312, '<android.content.ContextWrapper: void clearWallpaper()>', 36, 2),
(313, '<android.app.WallpaperManager: void setStream(java.io.InputStream)>', 36, 2),
(314, '<android.app.WallpaperManager: void clear()>', 36, 2),
(315, '<android.content.Context: void setWallpaper(android.graphics.Bitmap)>', 36, 2),
(316, '<android.content.Context: void setWallpaper(java.io.InputStream)>', 36, 2),
(317, '<android.content.Context: void clearWallpaper()>', 36, 2),
(318, '<android.app.WallpaperManager: void setResource(int)>', 36, 2),
(319, '<android.content.ContextWrapper: void setWallpaper(java.io.InputStream)>', 36, 2),
(320, '<android.app.WallpaperManager: void suggestDesiredDimensions(int,int)>', 37, 2),
(321, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture confirmCredentials(android.accounts.Account,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 38, 2),
(322, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture editProperties(java.lang.String,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 38, 2),
(323, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>', 38, 2),
(324, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 38, 2),
(325, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>', 38, 2),
(326, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenByFeatures(java.lang.String,java.lang.String,java.lang.String[],android.app.Activity,android.os.Bundle,android.os.Bundle,android.accounts.AccountManagerCallback,android.os', 38, 2),
(327, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture addAccount(java.lang.String,java.lang.String,java.lang.String[],android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 38, 2),
(328, '<android.accounts.AccountManager: android.accounts.AccountManagerFuture updateCredentials(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>', 38, 2),
(329, '<android.accounts.AccountManager: void invalidateAuthToken(java.lang.String,java.lang.String)>', 38, 2),
(330, '<android.accounts.AccountManager: java.lang.String blockingGetAuthToken(android.accounts.Account,java.lang.String,boolean)>', 38, 2),
(331, '<android.net.sip.SipManager: android.net.sip.SipSession getSessionFor(android.content.Intent)>', 38, 2),
(332, '<android.net.sip.SipManager: void open(android.net.sip.SipProfile,android.app.PendingIntent,android.net.sip.SipRegistrationListener)>', 39, 1),
(333, '<android.net.sip.SipManager: void register(android.net.sip.SipProfile,int,android.net.sip.SipRegistrationListener)>', 39, 1),
(334, '<android.net.sip.SipManager: boolean isOpened(java.lang.String)>', 39, 1),
(335, '<android.net.sip.SipManager: boolean isRegistered(java.lang.String)>', 39, 1),
(336, '<android.net.sip.SipManager: void open(android.net.sip.SipProfile)>', 39, 1),
(337, '<android.net.sip.SipManager: void unregister(android.net.sip.SipProfile,android.net.sip.SipRegistrationListener)>', 39, 1),
(338, '<android.net.sip.SipManager: void close(java.lang.String)>', 39, 1),
(339, '<android.net.sip.SipManager: void setRegistrationListener(java.lang.String,android.net.sip.SipRegistrationListener)>', 39, 1),
(340, '<android.app.DownloadManager: android.net.Uri getUriForDownloadedFile(long)>', 40, 2),
(341, '<android.app.NotificationManager: void notify(int,android.app.Notification)>', 40, 2),
(342, '<android.os.Vibrator: void vibrate(long[],int)>', 40, 2),
(343, '<android.os.Vibrator: void vibrate(long)>', 40, 2),
(344, '<android.app.DownloadManager: long addCompletedDownload(java.lang.String,java.lang.String,boolean,java.lang.String,java.lang.String,long,boolean)>', 40, 2),
(345, '<android.app.NotificationManager: void notify(java.lang.String,int,android.app.Notification)>', 40, 2),
(346, '<android.os.Vibrator: void cancel()>', 40, 2),
(347, '<android.net.sip.SipAudioCall: void onError(int,java.lang.String)>', 41, 2),
(348, '<android.net.sip.SipAudioCall: void close()>', 41, 2),
(349, '<android.media.AsyncPlayer: void stop()>', 41, 2),
(350, '<android.widget.VideoView: void resume()>', 41, 2),
(351, '<android.media.RingtoneManager: void stopPreviousRingtone()>', 41, 2),
(352, '<android.widget.VideoView: void setVideoURI(android.net.Uri,java.util.Map)>', 41, 2),
(353, '<android.media.RingtoneManager: android.media.Ringtone getRingtone(int)>', 41, 2),
(354, '<android.net.sip.SipManager: void close(java.lang.String)>', 41, 2),
(355, '<android.media.Ringtone: void setUri(android.net.Uri)>', 41, 2),
(356, '<android.media.MediaPlayer: void stop()>', 41, 2),
(357, '<android.media.AsyncPlayer: void play(android.content.Context,android.net.Uri,boolean,int)>', 41, 2),
(358, '<android.net.sip.SipAudioCall: void startAudio()>', 41, 2),
(359, '<android.net.sip.SipManager: void open(android.net.sip.SipProfile,android.app.PendingIntent,android.net.sip.SipRegistrationListener)>', 41, 2),
(360, '<android.media.effect.EffectContext: void release()>', 41, 2),
(361, '<android.widget.VideoView: void setVideoPath(java.lang.String)>', 41, 2),
(362, '<android.widget.VideoView: void stopPlayback()>', 41, 2),
(363, '<android.bluetooth.BluetoothHeadset: boolean startVoiceRecognition(android.bluetooth.BluetoothDevice)>', 41, 2),
(364, '<android.widget.VideoView: void suspend()>', 41, 2),
(365, '<android.widget.VideoView: void pause()>', 41, 2),
(366, '<android.widget.VideoView: void release(boolean)>', 41, 2),
(367, '<android.media.Ringtone: void stop()>', 41, 2),
(368, '<android.media.RingtoneManager: android.media.Ringtone getRingtone(android.content.Context,android.net.Uri,int)>', 41, 2),
(369, '<android.media.MediaPlayer: void setWakeMode(android.content.Context,int)>', 41, 2),
(370, '<android.net.sip.SipAudioCall: void close(boolean)>', 41, 2),
(371, '<android.media.Ringtone: void setStreamType(int)>', 41, 2),
(372, '<android.widget.VideoView: void start()>', 41, 2),
(373, '<android.media.MediaPlayer: void pause()>', 41, 2),
(374, '<android.widget.VideoView: void setVideoURI(android.net.Uri)>', 41, 2),
(375, '<android.media.Ringtone: void play()>', 41, 2),
(376, '<android.os.Vibrator: void vibrate(long)>', 41, 2),
(377, '<android.media.MediaPlayer: void reset()>', 41, 2),
(378, '<android.media.RingtoneManager: android.media.Ringtone getRingtone(android.content.Context,android.net.Uri)>', 41, 2),
(379, '<android.media.MediaPlayer: void release()>', 41, 2),
(380, '<android.net.sip.SipAudioCall: void endCall()>', 41, 2),
(381, '<android.media.MediaPlayer: void start()>', 41, 2),
(382, '<android.provider.CalendarContract.CalendarAlerts: android.net.Uri insert(android.content.ContentResolver,long,long,long,long,int)>', 42, 1),
(383, '<android.widget.QuickContactBadge: void assignContactFromPhone(java.lang.String,boolean)>', 43, 1),
(384, '<android.widget.QuickContactBadge: void onClick(android.view.View)>', 43, 1),
(385, '<android.widget.QuickContactBadge: void assignContactFromEmail(java.lang.String,boolean)>', 43, 1),
(386, '<android.app.DownloadManager: android.net.Uri getUriForDownloadedFile(long)>', 44, 1),
(387, '<android.app.DownloadManager: long enqueue(android.app.DownloadManager$Request)>', 44, 1),
(388, '<android.app.DownloadManager: long addCompletedDownload(java.lang.String,java.lang.String,boolean,java.lang.String,java.lang.String,long,boolean)>', 44, 1),
(389, '<android.media.RingtoneManager: void setActualDefaultRingtoneUri(android.content.Context,int,android.net.Uri)>', 45, 3),
(390, '<android.nfc.NfcAdapter: void dispatch(android.nfc.Tag)>', 45, 3),
(391, '<android.net.nsd.NsdManager: void setEnabled(boolean)>', 45, 3),
(392, '<android.bluetooth.BluetoothHeadset: boolean setPriority(android.bluetooth.BluetoothDevice,int)>', 45, 3),
(393, '<android.bluetooth.BluetoothA2dp: boolean setPriority(android.bluetooth.BluetoothDevice,int)>', 45, 3),
(394, '<android.net.ConnectivityManager: void setNetworkPreference(int)>', 45, 3),
(395, '<android.provider.Contacts.People: void markAsContacted(android.content.ContentResolver,long)>', 46, 2),
(396, '<android.provider.Contacts.ContactMethods: void addPostalLocation(android.content.Context,long,double,double)>', 46, 2),
(397, '<android.provider.ContactsContract.ProfileSyncState: android.content.ContentProviderOperation newSetOperation(android.accounts.Account,byte[])>', 46, 2),
(398, '<android.provider.ContactsContract.SyncState: void set(android.content.ContentProviderClient,android.accounts.Account,byte[])>', 46, 2),
(399, '<android.provider.ContactsContract.RawContacts: android.net.Uri getContactLookupUri(android.content.ContentResolver,android.net.Uri)>', 46, 2),
(400, '<android.provider.Contacts.People: android.net.Uri createPersonInMyContactsGroup(android.content.ContentResolver,android.content.ContentValues)>', 46, 2),
(401, '<android.provider.Contacts.People: android.net.Uri addToGroup(android.content.ContentResolver,long,java.lang.String)>', 46, 2),
(402, '<android.provider.Contacts.People: android.net.Uri addToMyContactsGroup(android.content.ContentResolver,long)>', 46, 2),
(403, '<android.provider.Contacts.Settings: void setSetting(android.content.ContentResolver,java.lang.String,java.lang.String,java.lang.String)>', 46, 2),
(404, '<android.provider.ContactsContract.SyncState: android.content.ContentProviderOperation newSetOperation(android.accounts.Account,byte[])>', 46, 2),
(405, '<android.provider.ContactsContract.Contacts: android.net.Uri getLookupUri(android.content.ContentResolver,android.net.Uri)>', 46, 2),
(406, '<android.test.mock.MockContentResolver: void setIsSyncable(android.accounts.Account,java.lang.String,int)>', 47, 2),
(407, '<android.test.mock.MockContentResolver: void setSyncAutomatically(android.accounts.Account,java.lang.String,boolean)>', 47, 2),
(408, '<android.test.mock.MockContentResolver: void addPeriodicSync(android.accounts.Account,java.lang.String,android.os.Bundle,long)>', 47, 2),
(409, '<android.test.mock.MockContentResolver: void removePeriodicSync(android.accounts.Account,java.lang.String,android.os.Bundle)>', 47, 2),
(410, '<android.test.mock.MockContentResolver: void setMasterSyncAutomatically(boolean)>', 47, 2),
(411, '<android.test.SyncBaseInstrumentation: void cancelSyncsandDisableAutoSync()>', 47, 2),
(412, '<android.content.ContentResolver: void addPeriodicSync(android.accounts.Account,java.lang.String,android.os.Bundle,long)>', 47, 2),
(413, '<android.content.ContentResolver: void setSyncAutomatically(android.accounts.Account,java.lang.String,boolean)>', 47, 2),
(414, '<android.content.ContentResolver: void setIsSyncable(android.accounts.Account,java.lang.String,int)>', 47, 2),
(415, '<android.content.ContentResolver: void setMasterSyncAutomatically(boolean)>', 47, 2),
(416, '<android.content.ContentResolver: void removePeriodicSync(android.accounts.Account,java.lang.String,android.os.Bundle)>', 47, 2),
(417, '<android.provider.UserDictionary.Words: void addWord(android.content.Context,java.lang.String,int,int)>', 48, 2),
(418, '<android.provider.UserDictionary.Words: void addWord(android.content.Context,java.lang.String,int,java.lang.String,java.util.Locale)>', 48, 2),
(419, '<android.provider.Browser: void deleteFromHistory(android.content.ContentResolver,java.lang.String)>', 49, 2),
(420, '<android.provider.Browser: void addSearchUrl(android.content.ContentResolver,java.lang.String)>', 49, 2),
(421, '<android.provider.Browser: android.database.Cursor getAllVisitedUrls(android.content.ContentResolver)>', 49, 2),
(422, '<android.provider.Browser: boolean canClearHistory(android.content.ContentResolver)>', 49, 2),
(423, '<android.provider.Browser: void updateVisitedHistory(android.content.ContentResolver,java.lang.String,boolean)>', 49, 2),
(424, '<android.provider.Browser: java.lang.String[] getVisitedHistory(android.content.ContentResolver)>', 49, 2),
(425, '<android.provider.Browser: void truncateHistory(android.content.ContentResolver)>', 49, 2),
(426, '<android.provider.Browser: void clearSearches(android.content.ContentResolver)>', 49, 2),
(427, '<android.provider.Browser: void clearHistory(android.content.ContentResolver)>', 49, 2),
(428, '<android.provider.Browser: android.database.Cursor getAllBookmarks(android.content.ContentResolver)>', 49, 2),
(429, '<android.provider.Browser: void deleteHistoryTimeFrame(android.content.ContentResolver,long,long)>', 49, 2),
(430, '<android.provider.Browser: void truncateHistory(android.content.ContentResolver)>', 50, 2),
(431, '<android.provider.Browser: void deleteFromHistory(android.content.ContentResolver,java.lang.String)>', 50, 2),
(432, '<android.provider.Browser: void addSearchUrl(android.content.ContentResolver,java.lang.String)>', 50, 2),
(433, '<android.provider.Browser: void clearHistory(android.content.ContentResolver)>', 50, 2),
(434, '<android.provider.Browser: void clearSearches(android.content.ContentResolver)>', 50, 2),
(435, '<android.provider.Browser: void updateVisitedHistory(android.content.ContentResolver,java.lang.String,boolean)>', 50, 2),
(436, '<android.provider.Browser: void deleteHistoryTimeFrame(android.content.ContentResolver,long,long)>', 50, 2),
(437, '<android.provider.VoicemailContract.Status: android.net.Uri buildSourceUri(java.lang.String)>', 51, 1),
(438, '<android.provider.VoicemailContract.Voicemails: android.net.Uri buildSourceUri(java.lang.String)>', 51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `perm_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `protect_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`perm_id`, `name`, `protect_id`) VALUES
(4, 'android.permission.ACCESS_COARSE_LOCATION', 1),
(5, 'android.permission.ACCESS_FINE_LOCATION', 1),
(6, 'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS', 2),
(7, 'android.permission.ACCESS_MOCK_LOCATION', 3),
(8, 'android.permission.ACCESS_NETWORK_STATE', 2),
(9, 'android.permission.ACCESS_WIFI_STATE', 2),
(10, 'android.permission.BLUETOOTH', 2),
(11, 'android.permission.BLUETOOTH_ADMIN', 2),
(12, 'android.permission.BROADCAST_STICKY', 3),
(13, 'android.permission.CAMERA', 1),
(14, 'android.permission.CHANGE_NETWORK_STATE', 3),
(15, 'android.permission.CHANGE_WIFI_STATE', 2),
(16, 'android.permission.GET_ACCOUNTS', 1),
(17, 'android.permission.GET_TASKS', 2),
(18, 'android.permission.INTERNET', 2),
(19, 'android.permission.KILL_BACKGROUND_PROCESSES', 2),
(20, 'android.permission.MANAGE_ACCOUNTS', 2),
(21, 'android.permission.MODIFY_AUDIO_SETTINGS', 2),
(22, 'android.permission.NFC', 2),
(23, 'android.permission.READ_CALENDAR', 1),
(24, 'android.permission.READ_CALL_LOG', 1),
(25, 'android.permission.READ_CONTACTS', 1),
(26, 'android.permission.READ_PHONE_STATE', 1),
(27, 'android.permission.READ_SYNC_SETTINGS', 1),
(28, 'android.permission.READ_SOCIAL_STREAM', 2),
(29, 'android.permission.READ_SYNC_STATS', 2),
(30, 'android.permission.READ_USER_DICTIONARY', 2),
(31, 'android.permission.RECORD_AUDIO', 1),
(32, 'android.permission.REORDER_TASKS', 2),
(33, 'android.permission.RESTART_PACKAGES', 2),
(34, 'android.permission.SEND_SMS', 1),
(35, 'android.permission.SET_TIME_ZONE', 3),
(36, 'android.permission.SET_WALLPAPER', 2),
(37, 'android.permission.SET_WALLPAPER_HINTS', 2),
(38, 'android.permission.USE_CREDENTIALS', 2),
(39, 'android.permission.USE_SIP', 1),
(40, 'android.permission.VIBRATE', 2),
(41, 'android.permission.WAKE_LOCK', 2),
(42, 'android.permission.WRITE_CALENDAR', 1),
(43, 'android.permission.WRITE_CONTACTS', 1),
(44, 'android.permission.WRITE_EXTERNAL_STORAGE', 1),
(45, 'android.permission.WRITE_SETTINGS', 3),
(46, 'android.permission.WRITE_SOCIAL_STREAM', 2),
(47, 'android.permission.WRITE_SYNC_SETTINGS', 2),
(48, 'android.permission.WRITE_USER_DICTIONARY', 2),
(49, 'com.android.browser.permission.READ_HISTORY_BOOKMARKS', 2),
(50, 'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS', 2),
(51, 'com.android.voicemail.permission.ADD_VOICEMAIL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `perm_declared`
--

CREATE TABLE `perm_declared` (
  `app_id` varchar(255) NOT NULL,
  `perm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perm_declared`
--

INSERT INTO `perm_declared` (`app_id`, `perm_id`) VALUES
('com.instagram.android', 5),
('com.instagram.android', 8),
('com.instagram.android', 9),
('com.instagram.android', 13),
('com.instagram.android', 16),
('com.instagram.android', 18),
('com.instagram.android', 21),
('com.instagram.android', 25),
('com.instagram.android', 26),
('com.instagram.android', 31),
('com.instagram.android', 38),
('com.instagram.android', 40),
('com.instagram.android', 41),
('com.instagram.android', 44),
('io.voodoo.paper2', 8),
('io.voodoo.paper2', 9),
('io.voodoo.paper2', 18);

-- --------------------------------------------------------

--
-- Table structure for table `perm_exist`
--

CREATE TABLE `perm_exist` (
  `perm_id` int(11) NOT NULL,
  `app_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perm_exist`
--

INSERT INTO `perm_exist` (`perm_id`, `app_id`) VALUES
(5, 'com.instagram.android'),
(8, 'com.instagram.android'),
(8, 'io.voodoo.paper2'),
(9, 'com.instagram.android'),
(9, 'io.voodoo.paper2'),
(13, 'com.instagram.android'),
(16, 'com.instagram.android'),
(18, 'com.instagram.android'),
(18, 'io.voodoo.paper2'),
(21, 'com.instagram.android'),
(25, 'com.instagram.android'),
(26, 'com.instagram.android'),
(31, 'com.instagram.android'),
(38, 'com.instagram.android'),
(40, 'com.instagram.android'),
(41, 'com.instagram.android'),
(44, 'com.instagram.android');

-- --------------------------------------------------------

--
-- Table structure for table `protection`
--

CREATE TABLE `protection` (
  `protect_id` int(11) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protection`
--

INSERT INTO `protection` (`protect_id`, `level`) VALUES
(1, 'Dangerous'),
(2, 'normal'),
(3, 'Signature');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `FK_Collection` (`collectionID`),
  ADD KEY `FK_Category` (`categoryID`),
  ADD KEY `developerID` (`developerID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`collectionID`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`developerID`);

--
-- Indexes for table `method`
--
ALTER TABLE `method`
  ADD PRIMARY KEY (`method_id`),
  ADD KEY `FK_ProtectID` (`protect_id`),
  ADD KEY `FK_PermID` (`perm_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`perm_id`),
  ADD KEY `FK_ProtectID` (`protect_id`),
  ADD KEY `protect_id` (`protect_id`) USING BTREE;

--
-- Indexes for table `perm_declared`
--
ALTER TABLE `perm_declared`
  ADD PRIMARY KEY (`app_id`,`perm_id`),
  ADD KEY `FK_App_Id` (`app_id`),
  ADD KEY `FK_Perm_Id` (`perm_id`);

--
-- Indexes for table `perm_exist`
--
ALTER TABLE `perm_exist`
  ADD PRIMARY KEY (`perm_id`,`app_id`),
  ADD KEY `FK_App_Id` (`app_id`),
  ADD KEY `Fk_Perm_Id` (`perm_id`) USING BTREE;

--
-- Indexes for table `protection`
--
ALTER TABLE `protection`
  ADD PRIMARY KEY (`protect_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `collectionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `method`
--
ALTER TABLE `method`
  MODIFY `method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `perm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `protection`
--
ALTER TABLE `protection`
  MODIFY `protect_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app`
--
ALTER TABLE `app`
  ADD CONSTRAINT `FK_Category` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`),
  ADD CONSTRAINT `FK_Collection` FOREIGN KEY (`collectionID`) REFERENCES `collections` (`collectionID`),
  ADD CONSTRAINT `app_ibfk_1` FOREIGN KEY (`developerID`) REFERENCES `developer` (`developerID`);

--
-- Constraints for table `method`
--
ALTER TABLE `method`
  ADD CONSTRAINT `FK_PermID` FOREIGN KEY (`perm_id`) REFERENCES `permissions` (`perm_id`),
  ADD CONSTRAINT `FK_ProtectID` FOREIGN KEY (`protect_id`) REFERENCES `protection` (`protect_id`);

--
-- Constraints for table `perm_declared`
--
ALTER TABLE `perm_declared`
  ADD CONSTRAINT `perm.declared_FK_AppID` FOREIGN KEY (`app_id`) REFERENCES `app` (`app_id`),
  ADD CONSTRAINT `perm.declared_FK_PermID` FOREIGN KEY (`perm_id`) REFERENCES `permissions` (`perm_id`);

--
-- Constraints for table `perm_exist`
--
ALTER TABLE `perm_exist`
  ADD CONSTRAINT `pem.exist_FK_App_Id` FOREIGN KEY (`app_id`) REFERENCES `app` (`app_id`),
  ADD CONSTRAINT `perm_exist_ibfk_1` FOREIGN KEY (`perm_id`) REFERENCES `permissions` (`perm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
