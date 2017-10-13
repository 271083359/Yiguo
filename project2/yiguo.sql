/*
Navicat MySQL Data Transfer

Source Server         : p67
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : yiguo

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-10-11 18:40:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classify`
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classify` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cid` int(10) NOT NULL,
  `icon` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES ('1', '国产水果', '1', 't02_channelhome');
INSERT INTO `classify` VALUES ('2', '精选肉类', '2', 't05_channelhome');
INSERT INTO `classify` VALUES ('3', '禽类蛋品', '3', 't06_channelhome');
INSERT INTO `classify` VALUES ('4', '海鲜水产', '4', 't04_channelhome');
INSERT INTO `classify` VALUES ('5', '乳品糕点', '5', 't08_channelhome');
INSERT INTO `classify` VALUES ('6', '方便速食', '6', 't10_channelhome');
INSERT INTO `classify` VALUES ('7', '粮油杂货', '7', 't07_channelhome');

-- ----------------------------
-- Table structure for `classify_small`
-- ----------------------------
DROP TABLE IF EXISTS `classify_small`;
CREATE TABLE `classify_small` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `cont` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of classify_small
-- ----------------------------
INSERT INTO `classify_small` VALUES ('1', '国产水果', '1');
INSERT INTO `classify_small` VALUES ('2', '羊肉', '2');
INSERT INTO `classify_small` VALUES ('3', '香肠', '2');
INSERT INTO `classify_small` VALUES ('4', '火腿/培根', '2');
INSERT INTO `classify_small` VALUES ('5', '肉制品', '2');
INSERT INTO `classify_small` VALUES ('6', '鸡', '3');
INSERT INTO `classify_small` VALUES ('7', '鸭', '3');
INSERT INTO `classify_small` VALUES ('8', '鹅/鸽子/特色禽类', '3');
INSERT INTO `classify_small` VALUES ('9', '蛋', '3');
INSERT INTO `classify_small` VALUES ('10', '鱼', '4');
INSERT INTO `classify_small` VALUES ('11', '三文鱼', '4');
INSERT INTO `classify_small` VALUES ('12', '虾', '4');
INSERT INTO `classify_small` VALUES ('13', '蟹', '4');
INSERT INTO `classify_small` VALUES ('14', '贝', '4');
INSERT INTO `classify_small` VALUES ('15', '活鲜', '4');
INSERT INTO `classify_small` VALUES ('16', '海产干货', '4');
INSERT INTO `classify_small` VALUES ('17', '特色海产', '4');
INSERT INTO `classify_small` VALUES ('18', '面包', '5');
INSERT INTO `classify_small` VALUES ('19', '冷冻点心', '6');
INSERT INTO `classify_small` VALUES ('20', '西式主食', '6');
INSERT INTO `classify_small` VALUES ('21', '中式主食', '6');
INSERT INTO `classify_small` VALUES ('22', '火锅料', '6');
INSERT INTO `classify_small` VALUES ('23', '冷藏熟食', '6');
INSERT INTO `classify_small` VALUES ('24', '半成品菜', '6');
INSERT INTO `classify_small` VALUES ('25', '米', '7');
INSERT INTO `classify_small` VALUES ('26', '杂粮', '7');
INSERT INTO `classify_small` VALUES ('27', '面/面制品', '7');
INSERT INTO `classify_small` VALUES ('28', '油', '7');
INSERT INTO `classify_small` VALUES ('29', '调味料', '7');
INSERT INTO `classify_small` VALUES ('30', '干货', '7');
INSERT INTO `classify_small` VALUES ('31', '果干/零食', '7');

-- ----------------------------
-- Table structure for `egg`
-- ----------------------------
DROP TABLE IF EXISTS `egg`;
CREATE TABLE `egg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '3',
  `eid` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annotation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of egg
-- ----------------------------
INSERT INTO `egg` VALUES ('1', '3', '1', '草原兴发绿鸟鸡胗500g', '19.00', '细心去除黄膜 烹饪更省心', 'e1.jpg', '0');
INSERT INTO `egg` VALUES ('2', '3', '2', ' 华英天养麻鸭950g', '39.80', null, 'e2.jpg', '0');
INSERT INTO `egg` VALUES ('5', '3', '1', '优质上腿肉(细嫩去骨)200g', '9.50', '无骨腿肉更过瘾', 'e5.jpg', '0');
INSERT INTO `egg` VALUES ('3', '3', '1', '姐妹厨房急鲜封翅中1000g', '55.90', '甘香四溢 挂齿回味', 'e3.jpg', '0');
INSERT INTO `egg` VALUES ('4', '3', '1', '广东清远鸡950g', '37.50', '弹嫩爽滑小鲜肉', 'e4.jpg', '0');
INSERT INTO `egg` VALUES ('6', '3', '2', '红头鸭老鸭(整只)2.6kg', '119.00', null, 'e6.jpg', '0');
INSERT INTO `egg` VALUES ('7', '3', '3', '原膳生态乳鸽280g', '33.90', '可炸可炖的小雏鸽', 'e7.jpg', '0');
INSERT INTO `egg` VALUES ('8', '3', '1', '荷美尔Hormel经典尊享鸡翅(奥尔良风味)500g', '62.80', '手残还爱吃肉，选它啦', 'e8.jpg', '0');
INSERT INTO `egg` VALUES ('9', '3', '1', '荷美尔Hormel 经典尊享鸡翅 1000g', '125.00', '饱满翅中 秘方调味', 'e9.jpg', '0');
INSERT INTO `egg` VALUES ('10', '3', '3', '崇明生态乳鸽300g', '33.90', '肉质柔嫩不腥 鲜香细腻', 'e10.jpg', '0');
INSERT INTO `egg` VALUES ('11', '3', '2', '优质精选西餐鸭胸200g', '7.90', '肉质细嫩 香滑多汁', 'e11.jpg', '0');

-- ----------------------------
-- Table structure for `fast`
-- ----------------------------
DROP TABLE IF EXISTS `fast`;
CREATE TABLE `fast` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '6',
  `fid` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annotation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fast
-- ----------------------------
INSERT INTO `fast` VALUES ('1', '6', '1', '御蒸笼三鲜烧麦190g(8只装)', '12.80', '皮薄料足 油润鲜香', 'f1.jpg', '0');
INSERT INTO `fast` VALUES ('2', '6', '3', '民仁堂虾肉小馄饨110g', '8.50', '晶莹剔透 Q弹鲜嫩', 'f2.jpg', '0');
INSERT INTO `fast` VALUES ('3', '6', '3', '吴大娘大娘水饺大白菜猪肉饺800g(40只装)', '29.80', '柔嫩大白菜搭配上选猪肉', 'f3.jpg', '0');
INSERT INTO `fast` VALUES ('4', '6', '5', '优形鸡胸肉七日装(男神款)1.05kg', '118.00', '塑造身形的保障，练就硬汉之躯', 'f4.jpg', '0');
INSERT INTO `fast` VALUES ('5', '6', '3', '民仁堂蟹黄小馄饨110g', '12.90', '添加蟹黄 满口鲜香', 'f5.jpg', '0');
INSERT INTO `fast` VALUES ('6', '6', '6', '优形鸡胸肉七日装(女神款)1.05kg', '118.00', '7日礼盒装，健康有温度的礼物', 'f6.jpg', '0');
INSERT INTO `fast` VALUES ('7', '6', '3', '龙凤椰丝奶黄包350g', '16.90', '在充满椰香奶香的早晨苏醒', 'f7.jpg', '0');
INSERT INTO `fast` VALUES ('8', '6', '1', '御蒸笼鲜肉小笼190g(8只装)', '12.80', '皮薄清透 汤汁浓郁', 'f8.jpg', '0');
INSERT INTO `fast` VALUES ('9', '6', '3', '吴大娘大娘水饺三鲜水饺鲜肉白菜馅500g', '15.80', '像妈妈包的一样舍得放料', 'f9.jpg', '0');
INSERT INTO `fast` VALUES ('10', '6', '1', '稻香万好粗粮淮山包160g', '13.80', '面皮弹软 奶香浓郁', 'f10.jpg', '0');
INSERT INTO `fast` VALUES ('11', '6', '3', '老大房腌笃鲜酥饼70g*6只', '48.00', '新晋网红口味 浓郁腌笃鲜', 'f11.jpg', '0');
INSERT INTO `fast` VALUES ('12', '6', '12', '御蒸笼鲍鱼烧麦190g(8只装)', '32.80', '吃得到的鲍鱼粒 滋味鲜美', 'f12.jpg', '0');
INSERT INTO `fast` VALUES ('13', '6', '3', '湾仔码头组合装1.8KG', '99.70', '美味多汁 皮薄馅大', 'f13.jpg', '0');
INSERT INTO `fast` VALUES ('14', '6', '3', '御蒸笼鲜肉小馄饨95g(12只装)+3.8g(汤料包)', '6.80', '自带汤料包 爽滑鲜香', 'f14.jpg', '0');
INSERT INTO `fast` VALUES ('15', '6', '3', '吴大娘大娘水饺素三鲜饺800g(40只装)', '29.80', '全素馅料 用心调味', 'f15.jpg', '0');
INSERT INTO `fast` VALUES ('16', '6', '3', '吴大娘大娘水饺牛肉芹菜饺800g(40只装)', '34.90', '舍得放料 大口满足', 'f16.jpg', '0');
INSERT INTO `fast` VALUES ('17', '6', '3', '民仁堂荠菜小馄饨110g', '6.80', '暖心的儿时美味', 'f17.jpg', '0');
INSERT INTO `fast` VALUES ('18', '6', '18', '俏侬香葱味手抓饼1kg(10片装)', '15.50', '外焦里嫩 酥脆可口', 'f18.jpg', '0');
INSERT INTO `fast` VALUES ('19', '6', '5', '优形蒸鸡胸肉块(香草味)(男神款)125g', '14.50', '低脂肪高蛋白，三分练七分吃', 'f19.jpg', '0');
INSERT INTO `fast` VALUES ('20', '6', '3', '老大房蛋黄鲜肉酥饼70g*6只', '48.00', '地道蛋黄鲜肉馅料 大口满足', 'f20.jpg', '0');
INSERT INTO `fast` VALUES ('21', '6', '1', '稻香万好雪花豆沙包160g', '11.80', '外裹满满清香椰丝', 'f21.jpg', '0');
INSERT INTO `fast` VALUES ('22', '6', '3', '俏侬原味手抓饼1kg(10片装)', '14.80', '千层百叠 丝丝相扣', 'f22.jpg', '0');
INSERT INTO `fast` VALUES ('23', '6', '3', '御蒸笼葱油拌面150g+35g(调料包)', '11.80', '葱香浓郁 面条劲道', 'f23.jpg', '0');
INSERT INTO `fast` VALUES ('24', '6', '3', '龙凤玉米猪肉水饺690g', '25.90', '古法揉面 鲜香馅料', 'f24.jpg', '0');
INSERT INTO `fast` VALUES ('25', '6', '1', '稻香万好健康粗粮糕180g御蒸笼葱油拌面150g+35g(调料包)\r\n御蒸笼葱油拌面150g+35g(调料包)\r\n', '9.90', '粗粮好口感 软糯微微甜', 'f25.jpg', '0');
INSERT INTO `fast` VALUES ('26', '6', '3', '老大房鳕鱼鲜肉酥饼70g*6只', '48.00', '手作酥饼 味道不输店家现做', 'f26.jpg', '0');
INSERT INTO `fast` VALUES ('27', '6', '1', '稻香万好糯米卷290g', '12.90', '用心调味 入口软糯鲜香', 'f27.jpg', '0');
INSERT INTO `fast` VALUES ('28', '6', '6', '优形蒸鸡胸切片(黑胡椒味)(男神款)150g', '14.50', '浓郁黑胡椒味，健身从此不再单调', 'f28.jpg', '0');
INSERT INTO `fast` VALUES ('29', '6', '3', '吴大娘大娘水饺西芹猪肉饺800g(40只装)', '34.90', '荤素搭配 用心调味', 'f29.jpg', '0');
INSERT INTO `fast` VALUES ('30', '6', '3', '民仁堂鲜肉小馄饨110g', '6.80', '鲜香丰腴 柔嫩不腻', 'f30.jpg', '0');
INSERT INTO `fast` VALUES ('31', '6', '3', '吴大娘大娘水饺鲜肉荠菜饺800g(40只装)', '31.90', '入口爽滑 一口大满足', 'f31.jpg', '0');
INSERT INTO `fast` VALUES ('32', '6', '6', '荷美尔Hormel经典面包热狗肠1kg', '48.50', '弹嫩紧实 鲜香入味', 'f32.jpg', '0');
INSERT INTO `fast` VALUES ('33', '6', '3', '吴大娘大娘水饺荠菜笋菇饺720g(36只装)', '29.80', '真材实料 大口满足', 'f33.jpg', '0');
INSERT INTO `fast` VALUES ('34', '6', '1', '稻香万好鲜虾水饺175g', '29.80', '口口鲜香多汁', 'f34.jpg', '0');
INSERT INTO `fast` VALUES ('35', '6', '6', '优形蒸鸡胸切片(女神款)150g*3', '42.80', '高蛋白低脂肪、性感身材吃出来', 'f35.jpg', '0');
INSERT INTO `fast` VALUES ('36', '6', '3', '吴大娘大娘水饺玉米鲜肉饺600g(30只装)', '22.50', '鲜嫩猪肉搭配鲜甜玉米', 'f36.jpg', '0');
INSERT INTO `fast` VALUES ('37', '6', '6', '优形蒸鸡胸切片(黑胡椒味)(女神款)150g', '14.50', '不柴不干，如吃鸡腿般水嫩', 'f37.jpg', '0');
INSERT INTO `fast` VALUES ('38', '6', '3', '御蒸笼荠菜香菇大馄饨200g(8只装)+3.8g(汤料包)', '9.80', '入口爽滑 鲜香多汁', 'f38.jpg', '0');
INSERT INTO `fast` VALUES ('39', '6', '1', '避风塘新年大礼包1.2kg', '98.00', '好吃的都打包一份', 'f39.jpg', '0');
INSERT INTO `fast` VALUES ('40', '6', '1', '御蒸笼蟹粉小笼190g(8只装)', '32.80', '满满蟹粉汤汁 口口鲜美', 'f40.jpg', '0');
INSERT INTO `fast` VALUES ('41', '6', '1', '思念全素春卷204g（12只）', '8.00', '新老包装交替出货', 'f41.jpg', '0');
INSERT INTO `fast` VALUES ('42', '6', '6', '优形电烤鸡胸肉片(男神款)150g*3', '42.80', '入口柔嫩，回味还有些鲜甜', 'f42.jpg', '0');
INSERT INTO `fast` VALUES ('43', '6', '3', '老大房鲜肉酥饼70g*6只', '36.00', '老上海味道 鲜嫩多汁', 'f43.jpg', '0');
INSERT INTO `fast` VALUES ('44', '6', '44', '倍有滋茯苓山药猪手豆汤(速冻熟制)500g', '26.00', '谁能抗拒满满的胶原蛋白', 'f44.jpg', '0');
INSERT INTO `fast` VALUES ('45', '6', '1', '稻香万好古法马拉糕140g', '9.90', '面皮松软 口感香甜', 'f45.jpg', '0');
INSERT INTO `fast` VALUES ('46', '6', '1', '龙凤煎饺900g1', '23.50', '方便好吃的快手美食', 'f46.jpg', '0');
INSERT INTO `fast` VALUES ('47', '6', '4', '桂冠包心贡丸110g', '10.50', '真材实料不掺粉', 'f47.jpg', '0');
INSERT INTO `fast` VALUES ('48', '6', '3', '湾仔码头多菜多益荠菜嫩笋猪肉水饺720g', '36.90', '三道压纹”手工包制', 'f48.jpg', '0');
INSERT INTO `fast` VALUES ('49', '6', '6', '荷美尔Hormel 经典黑椒猪排 100g', '13.50', '传统捶打工艺 胡椒调味', 'f49.jpg', '0');
INSERT INTO `fast` VALUES ('50', '6', '6', '荷美尔Hormel经典尊享鸡翅(奥尔良风味)500g', '62.80', '手残还爱吃肉，选它啦', 'f50.jpg', '0');
INSERT INTO `fast` VALUES ('51', '6', '6', '荷美尔Hormel 经典香煎培根 120g', '12.80', '煎一下，趁热吃，味道超赞', 'f51.jpg', '0');
INSERT INTO `fast` VALUES ('52', '6', '6', '荷美尔Hormel 经典尊享鸡翅 1000g', '125.00', '饱满翅中 秘方调味', 'f52.jpg', '0');
INSERT INTO `fast` VALUES ('53', '6', '6', '荷美尔Hormel 经典碳烧猪排 100g', '13.80', '整块梅花肉 大口吃过瘾', 'f53.jpg', '0');
INSERT INTO `fast` VALUES ('54', '6', '3', '湾仔码头多菜多益韭菜马蹄猪肉水饺720g', '33.90', '融合真空和面技术', 'f54.jpg', '0');
INSERT INTO `fast` VALUES ('55', '6', '3', '湾仔码头韭菜猪肉水饺720g', '29.90', '新鲜蔬菜 现切现包', 'f55.jpg', '0');
INSERT INTO `fast` VALUES ('56', '6', '56', '湾仔码头鲜美虾皇云吞600g', '33.90', '新鲜蔬菜 现切现包皮薄如翼 整只虾仁入馅皮薄如翼 整只虾仁入馅', 'f56.jpg', '0');
INSERT INTO `fast` VALUES ('57', '6', '57', '湾仔码头荠菜猪肉水饺720g', '28.90', '严选食材 安心品质 每一口都实在', 'f57.jpg', '0');
INSERT INTO `fast` VALUES ('58', '6', '3', '湾仔码头港式鲜美大虾云吞皇360g', '33.90', '滑嫩嫩，还有虾仁', 'f58.jpg', '0');
INSERT INTO `fast` VALUES ('59', '6', '1', '避风塘鲜肉糯米烧卖240g', '12.80', '软糯米饭爱上咸香鲜肉', 'f59.jpg', '0');
INSERT INTO `fast` VALUES ('60', '6', '3', '湾仔码头荠菜猪肉云吞600g', '29.90', '从皮到馅 每一口都好味', 'f60.jpg', '0');
INSERT INTO `fast` VALUES ('61', '6', '3', '避风塘鲜虾云吞360g', '46.80', '好像虾仁在舌尖弹跳', 'f61.jpg', '0');
INSERT INTO `fast` VALUES ('62', '6', '3', '湾仔码头芹菜香干猪肉水饺720g', '31.80', '皮薄馅大 新鲜取材 手工包制', 'f62.jpg', '0');
INSERT INTO `fast` VALUES ('63', '6', '1', '龙凤牛奶馒头1.3kg', '25.00', '小麦粉配合牛乳粉 香软劲道', 'f63.jpg', '0');
INSERT INTO `fast` VALUES ('64', '6', '3', '避风塘干炒牛河280g', '14.80', '和现做的一样好吃', 'f64.jpg', '0');
INSERT INTO `fast` VALUES ('65', '6', '3', '湾仔码头芹菜莲藕猪肉水饺720g', '29.90', '选用芝麻油洋葱调香', 'f65.jpg', '0');
INSERT INTO `fast` VALUES ('66', '6', '3', '湾仔码头荠菜猪肉上海大馄饨600g', '28.90', '皮薄馅大 真材实料', 'f66.jpg', '0');

-- ----------------------------
-- Table structure for `fast_prefecture`
-- ----------------------------
DROP TABLE IF EXISTS `fast_prefecture`;
CREATE TABLE `fast_prefecture` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `prefecture` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgs` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `nid` int(10) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fast_prefecture
-- ----------------------------
INSERT INTO `fast_prefecture` VALUES ('1', '泰国速食', '9288695082197207.jpg', null, null);
INSERT INTO `fast_prefecture` VALUES ('2', '避风塘', '9288685774872381.jpg', null, null);
INSERT INTO `fast_prefecture` VALUES ('3', '功德林', '9288696310604042.jpg', null, null);
INSERT INTO `fast_prefecture` VALUES ('4', '桂冠', '9288696310866186.jpg', null, null);
INSERT INTO `fast_prefecture` VALUES ('5', '五亭淮扬', '9288695084130519.jpg', null, null);
INSERT INTO `fast_prefecture` VALUES ('6', '龙凤', '9288695085801687.jpg', null, null);
INSERT INTO `fast_prefecture` VALUES ('7', '湾仔码头', '9288685775200061.jpg', null, null);
INSERT INTO `fast_prefecture` VALUES ('8', '避风塘', '9288685537206075.jpg', null, null);

-- ----------------------------
-- Table structure for `fruit`
-- ----------------------------
DROP TABLE IF EXISTS `fruit`;
CREATE TABLE `fruit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '1',
  `mid` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annotation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fruit
-- ----------------------------

-- ----------------------------
-- Table structure for `groceriecs`
-- ----------------------------
DROP TABLE IF EXISTS `groceriecs`;
CREATE TABLE `groceriecs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '7',
  `gid` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annotation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of groceriecs
-- ----------------------------

-- ----------------------------
-- Table structure for `groceries_prefecture`
-- ----------------------------
DROP TABLE IF EXISTS `groceries_prefecture`;
CREATE TABLE `groceries_prefecture` (
  `iid` int(10) NOT NULL AUTO_INCREMENT,
  `prefecture` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgs` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of groceries_prefecture
-- ----------------------------
INSERT INTO `groceries_prefecture` VALUES ('1', '艾谷', '9288696309489930.jpg');
INSERT INTO `groceries_prefecture` VALUES ('2', '有机面食', '9288686655545160.jpg');
INSERT INTO `groceries_prefecture` VALUES ('3', '厨房调料', '9288692428349520.jpg');
INSERT INTO `groceries_prefecture` VALUES ('4', '干货', '9288685772775229.jpg');
INSERT INTO `groceries_prefecture` VALUES ('5', '乳玉皇妃', '9288696310341898.jpg');
INSERT INTO `groceries_prefecture` VALUES ('6', '信洲', '9288685535633211.jpg');
INSERT INTO `groceries_prefecture` VALUES ('7', '宝谷园', '9288685535698747.jpg');

-- ----------------------------
-- Table structure for `life`
-- ----------------------------
DROP TABLE IF EXISTS `life`;
CREATE TABLE `life` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '3',
  `mid` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annotation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'y.jpg',
  `show` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of life
-- ----------------------------
INSERT INTO `life` VALUES ('1', '3', null, '意大利金奇异果6个100-120g/个', '39.00', null, 'y1.jpg', '0');
INSERT INTO `life` VALUES ('2', '3', null, '福建平和精品红心蜜柚2个礼盒装约1.3kg/个', '59.00', null, 'y2.jpg', '0');
INSERT INTO `life` VALUES ('3', '3', null, '原膳南美白虾仁（中）250g', '32.90', null, 'y3.jpg', '0');
INSERT INTO `life` VALUES ('4', '3', null, '欧丽薇兰特级初榨橄榄油750ml', '98.00', null, 'y4.jpg', '0');
INSERT INTO `life` VALUES ('5', '3', null, '巴西公牛精修牛腩块500g', '39.90', null, 'y5.jpg', '0');
INSERT INTO `life` VALUES ('6', '3', null, '墨西哥牛油果4个130-160g/个', '41.90', null, 'y6.jpg', '0');
INSERT INTO `life` VALUES ('7', '3', null, '新西兰樱桃1kg原箱果径28-30mm', '288.00', null, 'y7.jpg', '0');
INSERT INTO `life` VALUES ('8', '3', null, 'Rasaku速溶椰浆粉50g', '8.80', null, 'y8.jpg', '0');
INSERT INTO `life` VALUES ('9', '3', null, '云南蒙自枇杷2盒(约400g/盒)-zf', '69.00', null, 'y9.jpg', '1');
INSERT INTO `life` VALUES ('10', '3', null, '台湾黑珍珠莲雾500g', '39.90', null, 'y10.jpg', '1');
INSERT INTO `life` VALUES ('11', '3', null, '海南蜜宝红心火龙果1kg(大果)400-600g/个', '38.00', null, 'y11.jpg', '1');
INSERT INTO `life` VALUES ('12', '3', null, '银杏西芹百合套包750g', '21.00', null, 'y12.jpg', '1');
INSERT INTO `life` VALUES ('13', '3', null, '荷塘月色套包900g', '25.80', null, 'y13.jpg', '1');
INSERT INTO `life` VALUES ('14', '3', null, '四川耙耙柑2kg约150g/个', '58.00', null, 'y14.jpg', '1');
INSERT INTO `life` VALUES ('15', '3', null, '农夫山泉17.5°橙(铂金果)3kg', '88.00', null, 'y15.jpg', '1');
INSERT INTO `life` VALUES ('16', '3', null, '哈根达斯曲奇香奶+香草+草莓冰淇淋77g*1+81g*3', '148.00', null, 'y16.jpg', '1');
INSERT INTO `life` VALUES ('17', '3', null, 'Zespri佳沛新西兰有机绿奇异果3.3kg原箱(33-36个)', '179.00', null, 'y17.jpg', '2');
INSERT INTO `life` VALUES ('18', '3', null, '阿榴哥泰国金枕头冷冻榴莲果肉300g', '68.00', null, 'y18.jpg', '2');
INSERT INTO `life` VALUES ('19', '3', null, '常瀛进口精选香蕉约1.5kg', '25.90', null, 'y19.jpg', '2');
INSERT INTO `life` VALUES ('20', '3', null, '兰维乐天然矿泉水10L', '72.90', null, 'y20.jpg', '2');
INSERT INTO `life` VALUES ('21', '3', null, '乌拉圭牛尾切片500g', '49.80', null, 'y21.jpg', '2');
INSERT INTO `life` VALUES ('22', '3', null, '绿水沱散养芦花鸡蛋10枚', '21.90', null, 'y22.jpg', '2');
INSERT INTO `life` VALUES ('23', '3', null, '兰维乐南极犬牙鱼150g98', '98.00', null, 'y23.jpg', '2');
INSERT INTO `life` VALUES ('24', '3', null, '美威欧式原味三文鱼排（2片装）250g', '62.90', null, 'y24.jpg', '2');

-- ----------------------------
-- Table structure for `meat`
-- ----------------------------
DROP TABLE IF EXISTS `meat`;
CREATE TABLE `meat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '2',
  `mid` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annotation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meat
-- ----------------------------
INSERT INTO `meat` VALUES ('1', '2', '4', '澳洲肥牛卷350g', '49.00', '没有肥牛卷的火锅是假的', 'm1.jpg', '0');
INSERT INTO `meat` VALUES ('2', '2', '4', '恒都澳洲牛腱子1kg', '69.00', null, 'm2.jpg', '0');
INSERT INTO `meat` VALUES ('3', '2', '4', '恒都有机精修牛后腿肉500g', '56.80', '元气好肉就是我', 'm3.jpg', '0');
INSERT INTO `meat` VALUES ('4', '2', '4', '丹麦皇冠天然谷饲猪肚550g', '45.00', '小炒经典部位 清洁无膻', 'm4.jpg', '0');
INSERT INTO `meat` VALUES ('5', '2', '4', '丹麦皇冠天然谷饲猪净脊骨段400g', '10.90', '精细分割脊骨 炖出自然美味', 'm5.jpg', '0');
INSERT INTO `meat` VALUES ('6', '2', '4', '新西兰去骨小牛腿肉块500g', '42.00', '粉嫩元气小鲜肉 4-30天纯牛乳喂养', 'm6.jpg', '0');
INSERT INTO `meat` VALUES ('7', '2', '4', '恒都澳洲牛腩块500g', '35.90', '该商品不支持使用优惠券 奶香浓郁牛气足', 'm7.jpg', '0');
INSERT INTO `meat` VALUES ('8', '2', '4', '丹麦皇冠天然谷饲猪小排400g', '22.90', '靠猪颈部位精选 更紧致', 'm8.jpg', '0');
INSERT INTO `meat` VALUES ('9', '2', '2', '荷美尔Hormel经典面包热狗肠1kg', '48.50', '弹嫩紧实 鲜香入味', 'm9.jpg', '0');
INSERT INTO `meat` VALUES ('10', '2', '4', '杜克美厨西冷牛排150g', '18.90', null, 'm10.jpg', '0');
INSERT INTO `meat` VALUES ('11', '2', '4', '澳洲精选肥牛卷500g', '59.00', '没有肥牛卷的火锅是假的', 'm11.jpg', '0');
INSERT INTO `meat` VALUES ('12', '2', '4', '民维大牧汗精制肥牛片540g', '49.90', null, 'm12.jpg', '0');
INSERT INTO `meat` VALUES ('13', '2', '1', '民维大牧汗180羔羊肉片540g', '48.80', '该商品不支持使用优惠券', 'm13.jpg', '0');
INSERT INTO `meat` VALUES ('14', '2', '4', '荷美尔Hormel 经典黑椒猪排 100g', '13.50', '传统捶打工艺 胡椒调味', 'm14.jpg', '0');
INSERT INTO `meat` VALUES ('15', '2', '3', '荷美尔Hormel 经典香煎培根 120g', '12.80', '煎一下，趁热吃，味道超赞', 'm15.jpg', '0');
INSERT INTO `meat` VALUES ('16', '2', '4', '荷美尔Hormel 经典碳烧猪排 100g', '13.80', '整块梅花肉 大口吃过瘾', 'm16.jpg', '0');
INSERT INTO `meat` VALUES ('17', '2', '4', '丹麦皇冠天然谷饲猪蹄700g', '25.80', '久煮糯滑不腻，酥软浓香，胶质丰富', 'm17.jpg', '0');
INSERT INTO `meat` VALUES ('18', '2', '4', '澳洲腱子心1kg', '110.00', '该商品不支持使用优惠券 整根的 霸气的\r\n加入购物车', 'm18.jpg', '0');
INSERT INTO `meat` VALUES ('19', '2', '4', '澳洲草饲牛腩块500g', '39.00', 'S级牛腩 肉质韧强有嚼劲', 'm19.jpg', '0');

-- ----------------------------
-- Table structure for `meat_copy`
-- ----------------------------
DROP TABLE IF EXISTS `meat_copy`;
CREATE TABLE `meat_copy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT NULL,
  `mid` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annotation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meat_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `milk`
-- ----------------------------
DROP TABLE IF EXISTS `milk`;
CREATE TABLE `milk` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '5',
  `mid` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annotation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of milk
-- ----------------------------
INSERT INTO `milk` VALUES ('1', '5', '1', '百吉福成长奶酪(原味)100g(25g*4杯)', '13.90', null, 'mm1.jpg', '0');
INSERT INTO `milk` VALUES ('2', '5', '1', '百吉福奶酪布丁(蓝莓口味)80g', '5.50', null, 'mm2.jpg', '0');
INSERT INTO `milk` VALUES ('3', '5', '1', '百吉福芝士片(香浓原味)100g(6片)', '11.50', null, 'mm3.jpg', '0');
INSERT INTO `milk` VALUES ('4', '5', '1', '百吉福成长奶酪(巧克力味)100g(25g*4杯)', '13.90', null, 'mm4.jpg', '0');
INSERT INTO `milk` VALUES ('5', '5', '1', '百吉福成长奶酪(蓝莓味)100g(25g*4杯)', '113.90', null, 'mm5.jpg', '0');
INSERT INTO `milk` VALUES ('6', '5', '1', '百吉福棒棒奶酪(原味)120g(20g*6支)', '18.80', null, 'mm6.jpg', '0');
INSERT INTO `milk` VALUES ('7', '5', '1', '百吉福棒棒奶酪(混合水果味)500g(20g*25支)\r\n百吉福棒棒奶酪(混合水果味)500g(20g*25支)\r\n', '65.80', null, 'mm7.jpg', '0');
INSERT INTO `milk` VALUES ('8', '5', '1', '百吉福棒棒奶酪(混合水果味)120g(20g*6支)', '18.80', null, 'mm8.jpg', '0');
INSERT INTO `milk` VALUES ('9', '5', '1', '百吉福芝士片(香浓原味)166g(10片)', '17.50', null, 'mm9.jpg', '0');
INSERT INTO `milk` VALUES ('10', '5', '1', '百吉福奶酪布丁(草莓口味)80g', '5.50', null, 'mm10.jpg', '0');
INSERT INTO `milk` VALUES ('11', '5', '1', '百吉福奶酪布丁(柠檬口味)80g', '5.50', null, 'mm11.jpg', '0');
INSERT INTO `milk` VALUES ('12', '5', '1', '百吉福小三角奶酪(草莓味)140g', '16.80', '传承法国工艺 美妙柔滑', 'mm12.jpg', '0');
INSERT INTO `milk` VALUES ('13', '5', '1', '多美鲜全脂牛奶200ml*12', '49.00', '源自阿尔卑斯山天然牧场', 'mm13.jpg', '0');
INSERT INTO `milk` VALUES ('14', '5', '1', '百吉福成长奶酪(草莓味)100g(25g*4杯)', '13.90', '含法国可溶性膳食纤维', 'mm14.jpg', '0');
INSERT INTO `milk` VALUES ('15', '5', '1', '美心二人世界冰皮月饼(芒果味)120g(60g*2个)', '58.00', '含法国香甜可口 软糯有劲', 'mm15.jpg', '0');
INSERT INTO `milk` VALUES ('16', '5', '1', '美心二人世界冰皮月饼(冰糖燕窝味)120g(60g*2个)', '58.00', '精心照料每一颗味蕾', 'mm16.jpg', '0');
INSERT INTO `milk` VALUES ('17', '5', '1', '美心二人世界冰皮月饼(奶黄味)120g(60g*2个)', '58.00', '软糯有劲 过口难忘', 'mm17.jpg', '0');
INSERT INTO `milk` VALUES ('18', '5', '1', '百吉福芝士片(减脂50%)166g(10片)', '19.50', null, 'mm18.jpg', '0');
INSERT INTO `milk` VALUES ('19', '5', '1', '百吉福棒棒奶酪(原味)500g(20g*25支)', '65.80', '进口奶源 奶香浓郁', 'mm19.jpg', '0');
INSERT INTO `milk` VALUES ('20', '5', '1', '百吉福棒棒奶酪(玉米味)120g(20g*6支)', '19.80', null, 'mm20.jpg', '0');
INSERT INTO `milk` VALUES ('21', '5', '1', '百吉福棒棒奶酪(酸奶味+果粒)120g(20g*6支)', '19.80', null, 'mm21.jpg', '0');
INSERT INTO `milk` VALUES ('22', '5', '1', '养乐多活菌型乳酸菌乳饮品100ml*5', '11.00', '该商品不与其他优惠券、现金券及抵用卡同享', 'mm22.jpg', '0');

-- ----------------------------
-- Table structure for `seafood`
-- ----------------------------
DROP TABLE IF EXISTS `seafood`;
CREATE TABLE `seafood` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '4',
  `sid` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annotation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'c.jpg',
  `show` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of seafood
-- ----------------------------
INSERT INTO `seafood` VALUES ('1', '4', '1', 'Joyfish美国阿拉斯加美人鲽360g', '37.90', '源自深海 滑嫩香醇', 'c1.jpg', '0');
INSERT INTO `seafood` VALUES ('2', '4', '5', '獐子岛豆豉粉丝扇贝(速冻生制)200g(6枚装)', '18.90', '豆豉鲜香 搭配爽口粉丝', 'c2.jpg', '0');
INSERT INTO `seafood` VALUES ('3', '4', '5', 'KONO半壳冷冻青口贝500g', '49.80', '净海佳品，海中牛奶', 'c3.jpg', '0');
INSERT INTO `seafood` VALUES ('4', '4', '1', '海天下沸腾鱼280g(鱼片包225g+酱料包50g+香料包', '28.00', '原装进口，麻辣鲜香', 'c4.jpg', '0');
INSERT INTO `seafood` VALUES ('5', '4', '3', '鲜美来南美青虾仁(中)200g', '29.80', '饱满弹嫩 老少皆宜', 'c5.jpg', '0');
INSERT INTO `seafood` VALUES ('6', '4', '5', '獐子岛泡椒粉丝扇贝(速冻生制)200g(6枚装)', '18.90', '鲜辣风味 搭配爽口粉丝', 'c6.jpg', '0');
INSERT INTO `seafood` VALUES ('7', '4', '8', '鲜美来虾滑200g', '19.90', '甄选优质青虾，浓香弹嫩', 'c7.jpg', '0');
INSERT INTO `seafood` VALUES ('8', '4', '5', '智利熟冻贻贝500g', '20.90', '海中牛奶，肥美嫩滑', 'c8.jpg', '0');
INSERT INTO `seafood` VALUES ('9', '4', '1', '海天下东海带鱼段400g', '14.90', '刺少肉多，皮薄肉厚', 'c9.jpg', '0');
INSERT INTO `seafood` VALUES ('10', '4', '5', '獐子岛北极贝切片160g', '39.90', '甘甜肥美 ，片片脆爽', 'c10.jpg', '0');
INSERT INTO `seafood` VALUES ('11', '4', '1', '鲜美来巴沙鱼片500g', '24.90', '嫩弹细滑刺少 老少皆宜', 'c11.jpg', '0');
INSERT INTO `seafood` VALUES ('12', '4', '5', '獐子岛蒜蓉粉丝扇贝(速冻生制)200g(6枚装)', '18.90', '精选优质原料，个大饱满味鲜', 'c12.jpg', '0');
INSERT INTO `seafood` VALUES ('13', '4', '1', 'Joyfish香辣巴沙鱼300g', '19.90', '肉质丰厚 专业调味', 'c13.jpg', '0');
INSERT INTO `seafood` VALUES ('14', '4', '1', '獐子岛炸鳕鱼300g', '17.90', '鲜炸即食，味美酥嫩', 'c14.jpg', '0');
INSERT INTO `seafood` VALUES ('15', '4', '1', '獐子岛小黄花鱼450g', '25.00', '完整享用，肉细香鲜', 'c15.jpg', '0');
INSERT INTO `seafood` VALUES ('16', '4', '5', '獐子岛麻辣粉丝扇贝(速冻生制)200g(6枚装)', '18.90', '麻辣爽口，劲爽滋味', 'c16.jpg', '0');
INSERT INTO `seafood` VALUES ('17', '4', '8', '喵哈哈蟹籽心鱼丸80g', '15.80', '深海鱼糜制成 满满蟹籽心', 'c17.jpg', '0');
INSERT INTO `seafood` VALUES ('18', '4', '1', '海天下银鱼海鲜羹380g', '14.90', '野生银鱼，鲜香味美', 'c18.jpg', '0');
INSERT INTO `seafood` VALUES ('19', '4', '8', 'Joyfish葱烧小乌参450g(乌参250g+葱100g+料包10', '39.90', '优选深海野生乌参', 'c19.jpg', '0');
INSERT INTO `seafood` VALUES ('20', '4', '1', '越南巴沙鱼柳（去皮去骨去刺）280g', '13.80', '无骨无刺，嫩滑不老', 'c20.jpg', '0');
INSERT INTO `seafood` VALUES ('21', '4', '1', '海天下海苔鱼柳卷125g', '10.80', '优选原料 口感酥脆可口', 'c21.jpg', '0');
INSERT INTO `seafood` VALUES ('22', '4', '2', '美威三文鱼冷冻刺身100g', '34.50', '解冻即食，富含Omega-3', 'c22.jpg', '0');
INSERT INTO `seafood` VALUES ('23', '4', '1', 'Joyfish阿拉斯加真鳕300g', '29.90', '均匀轮切 鲜嫩清香\r\n加入购物车', 'c23.jpg', '0');
INSERT INTO `seafood` VALUES ('24', '4', '1', '东海黄鱼400g（3-4条）', '38.00', '东海直送，鲜美舌尖', 'c24.jpg', '0');
INSERT INTO `seafood` VALUES ('25', '4', '5', '兰维乐新西兰青口贝1kg', '88.00', '原装进口直供，半壳30-44只', 'c25.jpg', '0');
INSERT INTO `seafood` VALUES ('26', '4', '1', '海天下格陵兰扁鳕鱼300g', '88.00', '丹麦进口，深海野生', 'c26.jpg', '0');
INSERT INTO `seafood` VALUES ('27', '4', '3', '信良记麻辣小龙虾(大号)600g', '67.90', '净虾500g', 'c27.jpg', '0');
INSERT INTO `seafood` VALUES ('28', '4', '1', '海天下格陵兰扁鳕鱼650g', '139.00', '丰厚白嫩 细腻爽滑', 'c28.jpg', '0');
INSERT INTO `seafood` VALUES ('29', '4', '1', '鲜美来深海鳕鱼片300g', '17.00', '无刺无骨，深海黄金', 'c29.jpg', '0');
INSERT INTO `seafood` VALUES ('30', '4', '8', 'Joyfish罗汉上素200g*2', '17.80', 'Joyfish罗汉上素200g*2', 'c30.jpg', '0');
INSERT INTO `seafood` VALUES ('31', '4', '5', 'Clearwater冷冻北极贝切片150g', '58.00', null, 'c31.jpg', '0');
INSERT INTO `seafood` VALUES ('32', '4', '2', '美威原味三文鱼排150g(2片独立装)', '29.90', '切片去刺，鲜香营养', 'c32.jpg', '0');
INSERT INTO `seafood` VALUES ('33', '4', '3', 'Joyfish海捕野生明虾仁(中)200g', '38.00', '去壳 去虾线 烹饪更省心', 'c33.jpg', '0');
INSERT INTO `seafood` VALUES ('34', '4', '1', '浙江象山深海黄花鱼1条(400-500g/条)', '49.00', '自然生长 新鲜直供\r\n加入购物车', 'c34.jpg', '0');
INSERT INTO `seafood` VALUES ('35', '4', '1', '海天下鱿鱼花300g', '29.90', '洁白如玉 劲道爽滑', 'c35.jpg', '0');
INSERT INTO `seafood` VALUES ('36', '4', '3', '越南草虾(16-20只）400g', '55.90', '硕大霸气，弹嫩细滑', 'c36.jpg', '0');
INSERT INTO `seafood` VALUES ('37', '4', '1', '阿拉斯加黄金鲽(整鱼)280g', '7.90', '美国进口，船冻锁鲜', 'c37.jpg', '0');
INSERT INTO `seafood` VALUES ('38', '4', '1', '海天下深海鳕鱼片300g', '28.80', '深海野生，细腻白嫩', 'c38.jpg', '0');
INSERT INTO `seafood` VALUES ('39', '4', null, '福建深海野生红鱿鱼200g(3条)', '25.90', '鱿体肥厚，细滑脆嫩', 'c39.jpg', '0');
INSERT INTO `seafood` VALUES ('40', '4', '1', 'OceanGala海鲜盛宴速冻黄金鲽鱼1kg', '32.90', 'OceanGala海鲜盛宴速冻黄金鲽鱼1kg', 'c40.jpg', '0');
INSERT INTO `seafood` VALUES ('41', '4', '5', 'Joyfish双味扇贝(蒜蓉粉丝蒸扇贝+紫袍玉带)117g', '17.80', '个大饱满 味美鲜香', 'c41.jpg', '0');
INSERT INTO `seafood` VALUES ('42', '4', '2', '獐子岛黑椒三文鱼250g', '22.90', '软糯香滑，美食即刻享', 'c42.jpg', '0');
INSERT INTO `seafood` VALUES ('43', '4', '1', '海天下冷冻巴沙鱼柳200g', '9.90', '肉嫩爽滑 味美无刺', 'c43.jpg', '0');
INSERT INTO `seafood` VALUES ('44', '4', '3', '海天下阿根廷红虾400g', '69.20', '冷水野生 紧实饱满', 'c44.jpg', '0');
INSERT INTO `seafood` VALUES ('45', '4', '3', 'Joyfish海捕野生明虾仁(大)200g', '39.90', '去壳 去虾线 烹饪更省心', 'c45.jpg', '0');
INSERT INTO `seafood` VALUES ('46', '4', '8', '獐子岛鳇鱼排(黑椒口味)速冻生制150g', '19.90', '外酥里嫩，肉紧无刺', 'c46.jpg', '0');
INSERT INTO `seafood` VALUES ('47', '4', '1', 'Joyfish日式香煎秋刀鱼310g(3条)', '19.90', '秋刀鱼的滋味 猫跟你都很想了解~', 'c47.jpg', '0');
INSERT INTO `seafood` VALUES ('48', '4', '3', '冻黑虎虾800g', '139.00', '', 'c48.jpg', '0');
INSERT INTO `seafood` VALUES ('49', '4', '3', 'GUO LIAN国联香辣虾150g', '29.00', null, 'c49.jpg', '0');
INSERT INTO `seafood` VALUES ('50', '4', '8', 'Joyfish鱼香茄子200g*2', '17.80', '色泽鲜美 味道鲜香', 'c50.jpg', '0');
INSERT INTO `seafood` VALUES ('51', '4', '5', '獐子岛北极贝贝柱160g', '16.90', '口感绵密 鲜甜多汁', 'c51.jpg', '0');
INSERT INTO `seafood` VALUES ('52', '4', '3', '加拿大熟冻波士顿龙虾400g', '135.00', '鲜甜弹嫩 饕餮虾味', 'c52.jpg', '0');
INSERT INTO `seafood` VALUES ('53', '4', '1', '鲜美来国产大带鱼580g', '26.80', '浓香美味 细腻口感', 'c53.jpg', '0');
INSERT INTO `seafood` VALUES ('54', '4', '3', '鲜美来南美白对虾600g', '69.00', '壳薄体肥，肉多饱满', 'c54.jpg', '0');
INSERT INTO `seafood` VALUES ('55', '4', '3', '蓝雪青虾仁(抽肠)(41-50尾/磅)300g', '39.90', '不皱不缩，老少皆宜', 'c55.jpg', '0');
INSERT INTO `seafood` VALUES ('56', '4', '6', '獐子岛即食海参60g', '79.00', '圆润饱满，肉厚刺长', 'c56.jpg', '0');
INSERT INTO `seafood` VALUES ('57', '4', '3', '原膳南美白虾仁（中）250g', '32.90', '原膳南美白虾仁（中）250g', 'c57.jpg', '0');
INSERT INTO `seafood` VALUES ('58', '4', '1', '东海带鱼段 （250g/包）', '12.90', '东海带鱼段 （250g/包）', 'c58.jpg', '0');
INSERT INTO `seafood` VALUES ('59', '4', '5', '虾夷半壳扇贝6只8-10cm/只', '35.00', '源自优质渔场，个大饱满肥美', 'c59.jpg', '0');
INSERT INTO `seafood` VALUES ('60', '4', '3', '越南草虾仁（黑虎虾）（中）200g/包', '38.00', '越南草虾仁（黑虎虾）（中）200g/包', 'c60.jpg', '0');
INSERT INTO `seafood` VALUES ('61', '4', '3', '深海大虾200g', '25.90', '紧实弹嫩，虾肉饱满', 'c61.jpg', '0');
INSERT INTO `seafood` VALUES ('62', '4', '4', '加拿大熟冻鳕蟹腿245g', '46.90', '可蒸可即食可泡饭可做粥', 'c62.jpg', '0');
INSERT INTO `seafood` VALUES ('63', '4', '1', '章鱼足270g', '17.50', '整条触角，完整切割', 'c63.jpg', '0');
INSERT INTO `seafood` VALUES ('64', '4', '2', '美威欧式原味三文鱼排（2片装）250g', '62.90', '去骨去刺，丰腴鲜香，适煎烤', 'c64.jpg', '0');
INSERT INTO `seafood` VALUES ('65', '4', '2', '原膳烟熏三文鱼 （切片）200g', '45.90', '传统冷熏加工，去皮去刺切片加工，肉质橙红丰润\r\n传统冷熏加工，去皮去刺切片加工，肉质橙红丰润\r\n传统冷熏加工，去皮去刺切片加工，肉质橙红丰润\r\n传统冷熏加工，去皮去刺切片加工，肉质橙红丰润\r\n传统冷熏', 'c65.jpg', '0');
INSERT INTO `seafood` VALUES ('66', '4', '5', '加拿大北极贝L（刺身级）150g', '50.90', '低脂美食，优质蛋白', 'c66.jpg', '0');
INSERT INTO `seafood` VALUES ('67', '4', '1', '大西洋深海鳕鱼片350g', '38.00', '肉质细腻，口感甜滑，天然鲜香', 'c67.jpg', '0');
INSERT INTO `seafood` VALUES ('68', '4', '1', '墨西哥小黄鱼550g（4条/包）', '21.50', '海域野生，拒绝染色', 'c68.jpg', '0');
INSERT INTO `seafood` VALUES ('69', '4', '5', '黄金玉螺（熟冻）500g/包', '38.00', '个大饱满，丰腴弹牙', 'c69.jpg', '0');
INSERT INTO `seafood` VALUES ('70', '4', '1', '东海鱿鱼圈180g/包', '14.90', '嚼劲十足，味道鲜美', 'c70.jpg', '0');
INSERT INTO `seafood` VALUES ('71', '4', '5', '天鹅蛋450g', '13.90', '个大饱满，舌尖美味', 'c71.jpg', '0');
INSERT INTO `seafood` VALUES ('72', '4', '1', '阿拉斯加黄金鲽（整鱼）400g/条', '15.50', '深海野生，船冻锁鲜', 'c72.jpg', '0');
INSERT INTO `seafood` VALUES ('73', '4', '1', '东海小黄鱼400g（10-12条）', '13.50', '东海直送，细嫩鲜美，紧实营养', 'c73.jpg', '0');
INSERT INTO `seafood` VALUES ('74', '4', null, '目鱼条200g', '7.80', '紧实弹嫩，肉鲜味美', 'c74.jpg', '0');
INSERT INTO `seafood` VALUES ('75', '4', '8', '五鲜烩（蛤蜊肉、虾仁、鱿鱼圈、淡菜、八爪丁）2', '21.90', '鲜美集会，丰富口感', 'c75.jpg', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
