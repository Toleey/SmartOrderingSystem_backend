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

 Date: 14/12/2021 15:12:21
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='轮播图';

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
  `title` varchar(255) DEFAULT NULL COMMENT '商品名',
  `desc` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `price` int(255) DEFAULT NULL COMMENT '价格',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `typeId` int(255) DEFAULT NULL COMMENT '类别ID',
  `num` int(255) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Records of sos_item
-- ----------------------------
BEGIN;
INSERT INTO `sos_item` VALUES (1, '红柚果霸', '一片一片大红柚', 8, 'https://bjetxgzv.cdn.bspapp.com/VKCEYUGU-dc-site/9a952c80-6080-11eb-a16f-5b3e54966275.png', 1, 0);
INSERT INTO `sos_item` VALUES (2, '大杯茶', '好好喝', 7, 'https://bjetxgzv.cdn.bspapp.com/VKCEYUGU-dc-site/9a952c80-6080-11eb-a16f-5b3e54966275.png', 2, 0);
INSERT INTO `sos_item` VALUES (3, '黑咖啡', '苦死了', 8, 'https://bjetxgzv.cdn.bspapp.com/VKCEYUGU-dc-site/9a952c80-6080-11eb-a16f-5b3e54966275.png', 3, 0);
INSERT INTO `sos_item` VALUES (4, '小杯茶', '养生', 9, 'https://www.mxbc.com/media/upload/banner/750X1080.jpg', 2, 0);
INSERT INTO `sos_item` VALUES (5, '拿铁', '好喝', 123, 'https://www.mxbc.com/media/upload/banner/750X1080.jpg', 3, 0);
INSERT INTO `sos_item` VALUES (6, '冰咖啡', '来一杯吧', 12, NULL, 2, 0);
COMMIT;

-- ----------------------------
-- Table structure for sos_order
-- ----------------------------
DROP TABLE IF EXISTS `sos_order`;
CREATE TABLE `sos_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `userId` int(11) DEFAULT NULL COMMENT '用户ID',
  `fetchMealCode` int(11) DEFAULT NULL COMMENT '取餐码',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(255) DEFAULT NULL COMMENT '订单状态',
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of sos_order
-- ----------------------------
BEGIN;
INSERT INTO `sos_order` VALUES (32, 1, 7098, '2021-12-03 01:28:58', NULL, NULL, NULL);
INSERT INTO `sos_order` VALUES (39, 1, 6627, '2021-12-14 06:36:37', NULL, NULL, 1.00);
COMMIT;

-- ----------------------------
-- Table structure for sos_orderFood
-- ----------------------------
DROP TABLE IF EXISTS `sos_orderFood`;
CREATE TABLE `sos_orderFood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL COMMENT '对应订单',
  `foodID` int(11) DEFAULT NULL COMMENT '对应食品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sos_orderFood
-- ----------------------------
BEGIN;
INSERT INTO `sos_orderFood` VALUES (1, 1, 1);
INSERT INTO `sos_orderFood` VALUES (2, 1, 2);
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
-- Table structure for sos_type
-- ----------------------------
DROP TABLE IF EXISTS `sos_type`;
CREATE TABLE `sos_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品种类ID',
  `title` varchar(255) DEFAULT NULL COMMENT '种类名称',
  `img` varchar(255) DEFAULT NULL COMMENT '种类图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品类别';

-- ----------------------------
-- Records of sos_type
-- ----------------------------
BEGIN;
INSERT INTO `sos_type` VALUES (1, '新品来袭', 'http://yy.wenyuan6.com/imgs/web3.png');
INSERT INTO `sos_type` VALUES (2, '茶饮料', NULL);
INSERT INTO `sos_type` VALUES (3, '咖啡饮料', NULL);
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
