-- phpMyAdmin SQL Dump
-- version 3.4.5deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2012 at 09:25 PM
-- Server version: 5.1.58
-- PHP Version: 5.3.6-13ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `g5`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE IF NOT EXISTS `Categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`cid`, `Category`) VALUES
(2, 'education'),
(3, 'sports'),
(4, 'music'),
(5, 'movies'),
(6, 'history'),
(7, 'comedy');

-- --------------------------------------------------------

--
-- Table structure for table `Channels`
--

CREATE TABLE IF NOT EXISTS `Channels` (
  `chid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `channel_name` text NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`chid`),
  UNIQUE KEY `chid_UNIQUE` (`chid`),
  KEY `uid_Channel` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Channels`
--

INSERT INTO `Channels` (`chid`, `uid`, `channel_name`, `createTime`) VALUES
(3, 1, 'NAnda Kishore', '2012-04-25 20:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `Channels_related`
--

CREATE TABLE IF NOT EXISTS `Channels_related` (
  `chrid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `chid` int(11) NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`chrid`),
  KEY `mid_channel_related` (`mid`),
  KEY `chid_channel_related` (`chid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Channels_related`
--

INSERT INTO `Channels_related` (`chrid`, `mid`, `chid`, `addTime`) VALUES
(2, 39, 3, '2012-04-25 20:37:45'),
(3, 36, 3, '2012-04-25 20:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE IF NOT EXISTS `Comments` (
  `cvid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `comment` blob NOT NULL,
  `PostedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cvid`),
  KEY `uid_Comments` (`uid`),
  KEY `mid_Comments` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `Comments`
--

INSERT INTO `Comments` (`cvid`, `uid`, `mid`, `comment`, `PostedTime`) VALUES
(48, 15, 36, 0x68656c6c6f0d0a, '2012-04-25 22:13:20'),
(50, 15, 39, 0x68726c6c6f0d0a, '2012-04-25 22:27:46'),
(51, 15, 40, 0x68656c6c6f, '2012-04-25 22:31:36'),
(55, 1, 39, 0x6c70276c7027, '2012-04-27 23:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `Downloads`
--

CREATE TABLE IF NOT EXISTS `Downloads` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `dtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` text NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `userID_Download` (`uid`),
  KEY `MediaID_Download` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `Downloads`
--

INSERT INTO `Downloads` (`did`, `uid`, `mid`, `dtime`, `ip`, `type`) VALUES
(27, 1, 32, '2012-04-25 18:32:07', '172.22.112.113', 'image/jpeg'),
(28, 5, 39, '2012-04-27 13:36:59', '66.112.166.177', 'image/jpeg'),
(29, 5, 39, '2012-04-27 13:39:29', '66.112.166.177', 'image/jpeg'),
(30, 5, 39, '2012-04-27 13:41:58', '66.112.166.177', 'image/jpeg'),
(31, 5, 39, '2012-04-27 13:42:36', '66.112.166.177', 'image/jpeg'),
(32, 5, 39, '0000-00-00 00:00:00', '66.112.166.177', 'image/jpeg'),
(33, 5, 39, '0000-00-00 00:00:00', '66.112.166.177', 'image/jpeg'),
(34, 5, 39, '0000-00-00 00:00:00', '66.112.166.177', 'image/jpeg'),
(35, 5, 41, '0000-00-00 00:00:00', '66.112.166.177', 'image/gif'),
(36, 5, 41, '0000-00-00 00:00:00', '66.112.166.177', 'image/gif'),
(37, 1, 44, '0000-00-00 00:00:00', '66.112.166.177', 'image/pjpeg');

-- --------------------------------------------------------

--
-- Table structure for table `Favourites`
--

CREATE TABLE IF NOT EXISTS `Favourites` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `favoritedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`),
  KEY `mid_favourite` (`mid`),
  KEY `uid_favourite` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `Favourites`
--

INSERT INTO `Favourites` (`fid`, `uid`, `mid`, `favoritedTime`) VALUES
(9, 5, 40, '2012-04-27 14:09:41'),
(10, 1, 34, '2012-04-27 23:13:35'),
(11, 1, 44, '2012-04-27 23:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `FriendList`
--

CREATE TABLE IF NOT EXISTS `FriendList` (
  `frid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uid_friend` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`frid`),
  KEY `uid_friend_flist` (`uid_friend`),
  KEY `uid_flist` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `FriendList`
--

INSERT INTO `FriendList` (`frid`, `uid`, `uid_friend`, `status`) VALUES
(5, 5, 1, 1),
(6, 1, 5, 1),
(11, 8, 7, 1),
(12, 7, 8, 1),
(13, 1, 8, 1),
(14, 8, 1, 1),
(15, 1, 7, 1),
(16, 7, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `GroupDisscussions_messages`
--

CREATE TABLE IF NOT EXISTS `GroupDisscussions_messages` (
  `grdmid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `grdid` int(11) NOT NULL,
  `Message` longtext NOT NULL,
  `messageTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`grdmid`),
  KEY `uid_groupMessage` (`uid`),
  KEY `grdid` (`grdid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `GroupDisscussions_messages`
--

INSERT INTO `GroupDisscussions_messages` (`grdmid`, `uid`, `grdid`, `Message`, `messageTime`) VALUES
(19, 5, 6, 'nandu', '2012-04-27 14:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `Group_Discussions`
--

CREATE TABLE IF NOT EXISTS `Group_Discussions` (
  `grdid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `Title` text NOT NULL,
  `startTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`grdid`),
  KEY `uid_groupDiss` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Group_Discussions`
--

INSERT INTO `Group_Discussions` (`grdid`, `uid`, `Title`, `startTime`) VALUES
(5, 13, 'heeelo', '2012-04-27 13:24:09'),
(6, 1, 'METUBE', '2012-04-27 13:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `IP_Address`
--

CREATE TABLE IF NOT EXISTS `IP_Address` (
  `ipid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `userIP` text NOT NULL,
  `time_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ipid`),
  KEY `mid_ipa` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `IP_Address`
--

INSERT INTO `IP_Address` (`ipid`, `mid`, `userIP`, `time_access`) VALUES
(107, 31, '66.112.166.177', '2012-04-28 04:22:07'),
(108, 40, '66.112.166.177', '2012-04-28 04:22:16'),
(109, 43, '66.112.166.177', '2012-04-28 04:22:36'),
(110, 44, '66.112.166.177', '2012-04-28 04:23:11'),
(111, 45, '66.112.166.177', '2012-04-28 05:05:11'),
(112, 35, '66.112.166.177', '2012-04-28 06:35:57'),
(113, 36, '66.112.166.177', '2012-04-28 06:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `Keywords`
--

CREATE TABLE IF NOT EXISTS `Keywords` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `counter` int(11) NOT NULL,
  `Keyword` varchar(255) NOT NULL,
  `accessTime` datetime NOT NULL,
  PRIMARY KEY (`kid`),
  KEY `mid_keywords` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `Keywords`
--

INSERT INTO `Keywords` (`kid`, `mid`, `counter`, `Keyword`, `accessTime`) VALUES
(1, 33, 13, 'hello', '2012-04-25 15:20:54'),
(2, 34, 5, 'google', '2012-04-25 15:26:01'),
(3, 35, 5, 'google', '2012-04-25 15:27:44'),
(4, 35, 7, 'yahoo', '2012-04-25 15:27:44'),
(5, 35, 13, 'facebook', '2012-04-25 15:27:44'),
(8, 36, 25, 'worldcup', '2012-04-25 16:20:51'),
(9, 36, 2, 'dhoni', '2012-04-25 16:20:51'),
(10, 36, 2, 'india', '2012-04-25 16:20:51'),
(11, 36, 2, '2011', '2012-04-25 16:20:51'),
(13, 37, 0, 'hello', '2012-04-25 16:28:05'),
(14, 39, 1, 'people', '2012-04-25 16:35:33'),
(15, 39, 3, 'welfare', '2012-04-25 16:35:33'),
(16, 40, 2, 'Dhoni', '2012-04-25 18:31:10'),
(17, 40, 24, 'WorldCup', '2012-04-25 18:31:10'),
(18, 40, 2, 'india', '2012-04-25 18:31:10'),
(19, 41, 0, 'nani', '2012-04-27 10:10:51'),
(20, 41, 2, 'and', '2012-04-27 10:10:51'),
(21, 41, 0, 'lopo', '2012-04-27 10:10:51'),
(22, 42, 2, 'hello', '2012-04-27 11:22:41'),
(23, 42, 0, 'lol', '2012-04-27 11:22:41'),
(24, 42, 0, 'polo', '2012-04-27 11:22:41'),
(25, 42, 1, 'google', '2012-04-27 11:22:41'),
(26, 42, 0, 'people', '2012-04-27 11:22:41'),
(27, 43, 0, 'helo''s', '2012-04-27 11:36:27'),
(28, 43, 1, 'nani''s', '2012-04-27 11:36:27'),
(29, 43, 0, 'people''s', '2012-04-27 11:36:27'),
(30, 44, 2, 'EPF', '2012-04-27 19:11:58'),
(31, 44, 1, '871', '2012-04-27 19:11:58'),
(32, 44, 0, 'john', '2012-04-27 19:11:58'),
(33, 45, 0, 'world', '2012-04-28 01:04:55'),
(34, 45, 0, 'cup', '2012-04-28 01:04:55'),
(35, 45, 0, 'worldcup', '2012-04-28 01:04:55'),
(36, 46, 0, 'worldcup', '2012-04-28 01:08:49'),
(37, 46, 0, 'dhoni', '2012-04-28 01:08:49'),
(38, 46, 0, 'india', '2012-04-28 01:08:49'),
(39, 46, 0, '2011', '2012-04-28 01:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `Likes_Dislikes`
--

CREATE TABLE IF NOT EXISTS `Likes_Dislikes` (
  `ldvid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislikes` int(11) NOT NULL,
  PRIMARY KEY (`ldvid`),
  KEY `uid_lksdks` (`uid`),
  KEY `mid_lksdks` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `Media`
--

CREATE TABLE IF NOT EXISTS `Media` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Description` text NOT NULL,
  `MediaPath` blob NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Type` text NOT NULL,
  `UploadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uploadIP` text NOT NULL,
  `permission` varchar(45) NOT NULL DEFAULT 'public',
  PRIMARY KEY (`mid`),
  UNIQUE KEY `vid_UNIQUE` (`mid`),
  KEY `userID_MediaTable` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `Media`
--

INSERT INTO `Media` (`mid`, `uid`, `Title`, `Description`, `MediaPath`, `Category`, `Type`, `UploadTime`, `uploadIP`, `permission`) VALUES
(31, 1, 'KEyWords Testing', 'Testing', 0x75706c6f61642f696d6167652f30643562312d696d6167652e6a7067, 'education', 'image/jpeg', '2012-04-25 18:27:33', '172.22.112.113', 'public'),
(32, 1, 'keywords 2', 'hello', 0x75706c6f61642f696d6167652f30643562312d696d6167652e6a7067, 'education', 'image/jpeg', '2012-04-25 18:28:59', '172.22.112.113', 'public'),
(33, 1, 'nandu', 'nandu', 0x75706c6f61642f696d6167652f30643562312d696d6167652e6a7067, 'education', 'image/jpeg', '2012-04-25 19:20:54', '172.22.112.113', 'public'),
(34, 1, 'Google', 'hello', 0x75706c6f61642f696d6167652f62383539632d62617965732e706e67, 'education', 'image/png', '2012-04-25 19:26:01', '172.22.112.113', 'public'),
(35, 1, 'google ', 'lol', 0x75706c6f61642f696d6167652f39363238622d4d6574756265312e706e67, 'education', 'image/png', '2012-04-25 19:27:44', '172.22.112.113', 'public'),
(36, 1, '2012 cup', 'DHONi Last sot', 0x75706c6f61642f696d6167652f62346433352d5075626c69635f53746f726167655f4c6f676f5f323030392e6a7067, 'education', 'image/jpeg', '2012-04-25 20:20:51', '172.22.112.113', 'public'),
(37, 1, 'log', 'logs', 0x75706c6f61642f696d6167652f39303136352d70686f746f20352e4a5047, 'education', 'image/jpeg', '2012-04-25 20:28:05', '172.22.112.113', 'private'),
(38, 1, 'nanda', 'google', 0x75706c6f61642f696d6167652f63646366632d73616e74616d6f6e6963612e6a7067, 'education', 'image/jpeg', '2012-04-25 20:34:22', '172.22.112.113', 'private'),
(39, 1, 'nanda', 'testing', 0x75706c6f61642f696d6167652f62346433352d5075626c69635f53746f726167655f4c6f676f5f323030392e6a7067, 'education', 'image/jpeg', '2012-04-25 20:35:33', '172.22.112.113', 'public'),
(40, 15, 'Video ', 'Mp4', 0x75706c6f61642f766964656f2f34636136632d576f726c644375702e6d7034, 'education', 'video/mp4', '2012-04-25 22:31:10', '172.22.112.113', 'public'),
(41, 5, 'helo', 'helo', 0x75706c6f61642f696d6167652f62343961632d616e696d652e676966, 'education', 'image/gif', '2012-04-27 14:10:51', '66.112.166.177', 'public'),
(42, 1, 'nani''s', 'hello', 0x75706c6f61642f696d6167652f62343961632d616e696d652e676966, 'education', 'image/gif', '2012-04-27 15:22:41', '66.112.166.177', 'public'),
(43, 1, 'hello''s', 'testing ''''''''''s', 0x75706c6f61642f696d6167652f62343961632d616e696d652e676966, 'education', 'image/gif', '2012-04-27 15:36:27', '66.112.166.177', 'public'),
(44, 1, 'CPSC 871 png''s', 'EPF PNG', 0x75706c6f61642f696d6167652f65333261342d4550465f506172745f322e4a5047, 'comedy', 'image/pjpeg', '2012-04-27 23:11:58', '66.112.166.177', 'public'),
(45, 1, 'Clemson Tiger''s', 'BE PROUD', 0x75706c6f61642f696d6167652f38366535372d55432e6a7067, 'education', 'image/jpeg', '2012-04-28 05:04:55', '66.112.166.177', 'public'),
(46, 1, 'Good day', 'hello''s', 0x75706c6f61642f696d6167652f38366535372d55432e6a7067, 'education', 'image/jpeg', '2012-04-28 05:08:49', '66.112.166.177', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `Media_Rating`
--

CREATE TABLE IF NOT EXISTS `Media_Rating` (
  `raid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`raid`),
  KEY `uid_rating` (`uid`),
  KEY `mid_rating` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `Media_Rating`
--

INSERT INTO `Media_Rating` (`raid`, `uid`, `mid`, `rating`) VALUES
(20, 1, 34, 5),
(21, 1, 39, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Messaging`
--

CREATE TABLE IF NOT EXISTS `Messaging` (
  `mesid` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL,
  `Subject` text NOT NULL,
  `Message` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `messageTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mesid`),
  KEY `uid_from_msg_in` (`from_uid`),
  KEY `uid_to_msg_in` (`to_uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `Messaging`
--

INSERT INTO `Messaging` (`mesid`, `from_uid`, `to_uid`, `Subject`, `Message`, `status`, `messageTime`) VALUES
(6, 7, 8, 'sdddsds', 'dsddsdsdss', 1, '2012-04-22 22:01:47'),
(7, 5, 1, 'hello', 'hello', 1, '2012-04-27 14:55:07'),
(8, 1, 5, 'how @ are u', 'lol''z', 1, '2012-04-28 01:16:16'),
(9, 1, 5, '!@^#%^*^&^&*^&*^&@))@', '<>?":|}{+_)(*&^%$#@!~,./;''[]=-', 1, '2012-04-28 01:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `Messaging_sent`
--

CREATE TABLE IF NOT EXISTS `Messaging_sent` (
  `messid` int(11) NOT NULL AUTO_INCREMENT,
  `to_uid_sent` int(11) NOT NULL,
  `from_uid_sent` int(11) NOT NULL,
  `Subject` text NOT NULL,
  `Message` longtext NOT NULL,
  `messageTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`messid`),
  KEY `uid_from_msg` (`from_uid_sent`),
  KEY `uid_to_msg` (`to_uid_sent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `Messaging_sent`
--

INSERT INTO `Messaging_sent` (`messid`, `to_uid_sent`, `from_uid_sent`, `Subject`, `Message`, `messageTime`) VALUES
(6, 8, 7, 'sdddsds', 'dsddsdsdss', '2012-04-22 22:01:23'),
(7, 1, 5, 'hello', 'hello', '2012-04-27 13:48:04'),
(8, 5, 1, 'how @ are u', 'lol''z', '2012-04-27 15:37:00'),
(9, 5, 1, '!@^#%^*^&^&*^&*^&@))@', '<>?":|}{+_)(*&^%$#@!~,./;''[]=-', '2012-04-27 16:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE IF NOT EXISTS `Permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`id`, `permission`) VALUES
(1, 'public'),
(2, 'private');

-- --------------------------------------------------------

--
-- Table structure for table `Playlists`
--

CREATE TABLE IF NOT EXISTS `Playlists` (
  `plid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `playlist_name` text NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`plid`),
  UNIQUE KEY `plid_UNIQUE` (`plid`),
  KEY `uid_playlist` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `Playlists`
--

INSERT INTO `Playlists` (`plid`, `uid`, `playlist_name`, `createTime`) VALUES
(2, 1, 'MY Pastime', '2012-04-20 02:06:55'),
(3, 5, 'My Playlist', '2012-04-20 05:47:02'),
(4, 8, 'bbbbbb1', '2012-04-22 21:54:13'),
(5, 8, 'bbbbbb2', '2012-04-22 21:54:20'),
(7, 12, 'sample', '2012-04-25 00:44:02'),
(8, 7, 'nandu', '2012-04-25 05:39:42'),
(9, 5, 'My play 2', '2012-04-27 13:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `Playlists_related`
--

CREATE TABLE IF NOT EXISTS `Playlists_related` (
  `rplid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `plid` int(11) NOT NULL,
  PRIMARY KEY (`rplid`),
  UNIQUE KEY `rplid_UNIQUE` (`rplid`),
  KEY `plid_play` (`plid`),
  KEY `mid_play` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `Playlists_related`
--

INSERT INTO `Playlists_related` (`rplid`, `mid`, `plid`) VALUES
(21, 40, 3),
(25, 42, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Subscribed_Channel`
--

CREATE TABLE IF NOT EXISTS `Subscribed_Channel` (
  `schid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `chid` int(11) NOT NULL,
  PRIMARY KEY (`schid`),
  UNIQUE KEY `schid_UNIQUE` (`schid`),
  KEY `uid_subscribed` (`uid`),
  KEY `chid_subscibed` (`chid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `Subscribed_Channel`
--

INSERT INTO `Subscribed_Channel` (`schid`, `uid`, `chid`) VALUES
(7, 15, 3),
(9, 5, 3),
(11, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `UserHistory`
--

CREATE TABLE IF NOT EXISTS `UserHistory` (
  `hsid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `visitedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visitedIP` varchar(45) NOT NULL,
  PRIMARY KEY (`hsid`),
  KEY `uid_history` (`uid`),
  KEY `mid_history` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `UserHistory`
--

INSERT INTO `UserHistory` (`hsid`, `uid`, `mid`, `visitedTime`, `visitedIP`) VALUES
(67, 1, 32, '2012-04-28 04:16:38', '66.112.166.177'),
(68, 1, 31, '2012-04-28 04:22:07', '66.112.166.177'),
(69, 1, 35, '2012-04-27 16:02:35', '66.112.166.177'),
(70, 1, 34, '2012-04-27 23:13:25', '66.112.166.177'),
(71, 1, 33, '2012-04-25 20:28:13', '172.22.112.113'),
(72, 1, 39, '2012-04-26 00:32:44', '66.112.166.177'),
(73, 1, 36, '2012-04-27 23:14:44', '66.112.166.177'),
(74, 15, 39, '2012-04-25 21:48:14', '172.22.112.113'),
(75, 15, 38, '2012-04-25 21:49:12', '172.22.112.113'),
(76, 15, 36, '2012-04-25 22:13:13', '172.22.112.113'),
(77, 15, 40, '2012-04-25 22:31:26', '172.22.112.113'),
(78, 1, 40, '2012-04-27 21:35:13', '66.112.166.177'),
(79, 5, 36, '2012-04-27 13:28:16', '66.112.166.177'),
(80, 5, 39, '2012-04-27 13:34:32', '66.112.166.177'),
(81, 5, 40, '2012-04-27 14:09:06', '66.112.166.177'),
(82, 5, 41, '2012-04-27 14:10:59', '66.112.166.177'),
(83, 1, 42, '2012-04-27 15:22:53', '66.112.166.177'),
(84, 1, 43, '2012-04-27 16:00:37', '66.112.166.177'),
(86, 1, 44, '2012-04-27 23:12:18', '66.112.166.177'),
(89, 1, 41, '2012-04-27 23:14:41', '66.112.166.177'),
(91, 5, 43, '2012-04-28 01:14:47', '66.112.166.177'),
(92, 1, 45, '2012-04-28 05:05:11', '66.112.166.177');

-- --------------------------------------------------------

--
-- Table structure for table `userList`
--

CREATE TABLE IF NOT EXISTS `userList` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) NOT NULL,
  `Password` text NOT NULL,
  `Name` text NOT NULL,
  `sex` varchar(45) NOT NULL,
  `Email` text NOT NULL,
  `DOB` date NOT NULL,
  `About` longtext NOT NULL,
  `ProfilePicture` blob NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LastAccessTime` datetime NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `userList`
--

INSERT INTO `userList` (`uid`, `UserName`, `Password`, `Name`, `sex`, `Email`, `DOB`, `About`, `ProfilePicture`, `CreatedTime`, `LastAccessTime`) VALUES
(1, 'nandu', 'duddu123', 'Nanda Kishore', 'Male', 'nani1441@gmail.com', '2000-01-01', 'Nandu', 0x75706c6f61642f696d6167652f30643562312d696d6167652e6a7067, '2012-04-28 02:52:30', '2012-04-27 22:52:30'),
(5, 'metube', '1234567', 'metube', 'Male', 'g5@metube.com', '2000-01-01', 'METUBE by g5', 0x75706c6f61642f696d6167652f32363339642d46617669636f6e2e706e67, '2012-04-28 00:57:36', '2012-04-27 20:57:36'),
(6, 'fool1', '123456', 'jhy', 'Male', 'uiuiiuuuuuuuuuuuuuuuuuuuuuuu@a.com', '2000-01-01', 'ggggggggggggggg', '', '2012-04-22 22:58:09', '2012-04-22 18:58:09'),
(7, 'aaaaaa', 'aaaaaa', 'aaa', 'Male', 'aaaaa@aaa.com', '2000-01-01', 'aaaaaaa', 0x75706c6f61642f696d6167652f34353338352d4368727973616e7468656d756d2e6a7067, '2012-04-25 05:14:10', '2012-04-25 01:14:10'),
(8, 'bbbbbb', 'bbbbbb', 'bbbbbb', 'Female', 'bbb@bbb.com', '2000-01-01', 'bbbbbb', 0x75706c6f61642f696d6167652f61343966652d48796472616e676561732e6a7067, '2012-04-25 00:55:43', '2012-04-24 20:55:43'),
(9, 'lolllo', 'lollol', 'lollo', 'Male', 'lol@lol.com', '2000-01-01', 'lol', 0x75706c6f61642f696d6167652f33316339612d6661766f75722e706e67, '2012-04-23 11:40:31', '0000-00-00 00:00:00'),
(10, 'cccccc', 'cccccc', 'cccccc', 'Female', 'aaaaaa@gmail.com', '2000-01-01', '', '', '2012-04-24 15:21:29', '2012-04-24 11:21:29'),
(11, '111111', '111111', '111111', '', '111111@gmail.com', '2000-01-01', '', '', '2012-04-24 15:32:19', '2012-04-24 11:32:19'),
(12, 'duddu', 'duddu123', 'duddu', 'Male', 'nani@nani.com', '2000-01-01', 'duddu123', 0x75706c6f61642f696d6167652f30643562312d696d6167652e6a7067, '2012-04-25 01:05:11', '2012-04-24 21:05:11'),
(13, 'stupid', 'stupid', 'stupid', 'Female', 'stupid@gmail.com', '2000-01-01', '', 0x75706c6f61642f696d6167652f62343961632d616e696d652e676966, '2012-04-27 13:23:47', '2012-04-27 09:22:40'),
(14, 'google', 'hello123', 'google', 'Male', 'hello@hello.com', '2000-01-01', 'Hello', 0x75706c6f61642f696d6167652f63646366632d73616e74616d6f6e6963612e6a7067, '2012-04-25 20:40:55', '2012-04-25 16:40:36'),
(15, 'nandu123', 'nandu123', 'nandu', 'Male', 'nandu123@nandu.com', '2000-01-01', 'nandu123', 0x75706c6f61642f696d6167652f65626464622d72616a6d616c2e6a7067, '2012-04-25 22:36:17', '2012-04-25 18:36:17'),
(16, 'nanis', 'hello123', 'hellos', 'Male', 'ju@ki.com', '2000-01-01', 'nani1441', 0x75706c6f61642f696d6167652f62343961632d616e696d652e676966, '2012-04-27 00:13:03', '2012-04-26 20:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `Views`
--

CREATE TABLE IF NOT EXISTS `Views` (
  `viewID` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `views` bigint(20) NOT NULL,
  `lastviewtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`viewID`),
  KEY `mediaID_View` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `Views`
--

INSERT INTO `Views` (`viewID`, `mid`, `views`, `lastviewtime`) VALUES
(29, 32, 2, '2012-04-25 18:32:02'),
(30, 31, 2, '2012-04-25 18:35:24'),
(31, 35, 3, '2012-04-25 19:30:57'),
(32, 34, 2, '2012-04-25 20:10:12'),
(33, 33, 1, '2012-04-25 20:28:13'),
(34, 39, 3, '2012-04-25 20:37:43'),
(35, 36, 3, '2012-04-25 20:37:50'),
(36, 38, 1, '2012-04-25 21:49:12'),
(37, 40, 4, '2012-04-25 22:31:26'),
(40, 41, 1, '2012-04-27 14:10:59'),
(41, 42, 2, '2012-04-27 15:22:53'),
(42, 43, 4, '2012-04-27 16:00:37'),
(43, 44, 2, '2012-04-27 23:12:18'),
(44, 45, 1, '2012-04-28 05:05:11');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Channels`
--
ALTER TABLE `Channels`
  ADD CONSTRAINT `uid_Channel` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Channels_related`
--
ALTER TABLE `Channels_related`
  ADD CONSTRAINT `mid_channel_related` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `chid_channel_related` FOREIGN KEY (`chid`) REFERENCES `Channels` (`chid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Comments`
--
ALTER TABLE `Comments`
  ADD CONSTRAINT `uid_Comments` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `mid_Comments` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Downloads`
--
ALTER TABLE `Downloads`
  ADD CONSTRAINT `userID_Download` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `MediaID_Download` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Favourites`
--
ALTER TABLE `Favourites`
  ADD CONSTRAINT `mid_favourite` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `uid_favourite` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `FriendList`
--
ALTER TABLE `FriendList`
  ADD CONSTRAINT `uid_friend_flist` FOREIGN KEY (`uid_friend`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `uid_flist` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `GroupDisscussions_messages`
--
ALTER TABLE `GroupDisscussions_messages`
  ADD CONSTRAINT `uid_groupMessage` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `grdid` FOREIGN KEY (`grdid`) REFERENCES `Group_Discussions` (`grdid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Group_Discussions`
--
ALTER TABLE `Group_Discussions`
  ADD CONSTRAINT `uid_groupDiss` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `IP_Address`
--
ALTER TABLE `IP_Address`
  ADD CONSTRAINT `mid_ipa` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Keywords`
--
ALTER TABLE `Keywords`
  ADD CONSTRAINT `mid_keywords` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Likes_Dislikes`
--
ALTER TABLE `Likes_Dislikes`
  ADD CONSTRAINT `uid_lksdks` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `mid_lksdks` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Media`
--
ALTER TABLE `Media`
  ADD CONSTRAINT `userID_MediaTable` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Media_Rating`
--
ALTER TABLE `Media_Rating`
  ADD CONSTRAINT `uid_rating` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `mid_rating` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Messaging`
--
ALTER TABLE `Messaging`
  ADD CONSTRAINT `uid_from_msg_in` FOREIGN KEY (`from_uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `uid_to_msg_in` FOREIGN KEY (`to_uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Messaging_sent`
--
ALTER TABLE `Messaging_sent`
  ADD CONSTRAINT `uid_from_msg_sent` FOREIGN KEY (`from_uid_sent`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `uid_to_msg_sent` FOREIGN KEY (`to_uid_sent`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Playlists`
--
ALTER TABLE `Playlists`
  ADD CONSTRAINT `uid_playlist` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Playlists_related`
--
ALTER TABLE `Playlists_related`
  ADD CONSTRAINT `plid_play` FOREIGN KEY (`plid`) REFERENCES `Playlists` (`plid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `mid_play` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Subscribed_Channel`
--
ALTER TABLE `Subscribed_Channel`
  ADD CONSTRAINT `uid_subscribed` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `chid_subscibed` FOREIGN KEY (`chid`) REFERENCES `Channels` (`chid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `UserHistory`
--
ALTER TABLE `UserHistory`
  ADD CONSTRAINT `uid_history` FOREIGN KEY (`uid`) REFERENCES `userList` (`uid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `mid_history` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Views`
--
ALTER TABLE `Views`
  ADD CONSTRAINT `mediaID_View` FOREIGN KEY (`mid`) REFERENCES `Media` (`mid`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
