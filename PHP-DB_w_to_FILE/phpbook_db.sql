-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Jul 21, 2010, 09:20 AM
-- 伺服器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 資料庫: `phpbook_db`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `member`
-- 

CREATE TABLE `member` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) collate utf8_unicode_ci NOT NULL COMMENT '姓名',
  `account` varchar(20) collate utf8_unicode_ci NOT NULL COMMENT '帳號',
  `password` varchar(20) collate utf8_unicode_ci NOT NULL COMMENT '密碼',
  `sex` char(2) collate utf8_unicode_ci NOT NULL COMMENT '性別',
  `birthday` date default NULL COMMENT '生日',
  `email` varchar(100) collate utf8_unicode_ci default NULL COMMENT '電子郵件',
  `url` varchar(100) collate utf8_unicode_ci default NULL COMMENT '個人網頁',
  `telephone` varchar(20) collate utf8_unicode_ci default NULL COMMENT '電話',
  `address` varchar(100) collate utf8_unicode_ci default NULL COMMENT '地址',
  `contact` char(100) collate utf8_unicode_ci NOT NULL default '1' COMMENT '聯絡方式',
  `memo` varchar(255) collate utf8_unicode_ci default NULL COMMENT '備註',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

-- 
-- 列出以下資料庫的數據： `member`
-- 

INSERT INTO `member` VALUES (1, '王遠明', 'yuanming', 'ming7744', '男', '1976-08-03', 'yuanming@edu.tw', 'NULL', '0930888999', '台南市中西區民族路455號', '1', 'NULL');
INSERT INTO `member` VALUES (2, '劉少華', 'shaohua', 'hua6910', '男', '1964-05-15', 'shaohua@edu.tw', 'NULL', '0987454545', '台東縣台東市博愛路270號', '3', 'NULL');
INSERT INTO `member` VALUES (3, '陳思思', 'sisi', 'sisi8970', '女', '1981-06-24', 'sisi@edu.tw', 'NULL', '0952336456', '高雄市鼓山區蓮海路104號', '1', 'NULL');
INSERT INTO `member` VALUES (4, '趙婷', 'ting', 'ting2233', '女', '1982-06-21', 'ting@edu.tw', 'NULL', '0960523422', '屏東縣屏東市天津街150號', '1', 'NULL');
INSERT INTO `member` VALUES (5, '林立仁', 'liren', 'liren7810', '男', '1967-09-03', 'liren@edu.tw', 'NULL', '0932778981', '高雄市鹽埕區五福四路203號', '3', 'NULL');
INSERT INTO `member` VALUES (6, '戴梅華', 'meihua', 'hua4588', '女', '1965-01-14', 'meihua@edu.tw', 'NULL', '0937749910', '嘉義市仁愛路145號', '1', 'NULL');
INSERT INTO `member` VALUES (7, '黃石海', 'shihai', 'hai1023', '男', '1974-11-09', 'shihai@edu.tw', 'NULL', '0966366566', '台北市士林區平菁街360號', '1', 'NULL');
INSERT INTO `member` VALUES (8, '黃惠安', 'hoian', 'an1122', '女', '1981-09-17', 'hoian@edu.tw', 'NULL', '0939102502', '雲林縣西螺鎮平和路225號', '1', 'NULL');
INSERT INTO `member` VALUES (9, '鄭皓明', 'haoming', 'ming8902', '男', '1971-05-20', 'haoming@edu.tw', 'NULL', '0938897645', '台中市西區健行路1100號', '1', 'NULL');
INSERT INTO `member` VALUES (10, '辛鳳成', 'fengcheng', 'cheng7142', '男', '1968-10-26', 'fengcheng@edu.tw', 'NULL', '0912620138', '高雄市苓雅區中興街568號', '1', 'NULL');
INSERT INTO `member` VALUES (11, '王曉惠', 'xiaohui', 'hui4652', '女', '1986-07-05', 'xiaohui@edu.tw', 'NULL', '0930845633', '台北市松山區富錦街20號', '1', 'NULL');
INSERT INTO `member` VALUES (12, '林玉成', 'yucheng', 'heng2233', '男', '1982-09-14', 'yucheng@edu.tw', 'NULL', '0966912322', '台南市安平區光州路320號', '3', 'NULL');
INSERT INTO `member` VALUES (13, '劉宇', 'liuyu', 'yu1459', '男', '1978-03-27', 'liuyu@edu.tw', 'NULL', '0939266345', '雲林縣斗六市民生南路89號', '1', 'NULL');
INSERT INTO `member` VALUES (14, '陳真琳', 'junlin', 'lin3892', '女', '1969-02-12', 'junlin@edu.tw', 'NULL', '0976545666', '高雄市鹽埕區五福四路203號', '1', 'NULL');
INSERT INTO `member` VALUES (15, '吳幸兒', 'shimral', 'ral8850', '女', '1987-08-10', 'shimral@edu.tw', 'NULL', '0933874532', '嘉義市西區重慶路192號', '1', 'NULL');
INSERT INTO `member` VALUES (16, '王銘章', 'mingzhang', 'zhang5069', '男', '1977-07-29', 'mingzhang@edu.tw', 'NULL', '0980471205', '台中市西區五權西路一段1085號', '1', 'NULL');
