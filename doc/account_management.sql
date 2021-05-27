/*
 Navicat Premium Data Transfer

 Source Server         : liangluwei
 Source Server Type    : MySQL
 Source Server Version : 50139
 Source Host           : localhost:3306
 Source Schema         : account_management

 Target Server Type    : MySQL
 Target Server Version : 50139
 File Encoding         : 65001

 Date: 26/05/2021 23:54:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acc_inf
-- ----------------------------
DROP TABLE IF EXISTS `acc_inf`;
CREATE TABLE `acc_inf`  (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telephone` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `department` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creation_time` datetime NOT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
