-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Aug 24, 2010, 03:21 PM
-- 伺服器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 資料庫: `photo`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `admin`
-- 

CREATE TABLE `admin` (
  `id` int(20) NOT NULL auto_increment,
  `username` varchar(50) collate utf8_unicode_ci NOT NULL,
  `password` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- 列出以下資料庫的數據： `admin`
-- 

INSERT INTO `admin` VALUES (1, 'admin', '123456');

-- --------------------------------------------------------

-- 
-- 資料表格式： `album`
-- 

CREATE TABLE `album` (
  `album_id` int(20) NOT NULL auto_increment,
  `album_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `album_desc` varchar(255) collate utf8_unicode_ci default NULL,
  `album_date` date default NULL,
  `album_place` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`album_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

-- 
-- 列出以下資料庫的數據： `album`
-- 

INSERT INTO `album` VALUES (1, '控窯', 'LAB集體去控窯', '2009-11-06', '台糖');
INSERT INTO `album` VALUES (2, '化石館', '騎車去梅嶺過程中~參觀的博物館', '2010-02-05', '臺南縣菜寮化石館');
INSERT INTO `album` VALUES (3, '梅嶺一日遊', '真是美麗的地方~途中還有去看吊橋', '2010-02-05', '梅嶺');
INSERT INTO `album` VALUES (4, '深入台南科技大學', '跑進附近的學校觀摩~XD', '2010-02-02', '台南科技大學');
INSERT INTO `album` VALUES (5, 'PK保齡球', 'LAB PK 保齡球', '2010-01-15', '良美町保齡球館');
INSERT INTO `album` VALUES (6, '我家小型池塘', '好多孔雀魚和很肥的鯉魚', '2009-12-06', '家');

-- --------------------------------------------------------

-- 
-- 資料表格式： `photo`
-- 

CREATE TABLE `photo` (
  `photo_id` int(20) NOT NULL auto_increment,
  `album_id` int(20) NOT NULL,
  `photo_file` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`photo_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

-- 
-- 列出以下資料庫的數據： `photo`
-- 

INSERT INTO `photo` VALUES (1, 1, '4bc1726048448.jpg');
INSERT INTO `photo` VALUES (2, 1, '4bc172604eed1.jpg');
INSERT INTO `photo` VALUES (3, 1, '4bc17260559e3.jpg');
INSERT INTO `photo` VALUES (4, 1, '4bc172605c241.jpg');
INSERT INTO `photo` VALUES (5, 1, '4bc17260640ae.jpg');
INSERT INTO `photo` VALUES (6, 1, '4bc172d02d906.jpg');
INSERT INTO `photo` VALUES (7, 1, '4bc172d0324d4.jpg');
INSERT INTO `photo` VALUES (8, 1, '4bc172d041df8.jpg');
INSERT INTO `photo` VALUES (9, 1, '4bc172d051136.jpg');
INSERT INTO `photo` VALUES (10, 2, '4bc1734f854d6.jpg');
INSERT INTO `photo` VALUES (11, 2, '4bc1734f8d029.jpg');
INSERT INTO `photo` VALUES (12, 2, '4bc1734f92f4a.jpg');
INSERT INTO `photo` VALUES (13, 2, '4bc1734f9ac28.jpg');
INSERT INTO `photo` VALUES (14, 2, '4bc1734fa188f.jpg');
INSERT INTO `photo` VALUES (15, 3, '4bc173d1c2567.jpg');
INSERT INTO `photo` VALUES (16, 3, '4bc173d1c8094.jpg');
INSERT INTO `photo` VALUES (17, 3, '4bc173d1cd3f5.jpg');
INSERT INTO `photo` VALUES (18, 3, '4bc173d1d278d.jpg');
INSERT INTO `photo` VALUES (19, 3, '4bc173d1d8676.jpg');
INSERT INTO `photo` VALUES (20, 3, '4bc17402c9f77.jpg');
INSERT INTO `photo` VALUES (21, 3, '4bc17402cf5d5.jpg');
INSERT INTO `photo` VALUES (22, 3, '4bc17402d5909.jpg');
INSERT INTO `photo` VALUES (23, 3, '4bc17402da9c8.jpg');
INSERT INTO `photo` VALUES (24, 3, '4bc17402e00db.jpg');
INSERT INTO `photo` VALUES (25, 4, '4bc1746ab6e4c.jpg');
INSERT INTO `photo` VALUES (26, 4, '4bc1746acd910.jpg');
INSERT INTO `photo` VALUES (27, 4, '4bc1746adf2e0.jpg');
INSERT INTO `photo` VALUES (28, 4, '4bc1746b01746.jpg');
INSERT INTO `photo` VALUES (29, 4, '4bc1746b1843d.jpg');
INSERT INTO `photo` VALUES (30, 4, '4bc1749766c8d.jpg');
INSERT INTO `photo` VALUES (31, 4, '4bc174977de1c.jpg');
INSERT INTO `photo` VALUES (32, 4, '4bc17497962bd.jpg');
INSERT INTO `photo` VALUES (33, 4, '4bc17497ab553.jpg');
INSERT INTO `photo` VALUES (34, 5, '4bc174e70f0be.jpg');
INSERT INTO `photo` VALUES (35, 5, '4bc174e718108.jpg');
INSERT INTO `photo` VALUES (36, 5, '4bc174e71eb50.jpg');
INSERT INTO `photo` VALUES (37, 5, '4bc174e725e4f.jpg');
INSERT INTO `photo` VALUES (38, 5, '4bc174e72c9b1.jpg');
INSERT INTO `photo` VALUES (39, 5, '4bc174fa6e69f.jpg');
INSERT INTO `photo` VALUES (40, 5, '4bc174fa75fcf.jpg');
INSERT INTO `photo` VALUES (41, 6, '4bc17560c2565.jpg');
INSERT INTO `photo` VALUES (42, 6, '4bc17560c959b.jpg');
INSERT INTO `photo` VALUES (43, 6, '4bc17560ceefe.jpg');
INSERT INTO `photo` VALUES (44, 6, '4bc17560d6081.jpg');
INSERT INTO `photo` VALUES (45, 6, '4bc17560db6bf.jpg');
INSERT INTO `photo` VALUES (46, 6, '4bc1756f12dc6.jpg');
