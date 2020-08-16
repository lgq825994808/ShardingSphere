/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50549
Source Host           : 127.0.0.1:3306
Source Database       : sharding_course_db1

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2020-08-16 22:35:19
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

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` bigint(20) NOT NULL,
  `order_name` varchar(255) DEFAULT NULL,
  `order_money` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('501884648796717057', '订单1', '2.50');
INSERT INTO `t_order` VALUES ('501885066775887873', '订单2', '2.60');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` bigint(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('501803526754664449', 'zhangsan', 'a');
