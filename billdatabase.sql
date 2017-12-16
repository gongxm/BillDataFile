/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : billdatabase

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-16 16:04:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_bill_category
-- ----------------------------
DROP TABLE IF EXISTS `base_bill_category`;
CREATE TABLE `base_bill_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` bit(1) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='基础分类表';

-- ----------------------------
-- Table structure for bill_data
-- ----------------------------
DROP TABLE IF EXISTS `bill_data`;
CREATE TABLE `bill_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `bill_type` bit(1) DEFAULT NULL,
  `bill_category` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='账单数据';

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `thirdSession` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `avatarUrl` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `session_key` varchar(255) DEFAULT NULL,
  `registTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Table structure for user_bill_category
-- ----------------------------
DROP TABLE IF EXISTS `user_bill_category`;
CREATE TABLE `user_bill_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `type` bit(1) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户记账分类表';
