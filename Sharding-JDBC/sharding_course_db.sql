/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50549
Source Host           : 127.0.0.1:3306
Source Database       : sharding_course_db

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2020-08-16 18:19:07
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
INSERT INTO `t_course_1` VALUES ('500425862013779968', 'java1', '100', '已上架');
INSERT INTO `t_course_1` VALUES ('500425862051528704', 'java3', '100', '已上架');
INSERT INTO `t_course_1` VALUES ('500425862101860352', 'java5', '100', '已上架');
INSERT INTO `t_course_1` VALUES ('500425862147997696', 'java7', '100', '已上架');
INSERT INTO `t_course_1` VALUES ('500425862185746432', 'java9', '100', '已上架');

-- ----------------------------
-- Table structure for t_course_2
-- ----------------------------
DROP TABLE IF EXISTS `t_course_2`;
CREATE TABLE `t_course_2` (
  `cid` bigint(20) NOT NULL,
  `cname` varchar(50) DEFAULT NULL COMMENT '名称',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `cstatus` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_2
-- ----------------------------
INSERT INTO `t_course_2` VALUES ('500425861325914113', 'java0', '100', '已上架');
INSERT INTO `t_course_2` VALUES ('500425862034751489', 'java2', '100', '已上架');
INSERT INTO `t_course_2` VALUES ('500425862076694529', 'java4', '100', '已上架');
INSERT INTO `t_course_2` VALUES ('500425862127026177', 'java6', '100', '已上架');
INSERT INTO `t_course_2` VALUES ('500425862168969217', 'java8', '100', '已上架');
