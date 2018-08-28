/*
Navicat MySQL Data Transfer

Source Server         : myconnection
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : essence_store

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-28 17:38:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressId` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `contactName` varchar(20) DEFAULT NULL,
  `contactPhone` varchar(11) DEFAULT NULL,
  `province` char(10) DEFAULT NULL,
  `city` char(10) DEFAULT NULL,
  `detailAddr` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('2018082322180924', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '熊珍珍', '13576063202', '江西省', '南昌市', '方兴科技园', '1', null);
INSERT INTO `address` VALUES ('2018082323121313', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '熊珍珍', '13576063202', '江西省', '南昌市', '农业大学', '0', null);

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` varchar(255) NOT NULL,
  `adminName` varchar(255) DEFAULT NULL,
  `adminPwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2018081710351725', '胡斯麒', '123');
INSERT INTO `admin` VALUES ('2018081711080854', '下', '123');
INSERT INTO `admin` VALUES ('201808171109166', 'xzz', '1213');
INSERT INTO `admin` VALUES ('201808171111074', 'xzz', '1');
INSERT INTO `admin` VALUES ('2018081711123688', 'xzz', '33');
INSERT INTO `admin` VALUES ('2018081711142746', 'xzz', '11');
INSERT INTO `admin` VALUES ('201808192256222', '13576063202', '123');

-- ----------------------------
-- Table structure for `collection`
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `collectionId` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`collectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for `evaluation`
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation` (
  `evaluationId` varchar(255) NOT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `status` int(1) unsigned DEFAULT '0' COMMENT '评价审核',
  `qulity` varchar(255) DEFAULT NULL COMMENT '质量',
  `suit` varchar(255) DEFAULT NULL COMMENT '合身',
  `look` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL COMMENT '评论',
  PRIMARY KEY (`evaluationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO `evaluation` VALUES ('2018082519353671', '2018082517283643', '2018082021193673-M60', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1', '满意', '偏大', '很美', '太喜欢了啊');
INSERT INTO `evaluation` VALUES ('2018082519565954', '2018082517283643', '2018082021134757-M56', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1', '满意', '偏小', '很美', '太满意了');
INSERT INTO `evaluation` VALUES ('2018082520200434', '2018082517365413', '2018082021193673-M60', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1', '满意', '合适', '挺满意', '希望继续努力');
INSERT INTO `evaluation` VALUES ('2018082522182364', '2018082517365413', '2018082021134757-M56', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1', '满意', '偏大', '挺满意', '经常在这家店买衣服哦');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsId` varchar(255) NOT NULL,
  `goodsName` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '分类，T恤之类的',
  `goodsDescrib` varchar(255) DEFAULT NULL,
  `totalNum` int(11) DEFAULT NULL,
  `goodsPic` varchar(255) DEFAULT NULL COMMENT '货品展示图片',
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`goodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('2018082020362559', '条纹毛衣针织薄款', '128', '针织衫', '针织', '100', '2018082020362559/2018082020434050.jpg', '2018-08-20');
INSERT INTO `goods` VALUES ('2018082020572975', '黑色质感中长裙', '560', '连衣裙', '聚酯纤维', '263', '2018082020572975/2018082111421657.jpg', '2018-08-20');
INSERT INTO `goods` VALUES ('2018082021134757', '复古红色波点中长裙', '398', '连衣裙', '雪纺', '208', '2018082021134757/2018082021142644.jpg', '2018-08-20');
INSERT INTO `goods` VALUES ('2018082021171320', '棕色优雅针织裙', '299', '针织衫', '针织', '208', '2018082021171320/2018082021175035.jpg', '2018-08-20');
INSERT INTO `goods` VALUES ('2018082021193673', '格子职业中长裙', '299', '长裙', '棉', '185', '2018082021193673/201808202120013.jpg', '2018-08-20');
INSERT INTO `goods` VALUES ('2018082111402490', '中性BF风上衣女长袖T', '120', 'T恤', '纯棉', '188', '2018082111402490/2018082111410983.jpg', '2018-08-21');
INSERT INTO `goods` VALUES ('2018082115232534', '卡其连衣裙', '203', '连衣裙', '纯棉', '10', '2018082115232534/2018082115234014.jpg', '2018-08-21');
INSERT INTO `goods` VALUES ('2018082115245924', '深绿气质中长裙', '399', '连衣裙', '羊绒', '10', '2018082115245924/201808211525159.jpg', '2018-08-21');

-- ----------------------------
-- Table structure for `goodspic`
-- ----------------------------
DROP TABLE IF EXISTS `goodspic`;
CREATE TABLE `goodspic` (
  `picId` varchar(255) NOT NULL,
  `goodsId` varchar(255) DEFAULT NULL,
  `picName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`picId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodspic
-- ----------------------------
INSERT INTO `goodspic` VALUES ('2018082015453732', '201808201544307', '201808201544307/2018082015453742.jpg');
INSERT INTO `goodspic` VALUES ('2018082017165962', '2018082017164039', '2018082017164039/2018082017165917.jpg');
INSERT INTO `goodspic` VALUES ('2018082020435297', '2018082020362559', '2018082020362559/2018082020435297.jpg');
INSERT INTO `goodspic` VALUES ('2018082021122794', '2018082020572975', '2018082020572975/2018082021122795.jpg');
INSERT INTO `goodspic` VALUES ('2018082021145511', '2018082021134757', '2018082021134757/2018082021145511.jpg');
INSERT INTO `goodspic` VALUES ('2018082021145565', '2018082021134757', '2018082021134757/2018082021145562.jpg');
INSERT INTO `goodspic` VALUES ('2018082021180046', '2018082021171320', '2018082021171320/2018082021180012.jpg');
INSERT INTO `goodspic` VALUES ('2018082021200836', '2018082021193673', '2018082021193673/2018082021200872.jpg');
INSERT INTO `goodspic` VALUES ('2018082021220281', '201808202121145', '201808202121145/2018082021220272.jpg');
INSERT INTO `goodspic` VALUES ('201808211141159', '2018082111402490', '2018082111402490/2018082111411566.jpg');
INSERT INTO `goodspic` VALUES ('2018082115234558', '2018082115232534', '2018082115232534/2018082115234567.jpg');
INSERT INTO `goodspic` VALUES ('2018082115252292', '2018082115245924', '2018082115245924/2018082115252251.jpg');

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemId` varchar(255) NOT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productNum` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('2018082517283635', '2018082517283643', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('201808251728369', '2018082517283643', '2018082021134757-M56', '复古红色波点中长裙', '2', '398', '#ff9562', 'M');
INSERT INTO `item` VALUES ('2018082517365489', '2018082517365413', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('2018082517365491', '2018082517365413', '2018082021134757-M56', '复古红色波点中长裙', '2', '398', '#ff9562', 'M');
INSERT INTO `item` VALUES ('2018082518065228', '2018082518065227', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('2018082518071713', '2018082518071772', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('201808251807591', '2018082518075959', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('2018082519231614', '2018082519231670', '2018082020362559-L96', '条纹毛衣针织薄款', '2', '128', '#0080ff', 'L');
INSERT INTO `item` VALUES ('201808251930309', '2018082519303010', '2018082021134757-M56', '复古红色波点中长裙', '2', '398', '#ff9562', 'M');
INSERT INTO `item` VALUES ('2018082519361867', '2018082519361836', '2018082021134757-M56', '复古红色波点中长裙', '2', '398', '#ff9562', 'M');
INSERT INTO `item` VALUES ('201808251936349', '2018082519363470', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('2018082519370077', '2018082519370046', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('201808251944020', '201808251944024', '2018082021134757-M56', '复古红色波点中长裙', '2', '398', '#ff9562', 'M');
INSERT INTO `item` VALUES ('2018082519440227', '201808251944024', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('2018082519473813', '2018082519473880', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('2018082519473859', '2018082519473880', '2018082021134757-M56', '复古红色波点中长裙', '2', '398', '#ff9562', 'M');
INSERT INTO `item` VALUES ('2018082522113084', '201808252211301', '2018082021171320-M9', '棕色优雅针织裙', '2', '299', '#400000', 'M');
INSERT INTO `item` VALUES ('2018082722334378', '201808272233438', '2018082021134757-M56', '复古红色波点中长裙', '2', '398', '#ff9562', 'M');
INSERT INTO `item` VALUES ('2018082722334396', '201808272233438', '2018082021193673-M60', '格子职业中长裙', '1', '299', '#400000', 'M');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderId` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `totalMoney` double(255,0) DEFAULT NULL,
  `orderStatus` int(5) DEFAULT NULL COMMENT '已完成/未完成',
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2018082517283643', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1095', '1', '2018-08-25');
INSERT INTO `orders` VALUES ('2018082517365413', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1095', '1', '2018-08-25');
INSERT INTO `orders` VALUES ('2018082518065227', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '299', '0', '2018-08-25');
INSERT INTO `orders` VALUES ('2018082518071772', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '299', '0', '2018-08-25');
INSERT INTO `orders` VALUES ('2018082518075959', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1095', '0', '2018-08-25');
INSERT INTO `orders` VALUES ('2018082519231670', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '256', '0', '2018-08-25');
INSERT INTO `orders` VALUES ('2018082519303010', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '796', '1', '2018-08-25');
INSERT INTO `orders` VALUES ('2018082519361836', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '796', '1', '2018-08-25');
INSERT INTO `orders` VALUES ('2018082519363470', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '299', '0', '2018-08-25');
INSERT INTO `orders` VALUES ('2018082519370046', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '299', '0', '2018-08-25');
INSERT INTO `orders` VALUES ('201808251944024', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1095', null, '2018-08-25');
INSERT INTO `orders` VALUES ('2018082519473880', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1095', '1', '2018-08-25');
INSERT INTO `orders` VALUES ('201808252211301', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '598', '0', '2018-08-25');
INSERT INTO `orders` VALUES ('201808272233438', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '1095', '0', '2018-08-27');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productId` varchar(255) NOT NULL,
  `goodsId` varchar(255) NOT NULL COMMENT '货品Id',
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `productNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('201808201544307-L7', '201808201544307', '#c09853', 'L', '18');
INSERT INTO `product` VALUES ('2018082017164039-L84', '2018082017164039', '#c09853', 'L', '18');
INSERT INTO `product` VALUES ('2018082020362559-L96', '2018082020362559', '#0080ff', 'L', '100');
INSERT INTO `product` VALUES ('2018082020572975-L5', '2018082020572975', '#000000', 'L', '100');
INSERT INTO `product` VALUES ('2018082020572975-M55', '2018082020572975', '#000000', 'M', '40');
INSERT INTO `product` VALUES ('2018082020572975-S39', '2018082020572975', '#000000', 'S', '120');
INSERT INTO `product` VALUES ('2018082021134757-L70', '2018082021134757', '#ff9562', 'L', '35');
INSERT INTO `product` VALUES ('2018082021134757-M56', '2018082021134757', '#ff9562', 'M', '120');
INSERT INTO `product` VALUES ('2018082021134757-S66', '2018082021134757', '#ff9562', 'S', '60');
INSERT INTO `product` VALUES ('2018082021171320-L58', '2018082021171320', '#400000', 'L', '100');
INSERT INTO `product` VALUES ('2018082021171320-M9', '2018082021171320', '#400000', 'M', '8');
INSERT INTO `product` VALUES ('2018082021171320-S25', '2018082021171320', '#400000', 'S', '100');
INSERT INTO `product` VALUES ('2018082021193673-L35', '2018082021193673', '#400000', 'L', '88');
INSERT INTO `product` VALUES ('2018082021193673-M60', '2018082021193673', '#400000', 'M', '80');
INSERT INTO `product` VALUES ('2018082021193673-S82', '2018082021193673', '#400000', 'S', '8');
INSERT INTO `product` VALUES ('2018082111402490-M42', '2018082111402490', '#0080c0', 'M', '188');
INSERT INTO `product` VALUES ('2018082115232534-S17', '2018082115232534', '#c09853', 'S', '10');
INSERT INTO `product` VALUES ('2018082115245924-S40', '2018082115245924', '#008040', 'S', '10');

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `shoppingCarId` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL COMMENT '商品Id',
  `productNum` int(11) DEFAULT '0' COMMENT '商品数量',
  `size` char(10) DEFAULT NULL COMMENT '商品尺寸',
  `color` char(20) DEFAULT NULL COMMENT '商品颜色',
  `price` double DEFAULT NULL COMMENT '商品价格',
  `isCheck` int(1) DEFAULT '0' COMMENT '是否选择了该商品，0未选择',
  `totalMoney` double DEFAULT NULL,
  PRIMARY KEY (`shoppingCarId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('2018082221131015', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '2018082021193673-M60', '1', 'M', '#400000', '299', '0', null);
INSERT INTO `shoppingcart` VALUES ('2018082221144985', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '2018082021134757-M56', '2', 'M', '#ff9562', '398', '0', null);
INSERT INTO `shoppingcart` VALUES ('2018082221190520', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '2018082111402490-M42', '2', 'M', '#0080c0', '120', '0', null);
INSERT INTO `shoppingcart` VALUES ('2018082511344750', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '2018082020362559-L96', '2', 'L', '#0080ff', '128', '0', null);
INSERT INTO `shoppingcart` VALUES ('2018082522111981', '26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '2018082021171320-M9', '2', 'M', '#400000', '299', '0', null);

-- ----------------------------
-- Table structure for `showpic`
-- ----------------------------
DROP TABLE IF EXISTS `showpic`;
CREATE TABLE `showpic` (
  `showPicId` varchar(255) NOT NULL,
  `showPicType` varchar(255) DEFAULT NULL,
  `showPicName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showpic
-- ----------------------------

-- ----------------------------
-- Table structure for `size`
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size` (
  `sizeId` varchar(255) NOT NULL,
  `typeId` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sizeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES ('', null, '28');
INSERT INTO `size` VALUES ('1', '1', 'L');
INSERT INTO `size` VALUES ('10', '2', '31');
INSERT INTO `size` VALUES ('2', '1', 'S');
INSERT INTO `size` VALUES ('3', '1', 'M');
INSERT INTO `size` VALUES ('4', '1', 'XL');
INSERT INTO `size` VALUES ('5', '2', '26');
INSERT INTO `size` VALUES ('6', '2', '27');
INSERT INTO `size` VALUES ('8', '2', '29');
INSERT INTO `size` VALUES ('9', '2', '30');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeId` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `parentId` varchar(255) DEFAULT NULL,
  `isShow` int(1) DEFAULT '1' COMMENT '是否展示在首页',
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('c1', '衬衫', 'p2', '1');
INSERT INTO `type` VALUES ('c10', '长裤', 'p3', '1');
INSERT INTO `type` VALUES ('c11', '牛仔裤', 'p3', '1');
INSERT INTO `type` VALUES ('c2', '风衣', 'p2', '1');
INSERT INTO `type` VALUES ('c3', '卫衣', 'p2', '1');
INSERT INTO `type` VALUES ('c4', '针织衫', 'p2', '1');
INSERT INTO `type` VALUES ('c5', 'T恤', 'p2', '1');
INSERT INTO `type` VALUES ('c6', '毛衣', 'p2', '1');
INSERT INTO `type` VALUES ('c7', '连衣裙', 'p1', '1');
INSERT INTO `type` VALUES ('c8', '半身裙', 'p1', '1');
INSERT INTO `type` VALUES ('c9', '短裤', 'p3', '1');
INSERT INTO `type` VALUES ('p1', '裙子', '0', '1');
INSERT INTO `type` VALUES ('p2', '上衣', '0', '1');
INSERT INTO `type` VALUES ('p3', '裤子', '0', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `userName` varchar(20) DEFAULT '小白' COMMENT '用户名',
  `pwd` varchar(255) DEFAULT NULL,
  `sex` char(4) DEFAULT '男',
  `phone` varchar(11) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('26dcd911-844e-4c3f-a5f8-a370c2df0ad1', '熊珍珍', '123456', '女', '13576063202', '2018-08-16');
