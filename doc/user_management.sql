/*
 Navicat Premium Data Transfer

 Source Server         : liangluwei
 Source Server Type    : MySQL
 Source Server Version : 50139
 Source Host           : localhost:3306
 Source Schema         : user_management

 Target Server Type    : MySQL
 Target Server Version : 50139
 File Encoding         : 65001

 Date: 19/05/2021 15:58:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for inf_por_ass
-- ----------------------------
DROP TABLE IF EXISTS `inf_por_ass`;
CREATE TABLE `inf_por_ass`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'FK',
  `uid` int(11) NOT NULL COMMENT 'FK\r\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_information
-- ----------------------------
DROP TABLE IF EXISTS `user_information`;
CREATE TABLE `user_information`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creation_time` date NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  `founder` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_portrait
-- ----------------------------
DROP TABLE IF EXISTS `user_portrait`;
CREATE TABLE `user_portrait`  (
  `uid` int(11) NOT NULL,
  `age` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_model` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
