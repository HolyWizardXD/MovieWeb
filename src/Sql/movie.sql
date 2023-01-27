/*
 Navicat Premium Data Transfer

 Source Server         : 刘荣沛
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : liurongpei

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 27/01/2023 14:15:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_grade` float(5, 1) NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '让子弹飞', 9.9, '2010-12-16', '民国年间，花钱捐得县长的马邦德（葛优 饰）走马上任，遭劫匪张麻子（姜文 饰）一伙伏击。马为保命，谎称自己是县长的汤师爷。为汤师爷许下的财富所动，张麻子摇身一变，化身县长，带着手下上任。鹅城地处偏僻，一方霸主黄四郎（周润发 饰）只手遮天，全然不将新来的县长放在眼里。鹅城上空愁云密布，血雨腥风在所难免……');
INSERT INTO `movie` VALUES (2, '肖申克的救赎', 9.9, '1994-9-23', '20世纪40年代末，银行家安迪（蒂姆·罗宾斯 饰）因涉嫌杀害妻子及她的情夫而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 饰），二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进…… 本片根据著名作家斯蒂芬·金的原著改编。');
INSERT INTO `movie` VALUES (3, '扬名立万', 9.6, '2021-11-11', '月黑风高之夜，一群电影人被秘密召集到一起，欲将轰动一时的血案翻拍成电影，借此扬名立万。殊不知他们正身处案发现场，并步步陷入一个巨大迷局之中，而凶手就在他们中间……伴随着利欲熏天的创作风暴，案件背后的故事似乎也更加扑朔迷离，戏中戏、案中案、局中局、人外人，环环相扣，一场野心与良心的较量愈演愈烈。究竟是命悬一线，还是另有惊天逆转？爱与温暖的血色花又能否从快将干涸的血河中终极绽放？一切都有待揭开。');
INSERT INTO `movie` VALUES (4, '盗梦空间', 9.9, '2020-8-28', '道姆·柯布（莱昂纳多·迪卡普里奥 饰）与同事阿瑟和纳什在一次针对日本能源大亨齐藤的盗梦行动中失败，反被齐藤利用。齐藤威逼利诱因遭通缉而流亡海外的柯布帮他拆分他竞争对手的公司，采取极端措施在其唯一继承人罗伯特·费希尔的深层潜意识中种下放弃家族公司、自立门户的想法。为了重返美国，柯布偷偷求助于岳父迈尔斯，吸收了年轻的梦境设计师艾里阿德妮、梦境演员艾姆斯和药剂师约瑟夫加入行动。在一层层递进的梦境中，柯布不仅要对付费希尔潜意识的本能反抗，还必须直面已逝妻子梅尔的处处破坏，实际情况远比预想危险得多……');
INSERT INTO `movie` VALUES (5, '阿甘正传', 9.8, '1994-7-6', '阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。阿甘像普通孩子一样上学，并且认识了一生的朋友和至爱珍妮（罗宾·莱特·潘 饰），在珍妮和妈妈的爱护下，阿甘凭着上帝赐予的“飞毛腿”开始了一生不停的奔跑。阿甘成为橄榄球巨星、越战英雄、乒乓球外交使者、亿万富翁，但是，他始终忘不了珍妮，几次匆匆的相聚和离别，更是加深了阿甘的思念。有一天，阿甘收到珍妮的信，他们终于又要见面……');
INSERT INTO `movie` VALUES (6, '功夫', 9.9, '2004-12-23', '1940年代，自小受尽欺辱的街头混混阿星（周星驰）为了能出人头地，可谓窥见机会的缝隙就往里钻，今次他盯上行动日益猖獗的黑道势力“斧头帮”，想借之大名成就大业。阿星假冒“斧头帮”成员试图在一个叫“猪笼城寨”的地方对居民敲诈，不想引来真的“斧头帮”与“猪笼城寨”居民的恩怨。“猪笼城寨”原是藏龙卧虎之处，居民中有许多身怀绝技者，他们隐藏于此本是为远离江湖恩怨，不想麻烦自动上身，躲都躲不及。而在观战正邪两派的斗争中，阿星逐渐领悟功夫的真谛。');
INSERT INTO `movie` VALUES (7, '教父', 9.9, '1972-3-15', '40年代的美国，“教父”维多·柯里昂（马龙·白兰度 饰）是黑手党柯里昂家族的首领，带领家族从事非法的勾当，但同时他也是许多弱小平民的保护神，深得人们爱戴。因为拒绝了毒枭索洛佐的毒品交易要求，柯里昂家族和纽约其他几个黑手党家族的矛盾激化。圣诞前夕，索洛佐劫持了军师汤姆，并派人暗杀“教父”，远离家族生意的小儿子麦克（阿尔·帕西诺 饰）也被卷了进来。黑手党之间的矛盾越来越白热化，五大家族即将开战。');
INSERT INTO `movie` VALUES (8, '教父2', 9.8, '1974-12-12', '影片主要讲述第二代教父麦克·柯里昂（阿尔·帕西诺 饰）的奋斗历程，同时回忆了第一代教父维多·柯里昂（罗伯特·德尼罗 饰）创业的艰辛，反映了不同历史时期，两代教父的事业、家庭生活。麦克为儿子托尼举行圣餐仪式和庆祝活动的当夜，麦克在家中遭到袭击，凶手被人灭口，面临接管家族事业以来的重重危机，麦克回忆起了父亲维多·柯里昂年轻时在美国的创业历程。');
INSERT INTO `movie` VALUES (9, '教父3', 9.7, '1990-12-25', '转眼间已经是1979年，第二代教父麦克•柯里昂（阿尔•帕西诺 饰）到了垂暮之年，为了灵魂的救赎，麦克慢慢结束家族的黑道事业，转投正当生意。麦克的儿子托尼酷爱艺术，无意接手家族事业，迈克尔决定让大哥逊尼的私生子，火爆好色的文森（安迪•加西亚 饰）继承家业，当第三代教父。麦克的爱女玛丽（索菲娅•科波拉 饰）和文森相恋，遭到父亲的反对，父女渐渐疏远。');
INSERT INTO `movie` VALUES (10, '楚门的世界', 9.9, '1998-6-5', '楚门（金•凯瑞 Jim Carrey 饰）是一个平凡得不能再平凡的人，除了一些有些稀奇的经历之外——初恋女友突然失踪、溺水身亡的父亲忽然似乎又出现在眼前，他和绝大多数30多岁的美国男人绝无异样。这令他倍感失落。他也曾试过离开自己生活了多年的地方，但总因种种理由而不能成行。直到有一天，他忽然发觉自己似乎一直在被人跟踪，无论他走到哪里，干什么事情。这种感觉愈来愈强烈。楚门决定不惜一切代价逃离这个他生活了30多年的地方，去寻找他的初恋女友。');
INSERT INTO `movie` VALUES (11, '绿皮书', 9.8, '2019-3-1', '托尼（维果·莫腾森 饰）是一个吊儿郎当游手好闲的混混，在一家夜总会做侍者。这间夜总会因故要停业几个月，可托尼所要支付的房租和生活费不会因此取消，所以他的当务之急是去寻找另一份工作来填补这几个月的空缺。在这个节骨眼上，一位名叫唐雪莉（马赫沙拉·阿里 饰）的黑人钢琴家提出雇佣托尼。唐雪莉即将开始为期八个星期的南下巡回演出，可是，那个时候南方对黑人的歧视非常的严重，于是托尼便成为了唐雪莉的司机兼保镖。');
INSERT INTO `movie` VALUES (12, '叶问', 9.8, '2008-12-12', '1930年代，中国武术之都佛山。北方武师金山找率众来佛山踢馆，各大武馆馆主皆成他手下败将。他找上为人低调未设馆授徒的叶问（甄子丹 饰）。叶问用咏春拳以柔克刚将金山找制服，确立在佛山的大师傅地位。几年之后，侵华日军将佛山攻占，叶问同幸存下的乡邻一样，被迫携妻儿移居废屋。生计面前，叶问混在人群争抢去煤矿做苦力的机会，徒弟李钊则成为日军翻译官。日军将领三蒲是名武痴，他以一袋白米作奖赏，派李钊四处搜寻能打国人在打斗场上与日军切磋，多名昔日武馆馆主及武痴林因此惨死。这将叶问激怒，他走入打斗场。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`username`, `password`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '123456');
INSERT INTO `user` VALUES ('liurongpei', '2354818484');
INSERT INTO `user` VALUES ('root', '12345678');

SET FOREIGN_KEY_CHECKS = 1;