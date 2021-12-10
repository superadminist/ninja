/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : tp6_mall

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2020-09-28 19:16:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `mall_admin_user`;
CREATE TABLE `mall_admin_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned DEFAULT '0' COMMENT '0审核 1正常 99删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mall_admin_user
-- ----------------------------
INSERT INTO `mall_admin_user` VALUES ('1', 'admin', 'a040a33891f9c72b1ad532f7f32a8af8', '1', '2020-09-22 10:03:43', '2020-09-22 21:48:29', '2020-09-22 21:48:29');
INSERT INTO `mall_admin_user` VALUES ('2', 'admin1', 'a040a33891f9c72b1ad532f7f32a8af8', '1', '2020-09-22 10:03:43', '2020-09-22 17:03:59', '2020-09-22 17:03:59');

-- ----------------------------
-- Table structure for mall_category
-- ----------------------------
DROP TABLE IF EXISTS `mall_category`;
CREATE TABLE `mall_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `pid` int(11) DEFAULT '0' COMMENT '父id',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '路径',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `orders` int(255) DEFAULT '1000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mall_category
-- ----------------------------
INSERT INTO `mall_category` VALUES ('1', '电脑', '0', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('2', '手机', '0', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('3', '书', '0', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('4', '苹果手机', '2', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('5', '小米手机', '2', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('6', '华为手机', '2', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('7', '联想', '1', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('8', '宏碁', '1', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('9', '神舟', '1', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('10', 'IPhoneX', '4', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('11', 'IPhone11', '4', '', '', '0', '0', '1', '1000');
INSERT INTO `mall_category` VALUES ('12', 'IPhone11 Pro', '4', '', '', '0', '0', '1', '1000');

-- ----------------------------
-- Table structure for mall_user
-- ----------------------------
DROP TABLE IF EXISTS `mall_user`;
CREATE TABLE `mall_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `phone_number` varchar(20) NOT NULL DEFAULT '',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `login_type` tinyint(1) DEFAULT '0' COMMENT '登录方式',
  `type` tinyint(1) DEFAULT '1' COMMENT '会话保存天数',
  `sex` tinyint(255) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mall_user
-- ----------------------------
INSERT INTO `mall_user` VALUES ('1', '会员18659104326', '18659104326', '', '0', '1', '0', null, '1601212940', '1');
