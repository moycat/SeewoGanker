-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-12-31 22:44:23
-- 服务器版本： 5.6.27-0ubuntu1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seewoapp`
--

-- --------------------------------------------------------

--
-- 表的结构 `app`
--

CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `appName` varchar(255) NOT NULL,
  `packageName` varchar(255) NOT NULL,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `size` int(11) NOT NULL,
  `versionName` varchar(255) NOT NULL,
  `versionCode` int(11) NOT NULL,
  `apkPath` varchar(255) NOT NULL,
  `iconPath` varchar(255) NOT NULL,
  `introduce` varchar(255) NOT NULL,
  `md5` varchar(40) NOT NULL,
  `subId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `app`
--

INSERT INTO `app` (`id`, `appName`, `packageName`, `updateTime`, `size`, `versionName`, `versionCode`, `apkPath`, `iconPath`, `introduce`, `md5`, `subId`) VALUES
(1, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(2, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(3, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(4, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(5, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(6, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(7, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(8, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(9, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(10, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(11, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(12, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(13, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(14, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(15, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5),
(16, '谷歌地球', 'com.google.earth', '2015-12-31 13:32:36', 9201487, '7.1.3.1255', 13294050, '20140226093951876com.google.earth7.1.3.1255.apk', '20140226093951874com.google.earth7.1.3.1255.png', '谷歌地球', 'cc7677ed6265c8c196636ac98a964033', 5);

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `mainId` int(11) NOT NULL DEFAULT '1',
  `subId` int(11) NOT NULL,
  `mainName` varchar(16) NOT NULL,
  `subName` varchar(16) NOT NULL,
  `mainEngName` varchar(20) NOT NULL,
  `subEngName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `mainId`, `subId`, `mainName`, `subName`, `mainEngName`, `subEngName`) VALUES
(1, 1, 0, '应用软件', '全部', 'application', 'all'),
(2, 1, 1, '应用软件', '教育', 'application', 'edu'),
(3, 1, 2, '应用软件', '工具', 'application', 'tool'),
(4, 1, 3, '应用软件', '娱乐', 'application', 'entertainment'),
(5, 1, 4, '应用软件', '社交', 'application', ' social'),
(6, 1, 5, '应用软件', '其他', 'application', 'other');

-- --------------------------------------------------------

--
-- 表的结构 `options`
--

CREATE TABLE `options` (
  `item` varchar(20) CHARACTER SET latin1 NOT NULL,
  `value` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `options`
--

INSERT INTO `options` (`item`, `value`) VALUES
('admin', '{"username":"seewoapp","password":"b8a667c9017e844147c87a7ad509d03d"}'),
('subId_count', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`item`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
