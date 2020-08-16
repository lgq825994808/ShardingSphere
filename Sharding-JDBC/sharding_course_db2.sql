/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50549
Source Host           : 127.0.0.1:3306
Source Database       : sharding_course_db2

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2020-08-16 18:19:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_course_1
-- ----------------------------
DROP TABLE IF EXISTS `t_course_1`;
CREATE TABLE `t_course_1` (
  `cid` bigint(20) NOT NULL,
  `cname` varchar(50) NOT NULL COMMENT '名称',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `cstatus` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_1
-- ----------------------------

-- ----------------------------
-- Table structure for t_course_2
-- ----------------------------
DROP TABLE IF EXISTS `t_course_2`;
CREATE TABLE `t_course_2` (
  `cid` bigint(20) NOT NULL,
  `cname` varchar(50) NOT NULL COMMENT '名称',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `cstatus` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_2
-- ----------------------------
INSERT INTO `t_course_2` VALUES ('501804053546663937', 'php', '101', '已上架');

-- ----------------------------
-- Table structure for t_item
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item` (
  `item_id` bigint(20) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_item
-- ----------------------------
INSERT INTO `t_item` VALUES ('501820740408967169', 'user', 'a', '启用');
