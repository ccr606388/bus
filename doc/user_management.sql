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

 Date: 26/05/2021 23:54:52
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
-- Table structure for user_inf
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creation_time` datetime NOT NULL,
  `founder` int(1) NOT NULL COMMENT '0:测试，1：系统，',
  `status` bit(1) NOT NULL COMMENT '0：未绑定；1：绑定',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_inf
-- ----------------------------
INSERT INTO `user_inf` VALUES (1, 'lingmo', '梁録伟', '2021-05-19 00:00:00', 1, b'1');
INSERT INTO `user_inf` VALUES (2, 'ceshi', NULL, '2021-05-19 00:00:00', 0, b'0');

-- ----------------------------
-- Table structure for user_por
-- ----------------------------
DROP TABLE IF EXISTS `user_por`;
CREATE TABLE `user_por`  (
  `uid` int(11) NOT NULL,
  `age` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_model` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
