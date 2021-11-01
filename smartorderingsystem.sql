/*
 Navicat Premium Data Transfer

 Source Server         : MySQL57
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : smartorderingsystem

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 01/11/2021 14:10:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sos_address
-- ----------------------------
DROP TABLE IF EXISTS `sos_address`;
CREATE TABLE `sos_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `location` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收货地址';

-- ----------------------------
-- Records of sos_address
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sos_carousel
-- ----------------------------
DROP TABLE IF EXISTS `sos_carousel`;
CREATE TABLE `sos_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sos_carousel
-- ----------------------------
BEGIN;
INSERT INTO `sos_carousel` VALUES (1, '轮播图1', 'https://www.mxbc.com/media/upload/index/%E4%B8%BB%E9%A1%B5banner1920x900--2_1.jpg');
INSERT INTO `sos_carousel` VALUES (2, '轮播图2', 'https://www.mxbc.com/media/upload/index/%E8%9C%9C%E9%9B%AA%E5%86%B0%E5%9F%8Ebanner1920x900.jpg');
COMMIT;

-- ----------------------------
-- Table structure for sos_discount
-- ----------------------------
DROP TABLE IF EXISTS `sos_discount`;
CREATE TABLE `sos_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券';

-- ----------------------------
-- Records of sos_discount
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sos_item
-- ----------------------------
DROP TABLE IF EXISTS `sos_item`;
CREATE TABLE `sos_item` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Records of sos_item
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sos_order
-- ----------------------------
DROP TABLE IF EXISTS `sos_order`;
CREATE TABLE `sos_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of sos_order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sos_points
-- ----------------------------
DROP TABLE IF EXISTS `sos_points`;
CREATE TABLE `sos_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分';

-- ----------------------------
-- Records of sos_points
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sos_redeem
-- ----------------------------
DROP TABLE IF EXISTS `sos_redeem`;
CREATE TABLE `sos_redeem` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '兑换码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兑换码';

-- ----------------------------
-- Records of sos_redeem
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sos_store
-- ----------------------------
DROP TABLE IF EXISTS `sos_store`;
CREATE TABLE `sos_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺信息';

-- ----------------------------
-- Records of sos_store
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sos_user
-- ----------------------------
DROP TABLE IF EXISTS `sos_user`;
CREATE TABLE `sos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编码',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `gender` varchar(255) DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `avator` varchar(255) DEFAULT NULL COMMENT '头像',
  `poiints` varchar(255) DEFAULT NULL COMMENT '积分',
  `level` varchar(255) DEFAULT NULL COMMENT '等级',
  `discount` varchar(255) DEFAULT NULL COMMENT '优惠券',
  `debit` varchar(255) DEFAULT NULL COMMENT '储值金额',
  `address` int(255) DEFAULT NULL COMMENT '地址表',
  `order` int(255) DEFAULT NULL COMMENT '订单表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of sos_user
-- ----------------------------
BEGIN;
INSERT INTO `sos_user` VALUES (1, '大包子', '男', '13012341234', '20000222', 'https://www.mxbc.com/media/upload/banner/2-3.jpg', '30', '1', '1', '1', 1, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
