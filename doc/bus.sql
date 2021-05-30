/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3307
 Source Schema         : bus

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 30/05/2021 17:38:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acc_inf
-- ----------------------------
DROP TABLE IF EXISTS `acc_inf`;
CREATE TABLE `acc_inf` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `telephone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `creation_time` datetime NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`account_id`) USING BTREE,
  UNIQUE KEY `acc_name` (`account_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for bus_card
-- ----------------------------
DROP TABLE IF EXISTS `bus_card`;
CREATE TABLE `bus_card` (
  `card_id` varchar(30) NOT NULL COMMENT '位置+卡类型',
  `card_name` varchar(20) NOT NULL,
  `card_type` varchar(20) NOT NULL,
  `sp_id` varchar(20) NOT NULL,
  `sp_name` varchar(20) NOT NULL,
  `cou_act` char(1) NOT NULL,
  `pre_act` char(1) NOT NULL,
  PRIMARY KEY (`card_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for cou_inf
-- ----------------------------
DROP TABLE IF EXISTS `cou_inf`;
CREATE TABLE `cou_inf` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` varchar(64) DEFAULT NULL,
  `coupon_type` int(1) NOT NULL COMMENT '1:直减；2：折扣',
  `card_name` varchar(20) NOT NULL,
  `coupon_category` int(1) NOT NULL COMMENT '1:任意订单；2：固定充值-20；3：固定充值-50；4：固定充值-100；开卡订单',
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `discount` float(3,2) DEFAULT NULL,
  `reducion` decimal(3,1) DEFAULT NULL,
  `status` char(1) NOT NULL COMMENT '是否有效',
  `mul_id` int(11) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for mul_inf
-- ----------------------------
DROP TABLE IF EXISTS `mul_inf`;
CREATE TABLE `mul_inf` (
  `mul_id` int(11) NOT NULL AUTO_INCREMENT,
  `mul_name` varchar(20) NOT NULL,
  `creation_time` datetime NOT NULL,
  `founder` varchar(20) NOT NULL,
  `status` char(1) NOT NULL,
  `start_age` int(1) NOT NULL,
  `end_age` int(1) NOT NULL,
  `gender_select` char(1) NOT NULL COMMENT '0 female,1 male,3 both',
  `location` varchar(20) NOT NULL,
  PRIMARY KEY (`mul_id`),
  UNIQUE KEY `mul_name` (`mul_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pre_inf
-- ----------------------------
DROP TABLE IF EXISTS `pre_inf`;
CREATE TABLE `pre_inf` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` char(3) DEFAULT NULL,
  `card_id` varchar(20) NOT NULL,
  `inventory` int(255) NOT NULL,
  `con_inventory` int(255) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` char(1) NOT NULL COMMENT '1:有效；2：无效',
  `card_name` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for user_inf
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `real_name` varchar(20) DEFAULT NULL,
  `creation_time` datetime NOT NULL,
  `founder` varchar(20) NOT NULL,
  `status` char(1) NOT NULL COMMENT '0：未绑定；1：绑定',
  `age` tinyint(1) NOT NULL,
  `gender` char(1) NOT NULL,
  `location` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `user_name_index` (`user_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

SET FOREIGN_KEY_CHECKS = 1;
