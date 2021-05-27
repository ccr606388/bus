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

 Date: 26/05/2021 23:54:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for act_inf
-- ----------------------------
DROP TABLE IF EXISTS `act_inf`;
CREATE TABLE `act_inf`  (
  `activity_id` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activity_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`activity_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of act_inf
-- ----------------------------
INSERT INTO `act_inf` VALUES ('A-1', '运营活动');
INSERT INTO `act_inf` VALUES ('A-2', '用户运营');
INSERT INTO `act_inf` VALUES ('A-3', '抽奖活动');
INSERT INTO `act_inf` VALUES ('A-4', '渠道活动');
INSERT INTO `act_inf` VALUES ('B-1', '售后退款');
INSERT INTO `act_inf` VALUES ('C-1', '内部测试');
INSERT INTO `act_inf` VALUES ('Z-1', '赠卡活动');

-- ----------------------------
-- Table structure for bus_card
-- ----------------------------
DROP TABLE IF EXISTS `bus_card`;
CREATE TABLE `bus_card`  (
  `card_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '位置+卡类型',
  `card_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sp_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sp_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`card_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bus_card
-- ----------------------------
INSERT INTO `bus_card` VALUES ('bejing_001', '北京互通卡', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('changzhou_001', '江苏交通一卡通·常州', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('chaozhou_001', '岭南通·潮州通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('chengdu_002', '天府通', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('china_001', '全国一卡通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('chongqing_002', '重庆畅通卡', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('dalian_002', '大连明珠卡', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('foshan_001', '岭南通·广佛通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('fujian_001', '福路通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('fuzhou_002', '榕城通', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('guangxi_001', '广西一卡通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('guangzhou_001', '岭南通·羊城通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('guiyang_001', '贵州通公交云卡', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('haikou_001', '海南一卡通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('hangzhou_002', '杭州通', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('hebei_001', '河北交通一卡通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('hefei_001', '合肥通互联互通卡', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('hefei_002', '合肥通', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('jiangsu_001', '江苏交通一卡通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('jinan_001', '泉城通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('jinling_001', '江苏交通一卡通·金陵通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('lanzhou_001', '兰州公交一卡通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('lianyungang_001', '江苏交通一卡通·连云港', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('lingnan_001', '岭南通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('nanping_001', '福路通·南平', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('ningbo_002', '甬城通', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('putian_001', '福路通·莆田', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('qingdao_001', '琴岛通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('shanghai_001', '上海公共交通卡', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('shenyang_001', '盛京通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('shenzhen_001', '深圳通互联互通卡', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('suqian_001', '江苏交通一卡通·宿迁', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('suzhou_001', '江苏交通一卡通·苏州', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('tianjing_001', '天津城市卡', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('wuhan_002', '武汉通', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('wuxi_001', '江苏交通一卡通·无锡', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('xiamen_001', '厦门e通卡（交通联合）', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('xiamen_002', '厦门e通卡', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('xian_002', '长安通', '城市卡', '002', 'C公司');
INSERT INTO `bus_card` VALUES ('xiaoxiang_001', '潇湘卡', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('yancheng_001', '江苏交通一卡通·盐城', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('yangzhou_001', '江苏交通一卡通·扬州', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('yantai_001', '烟台·市民卡', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('zhangzhou_001', '福路通·漳州', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('zhengzhou_001', '绿城通', '互联互通卡', '001', 'B公司');
INSERT INTO `bus_card` VALUES ('zhenjiang_001', '江苏交通一卡通·镇江', '互联互通卡', '001', 'B公司');

-- ----------------------------
-- Table structure for card_area_ass
-- ----------------------------
DROP TABLE IF EXISTS `card_area_ass`;
CREATE TABLE `card_area_ass`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'FK',
  `area_id` int(11) NOT NULL COMMENT 'FK',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of card_area_ass
-- ----------------------------
INSERT INTO `card_area_ass` VALUES (1, 'bejing_001', 1);
INSERT INTO `card_area_ass` VALUES (2, 'changzhou_001', 16);
INSERT INTO `card_area_ass` VALUES (3, 'chaozhou_001', 11);
INSERT INTO `card_area_ass` VALUES (4, 'chengdu_002', 13);
INSERT INTO `card_area_ass` VALUES (5, 'china_001', 48);
INSERT INTO `card_area_ass` VALUES (6, 'chongqing_002', 49);
INSERT INTO `card_area_ass` VALUES (7, 'dalian_002', 4);
INSERT INTO `card_area_ass` VALUES (8, 'foshan_001', 7);
INSERT INTO `card_area_ass` VALUES (9, 'fujian_001', 44);
INSERT INTO `card_area_ass` VALUES (10, 'fuzhou_002', 37);
INSERT INTO `card_area_ass` VALUES (11, 'guangxi_001', 41);
INSERT INTO `card_area_ass` VALUES (12, 'guangzhou_001', 11);
INSERT INTO `card_area_ass` VALUES (13, 'guiyang_001', 33);
INSERT INTO `card_area_ass` VALUES (14, 'haikou_001', 40);
INSERT INTO `card_area_ass` VALUES (15, 'hangzhou_002', 5);
INSERT INTO `card_area_ass` VALUES (16, 'hebei_001', 2);
INSERT INTO `card_area_ass` VALUES (17, 'hefei_001', 32);
INSERT INTO `card_area_ass` VALUES (18, 'hefei_002', 32);
INSERT INTO `card_area_ass` VALUES (19, 'jiangsu_001', 18);
INSERT INTO `card_area_ass` VALUES (20, 'jinan_001', 36);
INSERT INTO `card_area_ass` VALUES (21, 'jinling_001', 19);
INSERT INTO `card_area_ass` VALUES (22, 'lanzhou_001', 38);
INSERT INTO `card_area_ass` VALUES (23, 'lianyungang_001', 24);
INSERT INTO `card_area_ass` VALUES (24, 'lingnan_001', 6);
INSERT INTO `card_area_ass` VALUES (25, 'nanping_001', 46);
INSERT INTO `card_area_ass` VALUES (26, 'ningbo_002', 34);
INSERT INTO `card_area_ass` VALUES (27, 'putian_001', 47);
INSERT INTO `card_area_ass` VALUES (28, 'qingdao_001', 17);
INSERT INTO `card_area_ass` VALUES (29, 'shanghai_001', 10);
INSERT INTO `card_area_ass` VALUES (30, 'shenyang_001', 3);
INSERT INTO `card_area_ass` VALUES (31, 'shenzhen_001', 12);
INSERT INTO `card_area_ass` VALUES (32, 'suqian_001', 25);
INSERT INTO `card_area_ass` VALUES (33, 'suzhou_001', 14);
INSERT INTO `card_area_ass` VALUES (34, 'tianjing_001', 31);
INSERT INTO `card_area_ass` VALUES (35, 'wuhan_002', 28);
INSERT INTO `card_area_ass` VALUES (36, 'wuxi_001', 15);
INSERT INTO `card_area_ass` VALUES (37, 'xiamen_002', 50);
INSERT INTO `card_area_ass` VALUES (38, 'xiamen_001', 50);
INSERT INTO `card_area_ass` VALUES (39, 'xian_002', 26);
INSERT INTO `card_area_ass` VALUES (40, 'xiaoxiang_001', 29);
INSERT INTO `card_area_ass` VALUES (41, 'yancheng_001', 8);
INSERT INTO `card_area_ass` VALUES (42, 'yangzhou_001', 20);
INSERT INTO `card_area_ass` VALUES (43, 'yantai_001', 39);
INSERT INTO `card_area_ass` VALUES (44, 'zhangzhou_001', 45);
INSERT INTO `card_area_ass` VALUES (45, 'zhengzhou_001', 30);
INSERT INTO `card_area_ass` VALUES (46, 'zhenjiang_001', 21);

-- ----------------------------
-- Table structure for cou_inf
-- ----------------------------
DROP TABLE IF EXISTS `cou_inf`;
CREATE TABLE `cou_inf`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `business_type` int(1) NOT NULL COMMENT '1:活动；2：售后退费；3：测试',
  `coupon_type` int(1) NOT NULL COMMENT '1:直减；2：折扣',
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupon_category` int(1) NOT NULL COMMENT '1:任意订单；2：固定充值-20；3：固定充值-50；4：固定充值-100；开卡订单',
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `discount` float(3, 2) NULL DEFAULT NULL,
  `reducion` decimal(3, 1) NULL DEFAULT NULL,
  `status` bit(1) NOT NULL COMMENT '是否有效',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cou_recording
-- ----------------------------
DROP TABLE IF EXISTS `cou_recording`;
CREATE TABLE `cou_recording`  (
  `cid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `usage_time` datetime NOT NULL,
  PRIMARY KEY (`cid`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pre_inf
-- ----------------------------
DROP TABLE IF EXISTS `pre_inf`;
CREATE TABLE `pre_inf`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inventory` int(255) NOT NULL,
  `con_inventory` int(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` bit(1) NOT NULL COMMENT '1:有效；2：无效',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pre_recording
-- ----------------------------
DROP TABLE IF EXISTS `pre_recording`;
CREATE TABLE `pre_recording`  (
  `pid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `collection_time` datetime NOT NULL,
  `inventory` int(255) NOT NULL,
  `collection_status` int(1) NOT NULL COMMENT '-1:退回；1：领取',
  PRIMARY KEY (`pid`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sup_area
-- ----------------------------
DROP TABLE IF EXISTS `sup_area`;
CREATE TABLE `sup_area`  (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区唯一',
  `super_id` int(11) NOT NULL,
  `grade` int(1) NOT NULL COMMENT '1：国；2：省；3：市',
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sup_area
-- ----------------------------
INSERT INTO `sup_area` VALUES (1, '北京', 2, 3);
INSERT INTO `sup_area` VALUES (2, '京津冀', 48, 2);
INSERT INTO `sup_area` VALUES (3, '沈阳', 48, 3);
INSERT INTO `sup_area` VALUES (4, '大连', 48, 3);
INSERT INTO `sup_area` VALUES (5, '杭州', 48, 3);
INSERT INTO `sup_area` VALUES (6, '广东省', 48, 2);
INSERT INTO `sup_area` VALUES (7, '佛山', 6, 3);
INSERT INTO `sup_area` VALUES (8, '广州', 6, 3);
INSERT INTO `sup_area` VALUES (9, '江门', 6, 3);
INSERT INTO `sup_area` VALUES (10, '上海', 48, 3);
INSERT INTO `sup_area` VALUES (11, '潮州', 6, 3);
INSERT INTO `sup_area` VALUES (12, '深圳', 48, 3);
INSERT INTO `sup_area` VALUES (13, '成都', 48, 3);
INSERT INTO `sup_area` VALUES (14, '苏州', 18, 3);
INSERT INTO `sup_area` VALUES (15, '无锡', 18, 3);
INSERT INTO `sup_area` VALUES (16, '常州', 18, 3);
INSERT INTO `sup_area` VALUES (17, '青岛', 48, 3);
INSERT INTO `sup_area` VALUES (18, '江苏省', 18, 2);
INSERT INTO `sup_area` VALUES (19, '南京', 18, 3);
INSERT INTO `sup_area` VALUES (20, '扬州', 18, 3);
INSERT INTO `sup_area` VALUES (21, '镇江', 18, 3);
INSERT INTO `sup_area` VALUES (22, '南通', 18, 3);
INSERT INTO `sup_area` VALUES (23, '盐城', 18, 3);
INSERT INTO `sup_area` VALUES (24, '连云港', 18, 3);
INSERT INTO `sup_area` VALUES (25, '宿迁', 18, 3);
INSERT INTO `sup_area` VALUES (26, '西安', 48, 3);
INSERT INTO `sup_area` VALUES (27, '重庆', 48, 3);
INSERT INTO `sup_area` VALUES (28, '武汉', 48, 3);
INSERT INTO `sup_area` VALUES (29, '长沙', 48, 3);
INSERT INTO `sup_area` VALUES (30, '郑州', 48, 3);
INSERT INTO `sup_area` VALUES (31, '天津', 2, 3);
INSERT INTO `sup_area` VALUES (32, '合肥', 48, 3);
INSERT INTO `sup_area` VALUES (33, '贵阳', 48, 3);
INSERT INTO `sup_area` VALUES (34, '宁波', 48, 3);
INSERT INTO `sup_area` VALUES (35, '哈尔滨', 48, 3);
INSERT INTO `sup_area` VALUES (36, '济南', 48, 3);
INSERT INTO `sup_area` VALUES (37, '福州', 48, 3);
INSERT INTO `sup_area` VALUES (38, '兰州', 48, 3);
INSERT INTO `sup_area` VALUES (39, '烟台', 48, 3);
INSERT INTO `sup_area` VALUES (40, '海口', 48, 3);
INSERT INTO `sup_area` VALUES (41, '南宁', 48, 3);
INSERT INTO `sup_area` VALUES (44, '福建省', 48, 2);
INSERT INTO `sup_area` VALUES (45, '漳州', 44, 3);
INSERT INTO `sup_area` VALUES (46, '南平', 44, 3);
INSERT INTO `sup_area` VALUES (47, '莆田', 44, 3);
INSERT INTO `sup_area` VALUES (48, '全国', 0, 1);
INSERT INTO `sup_area` VALUES (49, '重庆', 48, 3);
INSERT INTO `sup_area` VALUES (50, '厦门', 48, 3);
INSERT INTO `sup_area` VALUES (51, '云浮', 6, 3);
INSERT INTO `sup_area` VALUES (52, '河源', 6, 3);
INSERT INTO `sup_area` VALUES (53, '阳江', 6, 3);
INSERT INTO `sup_area` VALUES (54, '汕尾', 6, 3);
INSERT INTO `sup_area` VALUES (55, '泰州', 18, 3);
INSERT INTO `sup_area` VALUES (56, '兴化', 18, 3);
INSERT INTO `sup_area` VALUES (57, '徐州', 18, 3);

-- ----------------------------
-- Table structure for sup_bus_act
-- ----------------------------
DROP TABLE IF EXISTS `sup_bus_act`;
CREATE TABLE `sup_bus_act`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `p_status` bit(1) NOT NULL COMMENT '赠卡活动是否开启',
  `c_status` bit(1) NOT NULL COMMENT '优惠券是否开启',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
