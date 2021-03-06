﻿/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : anjia

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-13 11:08:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for arrange
-- ----------------------------
DROP TABLE IF EXISTS `arrange`;
CREATE TABLE `arrange` (
  `arrangeId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `houseId` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `adate` datetime DEFAULT NULL,
  `status` int(9) DEFAULT '0',
  `agreeNum` int(11) DEFAULT '0',
  `agreePerson` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`arrangeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arrange
-- ----------------------------
INSERT INTO `arrange` VALUES ('1', '3', '2', '这房子真好', '2017-10-04 15:19:56', '1', '0', null);
INSERT INTO `arrange` VALUES ('2', '30', '2', null, null, '0', '0', null);
INSERT INTO `arrange` VALUES ('3', '4', '2', null, null, '1', '0', null);
INSERT INTO `arrange` VALUES ('4', '5', '2', '房子超级漂亮，i like，租！', '2017-10-10 18:14:17', '2', '0', null);
INSERT INTO `arrange` VALUES ('5', '5', '3', '房屋漂亮大气，业主善良帅气，不愧是安家好房！！！', '2017-10-12 20:22:42', '2', '0', null);
INSERT INTO `arrange` VALUES ('6', '5', '9', null, null, '1', '0', null);

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houseId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO `focus` VALUES ('1', '1', '1');
INSERT INTO `focus` VALUES ('2', '2', '1');
INSERT INTO `focus` VALUES ('3', '2', '30');
INSERT INTO `focus` VALUES ('4', '2', '5');
INSERT INTO `focus` VALUES ('5', '3', '5');
INSERT INTO `focus` VALUES ('6', '6', '2');

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `houseId` int(11) NOT NULL AUTO_INCREMENT,
  `houseName` varchar(255) DEFAULT NULL,
  `housePrice` varchar(255) DEFAULT NULL COMMENT '价格',
  `publishTime` date DEFAULT NULL COMMENT '发布时间',
  `houseTypeId` int(11) DEFAULT NULL COMMENT '房屋类型',
  `ownerId` int(11) DEFAULT NULL,
  `area` float DEFAULT NULL COMMENT '房屋面积',
  `areaName` varchar(255) DEFAULT NULL COMMENT '房屋状态',
  `address` varchar(255) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  PRIMARY KEY (`houseId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houses
-- ----------------------------
INSERT INTO `houses` VALUES ('1', '实地看房，钥匙在店，空气清新，上门实拍', '3300', '2017-09-11', '1', '2', '90', '姑苏 云鼎鑫城', '园区干将路22号', '2');
INSERT INTO `houses` VALUES ('2', '空气清新，实地看房，小户型', '2500', '2017-09-13', '1', '2', '67', '姑苏 新野小区', '新业路干将路交界处', '34');
INSERT INTO `houses` VALUES ('3', '人气房源，适合自住，要是在安家，采光棒', '3000', '2017-09-13', '2', '2', '87', '姑苏 东塔福居', '东塔路西22号', '5');
INSERT INTO `houses` VALUES ('4', '交通方便，高清实拍，高区景观房', '2000', '2017-09-13', '2', '2', '67', '姑苏 南门小区', '南门二环33号', '2');
INSERT INTO `houses` VALUES ('5', '大东海山海大宅北欧风情海景三房两厅套房', '7001', '2017-10-10', '3', '2', '70', '工业园区 新华小筑', '工业园区 创苑路1号', '6');
INSERT INTO `houses` VALUES ('6', '洞天福地，景秀家园，您的绝佳选择', '3000', '2017-10-11', '1', '2', '67', '吴江 安踏小区', '安踏路33号', '5');
INSERT INTO `houses` VALUES ('7', '书香华苑，地中海风情装修', '3000', '2017-10-11', '3', '2', '80', '吴中 百叶小区', '吴中区创苑路333号', '5');
INSERT INTO `houses` VALUES ('8', '比邻大学城，书香气息漫步', '6000', '2017-10-11', '4', '2', '90', '工业园区 海德公园', '文荟人才公寓北', '7');
INSERT INTO `houses` VALUES ('9', '江南小镇风情装修，夫妻自住房', '4000', '2017-10-11', '3', '2', '90', '姑苏 雨露华庭', '姑苏区干将路33号', '7');
INSERT INTO `houses` VALUES ('10', '高端豪华型别墅，可短租', '10000', '2017-10-11', '4', '2', '200', '姑苏 华庭居', '姑苏区皇后大道东', '1');
INSERT INTO `houses` VALUES ('11', '凤起路西湖边温馨日式首次整租', '5000', '2017-10-11', '3', '2', '90', '工业园区 海德公园', '文汇公寓北', '6');

-- ----------------------------
-- Table structure for housetype
-- ----------------------------
DROP TABLE IF EXISTS `housetype`;
CREATE TABLE `housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room` int(11) DEFAULT NULL,
  `livingroom` int(11) DEFAULT NULL COMMENT '客厅',
  `bathroom` int(11) DEFAULT NULL COMMENT '洗手间',
  `kitchen` int(11) DEFAULT NULL COMMENT '厨房',
  `balcony` int(11) DEFAULT NULL COMMENT '阳台',
  `aspect` varchar(255) DEFAULT NULL COMMENT '房屋朝向',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of housetype
-- ----------------------------
INSERT INTO `housetype` VALUES ('1', '1', '1', '1', '1', '1', '朝南');
INSERT INTO `housetype` VALUES ('2', '2', '1', '1', '1', '1', '朝北');
INSERT INTO `housetype` VALUES ('3', '3', '1', '1', '1', '1', '北');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsName` varchar(255) DEFAULT NULL,
  `newsWriter` varchar(255) DEFAULT NULL,
  `newsContent1` varchar(255) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '“限售”城市增至47个，楼市调控未来还会怎么变？', '中国新闻网', ' 进入“金九”，多个城市发布了升级调控措施，据中原地产研究院的统计数据显示，9月以来，超过45个城市发布了有关房地产的相关政策，成为史上最为密集的调控政策潮。截至目前，全国限售城市已经扩大到47个。房地产市场还将有哪些变化？密集的政策调控又传递了哪些重要信号？10月10日，在国务院新闻办举办的新闻发布会上，国家统计局局长宁吉喆透露，国家反对住房投资投机性的取向不会变，房地产调控政策会继续发挥效果，将会逐步建立房地产调控的长效机制。', '2017-09-13 12:51:09');
INSERT INTO `news` VALUES ('2', '国庆、中秋假期，多个热点城市楼市成交量明显下降', '中国证券报', '国庆假期前一周，多地纷纷加码楼市调控。西安、重庆、南昌、南宁、长沙、石家庄、宁波 等城市发布楼市新政，迎来一波小规模调控潮。以西安为例，西安市物价局在《关于商品住房价格申报有关问题的通知》中明确，9月25日起，商品住房项目在办 理预售许可证前，或已取得预售许可证但尚未售出的商品住房在调整价格前，须向西安市物价局进行商品住房价格申报。', '2017-09-28 12:51:49');
INSERT INTO `news` VALUES ('3', '国庆、中秋假期，多个热点城市楼市成交量明显下降', '中国证券报', '国庆假期前一周，多地纷纷加码楼市调控。西安、重庆、南昌、南宁、长沙、石家庄、宁波 等城市发布楼市新政，迎来一波小规模调控潮。以西安为例，西安市物价局在《关于商品住房价格申报有关问题的通知》中明确，9月25日起，商品住房项目在办 理预售许可证前，或已取得预售许可证但尚未售出的商品住房在调整价格前，须向西安市物价局进行商品住房价格申报。', '2017-10-10 18:17:28');
INSERT INTO `news` VALUES ('4', '明日太湖大桥双线贯通、渔洋山隧道通车', '苏州新闻网', ' 西山岛出入通道扩建工程北端起点位于环太湖路度假区段与渔洋山隧道北接线相交处，向南新建渔洋山隧道北接线，在渔洋山北麓的水厂附近新建分离式双孔隧道穿越渔洋山，在渔洋山南麓穿出后，新建渔洋山隧道南接线，与现状环太湖路度假区段相交后继续往南接太湖大桥1号桥北堍，在原太湖大桥一号桥、二号桥、三号桥的西侧分别新建新桥，对3座老桥进行检测后予以加固维修，拆除并重建老桥桥面系，对3座桥梁之间的长沙岛、叶山岛老路进行扩建，项目南端终点在太湖大桥三号桥南堍的金', '2017-10-03 18:18:01');
INSERT INTO `news` VALUES ('5', '园区今年首场土拍　湖东地块拍出35亿', '苏州新闻网', ' 众所周知，体育公园板块，目前可是园区最炙手可热板块，属湖东核心区。昨天出让的苏园土挂（2017）01号地块位于中新大道南，钟南街西，可谓湖东核心中的战斗机，起拍楼面价20222元/平方米，最高楼面价限价30030元/平方米，房屋销售基准限价42000元/平方米。要知道，目前体育公园的地王还是两年前的海亮，当时成交楼面价15992元/平方米；而放眼整个湖东，地王中海楼面价是25744元/平方米。', '2017-10-16 18:18:35');
INSERT INTO `news` VALUES ('6', '无锡限购升级：外地居民家庭购房需2年社保', '中国经济网', '2016年10月2日，无锡对楼市出台了“锡十四条”，正式加入限购“大军”。时隔一年之后，今日无锡发布《关于加强房地产市场调控的补充意见》（以下简称《意见》），要求对无锡市的房地产限购“加码”升级，在暂停向拥有2套及以上本市户籍居民出售新商品房的基础上，要求外地户籍居民家庭购房需提供2年社保或个税证明。《意见》特别指出，非本市户籍居民家庭申请购买住房时，应提供2年（含）以上的本市缴纳社会保险或个人所得税证明（对依据省、市有关人才政策引进的非本市户籍高层次人才除外）。', '2017-09-14 18:19:18');
INSERT INTO `news` VALUES ('7', '又出便民好消息！地铁延长运营时间！', '城市早8点', '经常乘坐地铁的小伙伴，下面为您播报一条好消息：为更方便广大市民的日常出行，通过对日常客流情况的分析研究，从今天起，苏州地铁1号线缩短行车间隔，2号线延长运营时间，具体调整如下。工作日上行（往木渎方向）超高峰（8:36-9:31）行车间隔缩短为3分10秒，下行（往钟南街方向）超高峰（7:44-8:39）行车间隔缩短为3分钟。晚高峰上行（往木渎方向）超高峰调整为17:29-18:16，行车间隔缩短为3分30秒。其余时段没有变化。\r\n', '2017-09-16 18:20:08');
INSERT INTO `news` VALUES ('8', '园区人等待了3年的星港街隧道即将通车！', '苏州工业园区发布', '园区人等待了3年的星港街隧道即将通车，就在8月20日！再也不用等待漫长的红灯，一分多钟就能穿越星港街隧道。星港街隧道位于湖西CBD核心区，北起苏慕路南侧，向南下穿现代大道、三星河、苏绣路、上跨轨道1号线、下穿相门塘、苏惠路后接地，项目全长约1560米，其中暗埋段1330米；', '2017-09-09 18:20:56');
INSERT INTO `news` VALUES ('9', '泰州到苏州将有过江通道啦！有一个确定的好消息告诉你', '泰州晚报', '确定的消息是——近日，省交建局来泰州考察靖张（靖江、张家港）过江通道的相关情况。靖张过江通道近期将启动预工可设计招标，也就是说实质性开展前期工作了。7月18日，江苏省环保公众网公布了江苏高速公路网规划（2017-2030）第二次环评公示。公示的内容里包含三条过江通道，分别是龙潭过江通道、泰常过江通道、靖张过江通道。', '2017-10-01 18:21:35');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `personInfo` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'Desong', '18362202673', 'fcea920f7412b5da7be0cf42b8c93759', '764922900@qq.com', '这是个帅气的小伙');
INSERT INTO `user` VALUES ('3', '边大帅哥', '15503878257', 'e10adc3949ba59abbe56e057f20f883e', 'bianlong@qq.com', '真是个帅气的小伙');
INSERT INTO `user` VALUES ('4', 'keke', '13815133065', 'e10adc3949ba59abbe56e057f20f883e', null, '');
INSERT INTO `user` VALUES ('5', 'QCYun', '15150046829', 'e10adc3949ba59abbe56e057f20f883e', '1377706984@qq.com', '从此鹿晗是路人');

