/*
 Navicat Premium Data Transfer

 Source Server         : liangluwei
 Source Server Type    : MySQL
 Source Server Version : 50139
 Source Host           : localhost:3306
 Source Schema         : marking_activity

 Target Server Type    : MySQL
 Target Server Version : 50139
 File Encoding         : 65001

 Date: 19/05/2021 15:57:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for act_inf
-- ----------------------------
DROP TABLE IF EXISTS `act_inf`;
CREATE TABLE `act_inf`  (
  `activity_id` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activity_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`activity_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bus_card
-- ----------------------------
DROP TABLE IF EXISTS `bus_card`;
CREATE TABLE `bus_card`  (
  `card_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '位置+卡类型',
  `card_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`card_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for card_area_ass
-- ----------------------------
DROP TABLE IF EXISTS `card_area_ass`;
CREATE TABLE `card_area_ass`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'FK',
  `area_id` int(11) NULL DEFAULT NULL COMMENT 'FK',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cou_inf
-- ----------------------------
DROP TABLE IF EXISTS `cou_inf`;
CREATE TABLE `cou_inf`  (
  `cid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务类型+活动编号+当日时间',
  `activity_id` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_type` int(1) NULL DEFAULT NULL COMMENT '1:活动；2：售后退费；3：测试',
  `coupon_type` int(1) NULL DEFAULT NULL COMMENT '1:直减；2：折扣',
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coupon_category` int(1) NULL DEFAULT NULL COMMENT '1:任意订单；2：固定充值-20；3：固定充值-50；4：固定充值-100；开卡订单',
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `discount` float(3, 2) NULL DEFAULT NULL,
  `reducion` decimal(3, 1) NULL DEFAULT NULL,
  `superimpose` bit(1) NOT NULL COMMENT '是否叠加',
  `auto_select` bit(1) NOT NULL COMMENT '是否自动选取',
  `is_effective` bit(1) NOT NULL COMMENT '是否有效',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pre_inf
-- ----------------------------
DROP TABLE IF EXISTS `pre_inf`;
CREATE TABLE `pre_inf`  (
  `pid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务类型+活动编号+当日时间',
  `activity_id` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inventory` int(255) NULL DEFAULT NULL,
  `con_inventory` int(255) NULL DEFAULT NULL,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL COMMENT '1:有效；2：无效',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for support_area
-- ----------------------------
DROP TABLE IF EXISTS `support_area`;
CREATE TABLE `support_area`  (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区唯一',
  `super_id` int(11) NULL DEFAULT NULL,
  `grade` int(1) NOT NULL COMMENT '1：国；2：省；3：市',
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
