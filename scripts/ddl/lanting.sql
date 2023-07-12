/*
 Navicat Premium Data Transfer

 Source Server         : lanting
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : lanting.wiki:3306
 Source Schema         : lanting

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 16/02/2021 09:20:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for archive_authors
-- ----------------------------
DROP TABLE IF EXISTS `archive_authors`;
CREATE TABLE `archive_authors`
(
    `archive_id` bigint(20)  NOT NULL,
    `author`     varchar(60) NOT NULL DEFAULT '',
    PRIMARY KEY (`archive_id`, `author`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Records of archive_authors
-- ----------------------------
BEGIN;
INSERT INTO `archive_authors`
VALUES (100, '刘韧');
INSERT INTO `archive_authors`
VALUES (101, '刘韧');
INSERT INTO `archive_authors`
VALUES (102, '刘韧');
INSERT INTO `archive_authors`
VALUES (102, '李戎');
INSERT INTO `archive_authors`
VALUES (103, '吴晓波');
INSERT INTO `archive_authors`
VALUES (104, '吴晓波');
INSERT INTO `archive_authors`
VALUES (10004, '迟宇宙');
INSERT INTO `archive_authors`
VALUES (10005, '和阳');
INSERT INTO `archive_authors`
VALUES (10006, '潘乱');
INSERT INTO `archive_authors`
VALUES (10007, '许磊ccw');
INSERT INTO `archive_authors`
VALUES (10008, '宋玮');
INSERT INTO `archive_authors`
VALUES (10009, '张珺');
INSERT INTO `archive_authors`
VALUES (10010, '韩依民');
INSERT INTO `archive_authors`
VALUES (10011, '联柯');
INSERT INTO `archive_authors`
VALUES (10012, '杨阳');
INSERT INTO `archive_authors`
VALUES (10013, '潘乱');
INSERT INTO `archive_authors`
VALUES (10014, '李然');
INSERT INTO `archive_authors`
VALUES (10015, '杨轩');
INSERT INTO `archive_authors`
VALUES (10015, '王卜');
INSERT INTO `archive_authors`
VALUES (10016, '房煜');
INSERT INTO `archive_authors`
VALUES (10017, '王潘');
INSERT INTO `archive_authors`
VALUES (10018, 'Eastland');
INSERT INTO `archive_authors`
VALUES (10019, '宋玮');
INSERT INTO `archive_authors`
VALUES (10020, '王兴');
INSERT INTO `archive_authors`
VALUES (10021, '高海博');
INSERT INTO `archive_authors`
VALUES (10022, '何韬');
INSERT INTO `archive_authors`
VALUES (10023, '鲸书');
INSERT INTO `archive_authors`
VALUES (10024, '郭一刀');
INSERT INTO `archive_authors`
VALUES (10025, '张月');
INSERT INTO `archive_authors`
VALUES (10025, '朱柳笛');
INSERT INTO `archive_authors`
VALUES (10026, '谢梦遥');
INSERT INTO `archive_authors`
VALUES (10027, '张珺');
INSERT INTO `archive_authors`
VALUES (10028, '宋玮');
INSERT INTO `archive_authors`
VALUES (10029, '李迎');
INSERT INTO `archive_authors`
VALUES (10030, '宋玮');
INSERT INTO `archive_authors`
VALUES (10031, '王海璐');
INSERT INTO `archive_authors`
VALUES (10032, '鲸书');
INSERT INTO `archive_authors`
VALUES (10033, '张雨忻');
INSERT INTO `archive_authors`
VALUES (10034, 'DT财经');
INSERT INTO `archive_authors`
VALUES (10035, '王潘');
INSERT INTO `archive_authors`
VALUES (10036, '周伊雪');
INSERT INTO `archive_authors`
VALUES (10036, '方园婧');
INSERT INTO `archive_authors`
VALUES (10037, '刘意默');
INSERT INTO `archive_authors`
VALUES (10037, '萧北');
INSERT INTO `archive_authors`
VALUES (10038, '周掌柜');
INSERT INTO `archive_authors`
VALUES (10039, '陈墨');
INSERT INTO `archive_authors`
VALUES (10040, '刘琼宇');
INSERT INTO `archive_authors`
VALUES (10041, '靳锦');
INSERT INTO `archive_authors`
VALUES (10042, '薛笑Sisi');
INSERT INTO `archive_authors`
VALUES (10043, '猎云网');
INSERT INTO `archive_authors`
VALUES (10044, '杨轩');
INSERT INTO `archive_authors`
VALUES (10045, '张珺');
INSERT INTO `archive_authors`
VALUES (10046, '霍启明');
INSERT INTO `archive_authors`
VALUES (10047, '杨林');
INSERT INTO `archive_authors`
VALUES (10048, '叶二');
INSERT INTO `archive_authors`
VALUES (10049, '宋玮');
INSERT INTO `archive_authors`
VALUES (10050, '吴晓波');
INSERT INTO `archive_authors`
VALUES (10051, '对长');
INSERT INTO `archive_authors`
VALUES (10052, '张晴');
INSERT INTO `archive_authors`
VALUES (10053, '潘乱');
INSERT INTO `archive_authors`
VALUES (10054, '包小姐');
INSERT INTO `archive_authors`
VALUES (10055, '寓扬');
INSERT INTO `archive_authors`
VALUES (10056, '潘乱');
INSERT INTO `archive_authors`
VALUES (10057, '宋玮');
INSERT INTO `archive_authors`
VALUES (10058, '孙宏超');
INSERT INTO `archive_authors`
VALUES (10059, '任小酒');
INSERT INTO `archive_authors`
VALUES (10060, '腾讯深网');
INSERT INTO `archive_authors`
VALUES (10061, '潘乱');
INSERT INTO `archive_authors`
VALUES (10062, '宋玮');
INSERT INTO `archive_authors`
VALUES (10062, '陈庆春');
INSERT INTO `archive_authors`
VALUES (10063, '宋玮');
INSERT INTO `archive_authors`
VALUES (10063, '张珺');
INSERT INTO `archive_authors`
VALUES (10064, '周路平');
INSERT INTO `archive_authors`
VALUES (10065, '腾讯深网');
INSERT INTO `archive_authors`
VALUES (10066, '韩依民');
INSERT INTO `archive_authors`
VALUES (10067, '舒虹');
INSERT INTO `archive_authors`
VALUES (10068, '俞斯译');
INSERT INTO `archive_authors`
VALUES (10068, '相欣');
INSERT INTO `archive_authors`
VALUES (10069, '宋玮');
INSERT INTO `archive_authors`
VALUES (10069, '张珺');
INSERT INTO `archive_authors`
VALUES (10070, '宋玮');
INSERT INTO `archive_authors`
VALUES (10070, '张珺');
INSERT INTO `archive_authors`
VALUES (10071, '张珺');
INSERT INTO `archive_authors`
VALUES (10072, '刘旌');
INSERT INTO `archive_authors`
VALUES (10073, '火火');
INSERT INTO `archive_authors`
VALUES (10074, '重读');
INSERT INTO `archive_authors`
VALUES (10075, '投中');
INSERT INTO `archive_authors`
VALUES (10076, '猎云网');
INSERT INTO `archive_authors`
VALUES (10077, '房煜');
INSERT INTO `archive_authors`
VALUES (10078, '王潘');
INSERT INTO `archive_authors`
VALUES (10079, '王潘');
INSERT INTO `archive_authors`
VALUES (10080, '卜祥');
INSERT INTO `archive_authors`
VALUES (10080, '郭晓峰');
INSERT INTO `archive_authors`
VALUES (10081, '俞斯译');
INSERT INTO `archive_authors`
VALUES (10082, '三表');
INSERT INTO `archive_authors`
VALUES (10083, '铅笔道');
INSERT INTO `archive_authors`
VALUES (10084, '文姝琪');
INSERT INTO `archive_authors`
VALUES (10085, '迟宇宙');
INSERT INTO `archive_authors`
VALUES (10086, '宋玮');
INSERT INTO `archive_authors`
VALUES (10087, '相欣');
INSERT INTO `archive_authors`
VALUES (10088, '36氪深度');
INSERT INTO `archive_authors`
VALUES (10089, '刘伟');
INSERT INTO `archive_authors`
VALUES (10089, '方兴东');
INSERT INTO `archive_authors`
VALUES (10090, '吴晓波');
INSERT INTO `archive_authors`
VALUES (10091, '曾嵘');
INSERT INTO `archive_authors`
VALUES (10093, '徐梦玲');
INSERT INTO `archive_authors`
VALUES (10093, '饭统戴老板');
INSERT INTO `archive_authors`
VALUES (10094, '管艺雯');
INSERT INTO `archive_authors`
VALUES (10094, '陈晶');
INSERT INTO `archive_authors`
VALUES (10096, '万珮');
INSERT INTO `archive_authors`
VALUES (10096, '管艺雯');
INSERT INTO `archive_authors`
VALUES (10096, '陈晶');
INSERT INTO `archive_authors`
VALUES (10098, '梁思萍');
INSERT INTO `archive_authors`
VALUES (10100, '乔芊');
INSERT INTO `archive_authors`
VALUES (10100, '邱晓芬');
INSERT INTO `archive_authors`
VALUES (10102, 'samczsun');
INSERT INTO `archive_authors`
VALUES (10104, '姚亚平');
INSERT INTO `archive_authors`
VALUES (10106, 'Georgios Konstantopoulos');
INSERT INTO `archive_authors`
VALUES (10108, 'Eric Johnson');
INSERT INTO `archive_authors`
VALUES (10110, 'Steve Yegge');
INSERT INTO `archive_authors`
VALUES (10112, 'Steve Yegge');
INSERT INTO `archive_authors`
VALUES (10114, 'Steve Yegge');
INSERT INTO `archive_authors`
VALUES (10116, '杨凯');
INSERT INTO `archive_authors`
VALUES (10118, '骆轶航');
INSERT INTO `archive_authors`
VALUES (10120, '怪盗团团长裴培');
INSERT INTO `archive_authors`
VALUES (10122, '金证济苍');
INSERT INTO `archive_authors`
VALUES (10124, 'Ben');
INSERT INTO `archive_authors`
VALUES (10124, '徐培翔');
INSERT INTO `archive_authors`
VALUES (10124, '欣欣');
INSERT INTO `archive_authors`
VALUES (10126, '罗超频道');
INSERT INTO `archive_authors`
VALUES (10128, '曲凯');
INSERT INTO `archive_authors`
VALUES (10130, '曲凯');
INSERT INTO `archive_authors`
VALUES (10132, '量子位');
INSERT INTO `archive_authors`
VALUES (10156, '蒙古大夫');
INSERT INTO `archive_authors`
VALUES (10158, '杨雅兰');
INSERT INTO `archive_authors`
VALUES (10160, 'INSIGHT视界');
INSERT INTO `archive_authors`
VALUES (10162, '武昭含');
INSERT INTO `archive_authors`
VALUES (10164, '武昭含');
INSERT INTO `archive_authors`
VALUES (10166, '黄雪姣');
INSERT INTO `archive_authors`
VALUES (10170, '燃财经工作室');
INSERT INTO `archive_authors`
VALUES (10172, '汉洋 MasterPa');
INSERT INTO `archive_authors`
VALUES (10174, '宅少');
INSERT INTO `archive_authors`
VALUES (10176, '宋美璐');
INSERT INTO `archive_authors`
VALUES (10178, '蛋挞');
INSERT INTO `archive_authors`
VALUES (10180, '吴梅梅');
INSERT INTO `archive_authors`
VALUES (10182, '36氪');
INSERT INTO `archive_authors`
VALUES (10184, '南回归线');
INSERT INTO `archive_authors`
VALUES (10186, '新知君');
INSERT INTO `archive_authors`
VALUES (10188, '曹毅');
INSERT INTO `archive_authors`
VALUES (10190, '李骁军');
INSERT INTO `archive_authors`
VALUES (10192, '蛋蛋姐');
INSERT INTO `archive_authors`
VALUES (10194, '良叔');
INSERT INTO `archive_authors`
VALUES (10196, '震谷子');
INSERT INTO `archive_authors`
VALUES (10198, 'Brady Dale');
INSERT INTO `archive_authors`
VALUES (10200, '网易商业报道');
INSERT INTO `archive_authors`
VALUES (10202, '老编辑1989');
INSERT INTO `archive_authors`
VALUES (10204, '刘燕');
INSERT INTO `archive_authors`
VALUES (10206, '信息安全老骆驼');
INSERT INTO `archive_authors`
VALUES (10208, '赵炯');
INSERT INTO `archive_authors`
VALUES (10210, '月风_投资笔记');
INSERT INTO `archive_authors`
VALUES (10212, '猎云网');
INSERT INTO `archive_authors`
VALUES (10214, '字母榜');
INSERT INTO `archive_authors`
VALUES (10216, '李乔宇');
INSERT INTO `archive_authors`
VALUES (10218, '不止十一人');
INSERT INTO `archive_authors`
VALUES (10220, '壹娱观察编辑部');
INSERT INTO `archive_authors`
VALUES (10222, '潘乱');
INSERT INTO `archive_authors`
VALUES (10224, '7点5度');
INSERT INTO `archive_authors`
VALUES (10226, '深燃团队');
INSERT INTO `archive_authors`
VALUES (10228, '顾翎羽');
INSERT INTO `archive_authors`
VALUES (10230, '壹娱观察编辑部');
INSERT INTO `archive_authors`
VALUES (10232, '三言财经');
INSERT INTO `archive_authors`
VALUES (10234, '于可心');
INSERT INTO `archive_authors`
VALUES (10234, '姚书恒');
INSERT INTO `archive_authors`
VALUES (10238, '赵娜');
INSERT INTO `archive_authors`
VALUES (10240, '拉风的极客');
INSERT INTO `archive_authors`
VALUES (10242, '刘旌');
INSERT INTO `archive_authors`
VALUES (10242, '陈之琰');
INSERT INTO `archive_authors`
VALUES (10244, '渣渣郡');
INSERT INTO `archive_authors`
VALUES (10246, '小宝比特币之家');
INSERT INTO `archive_authors`
VALUES (10248, '鸵鸟区块链速递');
INSERT INTO `archive_authors`
VALUES (10250, '胡越');
INSERT INTO `archive_authors`
VALUES (10252, '每人记者');
INSERT INTO `archive_authors`
VALUES (10254, 'AI财经社作者');
INSERT INTO `archive_authors`
VALUES (10256, 'Juice');
INSERT INTO `archive_authors`
VALUES (10258, 'ianvanagas');
INSERT INTO `archive_authors`
VALUES (10260, '马微冰');
INSERT INTO `archive_authors`
VALUES (10262, '晚点团队');
INSERT INTO `archive_authors`
VALUES (10264, '知乎');
INSERT INTO `archive_authors`
VALUES (10266, '戴月荷');
INSERT INTO `archive_authors`
VALUES (10268, '沈沉舟');
INSERT INTO `archive_authors`
VALUES (10270, 'Abram Brown');
INSERT INTO `archive_authors`
VALUES (10272, '谢渺');
INSERT INTO `archive_authors`
VALUES (10274, '棱镜');
INSERT INTO `archive_authors`
VALUES (10276, '张珺');
INSERT INTO `archive_authors`
VALUES (10278, '电商君');
INSERT INTO `archive_authors`
VALUES (10280, '柴佳音');
INSERT INTO `archive_authors`
VALUES (10282, 'John Fawcett');
INSERT INTO `archive_authors`
VALUES (10284, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10286, '猫姨');
INSERT INTO `archive_authors`
VALUES (10290, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10292, '老编辑');
INSERT INTO `archive_authors`
VALUES (10294, '碟叔');
INSERT INTO `archive_authors`
VALUES (10296, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10298, '猫姨');
INSERT INTO `archive_authors`
VALUES (10300, '高桥美美');
INSERT INTO `archive_authors`
VALUES (10302, '老编辑');
INSERT INTO `archive_authors`
VALUES (10304, '21世纪商业评论');
INSERT INTO `archive_authors`
VALUES (10306, '老编辑');
INSERT INTO `archive_authors`
VALUES (10308, '老编辑');
INSERT INTO `archive_authors`
VALUES (10310, '老编辑');
INSERT INTO `archive_authors`
VALUES (10312, '老编辑');
INSERT INTO `archive_authors`
VALUES (10314, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10316, '老编辑');
INSERT INTO `archive_authors`
VALUES (10318, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10320, '老编辑');
INSERT INTO `archive_authors`
VALUES (10322, '老编辑');
INSERT INTO `archive_authors`
VALUES (10324, '老编辑');
INSERT INTO `archive_authors`
VALUES (10326, '高桥美美');
INSERT INTO `archive_authors`
VALUES (10328, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10330, '老编辑');
INSERT INTO `archive_authors`
VALUES (10332, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10334, '老编辑');
INSERT INTO `archive_authors`
VALUES (10336, '高桥美美');
INSERT INTO `archive_authors`
VALUES (10338, '老编辑');
INSERT INTO `archive_authors`
VALUES (10340, 'Matt Ball');
INSERT INTO `archive_authors`
VALUES (10342, 'Matt Ball');
INSERT INTO `archive_authors`
VALUES (10344, 'ADRIENNE LAFRANCE');
INSERT INTO `archive_authors`
VALUES (10346, '老编辑');
INSERT INTO `archive_authors`
VALUES (10348, '老编辑');
INSERT INTO `archive_authors`
VALUES (10350, '老编辑');
INSERT INTO `archive_authors`
VALUES (10352, '老编辑');
INSERT INTO `archive_authors`
VALUES (10354, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10356, '老编辑');
INSERT INTO `archive_authors`
VALUES (10358, '老编辑');
INSERT INTO `archive_authors`
VALUES (10360, '曲凯');
INSERT INTO `archive_authors`
VALUES (10362, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10364, '老编辑');
INSERT INTO `archive_authors`
VALUES (10366, '老编辑');
INSERT INTO `archive_authors`
VALUES (10368, '老编辑');
INSERT INTO `archive_authors`
VALUES (10370, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10372, '老编辑');
INSERT INTO `archive_authors`
VALUES (10374, '老司机');
INSERT INTO `archive_authors`
VALUES (10376, '老编辑');
INSERT INTO `archive_authors`
VALUES (10378, '老编辑');
INSERT INTO `archive_authors`
VALUES (10380, '匿名');
INSERT INTO `archive_authors`
VALUES (10382, 'Fenng');
INSERT INTO `archive_authors`
VALUES (10384, '老编辑');
INSERT INTO `archive_authors`
VALUES (10386, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10388, '老编辑');
INSERT INTO `archive_authors`
VALUES (10390, 'Keso');
INSERT INTO `archive_authors`
VALUES (10390, '老编辑');
INSERT INTO `archive_authors`
VALUES (10392, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10394, '高桥美美');
INSERT INTO `archive_authors`
VALUES (10396, '杨林');
INSERT INTO `archive_authors`
VALUES (10398, '老编辑');
INSERT INTO `archive_authors`
VALUES (10400, '铃木入间');
INSERT INTO `archive_authors`
VALUES (10402, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10404, '职问');
INSERT INTO `archive_authors`
VALUES (10406, '虎嗅');
INSERT INTO `archive_authors`
VALUES (10408, '老编辑');
INSERT INTO `archive_authors`
VALUES (10410, '老编辑');
INSERT INTO `archive_authors`
VALUES (10412, '清澜');
INSERT INTO `archive_authors`
VALUES (10414, 'VC投资人');
INSERT INTO `archive_authors`
VALUES (10416, '老编辑');
INSERT INTO `archive_authors`
VALUES (10418, '互联网第一猎');
INSERT INTO `archive_authors`
VALUES (10420, '老编辑');
INSERT INTO `archive_authors`
VALUES (10422, '老编辑');
INSERT INTO `archive_authors`
VALUES (10424, '老编辑');
INSERT INTO `archive_authors`
VALUES (10426, '老编辑');
INSERT INTO `archive_authors`
VALUES (10428, '潘乱');
INSERT INTO `archive_authors`
VALUES (10430, '老编辑');
INSERT INTO `archive_authors`
VALUES (10432, '林军');
INSERT INTO `archive_authors`
VALUES (10434, '老编辑');
INSERT INTO `archive_authors`
VALUES (10436, '老编辑');
INSERT INTO `archive_authors`
VALUES (10438, '老编辑');
INSERT INTO `archive_authors`
VALUES (10440, '老编辑');
INSERT INTO `archive_authors`
VALUES (10442, '老编辑');
INSERT INTO `archive_authors`
VALUES (10444, '老编辑');
INSERT INTO `archive_authors`
VALUES (10446, '老编辑');
INSERT INTO `archive_authors`
VALUES (10448, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10450, '凉宫四十八');
INSERT INTO `archive_authors`
VALUES (10452, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10454, '老编辑');
INSERT INTO `archive_authors`
VALUES (10456, '老编辑');
INSERT INTO `archive_authors`
VALUES (10458, '老编辑');
INSERT INTO `archive_authors`
VALUES (10460, '余小丹');
INSERT INTO `archive_authors`
VALUES (10462, '老编辑');
INSERT INTO `archive_authors`
VALUES (10464, '老编辑');
INSERT INTO `archive_authors`
VALUES (10466, '朱晓培');
INSERT INTO `archive_authors`
VALUES (10468, '包小姐');
INSERT INTO `archive_authors`
VALUES (10470, '老编辑');
INSERT INTO `archive_authors`
VALUES (10472, '老编辑');
INSERT INTO `archive_authors`
VALUES (10474, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10476, '老编辑');
INSERT INTO `archive_authors`
VALUES (10478, '老编辑');
INSERT INTO `archive_authors`
VALUES (10480, '程苓峰');
INSERT INTO `archive_authors`
VALUES (10482, '凉宫四十八');
INSERT INTO `archive_authors`
VALUES (10484, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10486, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10488, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10488, '杰克琼比');
INSERT INTO `archive_authors`
VALUES (10490, '碟叔');
INSERT INTO `archive_authors`
VALUES (10492, '老编辑');
INSERT INTO `archive_authors`
VALUES (10494, '杰克琼比');
INSERT INTO `archive_authors`
VALUES (10494, '老编辑');
INSERT INTO `archive_authors`
VALUES (10496, '李非凡');
INSERT INTO `archive_authors`
VALUES (10498, '向思琦');
INSERT INTO `archive_authors`
VALUES (10498, '姚胤米');
INSERT INTO `archive_authors`
VALUES (10500, '碟叔');
INSERT INTO `archive_authors`
VALUES (10502, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10504, '荣大一姐');
INSERT INTO `archive_authors`
VALUES (10506, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10508, '老编辑');
INSERT INTO `archive_authors`
VALUES (10510, '碟叔');
INSERT INTO `archive_authors`
VALUES (10512, '碟叔');
INSERT INTO `archive_authors`
VALUES (10514, '老编辑');
INSERT INTO `archive_authors`
VALUES (10516, '老编辑');
INSERT INTO `archive_authors`
VALUES (10518, '包小姐');
INSERT INTO `archive_authors`
VALUES (10520, '老编辑');
INSERT INTO `archive_authors`
VALUES (10522, '爱游戏的葡萄君');
INSERT INTO `archive_authors`
VALUES (10524, '高洪浩');
INSERT INTO `archive_authors`
VALUES (10526, '荣大一姐');
INSERT INTO `archive_authors`
VALUES (10528, '荣大一姐');
INSERT INTO `archive_authors`
VALUES (10530, '老道消息');
INSERT INTO `archive_authors`
VALUES (10532, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10534, '包小姐');
INSERT INTO `archive_authors`
VALUES (10536, '人物作者');
INSERT INTO `archive_authors`
VALUES (10538, '刘强东');
INSERT INTO `archive_authors`
VALUES (10540, '老道消息');
INSERT INTO `archive_authors`
VALUES (10542, '陈晓萍');
INSERT INTO `archive_authors`
VALUES (10544, '老编辑');
INSERT INTO `archive_authors`
VALUES (10546, '对长');
INSERT INTO `archive_authors`
VALUES (10548, 'iamsujie');
INSERT INTO `archive_authors`
VALUES (10550, '游戏葡萄');
INSERT INTO `archive_authors`
VALUES (10552, '老道消息');
INSERT INTO `archive_authors`
VALUES (10554, 'PUMBAA');
INSERT INTO `archive_authors`
VALUES (10556, '编程猫');
INSERT INTO `archive_authors`
VALUES (10558, '徐小平');
INSERT INTO `archive_authors`
VALUES (10560, '爱游戏的葡萄君');
INSERT INTO `archive_authors`
VALUES (10562, 'Flood Sung');
INSERT INTO `archive_authors`
VALUES (10564, '王凡');
INSERT INTO `archive_authors`
VALUES (10566, '严柳晴');
INSERT INTO `archive_authors`
VALUES (10568, '信口说');
INSERT INTO `archive_authors`
VALUES (10570, '信口说');
INSERT INTO `archive_authors`
VALUES (10572, '林军');
INSERT INTO `archive_authors`
VALUES (10574, '老道消息');
INSERT INTO `archive_authors`
VALUES (10576, '老编辑');
INSERT INTO `archive_authors`
VALUES (10578, '老编辑');
INSERT INTO `archive_authors`
VALUES (10580, '猫姨');
INSERT INTO `archive_authors`
VALUES (10582, '猫姨');
INSERT INTO `archive_authors`
VALUES (10584, '深燃团队');
INSERT INTO `archive_authors`
VALUES (10586, '深燃团队');
INSERT INTO `archive_authors`
VALUES (10588, '江大桥');
INSERT INTO `archive_authors`
VALUES (10588, '荣大一姐');
INSERT INTO `archive_authors`
VALUES (10590, '高小倩');
INSERT INTO `archive_authors`
VALUES (10592, '老编辑');
INSERT INTO `archive_authors`
VALUES (10594, '包小姐');
INSERT INTO `archive_authors`
VALUES (10596, '马东');
INSERT INTO `archive_authors`
VALUES (10598, '马东');
INSERT INTO `archive_authors`
VALUES (10600, '老编辑');
INSERT INTO `archive_authors`
VALUES (10602, '老编辑');
INSERT INTO `archive_authors`
VALUES (10604, '老司机');
INSERT INTO `archive_authors`
VALUES (10606, '老编辑');
INSERT INTO `archive_authors`
VALUES (10608, '老司机');
INSERT INTO `archive_authors`
VALUES (10610, '老编辑');
INSERT INTO `archive_authors`
VALUES (10612, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10614, '老编辑');
INSERT INTO `archive_authors`
VALUES (10616, '老编辑');
INSERT INTO `archive_authors`
VALUES (10618, '木村拓周');
INSERT INTO `archive_authors`
VALUES (10620, '老编辑');
INSERT INTO `archive_authors`
VALUES (10622, '老编辑');
INSERT INTO `archive_authors`
VALUES (10624, 'Jack周');
INSERT INTO `archive_authors`
VALUES (10624, '包小姐');
INSERT INTO `archive_authors`
VALUES (10624, '老编辑');
INSERT INTO `archive_authors`
VALUES (10626, '创业投资必修课');
INSERT INTO `archive_authors`
VALUES (10628, '老编辑');
INSERT INTO `archive_authors`
VALUES (10630, '老司机');
INSERT INTO `archive_authors`
VALUES (10632, '老编辑');
INSERT INTO `archive_authors`
VALUES (10634, '老编辑');
INSERT INTO `archive_authors`
VALUES (10636, '老编辑');
INSERT INTO `archive_authors`
VALUES (10638, '老编辑');
INSERT INTO `archive_authors`
VALUES (10640, '老编辑');
INSERT INTO `archive_authors`
VALUES (10642, '老编辑');
INSERT INTO `archive_authors`
VALUES (10644, '老编辑');
INSERT INTO `archive_authors`
VALUES (10646, '老编辑');
INSERT INTO `archive_authors`
VALUES (10648, '老编辑');
INSERT INTO `archive_authors`
VALUES (10650, '老编辑');
INSERT INTO `archive_authors`
VALUES (10652, '老编辑');
INSERT INTO `archive_authors`
VALUES (10654, '晚点团队');
INSERT INTO `archive_authors`
VALUES (10656, '晚点团队');
INSERT INTO `archive_authors`
VALUES (10658, '晚点团队');
INSERT INTO `archive_authors`
VALUES (10660, '大浅');
INSERT INTO `archive_authors`
VALUES (10660, '指北BB组');
INSERT INTO `archive_authors`
VALUES (10662, '时尚先生');
INSERT INTO `archive_authors`
VALUES (10664, '闫启');
INSERT INTO `archive_authors`
VALUES (10666, '每人作者');
INSERT INTO `archive_authors`
VALUES (10668, '周喆吾');
INSERT INTO `archive_authors`
VALUES (10670, '胡博予');
INSERT INTO `archive_authors`
VALUES (10674, 'i黑马');
INSERT INTO `archive_authors`
VALUES (10676, '周喆吾');
INSERT INTO `archive_authors`
VALUES (10678, '周喆吾');
INSERT INTO `archive_authors`
VALUES (10680, '周喆吾');
INSERT INTO `archive_authors`
VALUES (10682, '36氪');
INSERT INTO `archive_authors`
VALUES (10684, '刘然');
INSERT INTO `archive_authors`
VALUES (10686, '梁宁');
INSERT INTO `archive_authors`
VALUES (10688, '潘乱');
INSERT INTO `archive_authors`
VALUES (10690, 'Denny Liu');
INSERT INTO `archive_authors`
VALUES (10692, 'SG Global Network');
INSERT INTO `archive_authors`
VALUES (10694, '漫步芒果街');
INSERT INTO `archive_authors`
VALUES (10696, '颜西龙');
INSERT INTO `archive_authors`
VALUES (10698, '巴九灵');
INSERT INTO `archive_authors`
VALUES (10700, '金恺悦');
INSERT INTO `archive_authors`
VALUES (10702, '卫夕');
INSERT INTO `archive_authors`
VALUES (10704, 'GameLook.com.cn');
INSERT INTO `archive_authors`
VALUES (10706, 'Warald');
INSERT INTO `archive_authors`
VALUES (10708, 'Aria');
INSERT INTO `archive_authors`
VALUES (10708, 'X');
INSERT INTO `archive_authors`
VALUES (10710, 'Tina编译');
INSERT INTO `archive_authors`
VALUES (10712, '晚点团队');
INSERT INTO `archive_authors`
VALUES (10714, '爱学习的刘思毅');
INSERT INTO `archive_authors`
VALUES (10716, '晚点团队');
INSERT INTO `archive_authors`
VALUES (10718, '晚点团队');
INSERT INTO `archive_authors`
VALUES (10720, '东西游戏');
INSERT INTO `archive_authors`
VALUES (10722, '少楠');
INSERT INTO `archive_authors`
VALUES (10724, '嘤肉卫星');
INSERT INTO `archive_authors`
VALUES (10726, '陈兴杰');
INSERT INTO `archive_authors`
VALUES (10728, '王慧文');
INSERT INTO `archive_authors`
VALUES (10732, '创业邦');
INSERT INTO `archive_authors`
VALUES (10734, '张锐');
INSERT INTO `archive_authors`
VALUES (10736, '​邱晓芬');
INSERT INTO `archive_authors`
VALUES (10736, '苏建勋');
INSERT INTO `archive_authors`
VALUES (10738, '雷科技');
INSERT INTO `archive_authors`
VALUES (10740, '私募排排网');
INSERT INTO `archive_authors`
VALUES (10742, 'Bessemer Venture Partners');
INSERT INTO `archive_authors`
VALUES (10744, '多个媒体');
INSERT INTO `archive_authors`
VALUES (10746, '吴说区块链');
INSERT INTO `archive_authors`
VALUES (10748, '吴说区块链');
INSERT INTO `archive_authors`
VALUES (10750, '王慧文');
INSERT INTO `archive_authors`
VALUES (10752, '王慧文');
INSERT INTO `archive_authors`
VALUES (10754, '李秀芝');
INSERT INTO `archive_authors`
VALUES (10756, '王慧文');
INSERT INTO `archive_authors`
VALUES (10758, '萌娘百科');
INSERT INTO `archive_authors`
VALUES (10762, '新商业情报NBT');
INSERT INTO `archive_authors`
VALUES (10764, '陈桥辉');
INSERT INTO `archive_authors`
VALUES (10766, '曹玮钰');
INSERT INTO `archive_authors`
VALUES (10768, '晚点团队');
INSERT INTO `archive_authors`
VALUES (10770, '每日经济新闻');
INSERT INTO `archive_authors`
VALUES (10774, 'GameLook.com.cn');
INSERT INTO `archive_authors`
VALUES (10776, 'GameLook.com.cn');
INSERT INTO `archive_authors`
VALUES (10778, '曹玮钰');
INSERT INTO `archive_authors`
VALUES (10780, 'theobservereffect.org');
INSERT INTO `archive_authors`
VALUES (10782, 'Elon Musk');
INSERT INTO `archive_authors`
VALUES (10784, '王毓婵');
INSERT INTO `archive_authors`
VALUES (10786, '品玩');
INSERT INTO `archive_authors`
VALUES (10788, '荣大一姐');
INSERT INTO `archive_authors`
VALUES (10790, '西昻翔');
INSERT INTO `archive_authors`
VALUES (10792, '高洪浩');
INSERT INTO `archive_authors`
VALUES (10794, 'OpenAI');
INSERT INTO `archive_authors`
VALUES (10796, '余洋洋');
INSERT INTO `archive_authors`
VALUES (10798, '姚胤米');
INSERT INTO `archive_authors`
VALUES (10800, '余洋洋');
INSERT INTO `archive_authors`
VALUES (10800, '黎诗韵');
INSERT INTO `archive_authors`
VALUES (10802, '万珮');
INSERT INTO `archive_authors`
VALUES (10802, '管艺雯');
INSERT INTO `archive_authors`
VALUES (10804, '科技中国');
INSERT INTO `archive_authors`
VALUES (10808, 'The information');
INSERT INTO `archive_authors`
VALUES (10810, '新浪科技');
INSERT INTO `archive_authors`
VALUES (10812, 'Python面面观');
INSERT INTO `archive_authors`
VALUES (10814, '钱童心');
INSERT INTO `archive_authors`
VALUES (10816, '中国企业家俱乐部');
INSERT INTO `archive_authors`
VALUES (10818, '魏园');
INSERT INTO `archive_authors`
VALUES (10820, '吃瓜箘');
INSERT INTO `archive_authors`
VALUES (10822, '胡剑龙');
INSERT INTO `archive_authors`
VALUES (10824, 'Rust');
INSERT INTO `archive_authors`
VALUES (10826, '胡逸菲 石亚琼');
INSERT INTO `archive_authors`
VALUES (10828, '大连车务段');
INSERT INTO `archive_authors`
VALUES (10830, 'Serge Faguet');
INSERT INTO `archive_authors`
VALUES (10832, '林松果');
INSERT INTO `archive_authors`
VALUES (10834, '晚点团队');
INSERT INTO `archive_authors`
VALUES (10836, '黄回归线');
INSERT INTO `archive_authors`
VALUES (10838, '新知君');
INSERT INTO `archive_authors`
VALUES (10840, '溯元育新团队');
INSERT INTO `archive_authors`
VALUES (10844, '对标考察网');
INSERT INTO `archive_authors`
VALUES (10846, '陶力');
INSERT INTO `archive_authors`
VALUES (10848, '溯元育新团队');
INSERT INTO `archive_authors`
VALUES (10850, '新知君');
INSERT INTO `archive_authors`
VALUES (10852, '恶魔摸摸猫');
INSERT INTO `archive_authors`
VALUES (10854, '游戏葡萄');
INSERT INTO `archive_authors`
VALUES (10860, 'i背调');
INSERT INTO `archive_authors`
VALUES (10862, '溯元育新团队');
INSERT INTO `archive_authors`
VALUES (10864, '骆轶航');
INSERT INTO `archive_authors`
VALUES (10866, 'WouldYouKindly');
COMMIT;

-- ----------------------------
-- Table structure for archive_origs
-- ----------------------------
DROP TABLE IF EXISTS `archive_origs`;
CREATE TABLE `archive_origs`
(
    `archive_id` bigint(20)   NOT NULL,
    `orig`       varchar(255) NOT NULL,
    PRIMARY KEY (`archive_id`, `orig`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Records of archive_origs
-- ----------------------------
BEGIN;
INSERT INTO `archive_origs`
VALUES (10004, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10004.html');
INSERT INTO `archive_origs`
VALUES (10005, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10005-1.html');
INSERT INTO `archive_origs`
VALUES (10005, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10005-2.html');
INSERT INTO `archive_origs`
VALUES (10005, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10005-3.html');
INSERT INTO `archive_origs`
VALUES (10005, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10005-4.html');
INSERT INTO `archive_origs`
VALUES (10006, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10006.html');
INSERT INTO `archive_origs`
VALUES (10007, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10007.html');
INSERT INTO `archive_origs`
VALUES (10008, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10008.html');
INSERT INTO `archive_origs`
VALUES (10009, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10009.html');
INSERT INTO `archive_origs`
VALUES (10010, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10010.html');
INSERT INTO `archive_origs`
VALUES (10011, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10011.html');
INSERT INTO `archive_origs`
VALUES (10012, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10012.html');
INSERT INTO `archive_origs`
VALUES (10013, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10013.html');
INSERT INTO `archive_origs`
VALUES (10014, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10014.html');
INSERT INTO `archive_origs`
VALUES (10015, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10015.html');
INSERT INTO `archive_origs`
VALUES (10016, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10016.html');
INSERT INTO `archive_origs`
VALUES (10017, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10017.html');
INSERT INTO `archive_origs`
VALUES (10018, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10018.html');
INSERT INTO `archive_origs`
VALUES (10019, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10019.html');
INSERT INTO `archive_origs`
VALUES (10020, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10020.html');
INSERT INTO `archive_origs`
VALUES (10021, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10021.html');
INSERT INTO `archive_origs`
VALUES (10022, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10022.html');
INSERT INTO `archive_origs`
VALUES (10023, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10023.html');
INSERT INTO `archive_origs`
VALUES (10024, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10024.html');
INSERT INTO `archive_origs`
VALUES (10025, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10025.html');
INSERT INTO `archive_origs`
VALUES (10026, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10026.html');
INSERT INTO `archive_origs`
VALUES (10027, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10027.html');
INSERT INTO `archive_origs`
VALUES (10028, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10028.html');
INSERT INTO `archive_origs`
VALUES (10029, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10029.html');
INSERT INTO `archive_origs`
VALUES (10030, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10030.html');
INSERT INTO `archive_origs`
VALUES (10031, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10031.html');
INSERT INTO `archive_origs`
VALUES (10032, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10032.html');
INSERT INTO `archive_origs`
VALUES (10033, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10033.html');
INSERT INTO `archive_origs`
VALUES (10034, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10034.html');
INSERT INTO `archive_origs`
VALUES (10035, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10035.html');
INSERT INTO `archive_origs`
VALUES (10036, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10036.html');
INSERT INTO `archive_origs`
VALUES (10037, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10037.html');
INSERT INTO `archive_origs`
VALUES (10038, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10038.html');
INSERT INTO `archive_origs`
VALUES (10039, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10039.html');
INSERT INTO `archive_origs`
VALUES (10040, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10040.html');
INSERT INTO `archive_origs`
VALUES (10041, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10041.html');
INSERT INTO `archive_origs`
VALUES (10042, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10042.html');
INSERT INTO `archive_origs`
VALUES (10043, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10043.html');
INSERT INTO `archive_origs`
VALUES (10044, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10044.html');
INSERT INTO `archive_origs`
VALUES (10045, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10045.html');
INSERT INTO `archive_origs`
VALUES (10046, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10046.html');
INSERT INTO `archive_origs`
VALUES (10047, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10047.html');
INSERT INTO `archive_origs`
VALUES (10048, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10048.html');
INSERT INTO `archive_origs`
VALUES (10049, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10049.html');
INSERT INTO `archive_origs`
VALUES (10051, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10051.html');
INSERT INTO `archive_origs`
VALUES (10052, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10052.html');
INSERT INTO `archive_origs`
VALUES (10053, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10053.html');
INSERT INTO `archive_origs`
VALUES (10054, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10054.html');
INSERT INTO `archive_origs`
VALUES (10055, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10055.html');
INSERT INTO `archive_origs`
VALUES (10056, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10056.html');
INSERT INTO `archive_origs`
VALUES (10057, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10057.html');
INSERT INTO `archive_origs`
VALUES (10058, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10058.html');
INSERT INTO `archive_origs`
VALUES (10059, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10059.html');
INSERT INTO `archive_origs`
VALUES (10060, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10060.html');
INSERT INTO `archive_origs`
VALUES (10061, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10061.html');
INSERT INTO `archive_origs`
VALUES (10061, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10061.pdf');
INSERT INTO `archive_origs`
VALUES (10062, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10062.html');
INSERT INTO `archive_origs`
VALUES (10063, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10063.html');
INSERT INTO `archive_origs`
VALUES (10064, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10064.html');
INSERT INTO `archive_origs`
VALUES (10065, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10065.html');
INSERT INTO `archive_origs`
VALUES (10066, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10066.html');
INSERT INTO `archive_origs`
VALUES (10067, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10067.html');
INSERT INTO `archive_origs`
VALUES (10068, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10068.html');
INSERT INTO `archive_origs`
VALUES (10069, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10069.html');
INSERT INTO `archive_origs`
VALUES (10070, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10070.html');
INSERT INTO `archive_origs`
VALUES (10071, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10071.html');
INSERT INTO `archive_origs`
VALUES (10072, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10072.html');
INSERT INTO `archive_origs`
VALUES (10073, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10073.html');
INSERT INTO `archive_origs`
VALUES (10074, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10074.html');
INSERT INTO `archive_origs`
VALUES (10075, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10075.html');
INSERT INTO `archive_origs`
VALUES (10076, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10076.html');
INSERT INTO `archive_origs`
VALUES (10077, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10077.html');
INSERT INTO `archive_origs`
VALUES (10078, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10078.html');
INSERT INTO `archive_origs`
VALUES (10079, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10079.html');
INSERT INTO `archive_origs`
VALUES (10080, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10080.html');
INSERT INTO `archive_origs`
VALUES (10081, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10081.html');
INSERT INTO `archive_origs`
VALUES (10082, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10082.html');
INSERT INTO `archive_origs`
VALUES (10083, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10083.html');
INSERT INTO `archive_origs`
VALUES (10084, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10084.html');
INSERT INTO `archive_origs`
VALUES (10085, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10085.html');
INSERT INTO `archive_origs`
VALUES (10086, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10086.html');
INSERT INTO `archive_origs`
VALUES (10087, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10087.html');
INSERT INTO `archive_origs`
VALUES (10088, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10088.html');
INSERT INTO `archive_origs`
VALUES (10091, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10091.html');
INSERT INTO `archive_origs`
VALUES (10093, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10093.html');
INSERT INTO `archive_origs`
VALUES (10094, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10094.html');
INSERT INTO `archive_origs`
VALUES (10096, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10096.html');
INSERT INTO `archive_origs`
VALUES (10098, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10098.html');
INSERT INTO `archive_origs`
VALUES (10100, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10100.html');
INSERT INTO `archive_origs`
VALUES (10102, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10102.html');
INSERT INTO `archive_origs`
VALUES (10104, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10104.html');
INSERT INTO `archive_origs`
VALUES (10106, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10106.html');
INSERT INTO `archive_origs`
VALUES (10108, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10108.html');
INSERT INTO `archive_origs`
VALUES (10110, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10110.html');
INSERT INTO `archive_origs`
VALUES (10112, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10112.html');
INSERT INTO `archive_origs`
VALUES (10114, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10114.html');
INSERT INTO `archive_origs`
VALUES (10116, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10116.pdf');
INSERT INTO `archive_origs`
VALUES (10118, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10118.html');
INSERT INTO `archive_origs`
VALUES (10120, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10120.html');
INSERT INTO `archive_origs`
VALUES (10122, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10122.html');
INSERT INTO `archive_origs`
VALUES (10124, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10124.html');
INSERT INTO `archive_origs`
VALUES (10126, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10126.html');
INSERT INTO `archive_origs`
VALUES (10128, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10128.html');
INSERT INTO `archive_origs`
VALUES (10130, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10130.html');
INSERT INTO `archive_origs`
VALUES (10132, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10132.html');
INSERT INTO `archive_origs`
VALUES (10156, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10156.html');
INSERT INTO `archive_origs`
VALUES (10158, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10158.html');
INSERT INTO `archive_origs`
VALUES (10160, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10160.html');
INSERT INTO `archive_origs`
VALUES (10162, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10162.html');
INSERT INTO `archive_origs`
VALUES (10164, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10164.html');
INSERT INTO `archive_origs`
VALUES (10166, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10166.html');
INSERT INTO `archive_origs`
VALUES (10170, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10170.html');
INSERT INTO `archive_origs`
VALUES (10172, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10172.html');
INSERT INTO `archive_origs`
VALUES (10174, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10174.html');
INSERT INTO `archive_origs`
VALUES (10176, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10176.html');
INSERT INTO `archive_origs`
VALUES (10178, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10178.html');
INSERT INTO `archive_origs`
VALUES (10180, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10180.html');
INSERT INTO `archive_origs`
VALUES (10182, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10182.html');
INSERT INTO `archive_origs`
VALUES (10184, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10184.html');
INSERT INTO `archive_origs`
VALUES (10186, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10186.html');
INSERT INTO `archive_origs`
VALUES (10188, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10188.html');
INSERT INTO `archive_origs`
VALUES (10190, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10190.html');
INSERT INTO `archive_origs`
VALUES (10192, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10192.html');
INSERT INTO `archive_origs`
VALUES (10194, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10194.pdf');
INSERT INTO `archive_origs`
VALUES (10196, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10196.html');
INSERT INTO `archive_origs`
VALUES (10198, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10198.html');
INSERT INTO `archive_origs`
VALUES (10200, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10200.html');
INSERT INTO `archive_origs`
VALUES (10202, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10202.html');
INSERT INTO `archive_origs`
VALUES (10204, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10204.html');
INSERT INTO `archive_origs`
VALUES (10206, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10206.html');
INSERT INTO `archive_origs`
VALUES (10208, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10208.pdf');
INSERT INTO `archive_origs`
VALUES (10210, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10210.jpg');
INSERT INTO `archive_origs`
VALUES (10212, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10212.html');
INSERT INTO `archive_origs`
VALUES (10214, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10214.html');
INSERT INTO `archive_origs`
VALUES (10216, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10216.html');
INSERT INTO `archive_origs`
VALUES (10218, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10218.html');
INSERT INTO `archive_origs`
VALUES (10220, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10220.html');
INSERT INTO `archive_origs`
VALUES (10222, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10222.html');
INSERT INTO `archive_origs`
VALUES (10224, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10224.html');
INSERT INTO `archive_origs`
VALUES (10226, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10226.html');
INSERT INTO `archive_origs`
VALUES (10228, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10228.html');
INSERT INTO `archive_origs`
VALUES (10230, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10230.html');
INSERT INTO `archive_origs`
VALUES (10232, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10232.html');
INSERT INTO `archive_origs`
VALUES (10234, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10234.html');
INSERT INTO `archive_origs`
VALUES (10238, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10238.html');
INSERT INTO `archive_origs`
VALUES (10240, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10240.html');
INSERT INTO `archive_origs`
VALUES (10242, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10242.html');
INSERT INTO `archive_origs`
VALUES (10244, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10244.html');
INSERT INTO `archive_origs`
VALUES (10246, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10246.html');
INSERT INTO `archive_origs`
VALUES (10248, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10248.html');
INSERT INTO `archive_origs`
VALUES (10250, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10250.html');
INSERT INTO `archive_origs`
VALUES (10252, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10252.html');
INSERT INTO `archive_origs`
VALUES (10254, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10254.html');
INSERT INTO `archive_origs`
VALUES (10256, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10256.html');
INSERT INTO `archive_origs`
VALUES (10258, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10258.html');
INSERT INTO `archive_origs`
VALUES (10260, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10260.html');
INSERT INTO `archive_origs`
VALUES (10262, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10262.html');
INSERT INTO `archive_origs`
VALUES (10264, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10264.html');
INSERT INTO `archive_origs`
VALUES (10266, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10266.html');
INSERT INTO `archive_origs`
VALUES (10268, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10268.html');
INSERT INTO `archive_origs`
VALUES (10270, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10270.html');
INSERT INTO `archive_origs`
VALUES (10272, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10272.html');
INSERT INTO `archive_origs`
VALUES (10274, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10274.html');
INSERT INTO `archive_origs`
VALUES (10276, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10276.html');
INSERT INTO `archive_origs`
VALUES (10278, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10278-1.html');
INSERT INTO `archive_origs`
VALUES (10278, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10278-2.html');
INSERT INTO `archive_origs`
VALUES (10280, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10280.html');
INSERT INTO `archive_origs`
VALUES (10282, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10282.html');
INSERT INTO `archive_origs`
VALUES (10284, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10284.html');
INSERT INTO `archive_origs`
VALUES (10286, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10286.html');
INSERT INTO `archive_origs`
VALUES (10290, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10290.html');
INSERT INTO `archive_origs`
VALUES (10292, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10292.html');
INSERT INTO `archive_origs`
VALUES (10294, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10294.html');
INSERT INTO `archive_origs`
VALUES (10296, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10296.html');
INSERT INTO `archive_origs`
VALUES (10298, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10298.html');
INSERT INTO `archive_origs`
VALUES (10300, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10300.html');
INSERT INTO `archive_origs`
VALUES (10302, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10302.html');
INSERT INTO `archive_origs`
VALUES (10304, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10304.html');
INSERT INTO `archive_origs`
VALUES (10306, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10306.html');
INSERT INTO `archive_origs`
VALUES (10308, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10308.html');
INSERT INTO `archive_origs`
VALUES (10310, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10310.html');
INSERT INTO `archive_origs`
VALUES (10312, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10312.html');
INSERT INTO `archive_origs`
VALUES (10314, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10314.html');
INSERT INTO `archive_origs`
VALUES (10316, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10316.html');
INSERT INTO `archive_origs`
VALUES (10318, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10318.html');
INSERT INTO `archive_origs`
VALUES (10320, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10320.html');
INSERT INTO `archive_origs`
VALUES (10322, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10322.html');
INSERT INTO `archive_origs`
VALUES (10324, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10324.html');
INSERT INTO `archive_origs`
VALUES (10326, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10326.html');
INSERT INTO `archive_origs`
VALUES (10328, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10328.html');
INSERT INTO `archive_origs`
VALUES (10330, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10330.html');
INSERT INTO `archive_origs`
VALUES (10332, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10332.html');
INSERT INTO `archive_origs`
VALUES (10334, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10334.html');
INSERT INTO `archive_origs`
VALUES (10336, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10336.html');
INSERT INTO `archive_origs`
VALUES (10338, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10338.html');
INSERT INTO `archive_origs`
VALUES (10340, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10340.html');
INSERT INTO `archive_origs`
VALUES (10342, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10342.pdf');
INSERT INTO `archive_origs`
VALUES (10344, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10344.html');
INSERT INTO `archive_origs`
VALUES (10346, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10346.html');
INSERT INTO `archive_origs`
VALUES (10348, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10348.html');
INSERT INTO `archive_origs`
VALUES (10350, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10350.html');
INSERT INTO `archive_origs`
VALUES (10352, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10352.html');
INSERT INTO `archive_origs`
VALUES (10354, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10354.html');
INSERT INTO `archive_origs`
VALUES (10356, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10356.html');
INSERT INTO `archive_origs`
VALUES (10358, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10358.html');
INSERT INTO `archive_origs`
VALUES (10360, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10360-1.html');
INSERT INTO `archive_origs`
VALUES (10360, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10360-2.html');
INSERT INTO `archive_origs`
VALUES (10362, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10362.html');
INSERT INTO `archive_origs`
VALUES (10364, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10364.html');
INSERT INTO `archive_origs`
VALUES (10366, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10366.html');
INSERT INTO `archive_origs`
VALUES (10368, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10368.html');
INSERT INTO `archive_origs`
VALUES (10370, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10370.html');
INSERT INTO `archive_origs`
VALUES (10372, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10372.html');
INSERT INTO `archive_origs`
VALUES (10374, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10374.html');
INSERT INTO `archive_origs`
VALUES (10376, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10376.html');
INSERT INTO `archive_origs`
VALUES (10378, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10378.html');
INSERT INTO `archive_origs`
VALUES (10380, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10380.html');
INSERT INTO `archive_origs`
VALUES (10382, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10382.html');
INSERT INTO `archive_origs`
VALUES (10384, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10384.html');
INSERT INTO `archive_origs`
VALUES (10386, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10386.html');
INSERT INTO `archive_origs`
VALUES (10388, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10388.html');
INSERT INTO `archive_origs`
VALUES (10390, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10390.html');
INSERT INTO `archive_origs`
VALUES (10392, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10392.html');
INSERT INTO `archive_origs`
VALUES (10394, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10394.html');
INSERT INTO `archive_origs`
VALUES (10396, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10396.html');
INSERT INTO `archive_origs`
VALUES (10398, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10398.html');
INSERT INTO `archive_origs`
VALUES (10400, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10400-1.html');
INSERT INTO `archive_origs`
VALUES (10400, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10400-2.html');
INSERT INTO `archive_origs`
VALUES (10400, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10400-3.html');
INSERT INTO `archive_origs`
VALUES (10400, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10400-4.html');
INSERT INTO `archive_origs`
VALUES (10402, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10402.html');
INSERT INTO `archive_origs`
VALUES (10404, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10404.html');
INSERT INTO `archive_origs`
VALUES (10406, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10406.html');
INSERT INTO `archive_origs`
VALUES (10408, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10408.html');
INSERT INTO `archive_origs`
VALUES (10410, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10410.html');
INSERT INTO `archive_origs`
VALUES (10412, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10412.html');
INSERT INTO `archive_origs`
VALUES (10414, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10414.html');
INSERT INTO `archive_origs`
VALUES (10416, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10416.html');
INSERT INTO `archive_origs`
VALUES (10418, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10418.html');
INSERT INTO `archive_origs`
VALUES (10420, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10420.html');
INSERT INTO `archive_origs`
VALUES (10422, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10422.html');
INSERT INTO `archive_origs`
VALUES (10424, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10424.html');
INSERT INTO `archive_origs`
VALUES (10426, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10426.html');
INSERT INTO `archive_origs`
VALUES (10430, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10430.html');
INSERT INTO `archive_origs`
VALUES (10432, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10432.html');
INSERT INTO `archive_origs`
VALUES (10434, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10434.html');
INSERT INTO `archive_origs`
VALUES (10436, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10436.html');
INSERT INTO `archive_origs`
VALUES (10438, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10438.html');
INSERT INTO `archive_origs`
VALUES (10440, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10440.html');
INSERT INTO `archive_origs`
VALUES (10442, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10442.html');
INSERT INTO `archive_origs`
VALUES (10444, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10444.html');
INSERT INTO `archive_origs`
VALUES (10446, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10446.html');
INSERT INTO `archive_origs`
VALUES (10448, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10448.html');
INSERT INTO `archive_origs`
VALUES (10450, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10450.html');
INSERT INTO `archive_origs`
VALUES (10452, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10452.html');
INSERT INTO `archive_origs`
VALUES (10454, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10454.html');
INSERT INTO `archive_origs`
VALUES (10456, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10456.html');
INSERT INTO `archive_origs`
VALUES (10458, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10458.html');
INSERT INTO `archive_origs`
VALUES (10460, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10460.html');
INSERT INTO `archive_origs`
VALUES (10462, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10462.html');
INSERT INTO `archive_origs`
VALUES (10464, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10464.html');
INSERT INTO `archive_origs`
VALUES (10466, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10466.html');
INSERT INTO `archive_origs`
VALUES (10468, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10468.html');
INSERT INTO `archive_origs`
VALUES (10470, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10470-1.html');
INSERT INTO `archive_origs`
VALUES (10470, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10470-2.html');
INSERT INTO `archive_origs`
VALUES (10470, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10470-3.html');
INSERT INTO `archive_origs`
VALUES (10472, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10472.html');
INSERT INTO `archive_origs`
VALUES (10474, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10474.html');
INSERT INTO `archive_origs`
VALUES (10476, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10476.html');
INSERT INTO `archive_origs`
VALUES (10478, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10478.html');
INSERT INTO `archive_origs`
VALUES (10480, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10480.html');
INSERT INTO `archive_origs`
VALUES (10482, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10482.html');
INSERT INTO `archive_origs`
VALUES (10484, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10484.html');
INSERT INTO `archive_origs`
VALUES (10486, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10486.html');
INSERT INTO `archive_origs`
VALUES (10488, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10488.html');
INSERT INTO `archive_origs`
VALUES (10490, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10490.html');
INSERT INTO `archive_origs`
VALUES (10492, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10492.html');
INSERT INTO `archive_origs`
VALUES (10494, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10494.html');
INSERT INTO `archive_origs`
VALUES (10496, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10496.html');
INSERT INTO `archive_origs`
VALUES (10498, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10498.html');
INSERT INTO `archive_origs`
VALUES (10500, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10500.html');
INSERT INTO `archive_origs`
VALUES (10502, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10502.html');
INSERT INTO `archive_origs`
VALUES (10504, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10504.html');
INSERT INTO `archive_origs`
VALUES (10506, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10506.html');
INSERT INTO `archive_origs`
VALUES (10508, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10508.html');
INSERT INTO `archive_origs`
VALUES (10510, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10510.html');
INSERT INTO `archive_origs`
VALUES (10512, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10512.html');
INSERT INTO `archive_origs`
VALUES (10514, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10514.html');
INSERT INTO `archive_origs`
VALUES (10516, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10516.html');
INSERT INTO `archive_origs`
VALUES (10518, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10518.html');
INSERT INTO `archive_origs`
VALUES (10520, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10520.html');
INSERT INTO `archive_origs`
VALUES (10522, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10522.html');
INSERT INTO `archive_origs`
VALUES (10524, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10524.html');
INSERT INTO `archive_origs`
VALUES (10526, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10526.html');
INSERT INTO `archive_origs`
VALUES (10528, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10528.html');
INSERT INTO `archive_origs`
VALUES (10530, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10530.html');
INSERT INTO `archive_origs`
VALUES (10532, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10532.html');
INSERT INTO `archive_origs`
VALUES (10534, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10534.html');
INSERT INTO `archive_origs`
VALUES (10536, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10536.html');
INSERT INTO `archive_origs`
VALUES (10538, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10538.html');
INSERT INTO `archive_origs`
VALUES (10540, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10540.html');
INSERT INTO `archive_origs`
VALUES (10542, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10542.html');
INSERT INTO `archive_origs`
VALUES (10544, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10544.html');
INSERT INTO `archive_origs`
VALUES (10546, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10546.html');
INSERT INTO `archive_origs`
VALUES (10548, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10548.html');
INSERT INTO `archive_origs`
VALUES (10550, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10550.html');
INSERT INTO `archive_origs`
VALUES (10552, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10552.html');
INSERT INTO `archive_origs`
VALUES (10554, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10554.html');
INSERT INTO `archive_origs`
VALUES (10556, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10556.html');
INSERT INTO `archive_origs`
VALUES (10558, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10558.html');
INSERT INTO `archive_origs`
VALUES (10560, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10560.html');
INSERT INTO `archive_origs`
VALUES (10562, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10562.html');
INSERT INTO `archive_origs`
VALUES (10564, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10564.html');
INSERT INTO `archive_origs`
VALUES (10566, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10566.html');
INSERT INTO `archive_origs`
VALUES (10568, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10568.html');
INSERT INTO `archive_origs`
VALUES (10570, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10570.html');
INSERT INTO `archive_origs`
VALUES (10572, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10572.html');
INSERT INTO `archive_origs`
VALUES (10574, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10574.html');
INSERT INTO `archive_origs`
VALUES (10576, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10576.html');
INSERT INTO `archive_origs`
VALUES (10578, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10578.html');
INSERT INTO `archive_origs`
VALUES (10580, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10580.html');
INSERT INTO `archive_origs`
VALUES (10582, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10582.html');
INSERT INTO `archive_origs`
VALUES (10584, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10584.html');
INSERT INTO `archive_origs`
VALUES (10586, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10586.html');
INSERT INTO `archive_origs`
VALUES (10588, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10588.html');
INSERT INTO `archive_origs`
VALUES (10590, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10590.html');
INSERT INTO `archive_origs`
VALUES (10592, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10592.html');
INSERT INTO `archive_origs`
VALUES (10594, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10594.html');
INSERT INTO `archive_origs`
VALUES (10596, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10596.html');
INSERT INTO `archive_origs`
VALUES (10598, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10598.html');
INSERT INTO `archive_origs`
VALUES (10600, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10600.html');
INSERT INTO `archive_origs`
VALUES (10602, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10602.html');
INSERT INTO `archive_origs`
VALUES (10604, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10604.html');
INSERT INTO `archive_origs`
VALUES (10606, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10606.html');
INSERT INTO `archive_origs`
VALUES (10608, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10608.html');
INSERT INTO `archive_origs`
VALUES (10610, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10610.html');
INSERT INTO `archive_origs`
VALUES (10612, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10612.html');
INSERT INTO `archive_origs`
VALUES (10614, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10614.html');
INSERT INTO `archive_origs`
VALUES (10616, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10616.html');
INSERT INTO `archive_origs`
VALUES (10618, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10618.html');
INSERT INTO `archive_origs`
VALUES (10620, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10620.html');
INSERT INTO `archive_origs`
VALUES (10622, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10622.html');
INSERT INTO `archive_origs`
VALUES (10624, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10624.html');
INSERT INTO `archive_origs`
VALUES (10626, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10626.html');
INSERT INTO `archive_origs`
VALUES (10628, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10628.html');
INSERT INTO `archive_origs`
VALUES (10630, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10630.html');
INSERT INTO `archive_origs`
VALUES (10632, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10632.html');
INSERT INTO `archive_origs`
VALUES (10634, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10634.html');
INSERT INTO `archive_origs`
VALUES (10636, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10636.html');
INSERT INTO `archive_origs`
VALUES (10638, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10638.html');
INSERT INTO `archive_origs`
VALUES (10640, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10640.html');
INSERT INTO `archive_origs`
VALUES (10642, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10642.html');
INSERT INTO `archive_origs`
VALUES (10644, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10644.html');
INSERT INTO `archive_origs`
VALUES (10646, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10646.html');
INSERT INTO `archive_origs`
VALUES (10648, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10648.html');
INSERT INTO `archive_origs`
VALUES (10650, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10650.html');
INSERT INTO `archive_origs`
VALUES (10652, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10652.html');
INSERT INTO `archive_origs`
VALUES (10654, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10654.html');
INSERT INTO `archive_origs`
VALUES (10656, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10656.html');
INSERT INTO `archive_origs`
VALUES (10658, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10658.html');
INSERT INTO `archive_origs`
VALUES (10660, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10660.html');
INSERT INTO `archive_origs`
VALUES (10662, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10662.html');
INSERT INTO `archive_origs`
VALUES (10664, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10664.html');
INSERT INTO `archive_origs`
VALUES (10666, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10666.html');
INSERT INTO `archive_origs`
VALUES (10668, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10668-1.html');
INSERT INTO `archive_origs`
VALUES (10668, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10668-2.html');
INSERT INTO `archive_origs`
VALUES (10668, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10668-3.html');
INSERT INTO `archive_origs`
VALUES (10668, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10668-4.html');
INSERT INTO `archive_origs`
VALUES (10670, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10670.html');
INSERT INTO `archive_origs`
VALUES (10674, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10674.html');
INSERT INTO `archive_origs`
VALUES (10676, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10676.html');
INSERT INTO `archive_origs`
VALUES (10678, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10678.html');
INSERT INTO `archive_origs`
VALUES (10680, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10680.html');
INSERT INTO `archive_origs`
VALUES (10682, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10682.html');
INSERT INTO `archive_origs`
VALUES (10684, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10684.html');
INSERT INTO `archive_origs`
VALUES (10686, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10686.html');
INSERT INTO `archive_origs`
VALUES (10688, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10688.html');
INSERT INTO `archive_origs`
VALUES (10690, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10690.html');
INSERT INTO `archive_origs`
VALUES (10692, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10692.html');
INSERT INTO `archive_origs`
VALUES (10694, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10694.html');
INSERT INTO `archive_origs`
VALUES (10696, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10696.html');
INSERT INTO `archive_origs`
VALUES (10698, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10698.html');
INSERT INTO `archive_origs`
VALUES (10700, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10700.html');
INSERT INTO `archive_origs`
VALUES (10702, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10702.html');
INSERT INTO `archive_origs`
VALUES (10704, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10704.html');
INSERT INTO `archive_origs`
VALUES (10706, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10706.html');
INSERT INTO `archive_origs`
VALUES (10708, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10708.html');
INSERT INTO `archive_origs`
VALUES (10710, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10710.html');
INSERT INTO `archive_origs`
VALUES (10712, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10712.html');
INSERT INTO `archive_origs`
VALUES (10714, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10714.html');
INSERT INTO `archive_origs`
VALUES (10716, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10716.html');
INSERT INTO `archive_origs`
VALUES (10718, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10718.html');
INSERT INTO `archive_origs`
VALUES (10720, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10720.html');
INSERT INTO `archive_origs`
VALUES (10722, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10722.html');
INSERT INTO `archive_origs`
VALUES (10724, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10724.html');
INSERT INTO `archive_origs`
VALUES (10726, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10726.html');
INSERT INTO `archive_origs`
VALUES (10728, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10728.html');
INSERT INTO `archive_origs`
VALUES (10732, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10732.html');
INSERT INTO `archive_origs`
VALUES (10734, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10734.html');
INSERT INTO `archive_origs`
VALUES (10736, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10736.html');
INSERT INTO `archive_origs`
VALUES (10738, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10738.html');
INSERT INTO `archive_origs`
VALUES (10740, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10740.html');
INSERT INTO `archive_origs`
VALUES (10742, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10742-1.html');
INSERT INTO `archive_origs`
VALUES (10742, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10742-2.html');
INSERT INTO `archive_origs`
VALUES (10744, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10744-1.html');
INSERT INTO `archive_origs`
VALUES (10744, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10744-2.html');
INSERT INTO `archive_origs`
VALUES (10744, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10744-3.html');
INSERT INTO `archive_origs`
VALUES (10746, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10746.html');
INSERT INTO `archive_origs`
VALUES (10748, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10748.html');
INSERT INTO `archive_origs`
VALUES (10750, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10750-1.html');
INSERT INTO `archive_origs`
VALUES (10750, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10750-2.html');
INSERT INTO `archive_origs`
VALUES (10750, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10750-3.html');
INSERT INTO `archive_origs`
VALUES (10750, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10750-4.html');
INSERT INTO `archive_origs`
VALUES (10750, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10750-5.html');
INSERT INTO `archive_origs`
VALUES (10750, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10750-6.html');
INSERT INTO `archive_origs`
VALUES (10750, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10750-7.html');
INSERT INTO `archive_origs`
VALUES (10752, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10752.html');
INSERT INTO `archive_origs`
VALUES (10754, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10754-1.html');
INSERT INTO `archive_origs`
VALUES (10754, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10754-2.html');
INSERT INTO `archive_origs`
VALUES (10756, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10756.html');
INSERT INTO `archive_origs`
VALUES (10758, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10758.html');
INSERT INTO `archive_origs`
VALUES (10762, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10762.html');
INSERT INTO `archive_origs`
VALUES (10764, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10764.html');
INSERT INTO `archive_origs`
VALUES (10766, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10766.html');
INSERT INTO `archive_origs`
VALUES (10768, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10768.html');
INSERT INTO `archive_origs`
VALUES (10770, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10770.html');
INSERT INTO `archive_origs`
VALUES (10774, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10774.html');
INSERT INTO `archive_origs`
VALUES (10776, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10776.html');
INSERT INTO `archive_origs`
VALUES (10778, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10778.html');
INSERT INTO `archive_origs`
VALUES (10780, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10780.html');
INSERT INTO `archive_origs`
VALUES (10782, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10782-1.html');
INSERT INTO `archive_origs`
VALUES (10782, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10782-2.html');
INSERT INTO `archive_origs`
VALUES (10784, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10784.html');
INSERT INTO `archive_origs`
VALUES (10786, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10786.html');
INSERT INTO `archive_origs`
VALUES (10788, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10788.html');
INSERT INTO `archive_origs`
VALUES (10790, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10790.html');
INSERT INTO `archive_origs`
VALUES (10792, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10792.html');
INSERT INTO `archive_origs`
VALUES (10794, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10794.html');
INSERT INTO `archive_origs`
VALUES (10796, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10796.html');
INSERT INTO `archive_origs`
VALUES (10798, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10798.html');
INSERT INTO `archive_origs`
VALUES (10800, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10800.html');
INSERT INTO `archive_origs`
VALUES (10802, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10802.html');
INSERT INTO `archive_origs`
VALUES (10804, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10804.html');
INSERT INTO `archive_origs`
VALUES (10808, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10808.html');
INSERT INTO `archive_origs`
VALUES (10810, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10810.html');
INSERT INTO `archive_origs`
VALUES (10812, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10812.html');
INSERT INTO `archive_origs`
VALUES (10814, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10814.html');
INSERT INTO `archive_origs`
VALUES (10816, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10816.html');
INSERT INTO `archive_origs`
VALUES (10818, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10818.html');
INSERT INTO `archive_origs`
VALUES (10820, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10820.html');
INSERT INTO `archive_origs`
VALUES (10822, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10822.html');
INSERT INTO `archive_origs`
VALUES (10824, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10824.html');
INSERT INTO `archive_origs`
VALUES (10826, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10826.html');
INSERT INTO `archive_origs`
VALUES (10828, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10828.html');
INSERT INTO `archive_origs`
VALUES (10830, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10830-1.html');
INSERT INTO `archive_origs`
VALUES (10830, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10830-2.html');
INSERT INTO `archive_origs`
VALUES (10830, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10830-3.html');
INSERT INTO `archive_origs`
VALUES (10832, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10832.html');
INSERT INTO `archive_origs`
VALUES (10834, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10834.html');
INSERT INTO `archive_origs`
VALUES (10836, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10836.html');
INSERT INTO `archive_origs`
VALUES (10838, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10838.html');
INSERT INTO `archive_origs`
VALUES (10840, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10840.html');
INSERT INTO `archive_origs`
VALUES (10844, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10844.html');
INSERT INTO `archive_origs`
VALUES (10846, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10846.html');
INSERT INTO `archive_origs`
VALUES (10848, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10848.html');
INSERT INTO `archive_origs`
VALUES (10850, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10850.html');
INSERT INTO `archive_origs`
VALUES (10852, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10852.html');
INSERT INTO `archive_origs`
VALUES (10854, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10854.html');
INSERT INTO `archive_origs`
VALUES (10860, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10860.html');
INSERT INTO `archive_origs`
VALUES (10862, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10862.html');
INSERT INTO `archive_origs`
VALUES (10864, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10864.html');
INSERT INTO `archive_origs`
VALUES (10866, 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/10866.html');
COMMIT;

-- ----------------------------
-- Table structure for archive_publishers
-- ----------------------------
DROP TABLE IF EXISTS `archive_publishers`;
CREATE TABLE `archive_publishers`
(
    `archive_id` bigint(20)  NOT NULL,
    `publisher`  varchar(60) NOT NULL DEFAULT '',
    PRIMARY KEY (`archive_id`, `publisher`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Records of archive_publishers
-- ----------------------------
BEGIN;
INSERT INTO `archive_publishers`
VALUES (100, '中国社会科学出版社');
INSERT INTO `archive_publishers`
VALUES (101, '重庆出版社');
INSERT INTO `archive_publishers`
VALUES (102, '中国人民大学出版社');
INSERT INTO `archive_publishers`
VALUES (103, '浙江人民出版社');
INSERT INTO `archive_publishers`
VALUES (104, '中信出版集团');
INSERT INTO `archive_publishers`
VALUES (10004, '商业人物');
INSERT INTO `archive_publishers`
VALUES (10005, '重读');
INSERT INTO `archive_publishers`
VALUES (10006, '乱翻书');
INSERT INTO `archive_publishers`
VALUES (10007, '计算机世界');
INSERT INTO `archive_publishers`
VALUES (10008, '财经');
INSERT INTO `archive_publishers`
VALUES (10009, '晚点');
INSERT INTO `archive_publishers`
VALUES (10010, '腾讯科技');
INSERT INTO `archive_publishers`
VALUES (10011, '东方一柱');
INSERT INTO `archive_publishers`
VALUES (10012, '界面');
INSERT INTO `archive_publishers`
VALUES (10013, '乱翻书');
INSERT INTO `archive_publishers`
VALUES (10014, '棱镜');
INSERT INTO `archive_publishers`
VALUES (10015, '36氪');
INSERT INTO `archive_publishers`
VALUES (10016, '虎嗅大商业组');
INSERT INTO `archive_publishers`
VALUES (10017, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10018, '虎嗅');
INSERT INTO `archive_publishers`
VALUES (10019, '财经');
INSERT INTO `archive_publishers`
VALUES (10020, '36氪');
INSERT INTO `archive_publishers`
VALUES (10021, '第一财经周刊');
INSERT INTO `archive_publishers`
VALUES (10022, 'GQ实验室');
INSERT INTO `archive_publishers`
VALUES (10023, '人物');
INSERT INTO `archive_publishers`
VALUES (10024, '银杏财经');
INSERT INTO `archive_publishers`
VALUES (10025, '人物');
INSERT INTO `archive_publishers`
VALUES (10026, '市界');
INSERT INTO `archive_publishers`
VALUES (10027, '财经');
INSERT INTO `archive_publishers`
VALUES (10028, '晚点');
INSERT INTO `archive_publishers`
VALUES (10029, '人物');
INSERT INTO `archive_publishers`
VALUES (10030, '财经');
INSERT INTO `archive_publishers`
VALUES (10031, '深氪');
INSERT INTO `archive_publishers`
VALUES (10032, '真格');
INSERT INTO `archive_publishers`
VALUES (10033, '36氪');
INSERT INTO `archive_publishers`
VALUES (10034, 'DT财经');
INSERT INTO `archive_publishers`
VALUES (10035, '腾讯科技');
INSERT INTO `archive_publishers`
VALUES (10036, '界面新闻');
INSERT INTO `archive_publishers`
VALUES (10037, '首席人物观');
INSERT INTO `archive_publishers`
VALUES (10038, 'FT中文网');
INSERT INTO `archive_publishers`
VALUES (10039, '人物');
INSERT INTO `archive_publishers`
VALUES (10040, '博望志');
INSERT INTO `archive_publishers`
VALUES (10041, 'GQ');
INSERT INTO `archive_publishers`
VALUES (10042, '微笑小姐S');
INSERT INTO `archive_publishers`
VALUES (10043, '猎云网');
INSERT INTO `archive_publishers`
VALUES (10044, '第一财经周刊');
INSERT INTO `archive_publishers`
VALUES (10045, '晚点财经');
INSERT INTO `archive_publishers`
VALUES (10046, 'X博士');
INSERT INTO `archive_publishers`
VALUES (10047, '36氪');
INSERT INTO `archive_publishers`
VALUES (10048, '蓝媒汇');
INSERT INTO `archive_publishers`
VALUES (10049, '财经');
INSERT INTO `archive_publishers`
VALUES (10050, '吴晓波');
INSERT INTO `archive_publishers`
VALUES (10051, '对长');
INSERT INTO `archive_publishers`
VALUES (10052, '36氪特写');
INSERT INTO `archive_publishers`
VALUES (10053, '乱翻书');
INSERT INTO `archive_publishers`
VALUES (10054, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10055, '智东西');
INSERT INTO `archive_publishers`
VALUES (10056, '潘乱');
INSERT INTO `archive_publishers`
VALUES (10057, '晚点');
INSERT INTO `archive_publishers`
VALUES (10058, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10059, '远川研究所');
INSERT INTO `archive_publishers`
VALUES (10060, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10061, '乱翻书');
INSERT INTO `archive_publishers`
VALUES (10062, '晚点');
INSERT INTO `archive_publishers`
VALUES (10063, '晚点');
INSERT INTO `archive_publishers`
VALUES (10064, 'AI财经社');
INSERT INTO `archive_publishers`
VALUES (10065, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10066, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10067, '全天候科技');
INSERT INTO `archive_publishers`
VALUES (10068, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10069, '财经');
INSERT INTO `archive_publishers`
VALUES (10070, '财经');
INSERT INTO `archive_publishers`
VALUES (10071, '财经');
INSERT INTO `archive_publishers`
VALUES (10072, '36氪');
INSERT INTO `archive_publishers`
VALUES (10073, '业界风云汇');
INSERT INTO `archive_publishers`
VALUES (10074, '重读');
INSERT INTO `archive_publishers`
VALUES (10075, '投中');
INSERT INTO `archive_publishers`
VALUES (10076, '猎云网');
INSERT INTO `archive_publishers`
VALUES (10077, '十亿消费者');
INSERT INTO `archive_publishers`
VALUES (10078, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10079, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10080, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10081, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10082, '三表蛇门阵');
INSERT INTO `archive_publishers`
VALUES (10083, '铅笔道');
INSERT INTO `archive_publishers`
VALUES (10084, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10085, '商业人物');
INSERT INTO `archive_publishers`
VALUES (10086, '晚点财经');
INSERT INTO `archive_publishers`
VALUES (10087, '腾讯深网');
INSERT INTO `archive_publishers`
VALUES (10088, '36氪深度');
INSERT INTO `archive_publishers`
VALUES (10089, '江苏凤凰文艺出版社');
INSERT INTO `archive_publishers`
VALUES (10090, '杭州蓝狮子');
INSERT INTO `archive_publishers`
VALUES (10091, '曾嵘胡扯的地方');
INSERT INTO `archive_publishers`
VALUES (10093, '远川研究所');
INSERT INTO `archive_publishers`
VALUES (10094, '晚点');
INSERT INTO `archive_publishers`
VALUES (10096, '晚点');
INSERT INTO `archive_publishers`
VALUES (10098, '手游那点事');
INSERT INTO `archive_publishers`
VALUES (10100, '36氪');
INSERT INTO `archive_publishers`
VALUES (10102, '链闻');
INSERT INTO `archive_publishers`
VALUES (10104, '猎农');
INSERT INTO `archive_publishers`
VALUES (10106, '链闻');
INSERT INTO `archive_publishers`
VALUES (10108, 'Vox');
INSERT INTO `archive_publishers`
VALUES (10110, 'Medium');
INSERT INTO `archive_publishers`
VALUES (10112, 'Medium');
INSERT INTO `archive_publishers`
VALUES (10114, 'Medium');
INSERT INTO `archive_publishers`
VALUES (10116, '华商韬略');
INSERT INTO `archive_publishers`
VALUES (10118, '品玩');
INSERT INTO `archive_publishers`
VALUES (10120, '互联网怪盗团');
INSERT INTO `archive_publishers`
VALUES (10122, '湖畔大学');
INSERT INTO `archive_publishers`
VALUES (10124, '手游那点事');
INSERT INTO `archive_publishers`
VALUES (10126, '搜狐');
INSERT INTO `archive_publishers`
VALUES (10128, '四十二章经');
INSERT INTO `archive_publishers`
VALUES (10130, '四十二章经');
INSERT INTO `archive_publishers`
VALUES (10132, '量子位');
INSERT INTO `archive_publishers`
VALUES (10156, '飞机稿');
INSERT INTO `archive_publishers`
VALUES (10158, '一刻创投圈');
INSERT INTO `archive_publishers`
VALUES (10160, 'INSIGHT视界');
INSERT INTO `archive_publishers`
VALUES (10162, '字母榜');
INSERT INTO `archive_publishers`
VALUES (10164, '字母榜');
INSERT INTO `archive_publishers`
VALUES (10166, 'Odaily星球日报');
INSERT INTO `archive_publishers`
VALUES (10170, '燃次元');
INSERT INTO `archive_publishers`
VALUES (10172, '社会人科技评论');
INSERT INTO `archive_publishers`
VALUES (10174, '宅总有理');
INSERT INTO `archive_publishers`
VALUES (10176, '豹变');
INSERT INTO `archive_publishers`
VALUES (10178, '游戏研究社');
INSERT INTO `archive_publishers`
VALUES (10180, 'IT桔子');
INSERT INTO `archive_publishers`
VALUES (10182, '36氪');
INSERT INTO `archive_publishers`
VALUES (10184, '游戏研究社');
INSERT INTO `archive_publishers`
VALUES (10186, '游戏新知');
INSERT INTO `archive_publishers`
VALUES (10188, '源码资本');
INSERT INTO `archive_publishers`
VALUES (10190, 'IDG资本');
INSERT INTO `archive_publishers`
VALUES (10192, '酷玩实验室');
INSERT INTO `archive_publishers`
VALUES (10194, '良大师');
INSERT INTO `archive_publishers`
VALUES (10196, '海外掘金');
INSERT INTO `archive_publishers`
VALUES (10198, 'Coindesk');
INSERT INTO `archive_publishers`
VALUES (10200, '网易');
INSERT INTO `archive_publishers`
VALUES (10202, '老talk消息');
INSERT INTO `archive_publishers`
VALUES (10204, 'InfoQ');
INSERT INTO `archive_publishers`
VALUES (10206, '信息安全老骆驼');
INSERT INTO `archive_publishers`
VALUES (10208, '砺石商业评论');
INSERT INTO `archive_publishers`
VALUES (10210, '微博');
INSERT INTO `archive_publishers`
VALUES (10212, '猎云网');
INSERT INTO `archive_publishers`
VALUES (10214, '字母榜');
INSERT INTO `archive_publishers`
VALUES (10216, '证券日报');
INSERT INTO `archive_publishers`
VALUES (10218, '财经十一人');
INSERT INTO `archive_publishers`
VALUES (10220, '壹娱观察');
INSERT INTO `archive_publishers`
VALUES (10222, '乱翻书');
INSERT INTO `archive_publishers`
VALUES (10224, '7点5度');
INSERT INTO `archive_publishers`
VALUES (10226, '深燃');
INSERT INTO `archive_publishers`
VALUES (10228, '未来汽车日报');
INSERT INTO `archive_publishers`
VALUES (10230, '壹娱观察');
INSERT INTO `archive_publishers`
VALUES (10232, '36氪');
INSERT INTO `archive_publishers`
VALUES (10234, '远川商业评论');
INSERT INTO `archive_publishers`
VALUES (10238, '21世纪经济报道');
INSERT INTO `archive_publishers`
VALUES (10240, '极客公园');
INSERT INTO `archive_publishers`
VALUES (10242, '36氪');
INSERT INTO `archive_publishers`
VALUES (10244, '那個NG');
INSERT INTO `archive_publishers`
VALUES (10246, '小宝比特币之家');
INSERT INTO `archive_publishers`
VALUES (10248, '鸵鸟区块链速递');
INSERT INTO `archive_publishers`
VALUES (10250, '财新');
INSERT INTO `archive_publishers`
VALUES (10252, '人物');
INSERT INTO `archive_publishers`
VALUES (10254, 'AI财经社');
INSERT INTO `archive_publishers`
VALUES (10256, '车东西');
INSERT INTO `archive_publishers`
VALUES (10258, 'ianvanagas');
INSERT INTO `archive_publishers`
VALUES (10260, 'Tech星球');
INSERT INTO `archive_publishers`
VALUES (10262, '晚点早知道');
INSERT INTO `archive_publishers`
VALUES (10264, '知乎');
INSERT INTO `archive_publishers`
VALUES (10266, '深网腾讯新闻');
INSERT INTO `archive_publishers`
VALUES (10268, '青衣十三楼飞花堂');
INSERT INTO `archive_publishers`
VALUES (10270, 'Forbes');
INSERT INTO `archive_publishers`
VALUES (10272, '全天候科技');
INSERT INTO `archive_publishers`
VALUES (10274, '棱镜');
INSERT INTO `archive_publishers`
VALUES (10276, '腾讯科技');
INSERT INTO `archive_publishers`
VALUES (10278, '电商报');
INSERT INTO `archive_publishers`
VALUES (10280, '投中网');
INSERT INTO `archive_publishers`
VALUES (10282, 'Quantopian');
INSERT INTO `archive_publishers`
VALUES (10284, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10286, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10290, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10292, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10294, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10296, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10298, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10300, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10302, '老道编辑');
INSERT INTO `archive_publishers`
VALUES (10304, '21世纪商业评论');
INSERT INTO `archive_publishers`
VALUES (10306, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10308, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10310, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10312, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10314, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10316, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10318, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10320, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10322, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10324, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10326, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10328, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10330, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10332, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10334, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10336, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10338, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10340, 'matthewball.vc');
INSERT INTO `archive_publishers`
VALUES (10342, 'Invest Like the Best Podcast');
INSERT INTO `archive_publishers`
VALUES (10344, 'The Atlantic');
INSERT INTO `archive_publishers`
VALUES (10346, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10348, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10350, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10352, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10354, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10356, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10358, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10360, '42章经');
INSERT INTO `archive_publishers`
VALUES (10362, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10364, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10366, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10368, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10370, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10372, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10374, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10376, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10378, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10380, '知乎');
INSERT INTO `archive_publishers`
VALUES (10382, '小道消息');
INSERT INTO `archive_publishers`
VALUES (10384, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10386, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10388, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10390, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10392, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10394, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10396, '36氪');
INSERT INTO `archive_publishers`
VALUES (10398, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10400, '我开成人体验馆的二三事');
INSERT INTO `archive_publishers`
VALUES (10402, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10404, '职问');
INSERT INTO `archive_publishers`
VALUES (10406, '虎嗅');
INSERT INTO `archive_publishers`
VALUES (10408, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10410, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10412, '知乎');
INSERT INTO `archive_publishers`
VALUES (10414, 'VC投资人');
INSERT INTO `archive_publishers`
VALUES (10416, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10418, '搜狐');
INSERT INTO `archive_publishers`
VALUES (10420, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10422, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10424, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10426, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10428, '乱翻书');
INSERT INTO `archive_publishers`
VALUES (10430, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10432, '速途网');
INSERT INTO `archive_publishers`
VALUES (10434, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10436, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10438, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10440, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10442, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10444, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10446, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10448, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10450, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10452, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10454, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10456, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10458, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10460, '空空狐');
INSERT INTO `archive_publishers`
VALUES (10462, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10464, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10466, '财经天下');
INSERT INTO `archive_publishers`
VALUES (10468, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10470, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10472, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10474, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10476, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10478, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10480, '财新网');
INSERT INTO `archive_publishers`
VALUES (10482, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10484, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10486, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10488, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10490, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10492, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10494, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10496, '钛媒体');
INSERT INTO `archive_publishers`
VALUES (10498, '晚点');
INSERT INTO `archive_publishers`
VALUES (10500, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10502, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10504, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10506, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10508, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10510, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10512, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10514, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10516, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10518, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10520, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10522, '游戏葡萄');
INSERT INTO `archive_publishers`
VALUES (10524, '晚点');
INSERT INTO `archive_publishers`
VALUES (10526, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10528, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10530, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10532, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10534, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10536, '人物');
INSERT INTO `archive_publishers`
VALUES (10538, '网易科技');
INSERT INTO `archive_publishers`
VALUES (10540, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10542, '一财网');
INSERT INTO `archive_publishers`
VALUES (10544, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10546, '对对对，你们都是业内');
INSERT INTO `archive_publishers`
VALUES (10548, '人人都是产品经理');
INSERT INTO `archive_publishers`
VALUES (10550, '游戏葡萄');
INSERT INTO `archive_publishers`
VALUES (10552, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10554, '游猪生态');
INSERT INTO `archive_publishers`
VALUES (10556, '编程猫');
INSERT INTO `archive_publishers`
VALUES (10558, '真格基金');
INSERT INTO `archive_publishers`
VALUES (10560, '游戏葡萄');
INSERT INTO `archive_publishers`
VALUES (10562, 'AI与Metaverse');
INSERT INTO `archive_publishers`
VALUES (10564, '棱镜');
INSERT INTO `archive_publishers`
VALUES (10566, '湃客工坊');
INSERT INTO `archive_publishers`
VALUES (10568, '信口说');
INSERT INTO `archive_publishers`
VALUES (10570, '美御资本');
INSERT INTO `archive_publishers`
VALUES (10572, '左林右狸');
INSERT INTO `archive_publishers`
VALUES (10574, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10576, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10578, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10580, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10582, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10584, '深燃');
INSERT INTO `archive_publishers`
VALUES (10586, '深燃');
INSERT INTO `archive_publishers`
VALUES (10588, '三里河');
INSERT INTO `archive_publishers`
VALUES (10590, '36氪');
INSERT INTO `archive_publishers`
VALUES (10592, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10594, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10596, '桥下有人');
INSERT INTO `archive_publishers`
VALUES (10598, '桥下有人');
INSERT INTO `archive_publishers`
VALUES (10600, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10602, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10604, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10606, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10608, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10610, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10612, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10614, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10616, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10618, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10620, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10622, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10624, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10626, '创业投资必修课');
INSERT INTO `archive_publishers`
VALUES (10628, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10630, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10632, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10634, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10636, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10638, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10640, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10642, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10644, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10646, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10648, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10650, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10652, '老道消息');
INSERT INTO `archive_publishers`
VALUES (10654, '晚点LatePost');
INSERT INTO `archive_publishers`
VALUES (10656, '晚点LatePost');
INSERT INTO `archive_publishers`
VALUES (10658, '晚点LatePost');
INSERT INTO `archive_publishers`
VALUES (10660, '互联网指北');
INSERT INTO `archive_publishers`
VALUES (10662, '故事硬核');
INSERT INTO `archive_publishers`
VALUES (10664, '投资界');
INSERT INTO `archive_publishers`
VALUES (10666, '人物');
INSERT INTO `archive_publishers`
VALUES (10668, '麦穗集');
INSERT INTO `archive_publishers`
VALUES (10670, 'XVC的胡思乱想');
INSERT INTO `archive_publishers`
VALUES (10674, 'i黑马');
INSERT INTO `archive_publishers`
VALUES (10676, '麦穗集');
INSERT INTO `archive_publishers`
VALUES (10678, '麦穗集');
INSERT INTO `archive_publishers`
VALUES (10680, '麦穗集');
INSERT INTO `archive_publishers`
VALUES (10682, '36氪');
INSERT INTO `archive_publishers`
VALUES (10684, '虎嗅APP');
INSERT INTO `archive_publishers`
VALUES (10686, '得到');
INSERT INTO `archive_publishers`
VALUES (10688, '乱翻书');
INSERT INTO `archive_publishers`
VALUES (10690, '奶牛Denny');
INSERT INTO `archive_publishers`
VALUES (10692, 'SG Global Network');
INSERT INTO `archive_publishers`
VALUES (10694, '漫步芒果街');
INSERT INTO `archive_publishers`
VALUES (10696, '猎云网');
INSERT INTO `archive_publishers`
VALUES (10698, '吴晓波频道');
INSERT INTO `archive_publishers`
VALUES (10700, '36氪出海');
INSERT INTO `archive_publishers`
VALUES (10702, '卫夕指北');
INSERT INTO `archive_publishers`
VALUES (10704, 'GameLook');
INSERT INTO `archive_publishers`
VALUES (10706, '一亩三分地Warald');
INSERT INTO `archive_publishers`
VALUES (10708, '游戏研究社');
INSERT INTO `archive_publishers`
VALUES (10710, '脑机接口社区');
INSERT INTO `archive_publishers`
VALUES (10712, '晚点LatePost');
INSERT INTO `archive_publishers`
VALUES (10714, '群响刘老板');
INSERT INTO `archive_publishers`
VALUES (10716, '晚点');
INSERT INTO `archive_publishers`
VALUES (10718, '晚点LatePost');
INSERT INTO `archive_publishers`
VALUES (10720, '东西游戏');
INSERT INTO `archive_publishers`
VALUES (10722, '产品沉思录');
INSERT INTO `archive_publishers`
VALUES (10724, '游戏研究社');
INSERT INTO `archive_publishers`
VALUES (10726, '菁城子');
INSERT INTO `archive_publishers`
VALUES (10728, '澎湃新闻');
INSERT INTO `archive_publishers`
VALUES (10732, '创业邦');
INSERT INTO `archive_publishers`
VALUES (10734, '南方周末');
INSERT INTO `archive_publishers`
VALUES (10736, '36氪Pro');
INSERT INTO `archive_publishers`
VALUES (10738, '知乎');
INSERT INTO `archive_publishers`
VALUES (10740, '私募排排网');
INSERT INTO `archive_publishers`
VALUES (10742, 'Bessemer Venture Partners');
INSERT INTO `archive_publishers`
VALUES (10744, '多个媒体');
INSERT INTO `archive_publishers`
VALUES (10746, '吴说区块链real');
INSERT INTO `archive_publishers`
VALUES (10748, '吴说区块链');
INSERT INTO `archive_publishers`
VALUES (10750, '人人都是产品经理');
INSERT INTO `archive_publishers`
VALUES (10752, '亿欧创新者年会');
INSERT INTO `archive_publishers`
VALUES (10754, '中国企业家');
INSERT INTO `archive_publishers`
VALUES (10756, '人人都是产品经理');
INSERT INTO `archive_publishers`
VALUES (10758, '萌娘百科');
INSERT INTO `archive_publishers`
VALUES (10762, '新商业情报NBT');
INSERT INTO `archive_publishers`
VALUES (10764, 'Tech星球');
INSERT INTO `archive_publishers`
VALUES (10766, '投中网');
INSERT INTO `archive_publishers`
VALUES (10768, '晚点LatePost');
INSERT INTO `archive_publishers`
VALUES (10770, '每日经济新闻');
INSERT INTO `archive_publishers`
VALUES (10774, 'GameLook');
INSERT INTO `archive_publishers`
VALUES (10776, 'GameLook');
INSERT INTO `archive_publishers`
VALUES (10778, '投中网');
INSERT INTO `archive_publishers`
VALUES (10780, 'theobservereffect.org');
INSERT INTO `archive_publishers`
VALUES (10782, 'SpaceX');
INSERT INTO `archive_publishers`
VALUES (10784, '36氪');
INSERT INTO `archive_publishers`
VALUES (10786, '品玩');
INSERT INTO `archive_publishers`
VALUES (10788, '老talk消息');
INSERT INTO `archive_publishers`
VALUES (10790, 'Yourseeker');
INSERT INTO `archive_publishers`
VALUES (10792, '晚点LatePost');
INSERT INTO `archive_publishers`
VALUES (10794, 'AI科技评论');
INSERT INTO `archive_publishers`
VALUES (10796, '晚点');
INSERT INTO `archive_publishers`
VALUES (10798, '晚点');
INSERT INTO `archive_publishers`
VALUES (10800, '晚点');
INSERT INTO `archive_publishers`
VALUES (10802, '晚点');
INSERT INTO `archive_publishers`
VALUES (10804, '科技中国');
INSERT INTO `archive_publishers`
VALUES (10808, 'The information');
INSERT INTO `archive_publishers`
VALUES (10810, '新浪科技');
INSERT INTO `archive_publishers`
VALUES (10812, ' Python面面观');
INSERT INTO `archive_publishers`
VALUES (10814, '第一财经');
INSERT INTO `archive_publishers`
VALUES (10816, '中国企业家俱乐部');
INSERT INTO `archive_publishers`
VALUES (10818, '庖丁解news');
INSERT INTO `archive_publishers`
VALUES (10820, '行走吃瓜圈');
INSERT INTO `archive_publishers`
VALUES (10822, '志象网');
INSERT INTO `archive_publishers`
VALUES (10824, '手游那点事');
INSERT INTO `archive_publishers`
VALUES (10826, '36氪Pro');
INSERT INTO `archive_publishers`
VALUES (10828, '大连车务段');
INSERT INTO `archive_publishers`
VALUES (10830, 'Hackernoon');
INSERT INTO `archive_publishers`
VALUES (10832, '人物');
INSERT INTO `archive_publishers`
VALUES (10834, '晚点LatePost');
INSERT INTO `archive_publishers`
VALUES (10836, '游戏研究社');
INSERT INTO `archive_publishers`
VALUES (10838, '游戏新知');
INSERT INTO `archive_publishers`
VALUES (10840, '溯元育新');
INSERT INTO `archive_publishers`
VALUES (10844, '对标考察网');
INSERT INTO `archive_publishers`
VALUES (10846, '21Tech');
INSERT INTO `archive_publishers`
VALUES (10848, '溯元育新');
INSERT INTO `archive_publishers`
VALUES (10850, '游戏新知');
INSERT INTO `archive_publishers`
VALUES (10852, '手游那点事');
INSERT INTO `archive_publishers`
VALUES (10854, '游戏葡萄');
INSERT INTO `archive_publishers`
VALUES (10860, 'i背调');
INSERT INTO `archive_publishers`
VALUES (10862, '溯元育新');
INSERT INTO `archive_publishers`
VALUES (10864, '品玩');
INSERT INTO `archive_publishers`
VALUES (10866, '知乎');
COMMIT;

-- ----------------------------
-- Table structure for archive_remarks
-- ----------------------------
DROP TABLE IF EXISTS `archive_remarks`;
CREATE TABLE `archive_remarks`
(
    `archive_id` bigint(20) NOT NULL,
    `remarks`    mediumtext NOT NULL,
    PRIMARY KEY (`archive_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Records of archive_remarks
-- ----------------------------
BEGIN;
INSERT INTO `archive_remarks`
VALUES (100, '\n我想用我分三次写就的《我们信仰互联网》一文，纪念我的作品再次出版。\n\n故文似是故人来');
INSERT INTO `archive_remarks`
VALUES (101, '');
INSERT INTO `archive_remarks`
VALUES (102, '');
INSERT INTO `archive_remarks`
VALUES (103, '');
INSERT INTO `archive_remarks`
VALUES (104,
        '\n除非经由记忆之路, 人不能抵达纵深 - 汉娜阿伦特\n\n500强, 08-17年, 35到117家\n\n国学和中国风在复活\n\n--- \n\n1946年才发明的计算机, 用一代人的时间完成了信息世界的建设. 信息, 公司范式, 财富积累\n\n技术变革周期结束\n\n反全球化\n\n08-18, 深圳均价1.3万-6万, 10亿美元749人. http://www.hurun.net/CN/HuList/Index?num=8CO30IY79707\n\n`资本主义的黄金岁月`\n\nWalt Whitman: 极端商业活力, 疯狂求富欲望, 正是美国改善和进步的组成部分\n\n`王江民不再有`\n\n遍地英雄皆凡人\n\n我们进入一个市区共识的年代. 或者说, 旧的共识已经瓦解, 而新的共识未曾达成\n\n`最迷人的一定是当代史`\n\n<极端的年代: 1914-1991>: 任何一个当代人欲写作20世纪历史, 都与他处理历史上其他任何时期不同, 不为别的, 单单就因为我们身处其中\n\n---\n\n黑底白字白框的黑色车牌是一种特权的象征. 中外合资包括港澳企业有资格以免税的方式进口一辆轿车\n\n---\n\n`张五常调研用厂房租金和生产线工人工资. 李克强也用货运量等`\n\n---\n\n`危机就买资产?`\n\n08阿里内部信, 马云说未来几年很困难. 更长更寒冷. 港股阿里从40港币到最低5港币\n\n---\n\n08年, 雪灾 - 512地震 - 8.8奥运开幕\n\n---\n\n奥运会+世博会的国家崛起. 1964东京, 1988汉城首尔, 2008北京\n\n然后08年四万亿\n\n---\n\n`08年的胡润榜非常有意思, 黄光裕, 杜双华 (日照钢铁), 杨惠妍 (碧桂园), 彭小峰 (赛维), 刘永行 (东方希望, 农业), 荣智健 (中信), 张近东 (苏宁), 施正荣, 许荣茂, 张志祥`\n\n---\n\n`郭利真的让我触动`\n\n08年三聚氰胺, 9.9. 简光洲. 知道追查三鹿的人下场多惨吗\n\n---\n\nRonald Coase, 邀请一众经济学家研究改革开放三十年. 出版变革中国十个月后, 102岁的科斯去世\n\n---\n\n陈光标, 医疗器械发家. 去纽约发300美元红包给流浪汉, 学雷锋. 16年成立微商创富中心, \"我的平台很大, 跟着我做微商, 发财的机会更大\"\n\n---\n\nSNS (Facebook), 社会化媒体 (Twitter), 曹国伟总编辑陈彤走了媒体. 我们认识舆论领袖, 明星. 拉人开博\n\n`所以也管住媒体即可`\n\n中国媒体是政府, 青天的一部分\n\n`09-10 微博, 2011 微信, 可能永远影响了移动端产品命名`\n\n---\n\n`克鲁格曼, 53年出生, 预言了亚洲金融危机. 始终预言中国要崩, 最近仍然抛头露面, 基本已经服了`\n\n克鲁格曼并没有逃脱几乎所有新凯恩斯主义者掉进过的中国陷阱: 精确的诊断出中国的疾病, 但是常常给错药方, 或者作出与未来截然不同的预言\n\n中国民众的忍耐性, 以及集权制度的效率, 对于经典意义上的西方经济学家而言, 是一个无法定量计算的变数\n\n---\n\n08-09, Groupon, Airbnb, Uber\n\n---\n\n<2012>, 制造方舟的地方在中国\n\n---\n\n樊建川, 最年轻的常务副市长, 辞职下海做房地产. 1990s就有20多亿. 后来, 开始做抗战博物馆, 美援博物馆. 坐在地铁站地板上, 光脚.\n\n---\n\n10年, 13连跳\n\n---\n\n`呸吧`\n\n诺基亚埃洛普说, 我们没有做错什么, 但是还是失败了\n\n---\n\n陈欧是纽交所历史最年轻CEO, 31岁\n\n---\n\n`也许幕后有`\n\n陈晓, 在黄光裕入狱之后去黄化. \"收购永乐, 对称一样大小一样豪华的办公室, 同样迈巴赫, 专用车位, 多烧一份南方菜\". 最后陈晓走了, 称赞\"没有超出法治范畴\"\n\n---\n\nGDP超越日本. 1860, 开始改造, 1960, 似乎又是同一个起跑线, 2010, 错身\n\n2010年开始, 去哪里留学? 往哪里移民? 也分化成朝不保夕的小资产阶级工商业主, 和垄断资产阶级\n\n`四万亿后一年半, 通胀才来!`\n\n算你狠, 将你军\n\n房价在08-09是低点\n\n---\n\n`败犬远吠`\n\n任志强, 红二代房产商, 被扔破球鞋. 一直说房价太低还要涨\n\n被和小泉纯一郎, 陈水扁, 一起被选为天涯网友最欠扁榜\n\n日均五十条微博, 赶上Roblox聊天了!\n\n`毕竟自己人, 党员内部矛盾`\n\n央视每日质量报告说欠缴增值税 (和tm质量有什么关系!), 别人都沉默, 只有他说央视愚蠢无知, 要起诉\n\n`百无一用是书生`\n\n企业家比知识分子更能传播价值观\n\n---\n\n`另一篇说, 腾讯是金字塔形, 有流量才有一切, 所以没有微信非常慌. 阿里是环形, 组织能力强总有出头的, 阿里云蚂蚁菜鸟钉钉电商等等`\n\n10年8月小米成立, 12月就抄了一个米聊 (MIUI也在做). 被微信按下去了. 11年8月才发布小米一代. 也是战战兢兢打探, 以为腾讯没在做, 实际上广州QQ邮箱团队在做\n\n做硬件专注极致口碑快. 我们现在就没什么口碑\n\n---\n\n`现在国潮又起来了`\n\n李宁当年大量关店. 大量营销的晋江帮也不好过\n\n---\n\n`拼多多能起来, 从11年就埋下伏笔`\n\n11年十月围城, YY频道里涌入7万小商家\n\n当年双十一, 53亿, 是两年前100倍\n\n---\n\n大主题没几个, 媒体 (门户), 电商 (本地生活交易平台也在这里?), 社交, 其他的小赛道有游戏, AI, toB, 产业互联网\n\n百团大战教育了市场, 美团活得足够久\n\n---\n\n`新加坡courts什么的还有几年好日子可过`\n\n`啊! 我意识到, 确实不近距离在第一线, 也让我的嗅觉迟钝了. 如果我选择是回国或者立刻去美国读研, 也许会更好 (如果至少能申到Yale). 但是那个时候认知实在达不到`\n\nBestbuy11年就关店了\n\n宝洁CEO还认错\n\n---\n\n`但是不一定有效. 还是那句话, history doesn\'t repeat itself; but it rhymes`\n\n刘志军可惜. 推广要想富先修路经验给一带一路\n\n但是的爆款文章, \"高铁, 慢下来等一等你的人民, 等一等你的灵魂\" 云云\n\n---\n\n`实际上, 或许不差, 但也许也是落后要被淘汰的产能. 且, 没有调动起来`\n\n钢的琴也讲下岗, 且含情脉脉. 认为是很好的产业工人. \n\n---\n\n`买地了没!`\n\n凡客, 从西二环搬到了亦庄\n\n2014年第七次融资, 让老投资人卖老股退出了 (那还能叫融资吗? 不成了二级市场交易了)\n\n`爆款悖论, 因为认知不够, 后面组织力不够`\n\n很多段时间引爆的企业和品牌, 昂立一号, 爱多, 波导, 夏新, 秦池, 酒鬼\n\n---\n\n`不能敲碎吗?`\n\n`可能是因为, 以为车能过去, 后来车抛锚了. 水位上来门打不开了, 窗户也许能摇下来也许不能. 但是人出不去?`\n\n`看了, 是因为找不到车具体位置. 水已经进到车里. 人确实出不来`\n\n12年, 北京暴雨淹莲花桥. 北大研究生中产, 消防员都来了打不开玻璃, 淹死了\n\n\n　　丁志健妻子的姑父说：“我侄女接到丁志健的求救电话，当时就急着说‘越野车的后备箱不是连着的吗？你去拿锤子敲玻璃，或者是用千斤顶敲！可丁志健那时候已经没力气了。后来，我侄女也很快赶到了现场。没想到那个求救电话成了他们最后的通话。”\n\n　　据了解，丁志健刚学驾驶不久，平时难得开车，等于是新手，出事的北京现代越野车也是刚换的，估计他对车的性能各方面也不太熟悉。 周萌 马奔\n\n---\n\n造摩天大楼. 远大地产长沙天空城市, 之前一些楼用预制件拼效果确实不错. 但这个烂尾了\n\n---\n\n其他一些实业也似乎 \"拐点\" 了. 比如三一重工. 其实, 每年都有一些企业拐点, 向上或向下\n\n施正荣和尚德光伏, 无锡的面子工程, 施正荣是澳籍. 那个时候光伏比别的都容易拉钱, 特别是政府的钱\n\n施正荣还能唱锡剧\n\n中国既不是市场经济国家, 也不是发展中国家\n\n---\n\n`了不起的SOP和内控, 能让出厂采购价10美元到零售几百美元, 而工人/工厂偷不走`\n\n运动鞋 / 电子产品组装\n\n---\n\n`微信社交出发能吃掉电商 (吃一些), 吃掉媒体 (朋友圈公众号). 当然, 不是全部`\n\n---\n\n`哈哈, not quite! 还得说抖音吧. 想到潘乱, 头吹头子, 头条不一样主义者`\n\n今年两个出生于1983年的人做出了一生中最重要的产品. 张一鸣头条, 滴滴程维\n\n滴滴第一个版本8万块, 外包做的. 滴滴司机一开始跑数据流量费, 却没有单子, 骂公司是骗子. 只好补贴流量费\n\n---\n\n`到现在不得500万`\n\n胡润计算, 12年14万上海家庭资产达到1000万\n\n---\n\n`不对吧, 屌的粉丝屌丝吧`\n\n屌丝指的是生殖器附近的耻毛\n\n---\n\n`到今天可能口径又会不一样`\n\n褚时健, 被认为是贪污入狱, 全家亲戚都被收审, 女儿自杀, 儿子出国, 当时引起极大同情\n\n王石去看望, 发现70岁的褚时健和一个工人讨价还价, 工人开价80, 还价60\n\n什么时候能挂上果? 五六年后吧. 已经75岁了. 企业家胸怀\n\n本来生活卖褚橙. 人生总有起落, 精神终可传承. 哀牢山\n\n---\n\n沈南鹏投老乡鸡: 96年创办; 07年和SIG龚挺一起投; 10年上市, 中国餐饮第一家; 16年退市; 20年疫情, 拿了一笔救命钱\n\n沈南鹏撮合美团点评, 58赶集, 滴滴快的, 携程去哪儿\n\n# 2013\n\n湘鄂情, 湖北人和湖南人. 94年在深圳开小饭馆, 99年进京, 靠公款消费红红火火. 后面改名叫中科云网. 然后败走海外\n\n克强指数是发电量, 货运量, 贷款发放量\n\n中欧商学院许小年, 建议把几十万亿国有资产分给13亿群众\n\n千开放, 万开放, 不如让我办银行. 这时候温商, 苏宁, 网商, 微众\n\n`没有那么多发展了, 要算账了. 要均贫富了`\n\n发展为硬道理的共识已然破局\n\n---\n\n董明珠, 芜湖干部教育学院统计学. 儿子两岁丈夫病逝. 去珠海, 进入格力36岁. 带领的销售团队占总销售额六分之一. \"让我管经营, 我还要管财务\"\n\n---\n\n`查了查, 确实是粉红抬头的原因`\n\n李开复, 运营微博, 后来被人喷, 希望病魔早日战胜李开复老师. 第二大男性公众号, 次于陈坤. 还被说反共?\n\n---\n\n崔健蓝色骨头, 文革中的爱情\n\n---\n\n`马云难道不记得自己说不做游戏吗? 罗永浩难道不记得自己说低于2500, 我是你孙子吗? 不记得也会有人提醒. 形式比人强, 他们能咽下`\n\n罗永浩高二下学期退学, 在家三四年, 200斤. 行为艺术家.\n\n过去, 我要是在机场看到一个衣冠楚楚的家伙拿着一本杰克韦尔奇在封面上狞笑的<赢>, 就会觉得这个笨蛋没救了. 但现在我也会拿着这样的书硬着头皮看完\n\n# 2014\n\n绿城融创, 宋卫平和孙宏斌. 宋卫平是党校教书学历史的, 爱玩牌, 麻将, 围棋. 加杠杆. 没钱的时候, 融创出手援助. 当时哥俩好. 二人表现得如同连体兄弟, 几乎把江湖豪言一次性都讲完了\n\n后面, 宋卫平说孙宏斌搅乱了绿城高品质传统, 要赶走. 但是孙宏斌说无稽之谈, 半年还没盖房子, 都是你之前盖的\n\n但是因为江湖义气没有写违约责任. 宋卫平说不卖就不卖了\n\n---\n\n同时14年是A股大牛市开始, 在15年到达顶峰\n\n---\n\n经济新常态, 取消多地的GDP和招商引资考核\n\n---\n\n`让我想起有一年奥运有人去世了, 为了大局当时不说, 后面才透露给相关家属`\n\n08年的时候, 外国运动员来北京戴口罩被嘲笑. 后来大家都戴了\n\n---\n\n张瑞敏, 海尔三十年! 他也是三十五岁开始创业. 竟然走出了一条质量 - 扩品类 - 国际化 - 成为平台的路. 很不容易了\n\n张瑞敏管理学积累很深, 但他自己能说: \"很多经典理论已经过时\"\n\n`哦, 国家意志怎么没贯彻? 人民网上市已了`\n\n邓亚萍, 竟然做了个人民搜索, 即刻搜索, 黯然下台. 还很勤奋. 还搞了200个北京户口名额\n\n华润是周恩来创办于1938年, 在香港给中共做采买的. 多样化做得很好.\n\n`特权嘛有一些, 但人都觉得自己委屈`\n\n国企经营者也很委屈: 风险大, 钱少\n\n---\n\n滴滴快的在这一年打得不可开交, 15年2月合并\n\n---\n\n14年非洲成为仅次于亚洲的第二大移动通信市场, 传音展现统治地位\n\n---\n\n`It will come`\n\n经济学人鸽派不无亲近地说: \"中国影响力越来越大, 但是对世界是交易性的, 不是霸权性的\"\n\n# 2015\n\n这一年从上海灯光秀踩踏开始\n\n---\n\n`所以贾跃亭说得很有深度. 为梦想窒息. 窒息了更容易梦想`\n\n股市上主角是乐视, 暴风 (200名开外的互联网公司). 连续涨停39次, 公众理性窒息\n\n后面真的觉得是外国敌对势力, 真护盘\n\n徐翔被干了\n\n归罪于场外配资\n\n---\n\n险资开始各种买入, 宝万, 宝能姚振华要强行收购万科, 宝能从各处搞到一堆现金\n\n最后万科卖给深铁. 要增发股票, 现有股东可能不干\n\n不过公开市场竟然能买到这么多, 也有点问题. 就不能待价而沽, 让收购者多点代价吗? 就愿意卖? 明知有人愿意不惜代价收购?\n\n---\n\n`我看到财富一次又一次地集中`\n\nP2P也是这一年\n\n---\n\n`Oh shit! 听起来甚至不太高. 疯狂的时代`\n\n乐视是质押自己股票套现, 办一个公司, 上市公司增发股票来收购子公司, 市值上涨, 又能质押更多\n\n乐视最高的时候1500亿人民币估值\n\n---\n\n几家合并都是今年. 滴滴快的. 58赶集. 美团点评. 携程去哪儿. 盛大文学. 世纪佳缘百合网. 美丽说蘑菇街.\n\n---\n\n`马佳佳, 云南省高考\"语文状元\". 单科专业也值得拿出来说? 现在还在晃荡, 长相也和硬照上看起来很不一样了`\n\n# 2016\n\n此时Twitch已经是老一辈PC直播平台了. 14年就卖给Amazon了. 新一代来了\n\n共享单车, 一开始戴威是让同学捐出自己的自行车, 变成共享的, 别人的也能骑 (会员)\n\n`抢着投资. 我不明白的是, 如果大量VC都想投, 为什么不能竞标, 估值说话? (大疆)`\n\n---\n\nC2M开始有了\n\n---\n\n携程现在仍然是200亿美元公司\n\n---\n\n北京有94人超过10亿美元. 纽约86人, 实现了超越.\n\n---\n\n\"你说清楚谁是失败者. 我不是失败者, 我是厌倦, 我讨厌, 我讨厌他妈的纽约, 我讨厌他妈的美国, 我讨厌这儿的一切.\"\n\n其实, 当王起明讨厌着一切的时候, 他已经成为纽约的一部分. 就如同在今天的北京, 三环之内的居民, 绝大多数是近二十年间冲进来的新北京人. 他们讨厌北京的空气, 讨厌北京的交通, 讨厌北京的势利, 讨厌这儿的一切, 但是, 他们就是北京的一部分.\n\n---\n\n`莆田医院. 魏则西搜出来的是武警第二医院, 人民不敢说武警, 只好优先骂百度, 其次骂莆田`\n\n# 2017\n\n移动支付, 把全世界甩在身后了. 抢劫, 小偷, 都被淘汰了\n\n2.7亿欧元买70%国米, 7.4亿欧元买AC米兰. 不贵啊! 我们估值和AC米兰差不多\n\n王石67岁了, 70岁要再次攀顶珠峰\n\n`说: 现在市值靠前的科技公司都不是传统的公有制公司的感觉. 但是, 一定是这样吗? 铁路, 石油筚路蓝缕的黄金时代也是私企`\n\n`或许互联网公司攫取的流量注意力时长这些资源, 也类似于\"石油\"`\n\n`下一个是生物, 是脑科学吗?`\n\n袁隆平文革前就发明杂交水稻, 然后被批斗. 78年才开始推广.\n');
INSERT INTO `archive_remarks`
VALUES (10004,
        '\n`汗臭, 脚臭, 烟臭. 我是不行` 马云希望阿里巴巴变成技术驱动型公司。他好几次语重心长地对朱鸿说：“我们要有顶尖的技术。”2006年夏天，吴妈萌生了一个想法。既然阿里巴巴的口号是“让天下没有难做的生意”，那么就应该有一个广告平台，“让天下没有难做的广告”。当时他在北京整合雅虎中国的P2P（点对点）广告系统，萌生这个想法水到渠成。\n 2007年，盛大CFO张勇加盟了淘宝，花名逍遥子，很快他便参与了一件大事，“将阿里妈妈装回淘宝的子宫”。\n\n朱鸿读研的时候在, 后来读博去了. 朱鸿再次回到阿里巴巴的时候，阿里妈妈已经与淘宝合到了一起。他成为了淘宝的一员，在阿里的工号是24083。他记得还在华星的时候，有一次他问：“我怎么没工号？”人力那边说：“给你个100号，要不要？”他当时还在读书，就没有要阿里的工号。他去查过100号，好像没有人在使用。从他回到阿里的那天起，他开始被叫作“一粟”，沧海一粟的“一粟”。终点又回到了起点，他开始走进另外一个陌生。\n\n 湖畔花园, 淘宝, 阿里妈妈, 天猫, 菜鸟, 钉钉. 有个阿里软件的项目曾经在马云的“小黑屋”里关过，但它并没有获得想象中的成功。\n\n 其中有一位花名承志的设计师，创立了“蘑菇街”，他的真名叫陈琪。陈琪的故事是另一个故事的翻版。“大炮”方永新告诉我，在做B2B业务的时候，他手下的一个主管后来也去创业了。“他做了一个叫滴滴的项目，做得还不错。”“他叫程维吗？”我问。“是的。”\n\n无招是花名，他的真名叫陈航. “至少当时在阿里巴巴内部，他已经快成为‘臭名昭著’的人：一个从日本回来的职业经理人，做一淘没什么起色，做来往看起来也快要完蛋。阿里似乎给了他不少机会，遗憾的是，他没有抓住其中任何一个。” `然后钉钉`\n\n');
INSERT INTO `archive_remarks`
VALUES (10005,
        '\n干嘉伟、陆兆禧 十余年间，数千号年轻人将十数万不懂互联网的中小企业主手把手的拉到线上，成了中国制造业向海外输出产能这个历史浪潮中一个不大不小的注脚。当销售能力不遑多让的中企动力、环球资源等公司还未触及上限便销声匿迹的那几年，阿里旗下这个劳动密集型的“高科技”子公司赚来的利润正有力支撑着淘宝和支付宝的发展。中供成了阿里家族内当之无愧的老大哥。“We\'re family，我们是一个大家庭。”多位中供成员不无自豪的告诉《重读》记者，他们的部门年会叫“奶牛之夜”，他们的队呼是“Cash Flow”。事实上，创建淘宝和支付宝的人马，也是马云从中供系内筛选而来。后来没用了, 春晖事变淘宝的腐败更为严重但尚未遭到惩处的前提下，中供系遭到了“严厉”的处罚。2000年10月1-3日，这个创立刚超过一年半的公司花了三天时间讨论自己要走向何方。由于这个会议在阿里的历史中所起到的转折作用，它日后被称为“遵义会议”。会议的决定是开源节流。节流好理解，裁员撤站、全面收缩即可。问题是开源该怎么开？该公司此前挖来的洋人才和设立的海外办事处并无规模级产出，却增加了每个月100万美元的支出。显然，马云在年初融到的2500万美元支撑不了多久。而且资本市场现在冻彻心扉——纳斯达克指数持续暴跌，新浪、网易、搜狐跌破发行价，美国的.com公司正在成批倒闭。一大堆销售的东西, 这个月达到目标, 下个月加提成.精兵政策让销售员之间的生活、工作半径高度重叠。面对强敌，同甘共苦、齐心协力的男人之间，自然而然的衍生出了以互相照应为特征的兄弟之情。2001年前后，出单请吃饭的风气在开始金华流行。所费也不多，出单的销售员买个西瓜，或者弄一碗尖椒炒蛋分给大家即可。“白天跑客户大家分开，晚上其实很孤独。我们吃在一起，住在一起。你的短裤什么颜色，平时有哪些丑陋的习惯，我们都知道。”在俞朝翎看来，先成为朋友再当同事，这种团队的协作能力之强，与纯粹同事关系的团队相比完全是两个层次——后者完全没有进入过彼此的生活领域。“你突然问我一个什么问题，吃饭的时候我就可以给你解答，而不至于正儿八经的坐在会议桌旁边——那时候大家都没灵感。好的说辞、灵感都是在吃饭、喝酒、睡觉的过程当中才会迸发出来，不是开会开出来的。”可想而知，兄弟情只适合心性简单、直接的人，或者说他得长期表现出简单、直接的一面。“我们都是这么一帮人。如果来一个装的，肯定会被大家鄙视。你要么跟我们一起来，要么你自己觉得没意思就走了嘛。要么融入，要么走人。”干嘉伟告诉记者，去阿里巴巴工作后他的职场圈便在很大程度上替代了以前的朋友圈，“我的同事就是我的朋友。”当然，上演兄弟情的前提是，你的能力得达到及格线，否则只能被自然淘汰。“大家都不太愿意去帮助能力很差的那个人，是因为扶不起啊。你再帮他，最后你的时间也损失了。”前述19百大学员说。陈国环 赶集网、瓜子二手车担任COO 陈回道：“你老爸属于第一代老板，比较土。你老爸培养你懂英语，让你走出国门。野马电池应该出口，走出国门，这是你的使命。我今天把国际化已经带到你门口了，你仍然拒绝，你说你是继承、发扬还是毁掉野马电池？”陈国环向记者表示，他抓住了余姓总经理的痛点，“富二代都想超过老爸，但老爸打到这种程度，想超过他不太可能。（富二代）你走老爸没走过的路，国际化，现在叫差异化战略（还有可能）。”自然，中国制造业的出口离不开阿里巴巴。这是一个靠气场做销售的人。在一位宁波同事的眼里，陈国环的销售生涯充分利用了其法律经历，“他对社会看得比较明白。他又判过很多经济案件。辅导16字很快进入了百大作为新人培训的课程模块。日后在业内声誉卓著的阿里PPT海洋，那时还未见雏形。各大高手的方法论散落于百大和分公司电脑里。中供铁军对于方法论的系统性梳理，大约在2005年才开始启动。老销售传帮带: 我做你看，我说你听，你做我看，你说我听 黄榕光当官失败的故事成为阿里巴巴集团设立M、P两条干部升迁序列的导火索之一：可能他就是一个好销售员，为什么不尊重这一点呢？ 卫哲, 中供黑名单 很快，一个曾经甚嚣尘上的“阴谋论”色彩很浓的小道消息，借着“天时”在阿里巴巴B2B公司复活。它被不少中高层干部们认为，那更接近于卫哲离职的真相。在2007年10月，阿里巴巴B2B公司发布招股书从而公布了卫哲的期权数之后，据说包含个别十八罗汉在内的阿里巴巴集团决策层对马云施加了不小的压力，认为卫哲不值得这么多期权。马云顶住了，卫哲也顶住了。如今黑名单事发，至少包括十八罗汉在内的部分阿里巴巴集团决策层再次逼宫马云。虽然卫哲的巨额期权的行权期已到，逼走卫哲并不能降低他从阿里巴巴获得的利益，但起码碍眼的人走了。想在商业世界里追求“We are family”的情感联系是一件吃力不讨好的事，因为打造它极耗精气，建成后它却相对脆弱。中供系与阿里巴巴集团之间的情感联系便这么断了。俞朝翎觉得断了也应该能接上，但是没人去做衔接的动作。他们变了，公司也变了。这种变化极具现实意义。最后卫哲被干掉\n\n');
INSERT INTO `archive_remarks`
VALUES (10006,
        '\n就说刘炽平和高盛搭档, 在反思3Q大战之后, 只做流量+资本, 不自己开发了. 导致短视频什么的节节败退. James 高盛 不会说中文. 只能坐大众休闲因为推流量, 做不了垂直? 《恋与制作人》、《旅行青蛙》不知道腾讯是否还记得，上一家投资公司价值超过自身市值的著名互联网公司，还是投了阿里的雅虎。雅虎今天扣掉投资阿里那部分的投资收益，整个公司的自营业务是被市场当做负资产看待的。但这些年新增的拼用户理解的互联网机会，如头条快手拼多多，都来自下沉增量市场。他们用户既非传统意义上的小白，也不在乎「五环内人士」是否能够理解，这种对以用户和体验口碑理解的偏差，可能也是腾讯一个机会都没抓住的原因。 \n`好吧, 事后看, 方向判断有点扯, 但是, 也许正是这文的出炉让腾讯反思调整. 所以, 伟大在当下就是伟大`\n\n');
INSERT INTO `archive_remarks`
VALUES (10007,
        '\n鲍岳桥 联众 -> QQ游戏大厅 王兴 美团 -> QQ团购 蔡文胜 4399 美图 265.com被google收购 -> 3366小游戏 周鸿祎 -> qq医生 什么都做都抄的掠食者 抄王之王 怎么能骂人呢 -> 转向战略投资, 生态, 被腾讯投资舒服\n\n');
INSERT INTO `archive_remarks`
VALUES (10008,
        '\n常被提到的一篇, 下坡路刚走了30%. 公司一旦不好, 什么都不好, 处处都是筛子. 你看了失败的结果反推过程, 怎么说怎么有理. 当然: “没有一家公司是被舆论和公关危机打倒的，只有在战略、产品、公司文化等一系列环节中出现了系统性风险时，这家公司才会在一次又一次的问题中被击垮。”一位腾讯集团的高管对《财经》记者说。\n\n');
INSERT INTO `archive_remarks`
VALUES (10009,
        '\n百度高级副总裁、搜索公司总裁向海龙的离职 14年，在百度内部犹如“磐石”一样的人，去年底悄悄购买了行李箱，开始有计划地从北京办公室和居所往上海家中搬东西，到离职当天办公室已经收拾一空。一位近距离接触向海龙人士将此称为“蚂蚁搬家”。此前，向海龙一直在北京租房，2019年春节刚过，他没有对身边任何人说明缘由，把租住多年的房子退了，自己住进酒店。这一跌幅直逼去年5月明星经理人陆奇（原百度集团总裁、COO）辞职当日挥发的93亿美金 还有另外4位高管离开。《财经》独家获悉，就在近三个月，百度副总裁吴海峰、顾国栋、赵承，以及执行总监孙雯玉均辞职。其中，赵承和孙雯玉的Last Day在4月，吴海峰和顾国栋在5月，向海龙最迟，在6月。百度副总裁的职级为M4-A，执行总监为M4，后者被认为是“见习期的副总裁”。向海龙离职后，其“接班人”、高级副总裁沈抖未直接接手搜索公司销售体系。销售是向海龙传统强项，由顾国栋直接管理，二人辞任后还没找到新接替者。如今，百度采用了一个权宜之计——成立“销售管理委员会”来过渡，成员包括崔珊珊（人力资源副总裁）和沈抖。2017年。彼时，在百度12年之久的搜索公司HRBP（人力资源业务合作伙伴）负责人顾佩玲突然辞职赴美读书。HR是最能灵敏感知内部变化的部门，有两位接受《财经》采访的人士都把顾的离职看做是“地震”来临前先兆。对于百度来说，2017年是让外界看到希望的一年。“魏则西事件”曾在2016年将这家公司推上舆论风头浪尖，2017年初伴随“硅谷最有权势华人”陆奇的强势入驻和马东敏的回归，所有人认为百度迎来巨变。马东敏出任CEO特别助理，负责战投部。但后来，集团层面发生了一件事，一度引起员工们的警觉。\n\n');
INSERT INTO `archive_remarks`
VALUES (10010,
        '\n“关、停、并、转。”在2017年上半年一次百度公司的高层管理会议上，总裁兼首席运营官陆奇，对一项业务作出这样的安排。他针对的是百度贴吧，由前百度产品经理俞军及李明远打造，一度成为全球最大的中文社区，每天带来巨大流量，是百度PC时代赖以生存的根基之一，但也是一系列负面事件发酵的源头。出乎意料的是，宣布方案一周后，医疗事业部员工等来了一个毫无商量余地的解除劳动合同决定。有一个绩效两分（在百度体系内代表业绩优秀）的小孩，非常努力，已经找到了接收方，强行拉回来签字，红着眼过来找我我一点办法都没有. 对于拥有约四万名员工的百度而言，200多人的医疗事业部只是一个小团队，但调整总是先从细枝末节开始，这正是一系列变革发生的前奏。\n\n如同第一张倒下的多米诺骨牌，王劲并非唯一出局的百度高管。对百度糯米进行组织优化和管理架构调整，百度高级副总裁、百度搜索公司总裁向海龙将亲自兼任百度糯米总经理。百度首席科学家吴恩达（Andrew Ng）在英文自媒体平台Medium及微博、Twitter等个人社交平台发布公开信，宣布自己将从百度离职。为百度带来一系列变化的陆奇个头中等、身材精瘦，具有苦行僧般的精神。 一位微软中国员工告诉深网，在微软时期，陆奇身为集团高管，按道理出差可坐头等舱或商务舱，但他每次从美国来中国，都选择在经济舱度过十几小时的飞行时间。 被称为微软最有权势的华人，除了业绩出色，他还以近乎刻苦的工作态度闻名。 在百度履职半年后，公司上下已经充分领略到他的工作狂精神。 陆奇坚持每天六点上班，深夜离开百度大厦，由于回国没有居所，他目前仍下榻于北三环的某家酒店。有时为了讨论工作，业务部门同事在周末也会到酒店与其商谈。 他几乎将所有时间都贡献给了工作。加入百度前，关于他每天只睡四个钟头并坚持晨跑四英里的轶事已被传播。在加入百度第二天举行的媒体沟通会上，有人好奇向陆奇求证这一作息是否真实，他没有给出肯定或否定的答复，只是表示每个人要找到自己的最佳点，因为关键是“你要每天精力充沛，有长时间可以投入做你自己热爱的事情”。几年前《环球企业家》杂志曾报道：他是那种有工作洁癖的人，会前一直忙于修改幻灯片和演讲稿。但不久前陆奇却遭遇了一次PPT风波，在6月8日举行的爱奇艺世界大会上，`陆奇的演示文稿中有一页出现了三处文字错误，短时间内招徕外界对百度潮水般的嘲讽，有人揶揄百度的PPT是人工智能写的，同行王小川则在社交网络评论“百度这人工智能方向没毛病，就是语文不好”。`只有接触并了解李彦宏的人才能意识到，给予陆奇这么大施展空间并非易事。对李彦宏而言，这也是一个巨大转变。经历了百度从高峰到低谷的百度人付蔷对深网说，“一个人他如果跳的很欢，或者是自己很有想法、决断力的话，他在李彦宏下面是没法呆长时间的。你要不然就改变自己，要不然就提包走人。”\n\n');
INSERT INTO `archive_remarks`
VALUES (10011,
        '\n36kr的demo day是个好地方，做个路演，曝曝光，和各位投资人混个脸熟先。按照惯例，情绪比较激动的王强老师，如果看到你的项目可以change the world，基本就会像媒体说的那样，仅用一分钟，马上叫住你说：“我们马上投资你！”，路演还没结束，先把TS给你。顺带着，你还要拐一个36kr的市场总监做你的女朋友兼创业项目的CMO。2016年之前的创业嘛，什么火做什么，投资人听到什么能高潮做什么，不必想太多，toVC即可。社交火，你就做个社交工具，加点微创新。比如别人做的是“线下活动发起并参加”，你就做个“通过匹配用户时间日程安排，找到共同空余时间，发起活动并线下参与的新型社交网络”。项目是不会“倒”的，毕竟其他合伙人都是在校大学生，平日里大家也都是兼职搞搞。对外宣称自己创业没有失败，没毛病。啥，你说你不懂相关技术？没关系，语音识别你用科大讯飞的技术就行，他们提供的方案很完善，中英文混合识别也有相当高的正确率。面部识别，找几个Face++这样的服务商，技术集成一下也不难。包装好之后，项目介绍的ppt里说技术是你们自己研发，采用了XXX识别模型，攻克了N个世界难题就能唬住一堆媒体。基层技术选好了，做什么APP产品呢？我建议你最好做个能通过语音识别歌曲名字然后自动切换歌曲的，然后配上面部识别给自己颜值打分，主打女性市场。啥，版权问题？等百度收购了之后你还担心买不起版权么？死心眼，百度百科上可以写成美国杜克大学，再比如西安交大利物浦学院，百度百科上你一定要写英国利物浦，反正最后都可以和“阳澄湖大闸蟹”一样去阳澄湖里洗个澡，不会有太多人追究。\n\n');
INSERT INTO `archive_remarks`
VALUES (10012, '\n可悲可叹... 现在看百度的故事全是笑柄. 短短的十年前, 百度还是中国市值第一的互联网公司\n\n');
INSERT INTO `archive_remarks`
VALUES (10013,
        '\n朋友圈权限设置，朋友圈三天可见，清理不常联系的好友，这两年微信的种种举措都在说明，这个9亿日活产品的增长已经到达峰值，只能通过不断做减法优化留存促进活跃，来延长用户生命周期。搜一搜看一看业务浅尝辄止，打了一整年鸡血的小程序终于还是没成风口。微信在防守，微信在不断退化。顺着短视频、UGC、国际化三大战略一路高举高打。西瓜内涵火山抖音，今年全部迈过2000万日活门槛，国际化越挫越勇大举收购，明年要全力压微头条和悟空问答。这是当下BAT都不具备的战斗动员的能力和业绩。头条在进攻，头条在不断进化。`字节做死的产品还少吗` 微信看一看（当时还叫朋友圈热文）的KPI是年底到2000万DAU，但到今天，10%的目标都没完成。即，`在9亿日活的微信里，每天使用看一看的用户还不到200万。` 今日头条是迄今中国移动互联网最野蛮的公司：先靠机器学习技术搞定 “产品留存”，再搞定资本融很多钱，建立内容生态，最后靠 “强大变现能力” 做流量聚合，做大营收（坚决不要利润）“变现能力弱的” 和 “没有强社交保护的” 都会被今日头条在未来 5 年全部洗劫干净！变现能力 变现能力 变现能力 机器学习 机器学习 机器学习 重要的事情说三遍！　　--张栋 机器学习专家 业务头条最适合做大众的生意，在讲求效率的地方，算法把活干很漂亮， 然后不断复制八十分的东西就可以成功，而大部分短的碎片化的内容都符合这个特质。　　槽边往事博主和菜头写张小龙，　　“除了每周一次的网球，和每天深夜的音乐，张小龙没有什么别的嗜好。　　程序员时代的烟瘾一直保持了下来，他是广州深夜里最大的Kent消费者，沉默到像谜一样的男人，中国为数不多具有文艺气质的产品经理。　　他是那种因为喜欢《蓝莲花》歌词，就一定要问许巍买下版权， 挂在QQ邮箱入口的人。　　他也是那种喜欢同事小女儿涂鸦，就把一幅涂鸦画和《蓝莲花》一样挂在QQ邮箱入口的人。”这里订阅模式对用户要求太高，用户需要自己去想好“我喜欢什么，我订什么”。 能达到这两个条件的用户并不多。这也是为什么愤慨的Google Reader用户多是媒体从业人员。一款本该面对大众的产品却只能满足的是很小的一部分用户的需求，那就注定不会走得长远。　　什么样阅读器更智能更适合大众，我的回答是基于算法的个性化推荐。”微信是精神气质更像，头条是业务打法更像。微信更相信人的直觉，团队非常神秘非常封闭，就像凌晨几点一波产研在会议室里憋出个小程序一样，改来改去得张小龙出来解释才行。而头条是数据驱动的工程师文化，几乎只认数据，公司开会一直都是怼天怼地，张一鸣的话也可以被喷。一切事情都要找到最优解，用数字量化一切。　　在10月份GGV的大会上，李宏玮问张一鸣，如果去做新的创业会是什么？张一鸣说，现在没有确切的答案，但希望今日头条能够做到谷歌那样的平台。`“谷歌可以不设边界，我们希望头条可以这样。”` 美团不也是这样. 大鱼吃小鱼, 什么都做\n\n');
INSERT INTO `archive_remarks`
VALUES (10014,
        '\n2019年3月的一天，美国姑娘查莉发布了自己第一条TikTok视频。查莉生活在康涅狄格的Norwalk，一个人口不到9万的海滨小城。虽然账号只有几个朋友互粉，但并不妨碍她隔三差五发上一条跳舞视频，权当自娱自乐。三个月后的一天，在去练舞前，查莉跟着一个名叫@随着快乐舞动的账号翻跳了一段只有八个动作的舞步，然后发上了网。一年后的今日，查莉·迪阿米利奥（Charli D\'Amelio）是TikTok全球人气最高的用户，粉丝超过6000万，被《纽约时报》称为“TikTok女王”。短短一年时间，她从一个普普通通的小镇姑娘摇身一变为顶级网红，上了电视，演了超级碗广告，还成了Prada秀场的座上宾。要知道，查莉上个月才刚满16岁，还在上高二。今年3月疫情高峰时，美国俄亥俄州长联系上了查莉，希望借助她的号召力呼吁青少年避免外出。查莉录了一段“隔离舞”，号召粉丝宅家参加挑战。这段视频播放量最终超过1.9亿次，带动了300万个翻跳视频出现，她的粉丝又上涨了2000万。查莉视频都是在自家卧室和客厅录的，没有打光，也谈不上装扮，大部分舞步看上去都很简单，带着青春期少女刚长个时的笨拙。但正是这种简单随性的风格，让粉丝找到了亲切感，视频播放量动辄几千万。在她本人带动下，查莉一家四口都成了TikTok网红TikTok上头号印度红人Riyaz Aly，招牌是神曲对嘴和言情小剧场。他去年才从中学毕业，开通TikTok账号不到两年就积累了4000万粉丝，各类商业代言接踵而来。已经被好莱坞经纪公司签下的Addison Rae走的是加州女孩人设，开通TikTok至今才10个月，粉丝已超过了4300万。全球前二十大TikTok用户中，三分之二的年纪还不到20岁。去年还是第一的“网红芭比”Loren Gray今年才18，粉丝第四的Addison Rae今年刚满20，排到第六的Riyaz Aly今年才16。而查莉姐妹俩，一个16，一个18。TikTok目前海外用户最多的市场是印度，但进一步加码美国市场是显而易见的选择。`“美国青少年是最有价值的用户（golden audience）。”Alex Zhu在采访中表示，“中国其实没有青少年文化，这个年纪的人都在学校忙着考试，根本没有时间玩社交媒体。”`这一幕国内几年前就演过了：2018年底抖音用户影院爆哭的视频推动了《前任3》票房大卖，此后各大影视公司纷纷入驻抖音，抖音营销成为影视宣传的标配。有广告主就向AdWeek抱怨，因为大量成年用户进入，最近TikTok广告投放的精准度下降了。甚至有人担心，如果成年人变成用户主力，很快Z世代就会因为TikTok不够酷而选择出走。粉丝六千万的“TikTok女王”其实也不理解。查莉在她TikTok账号简介里留了一句话，像是在回应所有人的质疑：别想了，我也不明白为什么火（don\'t worry, I don\'t get the hype either）。`之前还版权纠纷, 现在全好了`\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10015,
        '\n受益于微信流量的拼多多订单量超过京东；在阿里交易额达万亿5年之后，“微信生态电商GMV过万亿”的传言在业内流传。这可能是迄今为止腾讯给阿里最重的一拳。首先，拼多多的价格一定要比淘宝低，甚至比阿里巴巴低，还包邮，这是原则。“每个商家上来，先亏上3-5万的货值，比如成本9块的，拼多多要求卖6块，来帮助平台拉流量”，陆成说，这是免广告费、免佣金的代价。卖家运营淘宝、天猫店的各类费用已经占到了商品价格的3成左右，成本占比已经相当高。行业流传的一个说法是，只有20%的卖家是可以赚钱的，另外80%都是“陪跑”。“所以这个时候出现一个新平台，卖家肯定是愿意尝试的。”陆成说。虽然，阿里和腾讯一直在“流量”这个事情上进行暗战，甚至2013年曾激烈到互相屏蔽，但在2015年6月淘宝发布淘口令后，两者进入了一个表面沉默、但心知肚明的状态，淘宝依然是微信流量的受益者。此前有媒体报道，2016年淘宝卖家通过微信导流，为阿里贡献了约2000亿的GMV。上述前阿里高管表示，微信的确是淘宝的第一大外部流量来源。12月27日，阿里公布了天猫和淘宝的新总裁人选，其中淘宝总裁蒋凡与黄峥同为80后，也同是Google中国时期的同事。`“2C 领域的公司可以看成一个广义上的广告公司，长期来看大的互联网平台都会越来越像，包括阿里和腾讯”，泰合资本创始合伙人胡文钦说，一个突出的逻辑是，流量拿在手里一定要“榨干”，而变现形态最优的是游戏，其次是广告，然后就是电商。`“就这么说吧，如果你的流量是需要成本的，这条路已经死掉了，没有哪一家可以做到过百亿，没有哪条路是没有被人试过的，都试过了。如果不是微信保护，拼多多怎么可能长到这么大？”李潇说。导航网站、搜索、关键词、AppStore优化的价格都已经被炒到高位，一些新的流量来源，比如视频里面的优酷，社交里面的微博，也都相继被阿里入股、收购。唯有腾讯的流量，阿里买不了。`环球捕手, 卖给代理300红包, 但是限制使用? 于是就能卖出货?...` 2.“环球捕手有一个粉丝锁定制度，这也是躺赢的关键，在你的直属会员成为优秀服务商之前，你就可以获得他的利润分成。”\n\n');
INSERT INTO `archive_remarks`
VALUES (10016, '\n`base合肥, 拿了高瓴晨兴1亿美元融资. 资金链断裂几天, 现在从合肥开始恢复100个店`\n\n');
INSERT INTO `archive_remarks`
VALUES (10017,
        '\n第二天中午，周鸿祎来到一层，掏出手机，对着抽烟员工的工牌挨个“咔擦”拍照，然后把拍下的照片发到公司工作交流的聊天群里，让各个部门对号进行罚款。第三天中午，再也没有360员工在大厦一层抽烟了。周鸿祎就是这样一个雷厉风行的性情中人，在360整个发展历程中，从安全业务起家，到浏览器、搜索、移动分发渠道、游戏、手机硬件、直播，每当他决定要做一项新业务，便会亲自去扫除各种阻力和障碍，坚决向下推进执行。不过，由于太专注于细节，公司重心摇摆不定，在不少360内部人士看来，周鸿祎并不懂战略。在移动互联网和设备兴起的黄金时期，公司2011年在筹备赴美上市，2012年和2013年在发力搜索，2014年和2015年突然发力要做手机，2016年则专注直播。这是周鸿祎的性格使然。他拥有一个很大的优点，同时也是弱点，就是善于变阵。“当他踢到一块铁板就会想，是不是自己错了，于是就采取新的迂回战术。其实有时再狠踢两脚再坚持一下没准就过去了，但他总是想，敌人很厉害，正面进攻不行就迂回打击，缺乏对一件事持久的耐心。”一位熟悉周鸿祎的360人士如此评价。除了错过91助手和搜狗，360还在投资方面错过了不少公司：尽管360错过了移动互联网多个投资机会，但今年周鸿祎最为倚重的花椒直播，就是来源于投资并购，花椒直播也可能成为周鸿祎在移动领域最大倚仗。实际上，周鸿祎今年对直播的重视已经到了无以复加的地步。一位360内部员工说，2016年上半年，周鸿祎不管去到什么场合都会拿起手机直播，有一次他与滴滴创始人程维同行游玩看到一对青蛙正在交配，他也拿出手机进行直播并与程维讨论，令网友大跌眼镜。根据易观最新报告显示，花椒直播在2016年7月中国移动直播平台用户活跃度排名中位列第三，仅次于映客和YY。对于花椒直播而言，仍然还有弯道超车的机会。`啧啧, 也是个所谓性情中人, 喜欢军训, 喜欢开会摔笔骂人的` \n\n');
INSERT INTO `archive_remarks`
VALUES (10018,
        '\n`广告 - 游戏 - 云音乐, 有道网课` 以优秀老师打造的王牌课程，1亿个学生看与100万个学生看相比，成本不变，利润提高一两个数量级。这点与游戏完全一样。二是受众更广、用户支付意愿、平均支付金额更高。中国人最重视教育，为教育花多少钱都心安理得。2020年Q1，有道的每位付费学员支付了1691元，而在2019年Q1这个数字是627元，一年的增幅达158%。\n\n');
INSERT INTO `archive_remarks`
VALUES (10019,
        '\n`联动10454`\n\n你做得越多，你的敌人就越多。在中国互联网中，美团是一家特殊的公司。大量公司是从垂直领域开始成长，然后不断延展，所以他们难免由行业思维出发，更多去思考终局和边界。而美团点评是用商业流转中的一个环节来作为自己的内核——这个内核从商业上看，是交易；从客户看，是服务。它的业务是横向的，所以王兴的思考和多数CEO不太一样，他更多通用的、跨界的思考。比如他对业务和竞争的看法，他认为不要期望一家独大，也不要期望结束战争，所有人都要接受竞合才是新常态，同时，他认为太多思考边界和终局是错误的，“哪有什么真正的终局？”他说。《财经》：在你眼里什么是敌人？什么是朋友？王兴：我不太喜欢敌人这个说法，我更愿意说是——同行公司。朋友是能与我们合作的公司。《财经》：多数优秀公司都是以客户为中心，但他们往往在一条主跑道上，或者两条。王兴：当然不是。亚马逊一度做手机，他们还做过搜索、Prime，他们还被认为是Netflix最强的竞争对手。他们也是一个很全面的竞争。 原来两家A、T打得不共戴天，后面握手言和，都成为滴滴的股东。所以我跟阿里说美团非常希望可以同时得到腾讯和阿里的支持，但他们说：“你完全搞错了，我们认为滴滴合并快的对阿里来说是一个失败的例子，我们不会让这种错误再次发生。” 《财经》：与阿里巴巴糟糕的关系，会给美团带来什么影响？王兴：会面临更大的竞争压力。比如外卖，阿里为了给我们制造麻烦，不惜代价扶持饿了么，他们一年花了十亿美元。但归根到底最后还是看谁能给消费者提供更好的服务，否则即使你烧十亿美元，市场份额依然在下降。 王兴：所有比方都是有局限的。我会把美团点评比作中国，阿里和腾讯都喜欢自比美国，我觉得腾讯更像美国一点，而过去几十年中国在美苏两个超级霸主中间的关系，有点像今天美团点评在腾讯、阿里之间。 《财经》：你认为多元化和专注是什么关系？王兴：我花了很多时间在思考这个问题。在科技变革的前半段，因为风险非常大，所以需要用小团队去探索。但到了后半段，红利变小，整合成为了释放红利的方式。这时候多业务的公司会比单一业务公司更有优势。 《财经》：美团点评有外卖、酒旅、打车、餐饮、电影票等各种业务，为什么同时做这么多业务，而不是把一个业务打深、打透？王兴：举个例子，2003、2004年淘宝最重要的决定是做了一个什么都卖的大平台，而不是专注做一个女装品类或家电品类。如果美团只专注做电影票的话，是不可能赢的。 《财经》：多业务的扩张方式是否会带来不安全感？王兴：不断成长才能获取安全感。 美团有机会成为A、T一个量级的公司因为我们创造的价值足够多，餐饮、旅游、到店综合品类每个领域都可以值几百亿美元。但需要的时间不短，至少五到十年吧。《财经》：美团在商业上的核心价值是什么？王兴：核心价值就是我们公司的使命「We  help people eat  better，live  better」，我们让大家吃得更好，活得更好。大家总是习惯用工具、入口、平台等概念来衡量公司的价值，这其实是语言对人的禁锢。一个公司的价值归根到底取决于你服务多少人，你给这些人创造了多大的价值。其它都是虚的。 《财经》：有人评论美团在千团大战、以及最早进入酒旅时，都是别人在打仗在烧钱的时候美团在等待，美团是靠等待成功的。\n\n王兴：`一位参加过对越自卫反击战的投资人跟我说，多数人对战争的理解是错的，战争不是由拼搏和牺牲组成的，而是由忍耐和煎熬组成的。《孙子兵法》说过“不可胜在己，可胜在敌”`，确实团购的事情不是我们打赢的，不是我们打倒了对手，是他们自己绊倒的。 `你做得足够好，使自己立于不败之地，但这不代表你能胜，只有当你的对手做了愚蠢的事情，你才能胜。 `\n\n');
INSERT INTO `archive_remarks`
VALUES (10020,
        '\n第一，我觉得非常重要的是，你们别太不把自己当回事。这一点我觉得对清华的同学是尤其尤其重要的，可能大家之前会面临很多忐忑，但是别忘了，在你们入学之前，我相信在你们的小学中学，尤其是高中的时候你们一定是全国各地的佼佼者，是学霸，是各方面优秀的人。所以04年我们创业的时候就是现学，之前什么也不会，技术不会，管理更加不会，按照我一个长辈的说法，你们不但没有管过人，还没有被人管过，校园营销也不会做，但是我们就一步步的摸爬滚打，有什么不会我们就去学。包括2010年我们做美团之后，因为是一个O2O的事情，线上线下结合，不光是要编程序光是要做网站，而且要到线上跟全国各地众多的商户去谈，这个事情我们也没有做过。在那之前我做过最大的推广是校园推广，最早在清华，98年创业大赛的时候，满学校贴海报，你们如果办活动会知道满校贴海报，这也是我们校园推广的起点。后面到了05年、06年做校内网，我们在全国各地校园贴海报，这是当时最早的O2O，所以到10年我们向全国100个、200个城市扩张的时候，虽然我们之前不会，但我们就学。学习分几种，一种叫往前学，向长辈学习，一种是平行学，你要跟同辈人学习，但有可能我们即将进入一个社会，你要向下学，向跟年轻人的学习，因为你过去的很多经验会迅速过期。`我们现在在做的事和美团这个量级, 是有差距!`\n\n');
INSERT INTO `archive_remarks`
VALUES (10021,
        '\n正在变得“刷呀刷不完”的短视频，看起来是那么充满活力，它是图文内容的升级，是平台手中新的流量工具，也是一大批内容创业者热情追逐的新风口。但是追本溯源，围绕短视频所展开的各种生存故事和圈地战争，剧情依旧老套—它无非是用一种看起来最不消耗精力的方式，继续争夺用户在手机上的注意力。\n\n');
INSERT INTO `archive_remarks`
VALUES (10022,
        '\n2016直播风口 我不骂你天佑和你佑家军，咱俩直接干一下子。谁也别让大哥充一分钱，不然死全家。88条项链（价值约人民币十万元），老六连刷两组。“我先刷二十万，天佑你只要跟了，二百万随时候着。啥也不图，就为给大哥出口气。” 事件的导火索是争抢“每周之星”曾经，他在网吧收银谋生，却因私挪款项被老板劝退 分成50%, 数千万神豪 (官方托?) 曾经，他在网吧收银谋生，却因私挪款项被老板劝退 “县城 DJ 音乐+拖拉机节奏+大嗓门+东北腔” “除了当主播，有任何合法的路子能让我赚现在这些钱吗？根本不可能。”天佑在 YY 上的死党刘一手告诉我。和天佑类似，他也初中未毕业就在社会上混迹。“我原先就四个字：一无是处。就一最底层的盲流子。”而今年初，26岁的他离开家乡佳木斯，在省会哈尔滨买下近两百平的豪宅，开上了奥迪 A6。聊聊上鱼龙混杂，不乏坑蒙拐骗之徒。有人让他银行转账缴纳学费，随后便没了踪影。有人教他冬天时把嘴贴玻璃上，先冻硬再变软，喊麦就能更流畅。然而嘴唇粘在玻璃上取不下来，只好用热水浇，烫得满嘴起泡????YY 直播初创时，主播们依赖游客一次一两元的礼物勉力谋生。2012年4月，天赐突然现身，一个月之内狂刷1000多万元。他曾是网游世界里最著名的“人民币玩家”，率领皇族公会在《征途2》首度统一十国，投入过千万。像一只鲶鱼闯入了沙丁鱼箱，天赐激活了 YY，将消费水准直接拉升了几个量级。主播收入大增、游客数量飞涨，大批网游界的“土豪”也蜂拥而至：被主播与游客轮番“跪舔”的美妙滋味，比游戏中的成就感要强烈得多。 网络上盛传皇族的老板是福建世纪金源集团（胡润前50）董事长黄如论之子黄涛，曾经在征途2中创建皇族公会，斥资1000多W，最后一统十国。其个人帐号有人出420w。不卖。世纪金源投资集团有限公司是著名实业家、旅菲爱国华侨黄如论\n\n');
INSERT INTO `archive_remarks`
VALUES (10023, '\n无人喝彩, 他为自己按响了屏幕上的\"欢呼\"键. 你们谁最好看? 可以把她介绍给我吗? 他把人物所有记者微博关注了一个遍. 那你怎么样?\n\n');
INSERT INTO `archive_remarks`
VALUES (10024,
        '\n李一男, 华为, 百度, 12580. 牛电科技, 胡依林四处找人. 最后一次创业. 带走调查, 离职管理层. 他25岁就坐上了常务副总裁的交椅。其中的含义，没有对比就没有伤害，为华为工作了超过25年的余承东至今也才刚挤进常委席位半年。华科少年班, 张小龙, ppio一帮人. 港湾, 被打, 被收购回去, 百度CTO. 15年牛电, 然后进去两年. 刘江峰, 彭锦洲, 两个手下做了汪峰的耳机FIIL和多点+物美\n\n');
INSERT INTO `archive_remarks`
VALUES (10025,
        '\n他曾数次无比接近山巅，试图完成行业的整合，成为最大的玩家，但似乎总是差了那么一点点，不得不接受棋差一着的命运，最终怅望山顶——这样遗憾的剧情，可能是商业社会里最真实、最无法回避的一种残酷。当年在北大读书时，李斌喜欢玩一款叫《三国志》的游戏，选择武将时，有人选择曹操，有人选择刘备，他喜欢选一些名不见经传的，比如马超的父亲马腾——在接受《人物》采访时，这个名字他回忆了很久，最终也没想起来。但他对这种习惯记得很清楚：把自己放在一无所有的位置，专门挑一个很惨的武将，带着几个兵，老少边穷，从西凉开始打，看用多长时间能统一中国。‘我觉得这个好玩，这个难啊。’ 易车(易鑫), 蔚来\n\n');
INSERT INTO `archive_remarks`
VALUES (10026, '\n出租车司机转专车司机. 看到规律和相似性了: 外卖, 快递, 专车, 一群群相似的人\n\n');
INSERT INTO `archive_remarks`
VALUES (10027,
        '\n骑手一般都有两台手机，无限流量，一台用来接单，一台用来打游戏、刷剧。骑手最爱玩的游戏是《王者荣耀》和《和平精英》。为了迎合他们的爱好，平台们不约而同把骑手等级设计成游戏世界的样子，等级分成——普通、青铜、白银、黄金、钻石、星耀。酷似山大王的站长、维护秩序的稽查员 王军和他老婆都是众包骑手，他们神色腼腆而有些紧张。王军中途去专送试了试，受不了团队刻板的管理又折回来——做众包最大的好处是自由。本来做房屋中介的老婆，懒得动脑筋和处理人际关系，也选择了这份贩卖体力但简单开心的工作。\n\n');
INSERT INTO `archive_remarks`
VALUES (10028,
        '\n一堆VC投资人和产业资本勾兑 “你真的很难知道你什么时候是幸运的，什么时候是聪明的。”一位ofo的投资人说，“浮躁的行业做着很浮躁的事情，只是后来做对了，就拼命找理由去解释。”没错，这是一套已经被证明行之有效的造星路径，但它不可能永远成功。因为在这个瞬息万变的复杂游戏中，除了钱，没有什么可以复制。\n\n');
INSERT INTO `archive_remarks`
VALUES (10029,
        '\n此前，王晓峰曾供职于一系列行业冠军企业，`宝洁、谷歌中国、科蒂（全球最大的香水制造商）、Uber以及腾讯` 有意义又足够疯狂，还是“前无古人”的创业，一下击中对创业跃跃欲试的王晓峰，“最关键是，摩拜这个项目很刺激，特别有挑战性。它不是从硅谷抄来的，它就源自中国，很可能会从中国走出去。这点就足够让我们很自豪。”他说。 `40岁` 彼时来势汹汹的Uber正投入20亿美元准备与滴滴展开正面拼杀，鹿死谁手还不知道，更何况Uber一旦上市，身居高位的他自然期权和分红不少，此时撂担子走人，无异于放弃到嘴边的鸭子。`坐客第一财经《波士堂》时，他曾自曝自己在摩拜的月薪仅仅只有6000块。很难想象，向来身居高位的人，竟然有勇气放下身段All in一场命运未卜的旅程，从零开始。`\n\n');
INSERT INTO `archive_remarks`
VALUES (10030,
        '\n一位乐视的副总裁告诉《财经》记者，以前公司内部总是担心突然再出来一个第八生态，直到近期贾跃亭明确在内部表示，乐视生态的布局就到金融为止。““他定好战略，只要不是特殊情况发生不可抗力，这个战略就一定会执行下去。”刘弘说。另一位与贾相识人士则向《财经》记者评论说，“在他身上，你很难区分战略和幻想。”一个不受限制的梦想家是否比一个骗子更危险？\n\n');
INSERT INTO `archive_remarks`
VALUES (10031,
        '\n盼达用车CEO高钰认为，分时租赁的未来是“场景驱动服务找人”。当无人车可以自动驾驶找到用户的时候，运营的瓶颈就被彻底击穿了。共享汽车像人们的私家车一样，方便出行，这是一个美好的愿望。在谭奕看来，理想最终可能发现是“倒着实现的”。在模式跑通之前，基础性的工作还需要做，数据也没到变现的时候。“这是最黑暗的时候，你必须得跑出去，先活过这段时间。”谭奕说。“尝试一下总是可以的。充电宝大家还尝试呢，你不能不让大家尝试。但至少今天，这个商业模型，我觉得还没有得到验证。”刘二海说。\n\n');
INSERT INTO `archive_remarks`
VALUES (10032, '\n几千万的大单子, 但我还有梦快给我10万男，怀疑创意被盗精神崩溃男，Word乱七八糟天天堵投资人中专男\n\n');
INSERT INTO `archive_remarks`
VALUES (10033,
        '\n印象比较深, 合并往往是打出个胜负之后的结果，哪有过成立3个月就合并的。但楼军却很心急，“现在就得合，这个市场瞬息万变。” 合了，就是头部公司，就能拿到更多钱，能更强悍地打仗，不合，就要在激烈的竞争中各自为战。整个IDG团队9月在法国一周的团建。可面对一直期待的团建假期，楼军此刻却提不起什么兴致。随着安检长队的缓慢挪动，他焦虑极了。就在准备出关的最后时刻，他一跺脚决定——不去了。一旁的IDG合伙人周全有些意外，半开玩笑嚷嚷说，“不去的话要罚款50万。” 但楼军还是决定不度假了，50万的账先记上，“我真有一件大事要办。”第二天一大早，楼军就飞去了成都，在高端酒店瑞吉订了一间“特好的、特贵的、平常自己舍不得住”的大套房，水果都准备好摆在房间里。如此大费周章的布置、邀请，是要撮合两家才成立不久的无人货架公司合并。在移动互联红利消退、缺乏投资方向的今天，一个稍显性感的方向，就能引得全投资行业、批量创业者闻风而动。据36氪不完全统计，这条赛道在半年内涌入了超过50家创业公司，接近50亿人民币的风险投资。论规模和速度，已经超越了当年的共享单车。“大钱”都挑选好了赛道里的“明星阵营”。头部资本和头部团队迅速聚集抱团，而草根创业者随之被快速边缘化。超乎所有以往经验的市场变化速度，楼军也敏锐地察觉到了。他本来计划从法国回来后再推进合并，但越想越不对，“一个礼拜的时间什么事情都有可能发生，我不能等。” 在中国互联网的发展史上，从来没有过一个所有人都如此急不可耐的风口。然而，这场狂欢的时间却也前所未有的短。2018年1月开始，风云突变，猩便利紧急战略性收紧、领蛙被便利蜂收购、七只考拉裁员九成的消息就一个接一个曝了出来。狂飙了半年的无人货架行业突然之间就进入到了中小玩家寻找买家、大面积裁员的阶段。这令人始料未及。半年内，行业的马太效应已经出现，未来的寡头也依稀可见，中小玩家可能再无机会。这是个例，还是会成为未来的常态？这对未来的创业者、投资人，以及中国的创业生态，又意味着什么？总之，在投资的套路和公司竞争的套路下，无人货架200天就已经走完了一轮循环。讽刺的是，在忽然热得发烫之前，无人货架原本冷冷清清。在办公室摆上一个简易的货架或冰柜，放上零食、饮料，扫码付款即可购买。这个最早出现于2015年的商业模式，看起来简单到无需过多解释，原本籍籍无名、无人问津，甚至在一些投资人的眼中“有点low”，`“偷盗、补货难、门槛低，大家当笑话看的。”`资本则快速编织出了一张错综复杂的关系网，将当年团购、O2O大战中一批身经百战的老将网罗在一起，重新组合。而他们聚在一起，成了搅动风口的人。就在2017年6月，一家起步较早却一直融不到钱的无人货架公司，突然变得非常抢手。创始人告诉36氪：“以前去找投资人他们都不见，现在成了投资人排队来见我，简直受宠若惊。” 整个6月，他接触了超过60家找上门来的投资机构，“除了红杉、IDG，其他的一线二线机构基本都找来了。”所以，这次谈判让楼军焦虑了很久。“我在瑞吉酒店订了2天的房，我想这肯定是场持久战。” 但万万没想到，留下两人在房间独自沟通，楼军不过是在楼下行政酒廊喝了一杯、两个钟头的功夫，就被叫回房间了。俩人聊的投缘，合并过程出乎意料的顺利。两个小时的时间里，阎利珉和殷志华已经做好了合并的决定——他们自己也觉得双方在基因上很互补，殷志华擅长地面作战，阎利珉的长项是线上运营。并且，在最重要的两件事情上——确认老大，确认股权比例——两人没有任何分歧：阎利珉出任公司CEO，股权比例上参考融资估值，没有纠结。并且，跟当年的滴滴快的和摩拜ofo资本战一样，整个创投圈被迅速的分裂成几大派系：IDG、蓝驰、祥峰、湖畔山南、峰瑞和一众“阿里系”的天使投资人在一边；红杉、光速中国、华兴资本和一众“美团系”投资人在另一边；还有一派则是由腾讯和鼎晖牵头的近十家PE和VC机构队伍。资本在背后做局，公司则冲在前面打仗。拿到了足够的钱，账上躺着几亿人民币的公司都开始了疯狂扩张：快速招人，先把点位铺起来。更可怕的是，这一回上场的都是老手。去哪儿创始人庄辰超创办的便利蜂，在宣布进入无人货架后的第二个月就开始了大规模挖角`又来咯, 团购, O2O, 外卖, 酒旅, 共享经济, 无处不在的地推铁军大队` “对于打过大仗的O2O老将来说，一个月招上千个BD不难。” 一位业内人士告诉36氪，“只要一个城市经理到位，他一个星期就能组一个10人左右的BD团队，然后就可以出去扫楼了。”从整个行业情况来看，头部玩家均从一二线城市开始着手布局，目前点位布局数约在一万个到五万个之间。而原本能够跟企业签兜底合同的公司，现在傻眼了。“融了大钱的公司为了扩张点位不在乎亏钱，他们直接跟企业说，不用签兜底，员工白吃白拿算他们头上。” 上述创始人难掩气恼，“就是他们坏了规矩。” 有补货人员从补货箱里直接拿走商品，然后记为货损算在用户头上。可不少公司却默许这些行为，为了融资，他们需要先把点位数和订单量冲上去，一时半会做不了精细化管理。打过大仗的资本也确实不在乎眼前的亏损。曾经投资快的的楼军说：“至少现在还有收入。当年快的连收入都没有，直到上了专车服务才有了收入，那个时候都扛过来了，现在算啥？”\n\n');
INSERT INTO `archive_remarks`
VALUES (10034,
        '\n所以，对于以价格为壁垒的奢侈品，自救方式是不断涨价，而非降价促销。降价，只会让奢侈品变成快时尚；涨价，才是奢侈品保持高贵的唯一出路。LV前CEO Vincent Bastien在《奢侈品管理》中下的定义进一步做了解释，“奢侈品是一种挣得的物品。得到的阻力越大（不管是有形的还是无形的），人们想要得到的欲望就越强”。\n\n');
INSERT INTO `archive_remarks`
VALUES (10035,
        '\n`2014年, 罗敏和肖文杰, 江西老乡反目, 都做分期. 趣店趣分期, 分期乐. 最后都上市了` 唐宁最早在2006年创办了专注做早期投资的华创资本，当时IDG资本每年也就投资七八家企业而已，华创的投资数量更是少到四五家，所以唐宁想把投后服务做得更深。华创当时投资了一家主要做大学生就业前职业培训的公司——达内，可以说是这家公司在某种程度上促成了宜信的诞生 - 没钱培训, 分期呀. 顾少丰拍拍贷. 除了员工和外界质疑，就连顾少丰以前在微软的老同事、光速中国创始合伙人韩彦看了也觉得非常不靠谱。“第一，当时没有人在网上借贷款，而且借非常小额的钱，借给了谁你无法感知；第二，顾少丰的形象就是纯IT男，去搞纯金融的事，根本就无法想象；第三，当时没有人做这个行业，很孤独，没有任何的标准和参照。”当晚，在场的人讨论了对未来趋势的看法，有哪些好的创业机会，二人都谈到金融搜索平台拥有巨大的机会，庄辰超却透露，他实际上已经在行动了，但是很难找到一个既有金融背景又有互联网背景的复合人才出任CEO。 最后，他们不得不寻找在海外有相关工作经验的人，庄辰超和宓群共同认识的叶大清成了最佳人选，他曾在美国投资银行Capital one、金融机构美国运通工作过，也在互联网公司AOL美国在线以及美国最大在线支付公司Paypal工作过。 不久后，曾在银行担任过高管的陆佳彦和曾在酷讯与张一鸣一起做技术工程师的刘曹峰也加入了进来。他们三人做的这家公司叫融360，最早在清华南门附近的小区华清嘉园办公，当时租了一个二居室，叶大清和陆佳彦很少走出小区，这里白天做办公室，晚上又做宿舍。而根据投资人周亚辉的描述，分期乐则在2015年将趣分期的商标抢注了，罗敏到2016年才发现，最终不得不在2016年下半年开发布会宣布改名“趣店”。 当2015年8月拿到蚂蚁金服投资，双方大战正酣的时候，趣分期准备拆除VIE，然后回归A股曲线上市，连壳公司都找好了，罗敏计划将趣分期装入A股公司达意隆。“Mindy（粘旻环英文名）最早并没有想回国，但是当时那个猎头说了好几次，觉得对方挺诚心的，所以她就简单拟了一份简历，我记得还是纯英文版的，都没有中文，可见的确没怎么上心，只想着应付一下让他们随便看看。不过，当时趣店一位高管看了说非Mindy不可，然后双方就见面聊了一下。最后来来回回两三个月，终于说服Mindy从美国回来加盟趣店。” 一位曾在粘旻环身边工作的人士说，当时罗敏的确给粘旻环许诺了丰厚的薪水和期权，但最后至少在期权方面并没有兑现，在上市前三四个月还在找借口推脱，直到粘旻环离职也没有拿到，这也是为什么有人指责他不守信。`笑死个人` 腾讯《深网》联系上粘旻环本人，她表示毕竟和罗敏曾有过共事之谊，如今趣店股价也已经跌去六七成，不想在这个时候再去说是非。2015年12月18日，纽约狂风呼啸，天气阴冷，但这丝毫挡不住唐宁的好心情，这一天，他又重新回到15年前工作的华尔街，但是身份完全变了，当年是金融机构职员，如今是来这里敲钟的上市公司宜人贷的董事长，这家公司将成为中国首家登陆美国纽交所的P2P。就在趣店上市几天后，该公司一位员工去参加一个行业大会，遇到另一家正要准备IPO的现金贷公司中层，对方以略带责备的口吻说：“你们在前面闹成这样了，让我们后面的公司怎么上？”真的可以了。毕竟，又有多少人能够像技术男顾少丰和张俊那样，十年磨一剑，最终还能如愿完成在美国敲钟的梦想。 “中国一万家创业公司，能有一家来敲钟就不错了。”信而富CEO王征宇在纽交所敲钟那天说。\n\n');
INSERT INTO `archive_remarks`
VALUES (10036,
        '\n`真的不容易! 固然, 艰苦奋斗不是战胜的原因, 只是胜利之路上的风景和笑谈. 但是讲来还是动人` 管颖智提议，那天大家怎么着都要拉着公司创始人雷军在现场照一张照片，就和八年前举着小米粥的那张经典照片一样，站在同样的位置，才算得上不忘初心。“就算抱着、扒着也要和雷总在现场合照。”秦智帆担心以后就没这样的机会了。他是小米的第11号员工，最早的MIUI设计师之一。时间拨回2009年，管颖智研究生刚毕业，进了一家央企做人事。对当时的她来说，那算得上是一份很不错的职业，也是父母口中的“铁饭碗”。晨兴资本合伙人刘芹特意找到管颖智所在的那桌，和她来了一张合影。晨兴资本是小米的第一家机构投资者，早在2010年晨兴资本以500万美元投资小米，上市这天，这家机构赚回了866倍的回报。这个赚了866倍回报的投资人，兴奋得拉着管颖智，说终于见到了自己的偶像。因为管颖智在2010年唯一一次早期员工认购小米股票时，拿出了自己的嫁妆来购买内部股，而当时连小米手机1都还没有发布。合照后，刘芹特意发了一个朋友圈，“我真心崇拜管颖智，她是真正有信仰的投资人，她是我的偶像。”于是，黎万强找到了曾经在金山实习过的管颖智，问她有没有兴趣加入小米，做小米的人事专员。在北京海淀区的逐鹿茶楼，她先后和黎万强、林斌聊了聊，最后看到雷军推门而入时，她心里一个声音跳了出来，“只要他们要我，我肯定来”。她当时的想法很简单，觉得原来高不可及的金山领导们都来了，这个事情应该靠谱，至少应该信任他们。在雷军宣布了小米1最终售价是1999元以后，“底下都炸了，大家喊雷军雷军，全部鼓掌，疯了，当时喊了快1分钟，雷总没说话。”秦智帆当时站在中控台上，眼泪哗地就出来了。“可能因为本身也很累，看到自己的付出终于有了反馈，”他说，“也可能因为没看过这么大的场面，还是我们自己做的，特别有成就感。”\n\n');
INSERT INTO `archive_remarks`
VALUES (10037,
        '\n6月2日，杨柘加入小米公司，出任小米集团中国区首席营销官。雷军在微博致欢迎辞：“我米又添一员大将！”“复仇者联盟”的戏谑随之而至。杨柘之前，金立卢伟冰、联想常程、暴风TV刘耀平也陆续加入。曾经供职于友商、位至核心高管、最后跳槽至小米，这是“复联”的共通特质。\n\n');
INSERT INTO `archive_remarks`
VALUES (10038,
        '\n（印尼泗水最大的高端商场Marino里手机品牌竟达28个），在国内已经退出竞争的索尼、LG、华硕仍在东南亚顽强抵抗，还有5到10个的本国品牌和印度品牌（其产品来自中国Design House） 缅甸市场消费者普遍希望手机在陈列的时候展示背面，因为他们觉得正面是一样的，看不出区别；印尼的消费者买手机的时候，希望坐在柜台前和促销员深入的交谈，因为他们认为买手机不应该冲动消费；越南等东南亚国家女性普遍肤色较黑，而且由于消费水平的原因旅游并不普遍，他们喜欢前置摄像头的自拍，他们对于自拍中拥有增强美白效果十分在意；一般每两三天都会更换自拍的头像\n\n');
INSERT INTO `archive_remarks`
VALUES (10039,
        '\n某种意义上，「死磕」来自一种对自身缺失的认识：罗振宇最羡慕高晓松，因为他听说《晓说》经常一条过。罗振宇总结，人家有天赋，是天生贵族，自己只能靠努力，是屌丝逆袭。他认为，如果一个人没有天赋但能把一件事做到「死磕」，也能达到一种惊人的极致。 杜若洋说，罗振宇原本不是一个性格温和的人，但他能通过自我节制进行修炼，变成做某件事需要成为的样子。「罗老师是沿着理性的坡往上爬，爬到佛性的顶的那个人。」`啊, 呸. 不要脸, 不难. 据说, 罗胖认为自己伟大的地方是给生意人道德自信, 正名. 说315是中国企业家道德自信灾难, 但是他以前是撰稿`\n\n');
INSERT INTO `archive_remarks`
VALUES (10040,
        '\n随即推来一个ID为“zuo”的微信。刘元一时忙起来，忘了，3个多月后加上“zuo”，聊得开心，觉得此人有强烈的个人能量；第二周拉他上会，徐小平拍板，投资300万元。真格基金的刘元和一名前36氪编辑聊微信。后者知道刘元喜欢媒体人，透露36氪有一拨人将要离职，能捞就捞 河南南阳 而在讲述“精致利己”事件时，张是另一种无奈的笑。他事后分析，问题出在“调侃”的节奏没把控好。“没意识到广州是南方系大本营嘛，应该用一些更柔的词汇，比如先赞赏他们。一开始就讲媒体是皮肉生意，太具有刺激性，对他们严重冒犯，我听到我也生气。” 谁没有新闻理想? “马云说自己21岁没打过架，那意思是21岁时候打了一架，那年应该是85年，他刚考上杭州师范，大一，不知道是哪个同学挨了打？然后他说自己小时候愿意跑两公里去看两只鸡打架，以他家和上学的位置，河坊街与武林门之间，应该有聚众斗鸡的地方。查一查！” 张豫宏对等级和权力的敏感，是从出生的国企大院里获得的。发端于上世纪60年代的“三线建设”，给河南带来上百个军工企业和工程，伏牛山脉炸出某块平地建设的军工单位，是张豫宏父亲从二炮转业回乡的落脚点。\n\n');
INSERT INTO `archive_remarks`
VALUES (10041,
        '\n咪蒙得过宫颈癌, 选标题: 佟丽娅：老公出轨，我爸让我忍, 出镜照片要P 她的研究生毕业论文是《玄学本体论与阮籍诗歌》，论述魏晋时代玄学与文学的关系，获得了山东省优秀论文奖。她觉得全中国能看懂这篇论文的人也不超过一万人，“把文章写得让你看不懂，我很会。” “我是考试型的人，”马凌说 比如“告诉我的粉丝，对所有快递人员和外卖小哥说谢谢”。她觉得这是个好问题，目前还没有答案。她拿出笔记本认真记下了这个问题。\n\n');
INSERT INTO `archive_remarks`
VALUES (10042, '\n`其实薛笑也不能说不行, 抖音50w粉吧. 祝福耶鲁同学们!`\n\n');
INSERT INTO `archive_remarks`
VALUES (10043,
        '\n`2019下半年, 还活着. 故事和我听说的差不多` “我家三代行医，母亲又是安徽省安庆市某三甲医院的妇产科主任医师，所以从不觉得看病是件难事。高中毕业后，我就去了新加坡国立大学读书。2014年，我外公被查出肺癌。我跟外公的感情非常深厚，是他将我从小拉扯到大，鼓励我出国求学，去追寻自己的梦想。那时我硕士未结课，论文任务也未完成，但还是按捺不住焦急的心情立刻回国了。”苏舒补充道。受制于当地的医疗条件，苏舒外公的病情无法确诊。用苏舒的话说，“当地最好的呼吸科主任是我母亲的同班同学，但他都不敢给我外公做穿刺来确定病性。”于是，苏舒拿着片子跑遍了上海的医院。他希望能够找到一个敢帮外公做穿刺确诊病情的名医。然而27岁的苏舒过于天真了。茫茫大上海承载着江、浙、沪、湘、鄂、赣6地的尖端医疗资源，专家号早就一号难求。\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10044,
        '\n微店没人成交, 没售后. 豌豆荚, 91烂爆了, 当时，市场上所有人都在问，豌豆荚要不要卖？ 王俊煜写了130多页的PPT，结论是豌豆荚会是一家伟大的公司，“做一家独立的公司是对员工负责、对投资人也负责的选择” 王俊煜所说的“伟大的公司”，跟他的做移动端内容搜索的计划有关，它们希望能够靠搜索技术，把消耗大量用户时长的内容，包括小说、音乐、视频、游戏，都抓取到豌豆荚的平台上。2014年1月，豌豆荚发布“移动内容搜索”战略及豌豆荚4.0版 春雨医生, 问诊盈利优先, 归宿是线下\n\n');
INSERT INTO `archive_remarks`
VALUES (10045,
        '\n方红代表另一类人。既然互联网处处是红海，他们索性不安安分分往上爬了，而是另谋他路。“我最近价值观已经被摧毁了，老老实实上班挣着几万块钱，我看上个月工资卡到账真的以为是谁给我转账下午的货钱。”据他观察，不少工作了三四年的年轻人开始展开副业，有程序员下班去夜大代课，有人写网文小说，有人接外包，有人开网店，还有一种更流行的做法是做技术网红。他白天是一名小米员工，但在清晨趁着同事还没来的7点到9点半，和晚上下班回家后的10点到凌晨2点，他都在为自己打工。这种状态持续了三个月。他和从学院路一带高校毕业的同龄人，一起做着外贸生意，其中好几位都在海淀互联网大厂任职。最大89年，最小98年。他们在越南有工厂，货品销往中国本土和印尼。“周五下班就跑，去东南亚，晚上在飞机上睡，早上就到了。” 90-92年出生的人在向各大公司管理岗突围 没有红利上面的人满了\n\n');
INSERT INTO `archive_remarks`
VALUES (10046, '\n快手那时候日活1000万\n\n');
INSERT INTO `archive_remarks`
VALUES (10047,
        '\n`当年挺有印象的一篇好文章: 从团购到无人货架，7年间，地推铁军构筑着我们商业文明难言的底色。` 互相偷, 拆, 挖角, 给回扣. 和写字楼签独家，签下一个奖励2000块钱。在诱惑之下，在O2O行业从业近3年多的他想出了这样的办法。高提成、高损耗、高“PK”费用。一名无人货架业人士对36氪称，某对手涵盖了这些成本的市场推广费用，甚至已经相当于其销售额的80%。各家无人货架公司都明白，在最近半年兴起这波无人货架热潮中，第一场决定留下还是出局的，是争夺“点位”之战。“拼的就是地推能力。”猩便利联合创始人司江华对36氪说，无人货架的第一阶段就在于点位之争。司江华和猩便利创始人吕广渝之前都是阿里“中供铁军”的早期员工，此后供职大众点评，有着丰富的地推经验。每日优鲜无人货架业务“便利购”的CMO刘澍，此前正是美团外卖大连锁部总经理。换句话说，这是一场“地推铁军”之战。从O2O地推大战中成长起来的铁军们成了稀缺资源，不断被争抢。“几乎所有你叫的出名字的无人货架公司都来挖过我，甚至是同一家公司的高管、业务线负责人，以及委托的猎头齐上阵同时和我联系”。在外卖、出行和共享充电宝领域都做过地推的杨聪说。找到一个人，就能牵动一连串。每日优鲜便利购的经验是，找到带头人，带头人会从老同事老部下中拎出一串能带队伍的中层；找到一个城市经理，这个城市经理通常都自带成熟的人马团队。便利购CMO刘澍在接受36氪采访时称，便利狗在去年8月从0开始，今年1月底即将达到3000人，以地推团队为主，而到今年3月，预计就会有5000人了。“我有时候怀疑，把这些风口上创业公司所有地推团队的联系方式整理一下，简直可以直接取名‘美团点评离职员工通讯录’了。”一名美团前区域经理告诉36氪。“阿干讲话都是大道至简，不会很啰嗦地讲一堆很细节的东西”，但在培训中，也有一些很细节的方法传授，李现说，例如用一些糖果等小礼物来和商户拉近距离。“每次培训还会有野外拉练，包括长距离的徒步和空中抓杠”，这也是为了锻炼团队的狼性和毅力。“早启动、晚汇报”，这个模式开始在美团地推全面推行。早启动的作用是“打鸡血”。每天早上七八点钟，不同城市的BD们会聚在一起喊口号和做游戏。游戏起初玩的大多是抢椅子和击鼓传花，后来有BD为了增加新意，专门编撰了一本册子取名《游戏大全》，里面有各式游戏100多个。口号也以振奋人心为主，“阿干带过来了一本羊皮卷，作为喊口号的课件”，李现说。36氪看到，羊皮卷的内容多为鼓劲+简单直接的行动指导：“销售的最大秘密就是每天只要见到6个老板！因为只要一个月能见到120个老板，我就一定能出单！我要把它融入我的血液，即刻行动！”“今天我要在路上打20通电话，确保明天一定有3个老板在等我！” 外界对美团的追捧程度甚至超过了美团人的想象。前美团外卖业务发展总监、水滴筹创始人沈鹏曾告诉36氪，起初美团对外卖业务并没有一套成熟方法，靠着一张让人没有戒备心的娃娃脸，沈鹏曾扮成路人向饿了么一线地推人员“取经”，询问他们的日常工作流程。不过美团前员工沈鹏觉得这种做法意义不大，“海报做那么贵没有用，不被撕掉才是最重要的。”他的做法是印刷那种几毛钱一张的廉价海报，只在早中晚人流量比较大的时候张贴一下。针对某些重点高校，美团还会从工地上雇佣一些身材强壮的大哥，让他们穿上迷彩服，站在海报墙的周围，严防死守以防被竞争对手撕去海报。美团员工曾搜集饿了么的海报，带着兄弟们在凌晨将它们贴满一整片小区里的私家车、小区业主窗户和其他公共场所，第二天饿了么就被一些业主发微博指责，这名地推员工又组织其他人转发和点“赞”。后来这种做法也被饿了么模仿。很多公司“会在竞争对手那安排卧底，除了第一时间打听到对方的地推战略和优惠计划，很重要的一点就是瓦解他们的团队”。他听过的一个故事是，一个“卧底”成功说服对方集体跳槽，带走了一个将近20人的团队。不仅是因为在长期的地推战争后，各种竞争手段大家已经很娴熟和普及。此外，创业风口拿钱的速度、竞争的速度越来越快。滴滴和饿了么用五六年才拿完的E轮融资，ofo和摩拜两年多就拿完了。而共享充电宝和无人货架领域，几家头部公司都是两三个月完成一轮融资。竞争和压力所致，在很多地推人员看来，不努力争取就意味着被淘汰，“我们显然没的选”。压力到底有多大？一个地推从业员工说，他曾经工作过的一家O2O创业公司，会把业绩不好的地推员工直接称为“野狗”，不仅如此，“公司真的有装饰成狗头的帽子和道具，每个月的总结会之后，公司会让‘野狗’们穿戴上，并在办公区域‘公示游行’一圈”。运满满的创始人张晖和他的团队，算是阿里中供铁军背景的创业者里很成功的一个——作为“货运版滴滴”，运满满公开的融资金额是23.5亿元，据称估值过10亿美元。但它和它的对手货车帮最被人熟知的故事，却是“相互把对方送进局子”：2017年2月，运满满向公安机关举报竞争对手货车帮非法侵害计算机系统，随后，货车帮创始团队多人被警方拘留。而在那之前，运满满也曾被货车帮举报：运满满被指使用手机轰炸软件“呼死你”对货车帮大量用户进行骚扰辱骂，涉嫌构成损害商业信誉罪。\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10048, '\nReal如我 校园社交 点点虫 (原来往) 阅后即焚\n');
INSERT INTO `archive_remarks`
VALUES (10049,
        '\n“你要不让我们店从618会场中撤下，我就在京东的楼下一直坐着。”“你把我们店里的优惠券全部撤掉行吗？”“你帮我把京东618的店铺背景氛围撤掉行吗？”在轮番接了几十个商家打来要求撤下会场的电话后，京东时尚事业部服装部采销经理去洗手间大哭了一场。但天猫方面并没有指明怎么做才能恢复这些资源，而是让商家们自己去“思考”。“你不撤京东的店，天猫的小二会说‘我们去跟更愿意配合、更注重我们品牌资源的商家合作’。”上述商户说。京东是中国按GMV（商品交易额）计算第二大、按营收计算第一大电商公司，它与中国市值最高的电商公司阿里巴巴的战火愈演愈烈。随着公司规模扩大与零售业疲软，京东与阿里都面临增长瓶颈，双方在多个领域激烈交锋。阿里联合苏宁在进攻京东的核心品类：3C和家电，京东则致力于那些能够提升消费频次与女性用户群的类目，比如快消和服饰。“服饰作为高频、高利润品类，对于京东来说已经不是补齐短板的问题，而是可以成为下一个增长点。” `这个时候两家都没做出, 没做成下沉市场`危急关头，丁霞拍板，锁定已报名商家库存。“商家库存”是指在商家对接电商平台的系统中，在大型活动前需要录入库存数量，一旦录入成功商家是必须履约的。一位要求匿名的商家对《财经》记者说，“锁库存”是电商平台的常用手段，以前是为了提前备货，每年618或双十一，商家会协商电商平台分货，“6日是这种攻防战的第一波，第二波则发生在临近618的前几天。那段时间里经常有同事大喊‘我们又被攻破了’，然后立即想防御对策。”一位京东公司人士说，由于商家数量众多，想出的方法五花八门，京东女装业务部的员工平均每天只睡三四个小时。最终，京东时尚事业部在6月18日的第一个小时销售额同比增长413％，全天整体翻了一倍，运动和珠宝品类销售额增长超过7倍。\n\n');
INSERT INTO `archive_remarks`
VALUES (10050,
        '\n《腾讯传》是吴晓波的命题作文，是腾讯在和奇虎360的3Q大战之后，希望通过这本书让世人更加了解腾讯的一次安排。当时腾讯的微信刚刚上线，如果吴晓波当时完成这本书，那腾讯近几年的发展路径会迅速让这本书过时。吴晓波用了五年时间来了解腾讯，现在刚刚出版，恰好把腾讯发展到今天的情况也记录下来。 在2010年底，马化腾宣布腾讯进入“半年战略转型筹备期”，紧接着在北京、三亚及杭州等城市举办了10场主题为“诊断腾讯”的研讨会，有共计72位互联网专家与会，帮助腾讯寻找问题和提出建议。而腾讯向我提出创作企业史的邀约，正是在开始实施开放式战略的这一当口。一句话概括：《联共(布)简明党史》腾讯版 三个部分第一部分写腾讯创业到3Q大战，这块基本就是在堆材料，而且堆的材料里除了那极少数的当事人对话之外，基本没有一手材料 第二部分写3Q大战到腾讯开放战略，这一段加了一些基于采访得来的3Q大战现场描述 第三部分就更屌了，从微博迎战到微信崛起再到买了起点构建泛娱乐战略软的一塌糊涂，跟全员发送的通报表扬邮件有的一比，整本书略微提了下电商，只字未提搜索\n\n');
INSERT INTO `archive_remarks`
VALUES (10051,
        '\n养蛊 整个腾讯集团，最著名的养蛊案例发生在互联网从桌面向移动转型的时期。当时腾讯要做一个移动通信应用，内部三个团队同时开拔，最后张小龙的QQ邮箱团队成为蛊王，做出微信，为腾讯拿到了这把移动互联网的金钥匙。之后，这种内部竞争策略屡试不爽，在很多重要关头立了大功。去年被人民网九评的现象级游戏《王者荣耀》，也是内部竞争的产物。只不过，当年光子的《全民超神》败给了天美的《王者荣耀》，如今风水轮转，天美的《全军出击》不敌光子的《刺激战场》。\n\n');
INSERT INTO `archive_remarks`
VALUES (10052,
        '\n投资看不懂 何海文（Helen） 任旭阳 与百度O2O战略密切相关的大众点评，曾数次主动联络百度，寻求投资。大众点评对百度足够热情，甚至在获得腾讯投资后，依然联络过百度，原因是其认为百度搜索的流量够精准、对点评有切实帮助。两位了解百度投资的人士告诉36氪，最接近的一次，投资大众点评的流程已经走到了李彦宏那里，只等他完成最后一步签字，但李彦宏在签字这个环节上拖了许久。最终，大众点评没能等到百度，它与美团合并了，百度也没能挤进后来的新美大。百度的流量、技术对创业者们富有价值，它所处位置是投资领域的顶端，它的影响力比手里只有钱的VC们高出太多；而百度庞大的业务部门，也理应是一个庞大的专业领域智囊团。百度的数名投资人士都对36氪说，在百度工作的好处，是“市面上的好案子、大案子都能见上”。它原本应该能够挥斥方遒。\n\n');
INSERT INTO `archive_remarks`
VALUES (10053,
        '\n百度在转型移动过程中落伍，是创始人问题，公司问题，还是时代问题？公司兴衰的关键点到底是什么？百度曾是中国互联网市值NO.1的公司，那些曾铸造了百度的东西，为什么又导致了他的落伍，而且转折如此之快。从创始人—产品—战略—组织，同样的几个环节，究竟发生了什么，到底是什么变了？ 我的答案是，对组织而言，公司文化最重要，对创始人来说，保持认知领先最重要。在技术优势之外，百度一直缺乏文化和管理上的建设和进步，李彦宏也缺乏对市场更长远的看法和更大的视野。百度始于墙外，成于墙内，盛于谷歌被墙，衰于内心围墙。不像AT两家都有长期的宰相式的人物，百度在王湛生死后，就只有阶段性的二把手。\n\n`西北工业大学 沈阳人 高等教育行政管理硕士 会计 普华永道 百度CFO` `何海文Helen顾问 张亚勤智能驾驶 任旭阳 陆奇` https://shawn.baidu.com/ 李彦宏是一个简单正直的人。他在SP赚钱最疯狂的年代没有染指，当时网易腾讯都是靠SP业务赚钱撑下来的，但百度试完后觉得这是欺骗用户的钱坚决不做。李彦宏刚回国时开记者会，不给记者车马费，他说记者的工作不就是要报道行业嘛，后来还是公关说这是中国国情百度才开始给了。很多小的细节来看，李彦宏是很有原则和正直的人，包括最近他还推出“简单搜索”，承诺这个搜索产品永远不会上广告，“个性化推荐不应仅仅攫取用户的时间，而应该为用户提供有价值的内容，让用户有所得。”李彦宏有着非常好的契约精神2008年央视曝光时是销售体系管理确实存在漏洞，2011年李彦宏不认为凤巢推广系统本身有问题。他骨子里是一个相信清者自清，不愿多做沟通的人。海归李彦宏创业初期找的多是北大的学生，一群非常聪明有干劲高度自律的优秀年轻人，这让他树立起百度简单可依赖的文化价值观。他从北大资源宾馆的两个房间起步，在中关村李彦宏办公室的窗也是一直朝着北大。但后来的销售体系跟技术体系不是同一群人，工程师在公司全员的占比也在不断被稀释，产品VS销售，校园VS社会，简单VS复杂，公司的构成/文化变得越来越偏向中国而非硅谷，但是李彦宏对于公司的做派和期许还是硅谷式的。李彦宏到现在还能记得他中考成绩是502.8分，“仅比全校第一少了0.1分”。 他中学参加青少年计算机编程的成绩是阳泉市第二，但去省里参赛却没名次，这让他意识到阳泉只是一个小城市，他的见识跟太原的学生之间没法比。 整个学生时代，李彦宏都不是最优秀的那个，但他极其刻苦努力。初中时成绩一般的他中考前三月临阵磨枪，最终考上阳泉一中。大学考进了北大，结果发现他的第一志愿图书馆学其实是很多同学的调剂专业。大三确定要出国后，他在北大的生活就是宿舍—图书馆—食堂三点一线。到美国留学后他又改换了专业，最初的课程很难跟得上，他的生活状态就是白天上课、晚上补习英语和熬夜编写程序。 先后几次临阵磨枪的成功经历，让李彦宏相信“努力一把，就能成功”。但有些人努力是为了问心无愧，有些人努力是希望能够向别人证明自己。李彦宏属于后者。\n\n刘韧在百度早期的采访《李彦宏聪明》里提到个细节，李彦宏喜欢表扬，受用表扬，自从有作文课，老师就拿他的作文在班上当范文读，“如果有一次没读，我就觉得很郁闷。”表扬让李彦宏对文学产生了浓厚的兴趣。2010百度年会，李彦宏年会献舞《SuperStar》；2011百度年会，李彦宏王子归来——表演激情探戈；2012百度年会，李彦宏头戴礼帽、面具，一身黑衣化身佐罗；2014百度年会，李彦宏身穿金色战袍表演架子鼓，唱《男儿当自强》。 大明星/王子贵族/个人英雄/帅气偶像，他迷恋这些洋溢着旧时代审美气息的符号。而在全公司人才梯队建设上，李彦宏显得既没耐心又冒进。百度从10年17年百度总在宣传公司平均年龄26岁，招聘方面一直在提年轻化，是因为李彦宏一直认为人的创造性的最高峰是在30岁以前。他甚至在北大一场招聘宣讲会里提到只希望你们为百度工作4年就好。\n\n`2012年百度世界大会李彦宏公开预判移动互联网是醉驾. 那时候没有移动支付, 还是2G` 这是因为PC是生产效率工具，搜索是有明确结果指向的save time，百度更偏向满足别人的理性需求。搜索产品的硬性需求是用户越快找到约早离开越好，这跟无限拉高用户时长目标天然相悖。但手机是“通讯娱乐工具”，更多的是娱乐杀时间的需求，要去占据更多用户的更高时长，就不能让用户的眼睛离开屏幕，信息流和短视频是纯多巴胺导向产品，是上瘾游戏。移动刚发展时容易让人联想又回到PC最初的黑盒场景，所以百度不断抵制APP生态，想要维持web生态。百度一直都是站在搜索/PC搜索的角度去想移动生态，基于PC搜索这个认知边界来做战略推导，这种认知错误导致后续事倍功半。事实上，百度是中国最早做分布式计算的，他的很多内部的运营和管理服务器的工具都是很先进的，有波峰波谷计算能力，一度他的服务器也是中国最多的，他的机器管理和资源调度、整个网络管理这三种关键技术都是中国领先的。 最后这些技术反而倒是帮助了阿里云。最初带系统组的刘栓林，在易平台挂掉之后，就从百度离开去了阿里云，帮助阿里云做成了网络基础服务。最初阿里云的架构体系跟百度的服务体系如出一辙。十年前百度有啊只是做了一套电商的壳，李彦宏就给李明远颁发了百度最高奖。电商的发动机是什么？核心是什么？迄今百度系最成功的两家公司，爱奇艺和去哪儿，龚宇和庄辰超都是在百度体系外长出来的。这不止只是个巧合。即便如想要输出管理哲学的李彦宏，他的那2本书（《百度论语》和《壹百度》）虽然成了百度公司员工人手一本的红宝书，但书的内容也仅仅停留在术的层面，没有上升到道的层面，除了营造令人眩晕的崇拜感外对百度发展没有长远性的系统指导价值 但是手百团队的应对是给李彦宏私人定制一条流。手百的策略部门找到百度新闻的科技内容运营，把手百feed推优平台的互联网分类做成了李彦宏专用的定制流，早6点到晚12点要有人时刻在推。算法搞不定李彦宏的口味，就靠编辑们纯人工加班加点。当然李彦宏知道后废止掉了这个行为，但不知他是否知道他经常搜索的花草树木搜索结果页也是优化定制的。新来的负责人在公司总监群里报他使用百度产品时遇到bug ，结果对方找到他说“我们都是一家人，我们都挺好的，老板在这你这什么意思？你为什么说我产品坏话？” 对方以为李彦宏在群里，你报我的BUG是在给我拆台。《财经》小晚问什么时候百度会出现像谷歌AlphaGo这样的产品？李彦宏说今天百度最主要的资源应该放到那些更加有市场前景的方向上，而不是去做一个下围棋的机器人。“我们会问，你花这么大精力做一个东西到底能实现怎样的价值？”\n\n');
INSERT INTO `archive_remarks`
VALUES (10054,
        '\n`总之各种知乎黑料, 又一个孙宇晨的架势, 技术也不行, 还有一屁股男女关系的事. 2014届的尹桑一起唱 2013届的施凯文已经不知道哪里去了，还有掀起各种骂战的余佳文，和被扒出来各种造假的金证济苍` 中国的创业真的到了最危险的时候，不能眼看着所有的创业公司都死掉吧。就算都是妖精，孙悟空要一棒打死的时候，菩萨们，老君们还要喊一声刀下留人，来要回几个坐骑。\n\n乔布斯重返家徒四壁的苹果时盖茨无条件给了1亿美元，马斯克最要命的时候老戴尔出手相救，写《创业维艰》的本·霍洛维茨，公司下个月就发不出工资却敲定了惠普的高价收购，保罗·格拉汉姆在泡沫破灭前把ViaWeb卖给雅虎5000万美元。玛丽莎·梅耶尔在雅虎的4年里一共收购了49家公司，百度到今天只不过收购了李叫兽和渡鸦，我相信留给他们的任务还很重。 `Over-achiving is not a phenomenon worth discussing. 因为更blatant的不公平更ubiqutous地存在着.`\n\n');
INSERT INTO `archive_remarks`
VALUES (10055,
        '\n陆奇曾在年度总结会反思“渡鸦收购太过草率”，甚至还有人将渡鸦团队称之为陆奇百度职业生涯失败的收购······ “陆奇给渡鸦的定义就是微软的surface” 渡鸦团队也快速扩充，“最初只有几十人，到10月份最高峰有一百多人”，一位百度相关人士透露道。至于渡鸦音箱出货量，据智东西了解，最初渡鸦内部定下的目标是生产20万台。但在去年年底遭到百度方面的砍单，后来只生产了1万台。关于减少初始生产量，一位业内人士称，“源于百度对库存的恐惧，百度对硬件较为陌生，并且本身也没有渠道”。准确来说，渡鸦的边缘化是从陆奇离开才真正开始的。\n\n');
INSERT INTO `archive_remarks`
VALUES (10056, '\nmusical.ly dubsmash 小咖秀 美拍 长视频问题: 生产的人少, 生产方能力强. 恶性竞争, 插广告少. 后舍男孩. 以前叫a.me 找用户粉丝投票出来的抖音, 好记独特\n\n');
INSERT INTO `archive_remarks`
VALUES (10057,
        '\n今日头条不模拟人性，也不引导人性，你们文化人给了我们太多深刻的命题 他显得太年轻和安静——甚至有些乖巧。他的同事们告诉《财经》，这位CEO最激烈的情绪表达方式不过是“这个事情怎么会这样？” 张一鸣认为“不克制”带来的危害更大——多数精英认为自己所坚持的就是对的，然而事实是，这个世界上多数人都无法认清现 实。选择“不干涉”，正是在克服人性的弱点。与其在价值观上高歌猛进，不如“延迟满足感”，他认为这会让自己获得更多的自由。那你的梦想是什么？张一鸣：把英语学好。用几个字定位一下自己。张一鸣：我在上海，徐汇区中金国际广场，第9楼。《财经》：有没有一直坚持的东西？张一鸣：每周按摩一次算不算？《财经》：想过几次卖掉公司？张一鸣：三次 我说的是——我们有机会把头条做成一个平台型公司，所以我不会卖公司。\n\n');
INSERT INTO `archive_remarks`
VALUES (10058,
        '\n`苏宁云商也一样, 乃至平安. 商业总是有很多失败` 2015年6月，美团创始人王兴接到了一条来自猎头的短信：“王总您好，想邀请您作为万达电商CEO的职位，不知道您有没有兴趣接触一下？”这条有着语法错误的消息让王兴哭笑不得：“听说万达给的薪水很高，想想还有一点小激动。”郑晓亮回忆，当时飞凡的相关领导找到了微信部门索要入口，但是微信给的反馈是飞凡产品太差根本没办法和微信进行对接，前前后后改了好几版也没办法达到微信的要求，所以这个合作最后也就不了了之了。`也写了一些说流程慢组织臃肿一类的废话. 传统行业一定如此, 但是和成败无关. 真是看表面. 我突然想到 - 之前说的回新加坡呢? 如果留在DFG, 真的回了. 会怎样呢. 但是因为夺权的时候讨论过可以不回, 那就有点回不去了. ` 和百度的合作大抵如此，一直以来，飞凡的会员只能用手机号进行注册，腾讯和百度的协同效应并未展现，当然，那个传闻中的“50亿”和“200亿”也都未实现。即便大老板强硬要求配合支持，但是其他部门的KPI可是一点都没有减少。如果没有支持，或者支持少，最多是被责备。但如果是自己的KPI没有完成，可能就会被直接开除。”从万达电商离职后创业的中层管理人员孙建宇则如此评价王健林对电商支持的强硬要求。\n\n');
INSERT INTO `archive_remarks`
VALUES (10059,
        '\n1980年7月12日，北京日报刊登了一篇叫做《北京蔬菜供应为什么一年比一年紧张》的文章，揭示了北京的“淡季蔬菜荒”。由于北京蔬菜实行统购包销，基本不允许外地供给，只能卖本地菜，因此每到八九月份，几百个菜场的货架便空空如也，能见到只有土豆、南瓜和葱。为了让老百姓吃得上菜，政府每年都得巨额补贴，1984年北京仅仅蔬菜的补贴就达到了9000万元[6]。“吃菜难”却仍没有地到解决。蔬菜统购政策已经无法满足首都的供给要求，改革迫在眉睫。1985年5月10日，北京正式开放蔬菜市场：外地蔬菜不再需要进京证明，凭菜进京。正是这年，15位农民看准了改革开放的春风，用了15万启动资金，圈了15亩地，开始筹建菜市场。他们用铁丝网做围墙，三轮车做货架，挂了块简易招牌就开张了。没用多久这个市场就声名远播，挤满了熙熙攘攘来买菜的北京人。这个菜市场有一个简单的名字，叫做新发地。那会儿中国生鲜行业的市场规模高达10万亿，线上比例几乎为零，之前一直因为运营难度大而被视为电商的禁区。而两次声势浩大的营销事件，加上O2O和消费升级的热潮，彻底让资本的心思活了——“既然车厘子、橙子、龙虾能卖，黄瓜、西红柿和葱姜蒜为什么不能？”于是，在社会资本的助推下，生鲜电商的大跃进开始了。在这场战争中，数百亿的资金被砸进了无底洞，众多互联网巨头被裹挟其中。在水面上，前置仓、损耗率、店仓一体这些专业术语被讨论地如火如荼，在水面下，造假、做账、腐败、薅羊毛等灰色行为也在暗流涌动。对于熟稔互联网烧钱大战的围观群众来说，生鲜电商的剧情似乎并不难猜：烧钱补贴→快速扩张→恶性竞争→行业洗牌→巨头合并→走向寡头→兑现巨额利润，这条路线已经被电商、外卖、打车等行业验证过多次，按照道理，生鲜这个“O2O最后一个堡垒”在两三年里就会被攻克。但这一次的剧本明显不一样。纵观历史，哪一场战争中的“最后堡垒”门外不是扶尸千里，血流漂橹的呢？而张勇跟侯毅咖啡还没喝完，便给了想做生鲜电商的侯毅两个选择：可以来阿里内部创业，也可以另起炉灶阿里投资。侯毅选择前者，因为他知道“重模式”是靠钱堆起来的。张勇给了侯毅一笔钱：1亿美元启动资金，附送一项承诺：“两年内不用考虑盈利，钱我来解决。”在早期，盒马是作为“私生子”放在上海偷偷寄养的。2015年3月侯毅在上海五道口大厦创立盒马，没有剪彩没有宣传，低调进村。阿里“千里认子”的戏码，直到两年后2017年7月14日才上映：马云现身上海盒马金桥店。“店仓一体”模式的盒马，也迎来了高光时刻，疯狂扩店。军人基因贯穿了叮咚买菜：8位核心高层中4位转业军人，团队有200多名退役军人，配送队的服装都是“铁军”的绿色马甲。员工入职先军训，期间军事化管理，接受打军体拳、站军姿等体能训练，年会元旦去跑步。“铁军”叮咚买菜，让梁昌霖在上海的地盘啃下一席之地。叮咚的CEO梁昌霖是退役军人，一直想创办世界瞩目的科技巨头，而也做过军人的任正非就是他的人生偶像。2002年退役后，梁昌霖身穿红色西装跑去张江龙东大道注册企业。创办了一家视频剪切合并软件公司（Easy Video Joiner&Splitter），赚了第一桶金80万美元，而后2003年创立母婴社区丫丫网和妈妈帮，在名片上印了一句话：“民族的竞争归根结底是母亲的竞争。”而前置仓到底能不能赚钱，逐渐变成了一套变量无穷多的公式：利润=客单价×订单量×毛利率-经营成本。这里面牵扯到损耗率、履约效率、复购率、人力成本、水电费、店面租金、耗材、折旧摊销等数不清的变动因素。这最后导致：没人知道新开的前置仓会不会赚钱。2019年年底，基本所有机构停止了对生鲜领域的投资，曾经追逐得有多疯狂，如今了断得就有多绝情。四千多家追随生鲜电商风口的入局者，只有1%实现盈利，剩下99%裸奔烧钱。每日优鲜创始人徐正比较实在，他对生鲜电商行业这样评价：“撅着屁股捡钢镚。”烧了五年的钱，难以烧穿这“最后一座堡垒”。时间指向2020年，生鲜电商迎来了令人目瞪口呆的转机：全社会的黑天鹅，居然变成自己行业的及时雨。`呸, 效率, 工业化, 天龙人!` 坦白讲，如果做不到大幅改善产业效率和用户体验，那笔者作为一个生鲜消费者，宁愿把那些资本和互联网公司想从我身上赚的钱，让给那些起早贪黑摆摊卖菜的普通老百姓们。\n\n');
INSERT INTO `archive_remarks`
VALUES (10060,
        '\n吝啬、保守、急功近利是业内对丁磊的刻板成见，真的如此吗？说丁磊保守、吝啬，但当年网易转型手游，他不惜成本孤注一掷；说丁磊没耐心，做业务能赚钱是前提，但网易云音乐、公开课、养猪等似乎和高利润并不挂钩；说丁磊在企业家圈子人缘差，他在乌镇互联网大会组局互联网大佬悉数到场。过去三年，互联网行业的浮躁功利有两个主要体现，一种是对现象和风口的盲目追捧，一种是成王败寇式的评判方式。没有平台生态，没有拿到移动互联网船票，网易今年业绩和股价却持续走强，市值近300亿美元，令业内人士大感意外。重新审视丁磊和网易的意义在于，他们走了一条和流行的“互联网思维”、“风口论”、“唯快不破论”等主流理论相反的道路。过去每一波创新浪潮出现时，几乎都看不到网易的身影，电商、社交、O2O、直播......丁磊总是姗姗来迟，活在他自己的节奏里，要么保持沉寂，要么突然选择在一个奇怪节点意外杀入。网易最早进军手游是在2011年推出自己的第一款智能手机端游戏《翻书大作战》。当时，手游对国内所有大玩家都是新事物，网易在行业里并无任何亮点可言，市场上成功的作品更多是国外引进的《愤怒的小鸟》、《植物大战僵尸》等，此外一些国内的小游戏团队也展现出自己的灵活性，推出《捕鱼达人》、《我叫MT》等热门手游。幸运的是，端游领域的长期积累为网易赢得了缓冲空间，《炉石传说》超乎预期的表现，撑住了网易股价。网易没有选择代理成功的手游作品来挽回声势，即便2009年丁磊已有代理《魔兽世界》的经验——骨子里，丁磊依然喜欢自己制定规则，重视自研和产品，在手游市场才可能具备从宏观到微观的掌控力。事实上，网易游戏最初的崛起，便是依靠《梦幻西游》《大话西游》等长期研发的精品之作，这与当时的盛大和陈天桥形成鲜明对比。智能手机的不断进化和普及，改变了用户的使用习惯，但是不能抹杀用户需求，凭借长期积淀的端游研发优势，丁磊抓住了手游重度化趋势。《天下HD》和《乱斗西游》，是网易2014年重点打造的两款精品手游。其中，《乱斗西游》的开发过程历经曲折，但却幸运收获成功，成为网易手游的命运转折点。纵观网易近二十年发展历程，能让外界记住的知名高管并不多，除了曾挑起内斗的前CEO黎景辉，陌陌CEO唐岩、YY董事长李学凌、猿题库创始人李甬 方三文雪球 等人都是在离开网易后创业成功，才被更多人所熟知。如果说谁是中国互联网上最保守、最有耐性、最可能活上一千年、等着先烈们都死光了才去收拾战场的，那一定是丁磊；如果说谁是中国互联网上最有抱负、最有野心、最可能通过一个先入为主的宏大战略一统江湖的人，那应该就是陈天桥。2009年，媒体人程苓峰曾如此评价。\n\n');
INSERT INTO `archive_remarks`
VALUES (10061,
        '\n那年 3 月王兴头一回见到马云，王兴问：你最强的是什么？马云：你觉得呢？王兴：战略和忽悠。马云：其实我最强是管理。王兴：我相信。然后美团就拿了阿里巴巴领投的 5000 万美金 B 轮融资，当时阿里还不知道王兴也有要做巨头对抗阿里的野心。那年常遇春 28 岁，阿里 P8，曾作为中供第一批销售为公司立下了汗马功劳，刚调入支付宝负责 B2C 业务线。不过这个老阿里人即将在年底被新阿里人从北京调往南京送死，BD（商务扩展——编者注）当时刚转型电商还以阿里为对手的苏宁，希望苏宁能够接入使用并默认优先支付宝。这是注定不可能完成的任务。不迷信外企的美团在完成历史使命后，选择让最擅长地面打仗的阿干边缘化后离开，让老同学王慧文领衔新业务，而 14-16 年的王慧文又是个怼天怼地整天把干死阿里挂在嘴边的主。在大众点评推出类支付工具闪惠打开市场之后，如果当时并了饿了么，美团早不必如此辛苦，可能当时觉得自己能够随便打死对方吧。美团团队的种种选择，很难信任人，信任老人，偏执，果决，自傲，任性。谜底应该是一本书，《有限和无限游戏》，王兴边界与终局的思维模式就是来自这本书。 有限游戏以取胜为目的，而无限游戏以延续游戏为目的。有限游戏是画地为牢的游戏，旨在以一位参与者的胜利终结比赛。我们迫切需要一个 “游戏观” 的转换，即从有限的游戏转向无限的游戏。程维还曾在微博上推荐过，没想到这个道理他给忘了。\n\n');
INSERT INTO `archive_remarks`
VALUES (10062,
        '\n客户要高品质、 低价格的东西，那我们怎么提供给他这些东西呢？因为我们本身不能单独完成服务，我们是一个中间平台，所以我们需要做到自身运营时能够低成本、高效率。怎么样才能做到低成本、高效率？一方面靠管理，一方面靠员工敬业，一方面靠高科技，所以第三个高是高科技、低毛利。\n\n');
INSERT INTO `archive_remarks`
VALUES (10063,
        '\n饿了么创始人张旭豪在自己人生33岁这一年，决定亲手结束一段长达十年的创业故事。他放下枪杆，把前方仍硝烟弥漫的战场交给了一名来自阿里巴巴的成熟经理人。张旭豪决定放下这一切，事先很少有人知道。这件事在他脑海里循环往复了许久。作为国家二级运动员，这是一位脾气急躁、好战好胜的CEO 阿里投资了 - 有职业经理人会帮你搞定一切\n\n`本地生活是有先天缺陷的生意，因为网络效应不强，需要逐个城市扩张，导致其本质是资金密集型行业`\n\n要碰到极激进的烧钱竞争，就很难盈利，就算盈亏平衡也是脆弱的。“这成为一个压在你上面的天花板。”\n\n');
INSERT INTO `archive_remarks`
VALUES (10064,
        '\n企业对流量的渴求，就像鱼儿对水的需求。在创业热潮最火爆的2015年，做奢侈品二手生意的马成把盈利的门店砍了，开始做线上交易平台。二手奢侈品单价高，当时获得一个下单用户的成本是1500元到2000元，主要渠道是百度关键字竞价和应用商店优化。据一位游戏投资人介绍，在游戏的利益分配机制里，包括360手机助手、百度手机助手、腾讯应用宝、小米应用商店等在内的分发渠道，通常会分掉一半的收入，最终到开发者手里只有15%到20%。 互联网金融是所有行业里，获客成本最高的领域。一位内部人士透露，简理财获取一位理财用户的成本为500元，而借贷宝获得一位有效用户的成本达到1000元。 微信大号的刊例价格也在逐年上涨。微播易CEO徐扬对AI财经社透露，微信的头部账号（粉丝数500w以上，头条平均阅读量10w+），刊例由季度调价变为月度调价，涨幅从30%－100%。 村村乐CEO胡伟发现，委托他们下乡刷墙的公司每年在翻倍。农村占了全国将近一半的人口，而这些群体多数与互联网保持着距离，胡伟从广大的农村市场找到了流量入口。他的做法是在农村刷墙、贴海报、做调研和推广App。早年刷墙的都是农资、猪饲料厂家，当前的刷墙主力变成了汽车厂商，而越来越多互联网公司也加入其中。最早是优酷、爱奇艺等视频公司，后来淘宝、京东、快手和今日头条成了他们的客户。“刷一面墙的三五百块钱，放半年。在百度买关键字，可能鼠标点击10次就没了。”胡伟说，他将全国60多万个行政村打上不同维度的标签，包括人口、特色、经济水平、是否在百强县等等，每个村子选一名站长，所有刷强业务都通过站长众包。在开店之外，越来越多的线下场景被挖掘出来，从楼宇电梯到社区商超，从共享单车、共享充电宝，到无人便利店。线上流量红利不明显时，线下开始成了新的狂欢之地。 这也是线下的魅力。尽管线上绝大部分流量被BAT、今日头条和视频网站垄断，但分散的线下流量不再高度集中于大玩家的手中，这也让中小玩家们各显神通，看到了分一杯羹的机会。`233投线下, 最大的问题是素材很难吸引人啊...`\n\n');
INSERT INTO `archive_remarks`
VALUES (10065,
        '\n半年前，优土完成正式私有化时，古永锵信心满满地表示，三年内就要帮助优土实现三年国内上市，“超越纽约”的目标。`原来从美国退市了` 合一集团，旧称优酷土豆集团，是中国大陆视频分享网站优酷网与土豆网合并后成立的传媒公司，在2015年8月更换现名称，并以宣传格言“合一而为”为其合一文化集团的理念，2016年被阿里巴巴集团正式收购。2012年3月12日，优酷网和土豆网宣布双方在3月11日签订最后协议，优酷网用100%换股的方式与土豆网合并，土豆网退市，并成立优酷土豆集团。合并之后，优酷股东拥有优酷土豆集团71.5%的股份，土豆股东拥有28.5%的股份，并且保留优酷网、土豆网两个品牌。古永锵期待的“时刻”在2013年第四季度终于到来。不按美国通用会计准则(nonGAAP)计算，优酷土豆在这一季度获得了人民币4420万元(美元730万元)的净利润，实现了优酷土豆的首次季度盈利。但这次盈利，更多是当时狙击竞争对手或者迎合投资者的手段，而这也成为优酷土豆历史上唯一的一次盈利。龚宇认为，UGC(用户上传内容）消耗带宽的能力比较强，却难以获取利润。爱奇艺想要从视频网站的竞争中脱颖而出，必须要靠以热门电视剧和综艺节目为代表的长视频。高晓松离开优酷的传闻很快变成整个四月行业媒体门关注的焦点，为了得到高晓松和他的脱口秀，爱奇艺可以说是“不惜代价”。一位不愿透露姓名的视频网站高层称，优酷为了挽留高晓松开出了3000万的高价，但是爱奇艺直接把价格喊到了6000万，而当时《晓说》一季的收入仅为500万。`额, 三姓家奴啊`“公司上市时古永锵一个人股份有40%多，其它高管们加起来1%多一些，股价跌了那么多，不让卖换谁谁也受不了。”一名在优酷工作多年的销售人员告诉腾讯科技。“听说公司和阿里签了对赌协议，如果年末不能有很大起色，那么阿里很可能有进一步的动作，甚至是全面接管。”此前一直有上述行业传闻流出。如果真是这样，那么留给杨伟东的时间已经不多了。`最后还是爱奇艺起来了`\n\n');
INSERT INTO `archive_remarks`
VALUES (10066, '\n`反正就是有些人开始赚钱了, 好事, 这个口径. 实际上即使是头部, 也和其他一些艺人天差地别`\n\n');
INSERT INTO `archive_remarks`
VALUES (10067,
        '\n汪滔说：“这个世界太笨了，不靠谱的人和事太多了，这个社会原来是这么愚蠢，包括很多很出名的人，或者大家以前当成神、现在也当成神的人，其实level也不高嘛。我也经常在怀疑自己，你这玩意儿是不是有点脑子发昏了？我时时刻刻都在质问自己脑子有没有发昏，但还是发现，这个世界很笨。” `搞了一个竞价, 想投的人太多. 和我不谋而合啊!!`\n\n');
INSERT INTO `archive_remarks`
VALUES (10068,
        '\n`回忆一下: 让实习生痛哭流涕的了不起的优步中国` “总部的想法很简单。它就把系统和技术做好，至于运营和市场，反正完全不懂（中国市场），不如就放权给当地团队去做。”王萧告诉深网，“当然，它也给了你不少有用的工具。”王萧所指的“工具”是一套指南，在Uber内部被称为playbook（行动手册）。这套行动手册基于Uber过去五年在全世界不同城市“打仗”的经验编写而成，可以帮助拓展新市场的员工快速了解和拓展当地市场：包括应该如何去做当地市场调研，如何设定价格，通过什么样的渠道做市场推广等。Uber总部会给足够的“弹药”，以便本地开拓者一进入市场就能迅速展开手脚。优步中国最早给城市团队设置的指标是：每拉一个新注册用户，可以花费25美元（当时相当于150元，而国内互联网公司平均花费为10-30元不等）。只要是在这个预算范围之内，团队可以自由决策采用什么样的渠道去获取用户。“那时候总部给我们的权限真的很大，比如我可以一次性派出价值100万元的优惠码，只要我能拉来对应数量的用户。换个公司，写邮件开会走流程至少都得几周。”王萧告诉深网。这种效率还体现在优步中国早期的品牌活动中。从2014年开始，优步中国开展了一系列“一键打＊＊”品牌推广活动，从杭州西湖的游船到北京后海的人力车，从接你坐直升机环游上海一圈，到派舞龙舞狮队到你家闹新年，如果运气足够好的话，甚至能让影视明星佟大为给你当一次司机。这些彰显出统一品牌调性，又体现所在城市特点的活动深受好评。但许多人不知道的是，这些活动从计划到执行，常常都是由一个人或几个人，花费几周甚至只要一周就完成了。“他们每次camgaign的速度都非常快，从前期的idea到后期的执行，基本上一周的时间。是一种非常快，非常精巧的营销模式。”一位曾与优步中国进行过品牌合作的知情人士告诉深网。仅就这一点而言，Uber成为了进几年进入中国的外资公司中的另类。雇佣本土化的精英小分队，在划定的范围内给予充足的市场预算和充分的自主权，以城市为单位独立运作，优步并不是第一个提出这些战略的公司，但却是执行得最彻底的那一个。在一只脚迈进这个庞大又复杂的市场时，它为自己赢得了市场机会，建立了品牌，同时还网罗了一批愿意为它战斗的年轻人。而Uber在进入中国几年来，产品功能上的本地化做得及其有限。Uber的应用经常会出现一些无法连接的情况，它没有本地的技术和产品团队，一切都需要反馈到太平洋的另一侧。尽管Uber多位员工坚持认为邮件回复要比客服中心更为高效，但这种形式仍然无法被中国用户接受。早期为了躲避监管机构和司机围堵，Uber在中国的办公地点都处于保密状态。另外，它面对的是一个几乎不可能战胜的竞争对手。滴滴出行的背后是腾讯和阿里巴巴，它又抓住了二者推广支付工具的时机来拓展用户——最初滴滴CEO程维找腾讯要800万人民币预算推广微信支付，腾讯觉得太少，最终给了程维1500万人民币作为3周的预算，上线仅半天时间，这1500万就全部花完。从账面上看，卡拉尼克和优步在中国是取得了胜利。用20亿美元的投入换回了价值70亿美元的股份，这是近些年来硅谷公司在中国少有的漂亮成绩单。但合并之后，优步是否会作为一个单独的品牌和产品存在，都将变成一个巨大的疑问。有媒体曾问卡拉尼克关于中国市场竞争的问题，他的回答是“这场竞争只有两个结果，拿到金牌或者失败。”那么，这一次他没有获得金牌。`啧啧`\n\n');
INSERT INTO `archive_remarks`
VALUES (10069,
        '\n网约车市场一定会存在第二和第三名，这是市场竞争规律决定。人们更关注的是，这个新的第二名能否拿到20％甚至更多的份额，以及能否持续守住这个份额。大搜车创始人姚军红接受《财经》记者采访时认为，滴滴最大的bug在于它的供给是不可控的。滴滴左手消费者右手运力，真正的护城河只能是运力。滴滴培养了大量的民间运力，但控制不住，滴滴下面有几千个租赁公司，资产和司机是被租赁公司而非滴滴持有。“滴滴可以不拥有资产，但要有资产管理权。”他说。据悉，滴滴每年的技术投入超过10亿美元。张博解释称，网约车是一个不能存在任何短板的行业，技术、资本、营销、运营、政府关系缺一不可。尤其是技术，平台规模越大，用数据去反哺AI技术，就会使技术壁垒越高，形成一个正反馈。没有真正的和平美团打车进入南京的第八个月后，滴滴开始孵化外卖业务。\n\n一位接近ofo董事会的人士告诉《财经》记者，阿里从去年12月起，试图将ofo A轮的majority权利买下以控制这家公司，其中包括了ofo的董事会成员、金沙江创投合伙人朱啸虎手里的一票否决权。为了达成此交易，阿里发起了一个不可撤销邀约。“但这个邀约有一个问题，就是滴滴有行使优先权的权利。”在2017年1月4日之前，滴滴行使了优先权。这样，朱啸虎手里的股票和一票否决权并未全部卖给阿里，而是部分卖给了滴滴，部分卖给了阿里。“目前局势不会持续太久，ofo的结局有四种可能：一是阿里投了；二是倒闭了；三是被滴滴控制；四是与摩拜合并。”对于管理层而言，一明显是更好的选择。柳青性格与程维互补。柳青原是高盛亚洲区执行董事，她主导了滴滴的一系列融资和并购案。目前，柳青管资本、管“外交”、管职能部门包括人力和财务，程维管业务和战略多一些。在出行这个大风口面前，每个公司都在构筑自己的生态帝国，只是在网约车擦枪走火了而已。\n\n');
INSERT INTO `archive_remarks`
VALUES (10070,
        '\n`本次收购共涉及九个利益相关方，早、晚期投资人也各怀心思，他们共同将摩拜与ofo从合并边缘，推向了今天各寻靠山的命运。` 一年前的4月，在共享单车鏖战最酣、发展最火热的时候，13位摩拜、ofo投资人接受《财经》记者采访时都称，他们认为最快2017年底，最慢一年内，战局稳定，胜负可分。他们都猜中了开头，但没有猜中结尾。“2017年11月之前，我们都认为摩拜与ofo大概率会合并。但谁也没想到，最后接盘摩拜的会是美团。”一位摩拜董事会成员告诉《财经》记者。2018年4月3日深夜，摩拜股东会通过美团收购方案，美团以27亿美元作价收购摩拜，包括65%现金和35%美团股票，此外美团承担摩拜债务（5-10亿美元之间），管理团队留任。从美团发出收购要约到交割结束，全程在两周内完成。`这次收购涉及到九个利益相关方—腾讯、阿里、美团、滴滴、李斌、摩拜管理层、ofo管理层、摩拜投资人、ofo投资人` 2017年11月之前，多数人都认为摩拜与ofo大概率会合并。在滴滴的推动、腾讯的支持之下，从2017年9月底开始，双方管理层加主要投资人就合并事宜开始谈判。谈判进入尾声时， “因为滴滴要求在合并后的公司拥有绝对的控制力，这引起了戴威（ofo创始人）的反弹。”ofo创始团队极力拉拢阿里，这打破了共享单车行业的利益均势。2018年2月，ofo通过股权与债券并行的方式获得了阿里领投的8.66亿美元，阿里得以进入ofo董事会。阿里的强势介入让合并变得更加渺茫。因为无论是阿里还是腾讯，可能都不会接受共存于同一个董事会里。多位接受《财经》采访的参与交易人士称，这次交易虽然涉及利益复杂，但所有人都显得格外遵守游戏规则——都在明面上谈，没有暗地里的计算较量，相比之前几次中国互联网大并购，这难能可贵。比如王晓峰，虽然个人旗帜鲜明地支持摩拜独立，最后还是选择尊重大多数股东的选择，认可规则就是规则，把个人意愿和自己作为CEO的职责分开了。“这哥们是条汉子，值得敬佩。”包凡说。`一切都在情理之中，从这个意义上说，这是一场没有故事的并购。没有故事的原因不难理解：在悬崖边，没有人愿意多做停留。`\n\n');
INSERT INTO `archive_remarks`
VALUES (10071, '\n创始人说“我们要不惜一切代价赢得战争”，但是“你是那个我们吗？你是那个代价”。\n\n');
INSERT INTO `archive_remarks`
VALUES (10072,
        '\n`猎鹰创投董事总经理李圆峰的注意力从共享经济上转移开了。一年前，这位投资人还将“共享”作为这家新生机构的标签，“50%以上精力看共享” 曾为了抢下一个共享项目，他在见完创始人的半个小时内就打去定金。`\n\n但过去半年多来，李圆峰曾经“一天十几封共享BP”的邮箱，已经很少再收到标有“共享”字样的邮件，取而代之的关键字是：区块链、新零售和小程序。2018年已近过半，去年此时风光无俩的共享充电宝行业持续着宁静——直至目前，仅有小电一家公司更新了融资消息，这距离它的上次融资已过去了10个月。而在去年，这家公司曾因在40天内密集完成3轮融资而名声大噪。`不止一位投资人告诉36氪，他们“眼睁睁地看着”多位共享领域的创业者，摇身一变就成了区块链专家。`而被这些创业者们遗弃身后的，是那些或关停、或已转型的共享概念公司。\n\n`通过还原共享经济在短时间内的起落，我们试图复盘一个典型的、中国式风口的来去。`\n\n也希望能找到以下问题的答案：如果追求风口始终是资本的天然属性，那对于曾经或仍置身于风口之中的资本和创业者，是否存在另一种选择，一个不被风口裹挟命运的选择？5月初，电商公司聚美优品宣布以3亿价格获得街电60%股权，CEO陈欧甚至宣布将亲自操盘。流量、声名、曝光，以及错过风口的恐惧——当众VC们抱憾于共享单车上的“历史性错过”时，共享充电宝横空出世。以2016年夏天共享单车爆发为起，到2018年摩拜被美团收购为终，作为风口的共享跑完了它600天的全程；而对于去年兴起的无人货架来说，这个过程进一步缩短成200天，以至于有人将它称为史上最短命风口。当然，即使合并也不意味着故事终结：当滴滴和快的合并后，新对手uber再度入局，故事重新开始：融资、烧钱、补贴、再合并。如今，摩拜被收购，ofo的命运走向仍悬而未决，关于共享的故事在600天后，已基本走完全程。一个意外的变量是，正当这两家明星公司被炙烤在风口中央、厮杀得你死我活时，反倒给哈罗单车——这样一家起步更晚、非风口公司留下了发展缝隙。根据中国互联网信息中心发布的数据，共享单车领域的押金去年8月就超过100亿元，而因为市场扩张成本过高，一些单车企业出现了挪用押金填补缺口的情况。ofo一度也尝试过芝麻信用免押金，但后来因为资金成本过高，还是重走了收押金的回头路。\n\n');
INSERT INTO `archive_remarks`
VALUES (10073,
        '\n使用频率低，网点数量有待提高 他还表示，目前gufun是共享汽车行业里面做的最大的，光北京就有180万gufun注册用户。不过，这一点外界无法考证。营收过于单一，盈利问题亟待解决 运营成本高、营收过于单一、盈利难\n');
INSERT INTO `archive_remarks`
VALUES (10074,
        '\n人人车 李健 万亿级的二手车行业在2014-2018年间吸引来了大量人才、创业者和资本 2014年创立人人车时，我对这个行业有几个判断。第一个判断：要做成这个事情，流量是一堵逾越不过去的墙。它是一个难题，但是有方案可以解决。二手车行业的流量早就开始线上化了。越来越少的人在需求（买卖）不那么明确的时候就去线下逛，所以花乡这种地方的流量正越来越少。也就是说，你有一个车想卖，你大概率需要把车登到网上才能更快的卖出去。而我们又是做线上能力很强的团队，这是我们擅长的事儿。第二个判断是什么？我认为广告是有效的。你（重读记者和阳）可能觉得这是个低频的行业，怀疑说打广告不靠谱。我觉得打广告靠不靠谱，跟这个行业是低频还是高频的关系不大。那跟什么关系大？跟这个行业需不需要一个品牌关系大。人人车一开始的动作是找流量，就是跟58、赶集合作，我们在上面发广告吸引车主。人人车规模小的时候，流量还挺好找。2015年58赶集合并之后58下了人人车的广告。在我看来这种动作属于巷战。巷战，我们是不怕的。这种小打小闹怎么掐都掐不死我们。我们是一个极其聪明的团队。二手车的精准渠道还是很多的。比如说一堆的汽车相关的APP，一堆的汽车相关的公众号，一堆的汽车媒体平台，分类信息、微博、广点通、百度也都算。其中的主要阵地不是分类信息而是百度。大家在百度上搜索买卖二手车什么的，我们就把它给运营下来。2015年、2016年你能想象到的所有维度的效率，人人车都比瓜子要高 2017年之前，我也思考过整个二手车行业的未来。但就是思考，并没有跟企业的战略紧密的结合在一起。它们的关联性不强。比如这个行业的模式，人人车选择了C2C，那我们的思考就是说我们要专注。创业要专注。这句话在那时的我心中的分量相对更重。它占据了某种程度上的主导，也使得我们对一些机会感到麻痹。\n\n');
INSERT INTO `archive_remarks`
VALUES (10075, '\n“非头部企业便宜也不投” Future of Work 大设备、医疗AI、智能物流车\n');
INSERT INTO `archive_remarks`
VALUES (10076, '\n一切商业故事背后都是资本故事。`“这个行业让资本给毁了，我们最近也在转型，裁撤了很多人，筹备区块链，转型为新零售第一链。”5月30日，友盒便利创始人陈惠鲁告诉猎云网。`\n\n');
INSERT INTO `archive_remarks`
VALUES (10077, '\n`原来做同城, 但是碎市场空间小非平台型. 后来做消费商超, 尤其是大店. 大店做配送必须深入结合仓储供应链, 和外卖拿了就走不一样, 获得资本认可`\n\n');
INSERT INTO `archive_remarks`
VALUES (10078,
        '\n2007年前后，摩托罗拉中国公司强将如云，在位于北京望京的摩托罗拉大厦，伫立着“三座山头”——分别是钱晨、周光平和陈达，而他们的共同汇报对象是马来西亚籍的摩托罗拉中国公司董事长赖炳荣。由小米开创的互联网手机模式也被学习和借鉴，只不过结局迥异，荣耀、一加等公司开花结果，魅族、锤子和360手机等公司则在苦苦挣扎，而更多的创业公司早已灰飞烟灭。 雷军、黄章、罗永浩、刘作虎、贾跃亭……这些创业者具有完全不同的特质，有的是高等学府学霸，有的却只有初中学历，有的之前职业是教师，有的则出自传统制造业公司。如今，他们或没落，或挣扎，或成功，这是他们十年间发生的故事。直到2010年12月，黄章才觉得自己被欺骗了，在得知MIUI是雷军投资的公司后，他公开声称自己很后悔之前毫无保留地和雷军交流魅族的一切。“就连M9的UI交互文档都有发给他请他一起探讨。我觉得MIUI伪装成民间团队很过分，请不要在论坛发MIUI的话题。” `钱晨不要股权要现金, 于是没去成小米! 结果去了锤子. 周光平到后来雷军也不完全满意, 但是还是创始人身份功成身退. 一念之差呀!`徐昕泉被否以后，华为终端还报了何刚、陈向阳等几个人到董事会，但最后讨论都没通过，然后就是在会上直接宣布荣耀由刘江峰来负责。华为同时还宣布，华为终端电商部将继续由徐昕泉负责，并向刘江峰汇报，这显然是徐昕泉难以接受的。 据媒体报道，2014年4月1日，那天是愚人节，徐昕泉带领手下三四十人集体跳槽到了京东。2015年12月，余承东在华为内部工作微信群吐槽徐昕泉等人的聊天截图被曝光，余承东随后承认了截图的真实性，但称不该被进行断章取义的传播。`阿里还抢着投了魅族5.9亿美元, 压过360. 360就投了酷派??` `锤子代工厂各种惨, 被卡, 代工厂自己倒闭` `刘江峰, 荣耀事业部功勋总裁, 去过酷派, 时间未老 理想还在, 现在是多点. 交叉着做的, 都是离开华为之后` 刘江峰一定不会忘记，他成为酷派CEO那个下午的尴尬场面。2016年8月16日，这天本应是高兴的日子，酷派在北京乐视体育生态中心（现更名为“凯迪拉克中心”）举办手机新品发布会，并正式宣布刘江峰加盟酷派担任CEO。 和冯幸加盟那天一样，远在国外的贾跃亭并没有到场，而是通过远程视频宣布了这一消息。随后，刘江峰被请到台上，正当他酝酿好情绪要讲话时，突然话筒没声音了，台下的人听不到声音，唯有通过口型猜测他在说什么，工作人员迅速更换话筒发现依然不行，这才确定不是话筒坏了，而是声乐系统出了故障。前央视名嘴、乐视体育联席总裁刘建宏赶紧上台化解尴尬，他用双手比出扩音器，并用自己的嗓门吼出5个体育常识问题，每个问题谁先答对就送一部当天发布的新机。几分钟后刘江峰再次上台，又出现音响故障，刘建宏只能宣布发布会暂停10分钟。 就在贾跃亭全员信发出的第一时间，时任酷派CEO的刘江峰知道事态不对，马上去找融资，当时包括建银、华融等二三十家投资者都表示有投资意向，且投资规模能在几亿美金，完全有希望盘活酷派。 当与这些机构谈得差不多之后，刘江峰去找贾跃亭谈，却遭到拒绝，后者不愿意稀释股权。而另一边，酷派本身有土地可以卖，刘江峰想借此筹到资金，但酷派创始人郭德英又不同意。两个老板相互之间“踢皮球”，延误了融资的最佳时期。到2017年3月，那些原本有意要投的机构早已闭门谢客了。5个月后，刘江峰从酷派离职。纯讲手机的故事，可能真的快到曲终人散的时候了，但是这些伟大的创业者们，他们全新的故事才刚刚开始。正如雷军在香港所说，手机行业也许不会快速增长了，但小米还有十倍的成长空间。\n\n');
INSERT INTO `archive_remarks`
VALUES (10079,
        '\n`罢黜高管、重整供应链、进攻线下和印度，小米一年间如何实现逆转？` 一位京东内部人士对深网透露，`手机行业刘强东特别关注三家公司——乐视、小米和锤子`，京东是小米网之外小米手机最大的销售渠道。同样担心小米出问题的，还有运营商。2016年8月与小米签署全年3000万台包销协议的中国移动，也在密切关注小米的走向。一位中国移动的负责人心里也很没底，担心小米出现危机后危及双方的合作，因为以往一家手机公司一旦下滑，往往就兵败如山倒。直到2017年7月，合作伙伴的所有担心才随着雷军的一封公开信渐渐散去。雷军在信中公布了小米手机第二季度成绩单，单季出货量2316万台，创下历史最高纪录，用数据证明小米已实现触底反弹。2017年小米又接连发布了小米6、MIX2等产品，在一年低谷期的蛰伏之后，公司重新走上了正轨。雷军说，小米能够实现大逆转，最为关键的原因在于整个公司在2016年进行了全方位的补课。在研发和供应链层面，联合创始人周光平被撤换，由雷军亲自负责；在渠道方面，总裁林斌大规模开线下店，并发动全国群众开小店狙击OV等对手；在国际化方面，印度市场业绩提升，刮起“小米旋风”。消息称，由周光平总负责、郭俊直接负责的供应链团队给小米惹了很多麻烦，雷军都没有动换人的念头，但有些事已经让雷军忍无可忍，其中就包括小米得罪三星半导体这件事。2016年，小米的补课除了供应链，线下渠道也是一个重要环节。在此之前，小米已经意识到线上手机销量占比仅仅只有线下的1/3，必须要考虑做线下。但这时雷军发现，小米以往的高性价比模式反而使得它无法学习OPPO和vivo在全国疯狂开设门店。 不过，雷军运气好就体现在这里，他曾经一次无心插柳的举动，可以说才一举成就了如今的小米之家线下店模式。小米之家团队的工作就是把平销（即每平米的销售额）做起来，为此就得在“有多少人进店”、“有多高的转化率”这两个指标上下功夫。但因为有刘德投资的几十家生态链企业，多少人进店这个问题已经被解决了。小米生态链企业可以提供手环、充电宝、平衡车、电动牙刷、扫地机器人等众多硬件设备，让小米之家不仅仅只卖手机，这样很多人可以一两周就进店一次。因为进店频次高，最终会撑起这家店的流量。`还尝试过小米小店, 自干五微商... 死了` 与之相比，雷军对马努·贾殷的表现则相当满意，他实实在在让小米模式落地印度，销售业绩一路高歌猛进，即便整个小米在2016年处于最低谷期时印度也能传来捷报。\n\n');
INSERT INTO `archive_remarks`
VALUES (10080,
        '\n配合4月份重要的板球营销活动，OPPO、vivo（下简称OV）为代表的中国手机公司在印度提前抢夺市场广告位资源。同时，中国手机品牌金立、荣耀、小米、联想，以及韩国的三星等公司，都不再袖手旁观，印度本土厂商Micromax、Intex也都醒过神来纷纷加入户外广告位的争抢。“下一步，我要把所有门头广告牌连成一片。”魏向西把手一挥，指着面前的M2K两幢连体建筑告诉腾讯科技。但是，OV过来后，从去年开始改变了操作惯例，过去免费的资源，因为OV而有了价格。“OV直接告诉店主，我帮你做新门头，有我的形象Logo，加你的店名字，店名字很小放在右下角，每个月给你一定数量的钱，或者给你更多钱一年不准换。”印度所有零销店都由小老板私有，手机业务只能一家一家去谈，但vivo硬是通过分布在全印度数不清的“魏向西”们，改变了印度街巷景观。去年8月，魏向西与30多位同事一起，被vivo新疆销售公司老板一张机票，借道上海，送到了德里。这个决策如此匆忙，他的护照、签证都是加急办成。魏向西来到印度后，职位由督导升成为SE。与国内相比，这种升职快了很多。他下面管着3名印度督导、6名印度导购员。其中一员印度督导是当地名校德里大学毕业生。他们一起负责区域内200多家手机零售店和vivo手机相关事务。魏向西来印度不超过半年时间，急需学会和印度人相处。据他观察，印度人很懒散，到10点还没开始干活，效率低下；员工11点要喝咖啡，中方管理者只能等着他们；甚至有一些印度员工请假的原因可能是同一个亲戚去世两次。就在腾讯科技跟随魏向西走访一家手机门店时，其中一位印度员工趁机向他提出要升职的要求，魏向西简单安抚了一下，退出了店。“印度人一次只能交待做一件事”，魏向西说，说狠了还会哭，“玻璃心”。好在作为vivo派驻印度第三代员工，有前面两批摸索总结出来的经验，魏向西稍微轻松些。中国南方公司一套完全的激励机制被搬到印度，“平常工资尚可，年底给到超出预期的奖金。”这可能是OV凶狠打法和顽强执行力内在秘密。还有一个OV秘密少有人知。据腾讯科技了解，`OV后面有一个深潜的类似董事会组织，OPPO CEO陈明永和vivo CEO 沈炜都是位置较低一员，步步高创始人段永平也在其中，还有很多低调大佬。一些大事由董事会协调。OV双方上至高管、下至员工，都称对方为“友军”，有意识地约束员工合规竞争。`很多公司密切注视着OPPO新动向。OPPO将公司宣传口号改为“照相手机”（Camera Phone）之后，vivo改成“照相和音乐手机”（Camera&Music），金立则改成照相和续航手机（Camera&Battery）。\n\n');
INSERT INTO `archive_remarks`
VALUES (10081,
        '\n在韩国，李世石并不是一个招媒体喜欢的棋手。“目中无人”、“口无遮拦”、“不尊重对手和前辈”，你可以在任何一个韩国围棋记者口中得到这些形容李世石的话。在过去15年，这些标签就像他的成绩一样耀眼，即使他现在已经比过去收敛许多，这些轻狂之言也时常会被翻出，虽然大部分时间仅仅是作为谈资。`感兴趣的话题一个没提呀. 当初说签了协议不打劫, 故意放水, 用的计算资源不一样联机版什么的. 都付笑谈中. 要坚强!`\n\n');
INSERT INTO `archive_remarks`
VALUES (10082, '\n三从一大从秘从史从情大信息量\n\n');
INSERT INTO `archive_remarks`
VALUES (10083,
        '\n凤凰网、新浪网、《第一财经周刊》、36氪 《知音》、《读者》和《故事会》是发行量前三名。罗辑思维、十点读书对应的是《读者》，咪蒙、夜听等千万大号对应的则是《知音》。《媒体本质上讲是一个皮肉生意》《写微信公众号的都是下九流》在如何持续产出高质量内容方面，老编辑倡导“电商思维”——把行业热点、重磅人物、职场话题等比作SKU（电商库存量单位），认为“没有50个SKU，你写着写着就没东西写了；你就要扩充赛道，增加SKU”。他还说，只要自己现在写BAT、京东等公司、话题和人物，一定就有流量。\n\n');
INSERT INTO `archive_remarks`
VALUES (10084,
        '\n当然，不是所有人都有运气成为现象——有一些自媒体，比如科技圈里知名的爆料和深度分析微信号“开八”，带着一种 “不想做大”的自在；而大部分人，仍然怀着“媒体”之外更大的野心。`相比大红大紫的Papi酱或者伟大的安妮，企鹅吃喝指南和胡辛束还算不上人尽皆知。但这并不影响他们拿到投资，或者在北京CBD地区的华贸公寓租下150多平米的办公室，划分出一个办公区，一个会议室，还有一个临时睡觉的休息间，准备在这里开始自己的事业。` 一部分被关注到的个人内容创作者被称为“自媒体”，其中的每一个个体，至少可以网罗到微信6.5亿用户中10万或者20万用户，多则像papi酱一样成为千万级用户的关注焦点和现象。大部分人的粉丝量并没有巨大的绝对值，但就像黄金时期的杂志一样，六位数的发行量，也足以得到第一梯队的光环以及足够养活上百人团队的收入。`胡辛束, 少女心文章, 爆过, 然后就能接广告` 一边打字，胡辛束一边会读出声来。主题很多与情绪和少女心有关，比如《你闻起来就很像对的人啊》，或者《很高兴能成为你的退路》，最后她会再配上一张自己画的4像素线条的小人。在每篇广告可以拿下1万块钱的时候，胡辛束就从环时互动辞职单干了，现在的报价涨了3倍多。一个月数十万元的收入，让胡辛束可以负担位华贸公寓的房租，加上一个经纪人、一个设计师和一个还未全职的助理。\n\n李淼被很多人知道是因为他与携程掐了一架，并且把前因后果包括携程的回应都直播到了自己的公众号上。作为从日本一桥大学进修回来的留学生，微信公众号“李淼”其实一直以“懂日本的中国人”的形象出现。事实证明李淼为自己累计了一群很有消费能力的用户。这篇公众号最后产生了10万人民币的流水，单是200元左右的勺子就卖出去200多把。因为是纯手工艺作品，一天只有50件的产量。李淼会等一段时间，菊地做好东西发到他北京的家里，他再从北京一一为订购者发货。好内容的门槛是生产者本身，而目前的你争我抢，说明好内容也还在稀缺资源的行列里。而另一方面，有能力识别出好内容的用户，也不介意为他们得到的服务买单。挺好的，对于喜欢内容的人来说，这个时代有点吵，但不算坏。`可以这么说 - 但我还是怀念, 离不开论坛`\n\n');
INSERT INTO `archive_remarks`
VALUES (10085,
        '\n`春雨医生张锐` 导读：这是写于一年前的稿子。在成稿后，基于各种考虑，我们约定一年后刊发。我们恪守了承诺。今天，是张锐去世一周年的日子。我们希望，有些人还没被忘记。我们祝愿，所有创业者都能越过山丘。张锐没有给她留下太多东西，除了回忆。他过世之后，有人问她，张锐有没有什么保险啊？她说，没有。那个突然从这个世界上消失的男人，从事互联网医疗的男人，甚至没有留下冷冻精子。回到合肥父母家中，头两天张锐没吃上臭干，家里没有。第三天，张锐的大学同学请他们在一个私家菜馆吃饭。她跑去问厨师：“你们今天的菜单里有没有臭干？”厨师说：“没有。” `不太喜欢这篇文章, 但是提醒自己, 压力适度`\n\n');
INSERT INTO `archive_remarks`
VALUES (10086,
        '\nCEO杨浩涌担心老虎基金会强迫其与58合并，所以要求在投资条款中加上一条排他协议，即老虎基金不得再投资58  如果双方合并意愿都很强烈，管理层便对交易形成绝对主控权，典型如滴滴与优步中国的合并。而当一方主动而另一方较被动时，强势股东以及精明的交易撮合者就上场了。红杉资本全球执行合伙人沈南鹏对《财经》记者说，投资人在这场合并中的作用被夸大了。红杉是风险投资行业的翘楚之一，但在这个案子上并不是一个大角色。据《财经》记者了解，红杉资本在滴滴中的持股约在0.1个百分点左右，他们是最后一轮被通知的几十家股东之一。包凡在接受《财经》记者采访时称。华兴在滴滴快的、美团点评的合并案中担任财务顾问，2015年他们参与的并购交易达350亿美元。华兴被业内认为是擅长为买卖双方定价的公司。金沙江朱啸虎, 凯鹏华盈KPCB周炜(创世伙伴) 近年来，腾讯、百度陆续从一线战场撤退，腾讯剥离了搜索、电商等业务，百度也剥离了爱奇艺、去哪儿等，只有阿里巴巴还在战斗\n\n');
INSERT INTO `archive_remarks`
VALUES (10087,
        '\n`脸萌郭列, 好像还是卖了吧, Faceu, 3亿卖给今日头条.` 一起唱创始人尹桑、V直播创始人刘靖康、Segment Fault创始人高阳、锐波科技创始人孙宇晨、POI互联网在线教育创始人夏鹏晔、Teambition创始人齐俊元等十多位88后创业者。 `王凯歆 还在币圈捞过一笔... 而且都不是自己发币这种有一丝丝技术含量的, 而是宣称自己有OKB额度帮人私募?... 还有别的渣渣币私募` 2017年，王凯歆再次通过其个人公众号发出了《98年鬼才少女新项目来袭》的文章，开始了第二次创业。王凯歆在文章中宣称“联合南京农业大学食品科技学院某教授的团队，共同研发养生保健产品”  而后，王凯歆又在朋友圈晒出“二元期权”、“外汇操盘”、“美容医疗”等等多个项目，无一例外都受到了广泛质疑，均没有再重现神奇百货的“辉煌”。`余佳文现在在学佛?... 反正, 靠着之前的融资还活的可以, 只要没什么大追求`\n\n');
INSERT INTO `archive_remarks`
VALUES (10088, '\n大部分追裁员热点的文章都不值得看, 因为每年年底定时一篇, 然后3月又是招人. 但是这几篇记录价值在于, 难得把对了脉. 16年冬还有余温, 19年冬寒冰彻骨\n\n');
INSERT INTO `archive_remarks`
VALUES (10089, '\n`京东要悲剧` 从这来的\n');
INSERT INTO `archive_remarks`
VALUES (10090,
        '\n然后他又问了我一个问题：“晓波，你知道天下最好的商业模式是什么吗？”我问他是什么，他说：“天下最好的商业模式是国家模式。”\n\n国家是什么？国家本质上来讲就是用一种暴力机器的方式来保护全体公民的权利。而国家的主要盈利第一是靠税收，只要你是公民，每天就要交税；第二，它提供了很多看上去非常廉价的商品。譬如它把自来水管接到你家里，如果你要用自来水，你就得交钱给它；同样它还把电送到你家里；它在土地上修马路、车站，在河边修建渡口，它还提供了很多公共服务，例如医院、大学。在你每天的生活中，你首先要交税，其次会消费这些公共服务，而国家就可以从中获得很大的收益。\n马云说，他就要把未来的阿里巴巴变成一种国家模式。\n\n2005年我到他办公室的时候，他的办公室里有一个很大的书架，但是书架上面的书加在一起也就五六本，其中有一本就是我写的《大败局》。可见他对失败这个问题非常重视。他在一次演讲中提到失败时是这样说的：“我花时间最多的，是研究国内外企业是怎么失败的。这两年我给公司所有高管推荐的书，都是讲别人是怎么失败的。因为失败的原因都差不多，就是那么四五个很愚蠢的决定。但是每个人都认为那个错误是别人会犯的，我怎么可能会犯。但是，你一定会犯，即使提醒过你，你还是会犯。”\n\n第一，马云的年龄最大。他是1964年出生的，而这些人中，1964年出生的只有两个，马云和张朝阳，马云又比张朝阳大了15天左右。其他的人基本上出生在1970年左右。\n第二，他的学历最低。这些人很多都出身国际名校，比如张朝阳留学MIT（麻省理工学院），李彦宏也是在美国留学过的，陈天桥是上海复旦毕业的，周鸿祎是西安交大的硕士毕业生，丁磊是电子科技大学的。这些人基本都毕业于中国名校，或者曾留学国外，而且学的也都是电子工程等这一方面的专业。但马云呢？他是杭州师范学院毕业的，而且他学的是英语专业，在这群人中，他是学历最低的一个人。\n第三，他所从事的业务在当年是最偏的。1999年，互联网领域里的两个主要商业 […]\n\n\n第一，马云的年龄最大。他是1964年出生的，而这些人中，1964年出生的只有两个，马云和张朝阳，马云又比张朝阳大了15天左右。其他的人基本上出生在1970年左右。\n第二，他的学历最低。这些人很多都出身国际名校，比如张朝阳留学MIT（麻省理工学院），李彦宏也是在美国留学过的，陈天桥是上海复旦毕业的，周鸿祎是西安交大的硕士毕业生，丁磊是电子科技大学的。这些人基本都毕业于中国名校，或者曾留学国外，而且学的也都是电子工程等这一方面的专业。但马云呢？他是杭州师范学院毕业的，而且他学的是英语专业，在这群人中，他是学历最低的一个人。\n第三，他所从事的业务在当年是最偏的。1999年，互联网领域里的两个主要商业 […]\n\n马云讲到第三个愿景的时候，大家又开始热烈鼓掌了——“我们要做一家生存102年的企业。”——反正大伙儿也活不到那一天，鼓掌也挺好。\n其实，马云在那个时候对失败这件事就已经有很高的警惕了。他创业的50万元资金也不是他一个人的，而是这18个——包括他太太在内的创业者一起凑的。马云是一个大股东，但大家都有股权，所以阿里巴巴一开始就是一家集资创建的企业。\n\n接下来，我们要谈到阿里巴巴辉煌的创业事迹表里面，马云所犯下的创业以来第一个错误。马云犯了什么错误呢？\n——马云把他的国际总部搬到了美国，中国总部搬到了上海。\n我们知道，在创业初期，马云是在位于杭州城郊接合部的家里办公的。而在他有了2500万美金的资金以后，他把中国总部搬到了中国最大的商业城市——上海，而且是上海最繁荣的一条街——淮海路。马云在那里租了很大的一个楼层，因为他觉得自己马上就是一个国际级的企业家，阿里巴巴也会成为一个国际级的企业了。但，这是他犯下的第一个错误。\n后来马云讲过这一段话：“以前我曾把阿里巴巴的总部放在上海，在淮海路租了一个很大的办公室，装修得漂漂亮亮的。结果那一年的时间特 […]\n\n接下来，我们要谈到阿里巴巴辉煌的创业事迹表里面，马云所犯下的创业以来第一个错误。马云犯了什么错误呢？\n——马云把他的国际总部搬到了美国，中国总部搬到了上海。\n我们知道，在创业初期，马云是在位于杭州城郊接合部的家里办公的。而在他有了2500万美金的资金以后，他把中国总部搬到了中国最大的商业城市——上海，而且是上海最繁荣的一条街——淮海路。马云在那里租了很大的一个楼层，因为他觉得自己马上就是一个国际级的企业家，阿里巴巴也会成为一个国际级的企业了。但，这是他犯下的第一个错误。\n后来马云讲过这一段话：“以前我曾把阿里巴巴的总部放在上海，在淮海路租了一个很大的办公室，装修得漂漂亮亮的。结果那一年的时间特 […]\n\n为什么马云的这些如意算盘都没有成功呢？马云整合雅虎中国的失败原因有哪些呢？原因大概有三个。\n第一，业务整合的失焦。雅虎有门户、搜索、邮箱以及IM，当这些东西一下子全部跑到阿里巴巴面前的时候，“阿里巴巴”就会问：“我先弄哪一个呢？”\n雅虎中国的这些业务需要跟阿里巴巴内部进行融合。但是在2005年，阿里巴巴已经有自己的邮箱产品、战略搜索产品，也有自己的IM系统，这些全部都有了。那么阿里巴巴的这些“亲生儿子”和来自雅虎中国的业务究竟怎么进行整合，就变成了一个非常困难的问题。在很长时间里，雅虎团队和阿里巴巴团队之间的业务整合都没有完成，甚至可以说从来没有找到过一个聚焦点。\n\n第三，团队磨合。雅虎是一个国际化的团队，2003年雅虎收购了周鸿祎的“3721”，请周鸿祎去当雅虎中国的总裁，但周非常不适应，一年多时间吵吵闹闹，后来阿里巴巴收购了雅虎中国，矛盾就转移到阿里团队和周鸿祎团队之间。他们之间闹到了什么地步呢？闹到后来雅虎在首页上公开谴责已经离职了的周鸿祎。可见当时两个团队之间的磨合非常困难。\n再举个例子，在阿里巴巴刚刚收购雅虎的时候，曾经有一次把整个雅虎团队、大概几车厢的人拉到了杭州，希望能够把阿里巴巴的企业文化灌输给这些人。但是结果呢？也是非常失败。\n这个表面看上去光鲜亮丽的并购案，最后酿出来的是两个大的苦果：\n第一个苦果是，从此以后马云在股权意义上失去了对阿里 […]\n\n马云自己反思过这件事，他在2012年发了这样一条微博：“2001年的时候我犯了一个错误，我告诉我的18位共同创业的同仁，他们只能做小组经理，而所有的副总裁都得从外面聘任。现在10年过去了，我从外面聘请的人才都走了，而我之前曾怀疑过能力的人都成了副总裁或董事。我相信两个信条——态度比能力重要；选择同样也比能力重要。”\n那么我们不禁讨论一个问题：为什么这些国际级的人才在阿里巴巴会“集体阵亡”呢？\n第一个原因，我认为是文化的排斥性。\n阿里巴巴有两个非常重要的文化，第一个叫作武侠文化。大家都知道，马云非常喜欢读金庸的武侠小说，所以一到他的公司，会发现所有的办公室和会议室，挂的牌子全部是金庸小说里的，例 […]\n\n曾经当过淘宝网副总裁的黄若就是一名“空降兵”。她曾经对马云讲过一段话，后来这段话被记者记录下来：“你现在是阿里巴巴大家长，你面临两种人：一种是你的女儿，你从小看她长大，怎么看都舒服，哪怕她脸上长了痘；我们是嫁到你们家的儿媳妇，战战兢兢，想讨大家长的喜欢，但这个大家长看女儿和看儿媳妇永远是两种眼光。所以你这个大家长，如果不能很好地解决这个问题的话，你会让这些儿媳妇日子很难过。”\n\n\n对这种冲突的天然性，马云也很无奈。所以在有段时间他变得很反智，他曾经讲过一句话：“有两个东西我最讨厌，第一个我讨厌MBA，MBA都不靠谱。你会不会打仗？你不会打仗你读MBA有什么用？MBA在阿里巴巴眼里不算个东西。第二个讨厌什么呢？咨询顾问。咨询公司搞个咨询项目，拿我500万、1000万甚至拿我2000万，拿出来一堆纸给我看。你有没有打过仗？你知道中国市场怎么回事吗？你不知道，凭什么收那么多钱？”\n马云开始不相信书本，相信直觉。这其中很大的原因是因为他在国际公司“空降兵”人才的引进上吃了很大苦头。\n\n\n支付宝VIE事件的前因后果\n支付宝早期是属于阿里巴巴集团的资产，但是到了2009年6月份的时候，出现了一个异常现象：阿里巴巴集团分两次把支付宝的股权转移到了一家名为“浙江阿里巴巴电子商务有限公司”的企业。而浙江阿里巴巴电子商务有限公司的大股东正是马云，他握有80%的股份，另外20%的股份则在一个叫谢世煌的人手中。也就是说支付宝这部分的资产被两次转移到了马云的私人公司去了。当时股权转让的总金额是3.3亿人民币。这是2009年以后发生的事。\n\n马云食言之“进军游戏”\n\n马云是中国所有的企业家里面最具演讲能力的人，他讲的话被出版成了很多部书，而且都能够卖个几十万册。他也是中国所有的企业家中口条（即口头表达能力）最好的人。几年前有一种“北牛南马”的说法，指的是长江以北最会讲话的人是牛根生，长江以南则是马云。如果“牛马”在一起开会的话，那么别人就插不上任何嘴了。\n\n就在几个企业家大佬在台上做演讲的时候，突然台下一个中年妇女站起来，指着台上的丁磊说“我要杀了你”。丁磊吓了一跳，就问为什么。原来是因为她的儿子沉迷于一款网络游戏，她跟她儿子发生争执，于是儿子就离家出走了，当时还没找回来。\n丁磊问她：“你儿子玩的是什么游戏呢？”那个中年妇女说：“我儿子玩的是《传奇》。”丁磊说：“那不是我的游戏，那是陈天桥的游戏。”\n\n第二句被风吹走的话是关于物流的。大家知道，淘宝的崛起，带动了整个中国物流行业的繁荣，中国现在前四大的物流公司，几乎一半以上的业务来源，都是来自于跟阿里巴巴的合作。\n为了扶持这些下游企业，马云曾说过，阿里巴巴永远不会做物流公司。\n然而到2010年，阿里巴巴就投资了一家叫星晨急便的物流公司——后来这家公司倒闭了。之后在该年年底，淘宝正式宣布，要投资1000亿元人民币做淘宝自己的物流平台。\n\n其实不止马云，中国有很多非常著名的企业家，他们都讲过一些被风吹走的、要重新吃回去的话。比如说任正非，当年有过一个非常著名的“华为基本法”，第一条就是“我们将永不进入信息服务业”。但到了2014年，信息服务板块在华为的整个业务模块中是成长最快的一个模块。\n宗庆后曾说过“我不会进军白酒业”，2013年娃哈哈开始做白酒了。\n刘强东说京东商城五年内不会涉足在线图书销售市场，在他讲完这句话6个月后，京东图书频道就上线了。\n周鸿祎说奇虎360不会涉足杀毒领域，但大家知道现在奇虎360的主要业务就在免费杀毒领域。\n陈年说凡客诚品绝不做女装，但现在凡客诚品不仅做女装，连菜刀都在做。\n黄章说魅族M9直到停产也不 […]\n\n');
INSERT INTO `archive_remarks`
VALUES (10091, '\nohayoo要做开发者平台, 助力开发, 测数, 投放, 出海等等\n');
INSERT INTO `archive_remarks`
VALUES (10093,
        '\n1983年，国家科委派了两位年轻的干部去斯坦福大学交流，一位叫张晓彬，另一位叫陈伟力。\n\n这两位年轻干部的背景都不寻常，前者是前卫生部部长崔月犁之子，后者的父亲位列第二代领导集体。在美国，张晓彬研究风险投资，而陈伟力攻读经济学，1984年回国后，张晓彬等向中央递交了一份报告，提议建立风险投资机构，这份报告很快获得中央的批示。\n\n联办对中国证券市场的创建做出了重要贡献，当然也跟筹划者的背景密不可分，比如张晓彬们去中央汇报时，领导就笑着打招呼[1]：“是你们几个啊！”\n\n当年四通需要融资，中创团队进驻调研，索要各种数据和资料，输入计算机咔咔咔做了一通分析，最后却给出了个“如果有风险，与他们无关；如果有利益，他们得大头”的方案。四通当时的老大当面讽刺道[2]：“这哪里是什么风险投资公司，你们应该叫保险公司吧？”\n\n其实擅长“整合资源”和“政策套利”的群体，更容易在PE阶段和投资银行领域实现“货币化”。据说当年外资投行老员工最喜欢干的事情，就是对着各大外资投行中国区老大的名单如数家珍，高深莫测地告诉新员工：这是谁家的公子、这是谁家的女婿、这是谁家的儿媳……\n\n\n从90年代开始，中创就发挥比较优势，在海南和上海炒楼炒股，大搞资本运作。到92年底，中创营运资金达40亿元，下设10个金融部门，11家证券交易营业部，9个办事处，下辖81家工商企业。此时的中创，俨然是个什么赚钱就搞什么的金控集团，而非一家专业风投机构。\n\n事实证明这家风险投资公司既不懂风险，也很难说懂投资。1993年海南房地产泡沫破灭，中创一个烂尾项目的损失就高达10亿元。到了1998年中央下决心搞金融大整顿，中创因违规炒房炒股，资不抵债轰然倒塌。复盘这家公司的Portfolio（投资组合），一家明星公司也没有。\n\nVC投资通常都集中在企业成长的早期和中期，对企业的赛道、产品、技术、团队等进行押注，赚的是智商、胆识和前瞻力的钱。“政策套利”和“关系寻租”这种在其他行业可以发财的方法，在VC阶段基本上没有用武之地，直到PE或者pre-IPO阶段，它们才能有机会刷些存在感。\n\n中创没给业界留下什么遗产，但为这个行业写下了一条铁律：风险投资，必定是一个平民子弟英雄主义的大型实践场。');
INSERT INTO `archive_remarks`
VALUES (10094,
        '\n9 月 27 日，阿里宣布钉钉升级为大钉钉事业部，与阿里云全面融合，称将整合集团所有相关力量，确保 “云钉一体” 战略全面落地。\n\n《晚点 LatePost》独家获悉，阿里企业智能事业部负责人、政务钉钉负责人叶军（花名：不穷）接任陈航，接任大钉钉事业部。原钉钉 CEO 陈航（花名：无招）转任阿里巴巴董事局主席兼 CEO 张勇（花名：逍遥子）的助理。\n\n\n在阿里，整合多个业务板块、设立 “大 XX” 是比较常见的组织方式，有利于重要业务在过渡期的平稳，比如这次的“大钉钉”，过去的“大天猫”、“大文娱”。\n\n叶军被认为是在过渡期间负责钉钉的最合适人选，此前叶军负责企业智能事业部，去年开始兼任政务钉钉事业部负责人，疫情期间，叶军主导搭建 “宜搭” 平台，给各地提供疫情的技术支持和服务。熟悉叶军的人评价他“是技术出身，又做了阿里内网，综合管理能力很不错。”\n\n同时，《晚点 LatePost》了解到，阿里巴巴集团副总裁、人工智能实验室总经理陈丽娟（花名：浅雪）也将加入大钉钉事业部，未来将深度介入统筹 “云钉一体” 战略。\n\n陈丽娟曾是淘宝第一任产品经理，2015 年 4 月 2 日阿里成立智能生活事业部时，浅雪曾被任命为阿里智能生活事业部总经理，因此在阿里内部，浅雪还有 “阿里巴巴 IoT 创建人” 之称。\n\n值得注意的是，此次调岗 CEO 张勇助理的陈航，在阿里的用人传统中，CEO 助理这个岗位往往是为了中转的临时职务头衔，这意味着陈航将会在不远的未来负责新的业务。\n\n陈航是钉钉的核心人物。\n\n2014 年春节，P8 级别的陈航带领六名基层员工入驻湖畔花园，开始研发企业通讯工具，正式以 “钉钉” 为名，悄然发布了 1.0 版本，支持 IM 即时通讯与电话功能打通。\n\n陈航被钉钉员工认为是个“理想主义的疯子”，脾气暴躁，对产品要求极为严苛。他曾逢人便推荐钉钉——包子摊老板、幼儿园家长、记者等。这样的领导人风格，能够使其快速突破 2B 社交产品用户需求分散化的壁垒，短时间内找到大小商家的最大公约数需求。');
INSERT INTO `archive_remarks`
VALUES (10096,
        '\n2020 年最热的赛道之一——社区团购已吸引了阿里、拼多多、美团、滴滴、京东等公司下场。各家从观望、小步试水阶段，开始进入到大举投入资金、人力的预备战阶段。\n\n参与者众多，且聚集了今日中国实力最强的几家互联网大公司。多位接受《晚点 LatePost》采访的上述公司人士称，他们认为社区团购之战将成为中国互联网有史以来最惨烈的战争之一。美团和拼多多这两大新晋巨头也在这一战场首次正面相遇。\n\n最新的消息是阿里巴巴已正式入场。\n\n`...也许是P8等着升9吧`\n\n一位生鲜公司战略部人士称，2019 年有一两百个社区团购公司，在全国各地开花，到最后所有人的供应源都一模一样，价格也没有一个公司特别有优势，就靠纯补贴。谁现金流多，谁能快速融资，谁就活得久，“说到底就是熬，就看谁把谁熬死。”\n\n这是互联网公司惯有的打法，像物美、大润发、沃尔玛等传统企业根本无力参与，“我们冷兵器作战，你来个原子弹，我们只能撤了。”上述战略部人士说。\n\n社区团购成为各家必争之地，在于它的想象力大。一位从业者预测，一是业务可延伸到本地生活，如让团长推荐水上乐园等游乐项目、本地的酒店等；二是当有了一定流量后，社区团购未来一定会和主流电商平台比拼商品的价格和质量。在这种逻辑下，拼多多、阿里做社区团购，是一种防御性进攻的心态。\n\n但一种说法是，现在的社区团购模式并不会是最终模式。“未来或许会出现成本更优、用户体验更佳的模式。”一位美团员工分析。\n\n随着巨头携带大量资金入场，一种普遍看法是，2021 年下半年，社区团购就会进入下半场，胜负基本上就有结论。\n\n社区团购业务模式相对重，今天的领先者很难快速建立不可追赶的优势。这意味着，参与者都还有机会。\n\n谁赢得这场战役，一定程度上将影响中国互联网的格局。对于主营业务将见顶的滴滴来说，它需要在一个更大的赛道上证明自己；对于美团、拼多多来说，在市值进入千亿美元后，需要新的增长引擎；而对于阿里来说，这是它守住本地生活的重要阵地。\n\n一位投资人说，这是一场对谁来说都不能言败的战争。“从百亿美元跨到千亿美元是个槛，从千亿到两千亿也是个槛，可见的机会不多了。”他说。\n\n为追踪报道社区团购之战，《晚点 LatePost》记者前往两大战区成都、武汉调研，相关深度报道将在近期刊出，敬请期待。');
INSERT INTO `archive_remarks`
VALUES (10098, '\n`迷你世界也走在自己的路上, PR, 生态, 做编辑器`\n');
INSERT INTO `archive_remarks`
VALUES (10100,
        '\n为了适应候选人的工作时间，同时照顾海外人士的时差，她最近的挖人电话都集中在下午和晚上，每个电话一打就是半个小时，嘴都说干了。在林楠的努力下，原先一个月一般能成交一个人，10万佣金入袋，近期她的成交量翻倍，一个月能成两单。\n\n“（芯片设计招聘需求）同比翻了50%”，同为芯片设计领域猎头的黄兴也有同感。在猎头行业，黄offer是家常便饭，“经常出现忙活几个月颗粒无收的情况”，为了兼顾暴涨的需求，提高选中率，黄兴的猎头公司近期在接单前也多做了不少的评估工作，甚至还把没太大把握的单子都推了。\n\n进入2020年，许多行业在疫情活得艰难，加上移动互联网红利见顶，不少大公司已经停止了大规模招聘，甚至纷纷裁人。\n\n形成鲜明对比的是，几乎一夜之间，芯片从冷板凳变成了热饽饽。\n\n`可以说，最凶狠的抢人赛，依然是大厂之间的较量。`\n\n黄兴告诉36氪，去年OPPO接收了不少来自海思的人，不过到了今年画风一转，给猎头公司提出了一条“避嫌”的要求：“不挖来自海思、MTK在职的人”。此前有网络消息传出：OPPO“大量挖角海思、免面试环节、直接入职加薪”，OPPO很快就甩出一份律师函证伪，但连澄清都十分低调。\n\n“OPPO 在国内至少找了20家以上的猎头公司”，其中对接到林楠手上的需求就有上百个岗位。黄兴也是 OPPO 合作的猎头之一，最近他帮 OPPO 挖了不少来自展讯、英特尔的人。猎头们给出了几乎一致的评价：“OPPO 把芯片全流程的人摸了个遍，给钱也很大方”，“200万以内都能谈”。\n\n一个附带影响是，一些来自房地产、制造业的猎头近期纷纷寻求转行，想加入芯片行业抢人大战。林楠和黄兴的对手也多了起来。 \n\n`学生是被哄抢的资源，高校教师也纷纷被“盯上”。`\n');
INSERT INTO `archive_remarks`
VALUES (10102,
        '\n迅速看了一下将 ETH 转出的代码，发现了两个匹配项。其中之一将 ETH 转移到了硬编码的代币地址，因此可以忽略。第二个是将 ETH 转移给发送方的焚毁功能。在跟踪了此功能的用法之后，我发现任何人可以免费为自己铸造代币，然后将其焚毁，换取该智能合约中的所有以太币都是不费吹灰之力的。我的心跳加速了。突然，问题变得严重了。\n\n我那份智能合约是 Lien Finance 协议。不幸的是，他们的团队是匿名的！唯一的即时讯息支持平台是 Telegram，而我不确定该 Telegram 频道的管理员是开发者还仅仅是某些早期支持者。我可万万不想将这一漏洞意外透漏给错误的人。\n\n在他们的网站又多浏览了一段时间，我发现他们曾与 ConsenSys Diligence 和 CertiK 合作，接受其代码审计。这看起来像是很不错的途径， ConsenSys Diligence 和 CertiK 在审计期间肯定和开发者进行过互动。我迅速在 Telegram 上私聊了 ConsenSys Diligence 的安全工程师 John Mardlin （aka maurelian） 。\n\n两者都不是很让人满意的选择。第一个举动极为危险，如果您读过 Dan Robinson 与 Paradigm 研究合伙人 Georgios Konstantopoulos 所讨论的以太坊 DeFi 黑暗森林（链闻中文版）一文 ，我们的交易被抢跑截胡的概率极高。第二种选择几乎同样危险，因为公开声明会引发外界对该问题的关注，给攻击者带来一个机会窗口。我们需要的是第三种方案。\n\n回想起以太坊 DeFi 黑暗森林一文中的部分内容，Sam 联络了 Amberdata 工程副总裁 Scott Bigelow：「如果你切实陷入了这种困境，我建议你去找 Amberdata 工程副总裁 Scott Bigelow，他是一直研究这一课题的安全研究人员，有一套能更好实现瞒天过海目的的原型实施策略。」\n');
INSERT INTO `archive_remarks`
VALUES (10104, '\n`有点口水. 说得不够透彻.`\n\n`为什么\"大, 集中, 求稳\"的公司注定会被后来者撕出突破口打开局面, 这是有更详细论述的`');
INSERT INTO `archive_remarks`
VALUES (10106, '\n`说的是front running, 更有艺术含量的那种. 所以就算是发现了漏洞, 最后赚到钱也不容易`\n`真正的黑暗森林`\n');
INSERT INTO `archive_remarks`
VALUES (10108, '\n`听了Justin Kan讲, 却是Press Coverage这个小话题`');
INSERT INTO `archive_remarks`
VALUES (10110, '\n`贻笑大方, we are going to war. 海内外爆款自媒体都是这么浮夸`\n');
INSERT INTO `archive_remarks`
VALUES (10112,
        '\nThink about that for a second. Passing the driving test wasn’t a guarantee. And even with a driver’s license, becoming a Grab driver wasn’t guaranteed either, because Grab also has tests and requirements. But they gambled their savings to buy a car and jury-rig it, hoping that they would pass both tests. Can you imagine how scary this must have been for them?\n\nThis astonishing, sweet, shy woman came to our offsite, and Anthony was trying to thank her in front of everyone, but no, she kept thanking him over and over for giving her a chance at being helpful to others and earning an income, and she wouldn’t stop, so of course his tears started flowing, and shit, I’m crying, because it’s so backwards that she should want to thank us when in fact we owe her so much for putting up with all this just to drive on our platform. She got dealt just about the worst cards life can give you, and her spirit and sweetness were just overpowering, and it was too much.\n\nWow I need a quick break. Onions. I’ll be back.\n');
INSERT INTO `archive_remarks`
VALUES (10114,
        '\nIf you do it wrong, then there is often also the “meeting after the meeting”, wherein some of the stakeholders who nodded and smiled during your meeting go off afterwards and agree to do something different, and you might find out a month later if you’re lucky. This can happen when you fail to do the meeting before the meeting properly, and you don’t have a trust relationship with them. These two things go hand in hand — if you have a trust relationship, the meeting before the meeting is usually five minutes.\n\nIf you don’t have a trust relationship with a stakeholder, then your best bet is to never ever bring them a solution. Don’t ever bring solutions to problems, since they tend to alarm people. Just bring your problems! If you share your problem with someone, it can help them see things your way, and then you can begin negotiating your way toward a solution that works for you both.\n\nThe art of leadership at Grab is really the art of achieving alignment. And it’s hard, because of the way the company is organized around inviolate business units with absolute veto power: Cross-functional initiatives are exceptionally difficult to roll out, even when they are clearly in the best interests of the company. But Grabbers are as tenacious as they are gentle, and they always eventually push through. Politely.\n\nI hope my culture observations haven’t come across as negative, because it’s not at all — it’s only negative if you don’t understand and you’re trying to swim upstream. The culture is just how people do things there. If you understand and embrace it, you can thrive and be very effective (as long as you can also stay up until 3am every day).\n');
INSERT INTO `archive_remarks`
VALUES (10116, '\n`反转再反转, 人性复杂, 时代恢弘`');
INSERT INTO `archive_remarks`
VALUES (10118,
        '\n2012年5月，还在《第一财经周刊》当驻旧金山硅谷主笔的我，上线了一个非常草台班子的英文个人博客“pingeast.com”，这个博客主要介绍中国的互联网和科技公司的情况，以及一些关于中国互联网产业的观察和评论——当时整个硅谷对中国互联网公司的了解还非常少，也有很多刻板的印象，硅谷的科技精英普遍相信“copy to China”是中国互联网的全部，而他们就是中国“copy”的灵感来源。我当时想做的，就是打破这个刻板印象，希望当地一些至少对中国互联网和科技行业还有一些兴趣的人，多一些了解中国互联网的视角。有了这个博客，作为一个驻在硅谷的外国记者，也方便别人更了解我和我供职的媒体，更方便我开展第一财经的报道工作。\n\n所以，“pingeast.com”并不是一个创业项目，阅读量也不是很高，每天大概几百个PV，其中的一半来自中国。但这个博客上线之后突然发生了一个插曲：一个在Facebook工作的朋友突然跟我说“Thomas you owe me a lunch”，然后给我看了他抢注的域名“pingwest.com”，问我想不想要，想要就用一顿午饭换。我也没想清楚为什么需要，只是觉得有east就得有west，凑个整儿。于是就花40美元请这个朋友吃了个午饭，把“pingwest.com”搞到了手。在这之后，我才开始认真地想这个域名该用来做点什么的问题，也跟一些朋友聊过，大家建议我：既然PingEast是一个英文的讲中国的科技博客，那干脆PingWest就是一个中文的讲硅谷的科技博客好了，不过这不是一个人能做起来的，得当成一个项目认真做，应该当成创业项目做。\n\n在这之后的4个月，它变成了现实。2012年，中国的整个科技和互联网行业的“硅谷崇拜”思潮还非常强烈。人们迫切地需要真正地了解硅谷、认识硅谷和学习硅谷，中国明星创业公司和创业者到硅谷“朝圣”的热潮刚刚开始——我第一次见到UC浏览器的创始人俞永福、字节跳动的创始人张一鸣和YY/虎牙的创始人李学凌，都是在硅谷，参与组织和接待中国互联网企业家参观考察硅谷公司的时候。在这个背景下，做一个传播硅谷新模式、新创业理念和新趋势的新媒体，并且能用自身的“在地优势”，服务中国和硅谷的资源连接，应该是一个不错的项目。2012年7月，我回国述职期间，通过跟一些投资人、创业者和媒体朋友的沟通，验证了这个想法，并且很快地敲定了天使投资，同时还遇到了我未来的合伙人、当时还在网易科技频道做主编、后来成了我们COO的刘伟老师。2012年8月底我回到了硅谷，跟我的另一个合作伙伴、当时还在硅谷一家公司工作的、后来成了我们CMO的赵姝老师一起，花了一个月的时间，把“PingWest”搞上了线。\n\n在之后的两年，PingWest一直是一个以“硅谷精神”为标签，以“硅谷原创”为特色，以“硅谷连接”为方向的科技博客网站，当然我们也做了不少关于中国科技创业公司和创业环境的有一定影响力的内容。但整体的基调，是希望将中国的科技创新在模式、精神内核和方法论上，与硅谷做一个“看齐”——也就是说，我们当年做的事，确实还是挺Ping那个West的。\n');
INSERT INTO `archive_remarks`
VALUES (10120,
        '\n就在今天，米哈游和莉莉丝（很可能是中国最好的两家非上市游戏公司）同时宣布：它们最新的拳头产品——《原神》和《万国觉醒》，不会上架华为游戏应用商店；《原神》还宣布不会上架小米应用商店。\n\n事实上，我认为《原神》很可能不会上架“硬核联盟”旗下的任何一个应用商店，甚至不会上架除了官网、B站和苹果App Store之外的任何渠道。我不知道《万国觉醒》的情况会怎么样，但是我猜测：国产安卓厂商需要在流水分账方面给出较大的让步，证明自己的诚意。\n\n《原神》《万国觉醒》拒绝在主流安卓渠道上线，意味着“渠道为王”这个邪恶理论在游戏行业迎来了总破产。游戏行业事实上早已进入了“优质内容为王”的时代，只是投资者和吃瓜群众没有意识到而已。现在他们肯定意识到了吧。\n\n我再说一遍：在文化内容产业，“渠道为王”是一个非常邪恶的理论，它会导致内容质量变差、用户体验变差、整个行业盘子变小。“渠道为王”不仅不利于CP、不利于发行商，也不利于渠道自己——因为没有人能从内容质量下降这件事情当中受益。所以，“渠道为王”理念在光天化日之下的总破灭，以及“优质内容为王”理念得到广泛承认，是中国游戏行业的特大利好，将驱动整个行业继续健康发展下去。\n\n记得2014年，中国电影行业还在高速发展之中，市面上流传着一个极端错误的理论：内容是不重要的，观众并不在乎自己看的是“烂片”还是“好片”，掌握渠道（也就是排片率）才是最关键的。这种论调在投资圈尤其流行，于是资本市场给了影院公司最高估值，发行公司其次；作品质量则是无人关心的。\n\n此时此刻，我已经无需再为自己的观点辩护——过去几年的历史证明我是正确的。在肃清“渠道为王”这种具备极大破坏性的邪恶理念，中国电影行业付出了沉重的代价，好在现在又走上了正轨。令我欣慰的是，中国游戏行业没有重蹈覆辙。');
INSERT INTO `archive_remarks`
VALUES (10122, '\n`好, 还在, 回来了就好. 济苍不济苍再两说.`\n');
INSERT INTO `archive_remarks`
VALUES (10124,
        '\n「我们先选择了质量，后来到了今年二三月份的时候发现，其实头部产品的供给并不充足，于是我们又转向了走数量路线。」徐培翔对我说，「原因很简单，我是把1亿分给1个开发者，还是分给10个开发者？」\n\n头部我们主要看长留。目前是看三十留，大概15%左右，下一步准备推到六十留和九十留。\n\n手游那点事：你们对头部产品的独代标准是什么？之前好像有次留50%，七留20%这样的标准。\n\n头部其实比这个标准高多了。\n\n二、“独代发行”持续高歌猛进，Ohayoo已经推出了约150款游戏\n\n我们相信行业里永远会有人做休闲游戏，因为这个品类制作门槛低，回收周期快。我们月流水过千万的游戏里面，80%以上的研发成本不超过100万。3-5个人如果有好的idea，就可以做一款月流水上千万的产品，小团队拼重度游戏肯定拼不过大厂，但他们可以尝试做休闲游戏。\n');
INSERT INTO `archive_remarks`
VALUES (10126, '\n郑朝晖, 任旭阳. 5-3-2留存. 一点资讯老兵价值回归');
INSERT INTO `archive_remarks`
VALUES (10128,
        '\n你们猜：\n\n网易、腾讯、携程、盛大、阿里巴巴、百度等这些传统巨头是哪年成立的？小米、美团、蘑菇街、陌陌、今日头条、滴滴等这些新兴巨头又是哪年成立的？答案是，上面一排的公司，都是 97 年到 2000 年之间成立的，而下面一排公司都是 2010 年到 2012 年之间成立的。很明显，上面一排代表了互联网，而下面一排代表了移动互联网。所以，不得不说，外部环境的重要性是要高于自身能力与努力的。\n\n但好在，科技创新与实际的应用之间还存在了一定的 gap，所以就像 Benchmark 合伙人 Matt Cohler 所说的：\n\n> My job is not to predict the future, it\'s to notice the present first.\n> 我的工作不是预测未来，是最早的感知当下。\n\n');
INSERT INTO `archive_remarks`
VALUES (10130,
        '\n只是用户需求暂时未被满足的一段时间窗口，而这些红海中的公司本身并没有掌握他们独有的稀缺性资源。所以整个市场会进入幻想破灭期，直到某家公司掌握了新的稀缺资源。\n\n科技最终让本来稀缺的事物不再稀缺，而人们要在这其中寻找可行的商业模式，给予不再稀缺的事物一个价值，这本身就是一个悖论。`比如能大量提供信息, 比如书. 你去继续卖这个, 可是这个不稀缺了 - 又不是你独家技术. 就算是, 也没有之前的书那么值钱了`\n\n我觉得，持续生产好内容带来的是和用户产生的一种信任关系。\n造作的CEO舒为曾经说过“品牌就是标准”，我深有同感。用户产生购买行为的时候，是有一个对标准的预期的，不管你去全世界哪里的星巴克，你都知道味道是有保障的，是会符合你的期待的。而搭建信任关系，就是建立品牌的必经之路。品牌是一种壁垒，最理想的品牌壁垒是一个品牌等同于一个行业（比如Google之于搜索，Facebook之于社交，淘宝之于购物），但更多情况下，一个行业内会共存多个品牌，比如服装行业，这个时候各个品牌就必须要深度挖掘自己的垂直品类、人群和特点。内容领域自然更接近后者。\n');
INSERT INTO `archive_remarks`
VALUES (10132, '\n`文章一般, 但是之前预测的事情可能都会来. 这个时候去做GPT-3相关的自然语言工作做些事情应该是没问题 (刷评论聊天bot什么的)`\n`用中文语料训练的版本希望尽快来`\n');
INSERT INTO `archive_remarks`
VALUES (10156, '\n`记得是西交附中的同学, 做数据. 当时揭发马蜂窝一些问题. 其实真是飞来横祸, 马蜂窝可能做的就是行业惯例的事`\n');
INSERT INTO `archive_remarks`
VALUES (10158, '\n`确实不容易. 唱吧, 全民K歌, miniktv. 摧毁你的永远不是竞对`\n');
INSERT INTO `archive_remarks`
VALUES (10160, '\n`财富密码: 学越南语`\n');
INSERT INTO `archive_remarks`
VALUES (10162,
        '\n`还分这么细` 字节跳动大力扶持的西瓜视频在长视频领域探索失败后，将目标转向了中长视频，并立志成为中国的YouTube。今年6月，张一鸣在一次会议上明确传达了西瓜视频要发力中长视频的信息。很明显，中长视频是字节跳动的下一个流量发动机。\n\n今年年初，网文创作者“小楼听雨”分享了在头条写小说“轻松月入20万以上”的经历，引发了大量讨论，该创作者表示“很多在头条写书的大神收入都比我高。月入二十三万只是刚刚开始，只要书写得好，月入百万不是梦。”并配以阅读稿费截图为证。\n');
INSERT INTO `archive_remarks`
VALUES (10164,
        '\n与甲骨文合作之后，字节跳动的命运似乎出现了转机。但横亘在张一鸣头顶的那道选择题并未消失：向外，还是向内？\n\n现在看来，张一鸣很可能选错了对手，他应该发起冲击的对象，不是马云张勇，而是好朋友王兴，以及阿里本地生活服务公司董事长胡晓明，因为距离内容流量更近的交易，不是电商，而是本地生活服务。\n\n但显而易见的事实是：龚宇做不了爱奇艺的主，爱奇艺的命运李彦宏一个人说了算——根据爱奇艺最新财报，百度拥有92.7%的投票权，占爱奇艺总股本的比例为56.1%——张一鸣约龚宇没有用。\n\n从百度与字节跳动过往的恩怨来看，李彦宏与张一鸣势同水火，如果将爱奇艺交到张一鸣手中，那Robin的境界就接近耶稣了\n\n`还有教育`\n');
INSERT INTO `archive_remarks`
VALUES (10166,
        '\n`比特大陆算丰芯片做的是 服务器 + 芯片设计`\n\n从业务线看，比特大陆砍掉的 AI 人员主要是服务器团队。\n\n据比特大陆 AI 研发人员陆炎介绍，AI研发主要有几个部分，芯片、硬件、板卡和高密度服务器。之前，公司有 1/3 的 AI 人员专注在服务器上，还有 1/3 兼职在服务器上。现在，服务器团队直接砍掉了，其他线也略有缩减。\n\n从业务线看，陆炎分析道，比特大陆此次裁撤的服务器团队也不影响AI的核心。\n\n“纯做 AI 芯片其实用不了那么多人。而服务器所需的人力是芯片研发的4-5倍、研发难度更是达到 10 倍。我本来就觉得服务器不适合比特做，难度太大，寒武纪这种独角兽就没做。有钱的时候烧烧钱试试，没钱了砍，很正常。”\n\n在陆炎看来，以前的比特大陆=寒武纪+服务器，“现在裁完服务器，基本和寒武纪做的事情一样了。”\n\n据公开资料介绍，比特大陆 AI 业务启动于 2016 年，至今已成功流片量产云端和终端芯片，并推出了配套的板卡、模组与服务器。2018 年底，比特大陆进行人员优化、业务重组时，终端芯片引入融资成立合资公司；2019 年，比特大陆曾想对云端芯片业务照模改造，但一直未寻到合适投资方。\n\n人工智能芯片根据应用场合也可以分为三个种类：服务器、边缘计算、终端。服务器人工智能芯片主要部署在数据中心的服务器中，执行训练和／或推理任务。服务器人工智能芯片对于芯片的首要需求就是单芯片算力（目前的主流算力在100TOPS级别），其次才会去考虑功耗和成本。边缘计算是指部署在更接近数据源头的服务器上执行的计算，以推理计算为主，典型应用场景包括在自动驾驶汽车上执行自动驾驶算法、在智能销售领域无人店中执行监控和结账操作等等。在边缘计算中，芯片的功耗和成本相对于云端有更严格的限制，而算力则还是多多益善（10TOPS以上）。终端计算则是指直接部署在手机、智能音箱等终端设备上人工智能计算，由于使用电池供电，其对于芯片的首要需求是能效比（1TOPS／W数量级），需要使用尽可能低的能量消耗去完成人工智能计算以保证电池寿命。虽然终端计算对于算力的要求较低（0.1-1TOPS数量级），但是其功耗约束很强，可用的功耗在1W以下，甚至可以低至几十毫瓦级别，同时终端设备对于成本也很敏感。\n');
INSERT INTO `archive_remarks`
VALUES (10170,
        '\n`小镇故事, 用水库话说\"科学尚未普及\". 批量普及现代化就能带来持续经济增长`\n\n`同时城市化也将继续. 人口聚集将继续. 利好新一线城市, 旧的超一线城市也不逊色. 北上广深杭将各自走上各自的路`\n');
INSERT INTO `archive_remarks`
VALUES (10172,
        '\n`痛苦非常真切. 曾博的立场是资源有限, 不可能人人都心满意足`\n\n`如果愿望是做人上人, 那么是的. The status game. 但是Wealth可能不是. 而且, 渐渐可以深刻感受到, 如果人人都有200平, 想要1000平的欲望会大大降低. 人们就能更向着自己的本性发展. 减少\"人的异化\", \"自由人的联盟\". 这是真的`\n\n`所以发展生产力`');
INSERT INTO `archive_remarks`
VALUES (10174,
        '\n`庙小妖风大, 池浅王八多. 郭德纲, 赵本山, 范冰冰, 笑果, 都算.`\n\n`可能娱乐圈就是赚钱然后让人看猴戏. 这符合我说的: 不管是电竞, 还是体育, 还是演艺, 最后大家都是看谁和谁有一腿, 谁和谁拉帮结伙, 阴谋诡计帮派火拼. 这就是人类和人类的脑子`');
INSERT INTO `archive_remarks`
VALUES (10176, '\n`黄赌毒, 沾边就赚钱. 比如之前被干过的橡胶娃娃店, 在点评已经开始蔓延. 比如陪玩, 语音房, 裸聊直播, 裸聊录像勒索`');
INSERT INTO `archive_remarks`
VALUES (10178,
        '\n`可说的有很多. 不过这一代人很多人的童年记忆会是这些`\n\n`然后童年记忆是不会变的. 所以这一代人就会一直怀念这些: 就像传奇, 红白机, 三国战纪, KOF97`\n\n`乔布斯说得对! 人要死, 不然社会容易不变迁`');
INSERT INTO `archive_remarks`
VALUES (10180,
        '\n姚劲波 2015 年合并后的 58 赶集集团在分类信息市场占有率 85%，与美团网、大众点评曾并列为本地生活服务领域“三巨头”。\n\n显然 58 并没有得到资本市场的认可。今年 6 月，58 宣布达成私有化协议，交易估值约为 87 亿美元，预计今年下半年正式退市。动作频频的 58 或是孕育新一轮的变革，实际上，58 的改变很早就开始了。\n\n得益于 58 合并了赶集网，虽然双方团队的磨合困难重重，但好在原班人马都在，原赶集网 CEO 杨浩涌去做了瓜子二手车，融资各方面很顺利。姚劲波在看到这样的趋势后，就鼓励 BU 自主发展新项目，好项目可以分拆，单独融资。之后原赶集网副总裁 CEO 陈小华也去负责 58 到家了。\n\n不过姚劲波曾在采访中说过，做 2C 品牌太烧钱，58 如果想孵化 2C 业务品牌需要经过他本人的同意，而做 2B 业务则不需要。他会给团队半年或一年的“试错期”，最终还得看项目的成绩，做得好才能留下，争取到预算，做得不好要砍掉。\n\n早期 58 自身孵化的新业务都带上了 58 的标签。2014 年 O2O 创业如火如荼，58 相继推出同城速运业务“58 速运”、O2O 到家服务子品牌“58 到家”，2015 年底再次推出二手交易电商品牌“转转”。\n\n5 年后，O2O 浪潮褪去，58 的“儿子”们也长大了，同时他们都在追求更加独立的发展——2018 年 8 月，“58 速运”更名为“快狗打车”；2020 年 9 月，“58 到家”也宣布更名为“天鹅到家”。\n\n`还是挺了不起的`\n');
INSERT INTO `archive_remarks`
VALUES (10182, '\n`最近张磊卖书, 做了很多PR. 挺祛魅的.`\n');
INSERT INTO `archive_remarks`
VALUES (10184, '\n`看起来就好玩.不过说起来, 游研社没拿到原神的宣传预算吗? 怎么还能宣传竞品. 挺好的`\n\n`让我想到<了不起的修仙模拟器>, 模仿之余, 完成度也很高`');
INSERT INTO `archive_remarks`
VALUES (10186,
        '\n我们可以大致把 38 家出海游戏公司分成 5 类：\n\n第一类：休闲游戏\n\n代表公司：涂鸦移动、红海无限、字节跳动、猎豹移动\n\n第二类：混合休闲\n\n代表公司：海彼网络（Habby）、九鼎无双（89 Trillion）、时空幻境、江娱互动\n\n第三类：棋牌游戏\n\n代表公司：博乐科技、蜂鸟于飞、Mobee\n\n第四类：策略游戏\n\n代表公司：壳木软件、点点互动、智明星通\n\n`可以, 游戏相对来说离意识形态比较远`');
INSERT INTO `archive_remarks`
VALUES (10188, '\n`雄文, 路线图, 了不起`\n');
INSERT INTO `archive_remarks`
VALUES (10190, '\n`空话太多例子太少. 不过这个可以和10093里面的流派对应: 这就是赌选手的选手派开门祖师IDG. 第一是投人，第二是投人，第三还是投人`');
INSERT INTO `archive_remarks`
VALUES (10192, '\n`还是光伏反转故事. 所以, 不要管庸众怎么说`');
INSERT INTO `archive_remarks`
VALUES (10194, '\n`文章是有点蠢, 但是讲了沈南鹏身世和家庭渊源. 当然张磊也是`');
INSERT INTO `archive_remarks`
VALUES (10196, '\n`预言值得记下来. 重要的是记下人们当时是怎样言之凿凿, 然后事后又是怎样恬不知耻, 轻轻放下. 这样下次听到预言的时候, 你就不会动摇.`');
INSERT INTO `archive_remarks`
VALUES (10198, '\n`2020 DeFi年, 又错过一个财富自由. 还会来的`');
INSERT INTO `archive_remarks`
VALUES (10200, '\n`总要有先烈. 还有8848王峻涛呢, 岂不是也可惜. 都可惜. 我只希望他们终究都不差.`\n\n`6688.com总值几千万吧`');
INSERT INTO `archive_remarks`
VALUES (10202,
        '\n`背景是外卖骑手困在系统里一文. 写得非常好. 外卖骑手这个职业好极了. 当然还可以更好, 通过发展生产力`\n\n`衡水一中太惨了 - 或许吧. 但是更惨的是想上衡水一中未果`\n\n其实骑手已经算是一份不错的职业了。比起制造业的血汗工厂，它不没收你的手机，生活不再两点一线。比起外包公司996连轴转的程序员，至少两个四小时的高峰期之间他有自己的生活。在疫情期间，没有生意的小店主，停薪的小职员都送外卖贴补家用，甚至低线城市还有铁饭碗上班摸鱼，一到上下班高峰期就精神抖擞地去抢单。\n但是问题是，这份工作，没有操作规则、工作场地、上下等级建立起的那种社会化，人通过手机直接和为效率负责的系统进行冷冰冰地沟通。太适合套用曹筠武当年的经典文章进行爆款创作。\n过去连两年时间，他们使出了浑身解数，跟官媒合作挖掘骑手身上的正能量，从产品和管理两端搞骑手的“三大纪律，八项注意”，做骑手的子女教育基金，大病保险。终于天时地利人和，70周年大庆骑手参加花车巡游，疫情期间受到了最高层次的接见。现在大家终于不再传那些穿着美团饿了么制服的人干了什么什么的段子，结果一篇这样的文章出来，大家都觉得，美团你欺负好人，欺负老实人。\n');
INSERT INTO `archive_remarks`
VALUES (10204,
        '\n`太扯了, 技术做好了就扭亏为盈... 这是业务太肥还是? 转念一想, 我们这样看, 是不是因为早就不是技术改变世界了?`\n\n`我们可能会是唯一一家不是死于业务问题，而是死于技术问题的公司`\n\n由于几位创始人都不是技术出身，VIPKID 诞生之初并不具备技术基因，技术也一直是其短板之一。据《晚点 LatePost》报道，2016 年，因技术落后曾导致 100 节课中有 10 节课损失掉了。一次后台遭遇了大面积瘫痪，米雯娟曾对一位投资人说，“我们可能会是唯一一家不是死于业务问题，而是死于技术问题的公司”。\n\n在过去 7 年里，VIPKID 技术负责人更迭频繁，自 2015 年主管技术的联合创始人霍振中离职后，曾在较长一段时间里该角色一度空缺。2017 年，前 360 商业产品事业部总经理项碧波和前美团外卖部技术负责人朱会加盟 VIPKID，主管技术，但二人均在去年离职。\n\n去年不少传闻称，VIPKID 的获客成本高达 8000-10000 元。后来米雯娟公开澄清，实际获客成本在 4000 元左右。`挺恐怖的. 不过想想virtu手机?`');
INSERT INTO `archive_remarks`
VALUES (10206, '\n`文章很有力度, 主要是作者作为多年从业者, 激发出了和标的额不相称的滔天斗志`\n\n`还是那句话, 黄赌毒, 拐骗偷. 不合法的一定有赚, 而且疏而不漏的法网真的挺疏的, 都是草台班子`');
INSERT INTO `archive_remarks`
VALUES (10208, '\n`一篇不成功的, 试图总结历史, 或者至少做大事记的文章`\n');
INSERT INTO `archive_remarks`
VALUES (10210,
        '\n`挺好的一个分析. 1. 慢就是流畅, 战争不是冲锋 2. 资本没有情面, 不讲苦劳 3. 百度外卖花钱送骑手回家过年, 成了历史的尘埃; 美团价钱让骑手春节接着送 4. 其他的包括996, 硅谷人水土不服, 技术, 地推, 派单路线算法, 单元经济`\n');
INSERT INTO `archive_remarks`
VALUES (10212,
        '\nAppannie在2019年发布的报告显示，莉莉丝已上升至4月出海中国游戏公司的收入第五，头顶只剩下了腾讯、网易、IGG、Funplus这4家成名已久的上市大厂。\n\n`非常务实, 说应该关注竞争对手. 不要让员工成长, 要招人. 说应该重视管理. 说自己游戏打得不如员工, 明白了自己也就那么回事.`\n\n有一次，我跟一个知名创业公司的CEO聊天。他说了一句非常震惊我，且绝对不会在公开场合说的话。他说：“我们公司在创立之初就定下一条规则，就是不培养人。”\n\n后来我才理解了他的话。不培养人，其实就是倒逼自己，找到与业务最匹配的人。这个做法对员工来说未必好，但对公司来说却是短期内性价比最高的方案。\n\n这个CEO的做法有些极端，与我曾经的做法刚好相反。我曾经以为，人可以在很短时间内学会自己不熟悉的领域。所以我投入很大精力在培训上，而对招聘的投入明显不足。\n');
INSERT INTO `archive_remarks`
VALUES (10214,
        '\n`常说到这个, 在线小说阅读APP, 做多少日活也觉得没有价值这个事. 趣头条难得孵化出来的明星项目. `\n\n“这个项目在增长圈是个奇迹，”现任米读小说CEO杨骥之前在Facebook、Uber负责用户增长业务，7月份担任趣头条高级副总裁，“2018年互联网C端发展已经平稳了，这么短时间做到500万日活，几乎是不可能的。”\n\n作为一家成立27个月就上市的公司，趣头条经历了快速发展的成功，以及随之而来的阵痛——制度建设逐渐跟不上业务的发展和人员的膨胀。\n\n面对内外部质疑的声音，趣头条需要一款能证明自己持续创新能力的产品，比如米读。\n\n米读的故事，得从2018年初说起。\n\n那时候Spike刚加入趣头条，负责孵化新产品。入职后，他花了一周时间，想出来几个方向。\n\n这些方向大多基于趣头条的优势和用户特点。比如电商，借助趣头条的流量池，做淘宝客导流变现。比如语音社交，Spike觉得趣头条的用户更喜欢语音，而不是文字社交。还有一个在线阅读项目，采用免费+广告的模式。\n\nSpike带着这些想法走进谭思亮办公室，不到半个小时，方向就决定了，被选中的，是看起来最不起眼的免费阅读项目。\n\n免费阅读平台是三方生意，用户、作者、广告主。作者生产内容吸引用户，用户带来流量吸引广告主，广告收入分成鼓励作者持续产出。\n\n内容是源头，但免费阅读平台想拿到内容却并不容易。\n\n筹备阶段，米读项目组最重要的一项工作之一就是寻找CP（内容供应商），每周Spike都会和团队外出几天，辗转于北京上海的不同CP公司，希望建立合作。\n\n吃了一个多月的闭门羹，米读才找到第一家愿意合作的CP，“因为他们过得不好，这是没有办法的选择。”Spike告诉字母榜（ID：wujicaijing），当初的策略就是采取笨办法，“不断地找，总有CP过得不太好。”\n\n这家CP给米读带来了几千本书，此时，米读和时间的赛跑才正式开始。\n\n“书的多少和DAU没有直接关系，和时间周期有关。比如1000本可能三个月后就会被看完。”Spike解释道。\n\n换言之，米读是成功还是失败，取决于第一批内容被看完前，用户规模能做到什么程度，如果用户规模上不去，没有议价能力，无法持续获取内容，项目或许就会宣告失败。\n\n最后，在这几千本书被看完前，米读获得了100万DAU。有了用户数据加持，内容-用户-广告的经济模型顺利跑通。2018年6月初，米读首次实现了盈亏平衡。\n\n最后的解决方案是各退一步，中文在线拿出一部分内容，跟米读签了2个月的合同，根据效果决定后续合作与否。\n\n宋磊现在还记得当初的一个数据，一本都市题材的小说，通过米读，1个月可以获得20万元的收入，“免费渠道有这个数据，我们很震惊。”据他介绍，这个收入在所有渠道中也能排进前五。\n\n于是，11月下旬，中文在线跟米读达成了长期深度的合作。\n\n拥有100万的DAU之后，米读和CP方谈内容合作越来越顺利，2019年6月，米读和掌阅达成了内容层面的深度合作，后者正是网文行业的头部CP。\n\n但这是2018年的互联网行业，想拿着快手的剧本，找到一个真正的蓝海，悄无声息地把日活用户做到千万级别，已经接近于不可能。\n\n米读很快就迎来了诸多竞争者。\n\n2018年8月，连尚文学推出连尚免费阅读。几乎是同一时间，同在上海的七猫文化也推出了七猫免费小说。然后就是今日头条2018年底推出的番茄小说。\n\n传统网文行业的公司，擅长内容运营，但是没有自己的广告平台，对广告变现模式也缺乏经验。这恰恰是趣头条擅长的领域，创始人谭思亮曾经是盛大在线广告业务的负责人，离开盛大后，他创建了互众广告，并在两年后，以13.5亿元的价格将公司卖给了上市公司吴通控股。\n\n从某种程度来讲，米读之于趣头条，类似于抖音之于今日头条。\n\n而不久前，米读公布了1亿美金的B轮融资信息，CMC (华人文化产业基金 资本合伙人李川) 领投。对趣头条来说，这就像是个信号——市场还不打算转身离去。');
INSERT INTO `archive_remarks`
VALUES (10216,
        '\n米读CEO杨骥是一个典型的“别人家孩子”。\n\n5岁上小学，15岁跳级读浙大，本科毕业后赴美读硕士，先后在Facebook、优步等名企就职。如今年仅29岁，已有8年工作经验。\n\n2004年，还在上中学的杨骥第一次接触到了网络文学，课余之时，杨骥时常徘徊在天鹰、龙的天空等网络文学论坛\n\n杨骥至今每天晚上还要读一个小时网络小说。甚至为了了解产品，了解用户，杨骥也在强迫自己每个月读一本类似《霸道总裁》的女频小说。“我现在还是完全看不懂，很多事情我看的还是有点懵。”谈起女频小说的阅读体验，杨骥笑称，“但作为一个从业者，我需要理解它背后拥有的市场逻辑”。\n\n时间倒回至2006年，清华大学“姚班”确定了首届学生名单。经过笔试、面试层层关卡，印奇等人从全校大一、大二共147名报名者中脱颖而出。加入“姚班”的大多为新生中的尖子生，知名的“姚班”成员还有无人驾驶公司小马智行创始人、在大学生计算编程领域具有“楼教主”之称的楼天城、福布斯全球30位30岁以下金融天才、国际信息编程奥林匹克比赛金牌选手邹昊、光流科技创始人胡伯涛以及被斯坦福大学聘任的马腾宇等人。\n\n在这里，印奇遇到了他的同学以及创业伙伴唐文斌。5年后的2011年，两人携手学弟杨沐一起创办了如今的旷视科技。');
INSERT INTO `archive_remarks`
VALUES (10218,
        '\n`文章很蠢. 但是你看, 所有公司, 都有人抱怨说管理差劲混乱, 人不行, 公司迟早药丸! 这个跟过去三十年的中国是一个道理`\n\n近日，阿里宣布将在内部办公环境中隐藏P序列职级。长久以来，阿里一直采用双序列职业发展体系：一套体系是P序列（技术岗），从P1到P14；一套体系是M序列（管理岗），从M1到M10。针对隐藏P序列职级，阿里公关负责人王帅表示：“阿里从来不靠职级管理，但永远要直面未来管理的多元性。”\n\n对此，有员工称，隐藏了序列后每用一次钉钉都“头皮一紧”，聊天语气已经失去了参考。将心也是深有同感，他不得不扩展了在现实中对同事资历的认知方式：通过工卡。尽管工卡上只有花名和照片，但塑料扣的颜色却埋下泾渭分明的暗号：入司1年以内是灰色，1年-3年是黄色，3年-5年是橙色，5年-10年是红色，10年以上是淡褐色。');
INSERT INTO `archive_remarks`
VALUES (10220, '\n`这伙人天天给张一鸣拉媒保纤. 要么买爱奇艺, 要么买优酷, 西瓜不做啦?`\n');
INSERT INTO `archive_remarks`
VALUES (10222,
        '\n\n> 一旦缺少外部竞争，机构就变得臃肿低效。可更大的诅咒是，每当公司试图通过引入外部竞争，比如竞标，或是开始仔细控制成本时，机构的官僚主义就变得更加严重。\n> 亚马逊试图逃脱这样的大公司诅咒，于是才有了亚马逊的网络服务产品AWS。这背后的逻辑是，亚马逊将公司的一部分机能扩展成平台，以此对抗公司内部日渐低效和技术发展停滞的问题。——TechCrunch，亚马逊吞噬世界\n\n即便这种内部工具商业化、外部化的方式失败，公司也会沉淀下来一批量化指标和数据，发现自己开发、使用的工具，是不是已经显著地落后于竞争对手了。\n\n> 亚马逊用这种内部工具商业化、外部化的方式，来替代内部调研、审计这些浪费时间又官僚主义的办法，于是，亚马逊形成了一个能够产生现金流的反馈闭环模式，这样的方式，让它能够迅速发现内部的各种问题。\n> 有种说法是，你所赚的钱基本能反映你对这个世界所创造的价值，而亚马逊就在十几个领域里量化出了自己的价值。——TechCrunch，亚马逊吞噬世界\n\n工具开放的好处很明显：一是拓展业务，有更多的收入；二是对外的业务有更高的要求。\n\n但有意思的是，字节跳动的效率工程团队最初是由梁汝波带着一些有丰厚期权回报的老员工组建，一度被其他部门同事吐槽为公司内部的养老部门。相较硅谷，“很多公司都选择最优秀的人去做工具型产品，事实上，越是优秀的企业，往往越重视工具的力量。”');
INSERT INTO `archive_remarks`
VALUES (10224, '\n`Carousel都9亿美元了. 该说坚持. 更该说: 选对了赛道就是爽`\n');
INSERT INTO `archive_remarks`
VALUES (10226,
        '\n`毫不动摇地看好看多自动驾驶. 但道阻且长`\n\n“原以为（百度的自动驾驶）是没有人的那种，没想到还得有个司机在那坐着。”\n \n当天上午时段和中午时段，深燃分别在亦庄和海淀两地试乘了三次百度的Apollo，体验路程中多次出现拐弯、变道以及调头，大多数情况下Apollo能够平稳完成，但在一次右转弯和抵达终点前的靠边停车时，安全员都出手接管了方向盘，另外，在前方一辆大卡车突然变道时，Apollo只能做到紧急刹车，剩下的操作要由驾驶座上的安全员完成。\n \n在相对低速的情况下，安全员兼司机会紧盯车外路况，到必要时刻会接触方向盘，他们的状态和一般驾驶员基本没有区别，甚至在路况复杂时直接上手操作。\n \n体验过程中，深燃发现百度自动驾驶出租车还存在诸多值得完善之处。\n\n百度在海报里的用词是“北京全面开放”，但目前的开放时间、运营时间和服务人群均有限制。\n\n开放地点包括亦庄、海淀，站点也有限制，两个区域一共15个站台可选作行程起始点，其中亦庄区域内的站点最为密集，共11个，海淀区域内只有3个，均在稻香湖景酒店附近，另外还有顺义1个。即便是选择更多的亦庄，最远可搭乘的是博大公园和科创十三街两个站点之间，在8公里左右，相当于四站地铁左右的距离。\n\n运营时段也有限制，为周一到周日的10：00-16：00。有声音认为，这是百度有意避开高峰时段，给Apollo降低难度。不过一位安全员对此的说法是，时段是监管部门规定的。这一说法尚未得到百度方面的证实。\n \n简单来说，乘客要想体验百度Apollo，需要在运营时间段内到固定的站点上下车，如果在亦庄，起点和终点都只能从亦庄的11个开放站点中选择，如果在海淀，是在规定的3个开放站点中选择。\n \nApollo内驾驶座上有安全员，服务人群亦有限制，每辆车最多可有2名乘客，坐在后排两座，乘坐人需年满18至60周岁。\n\n“当真正去掉安全员、去掉远程控制，才是真正的无人驾驶，百度现在只能叫智能驾驶。”此前，上述投资人告诉深燃，百度的技术现在还达不到L4级别。\n \n一位研究造车新势力的分析师进一步表示，百度目前的水平最多是所谓的L3，还处于一些结构化道路的L3级别，也称为特定场景、有限场景的L3自动驾驶。在他看来，现阶段固定路线的载人运行出租车服务意义不大，这一次与百度此前在长沙推出的固定路段自动驾驶服务差不多，距离真正的商业化还有很远。\n ');
INSERT INTO `archive_remarks`
VALUES (10228,
        '\n\n据Electrek报道，4月22日，特斯拉AI部门发布了一组关于自动驾驶的数据：Autopilot（自动辅助驾驶，简称AP）启用状态下行驶里程破30亿英里，NOA（自动辅助导航驾驶）启用状态行驶里程破10亿英里，自动变道功能执行超过了20万次，智能召唤使用次数已超过120万次。\n');
INSERT INTO `archive_remarks`
VALUES (10230, '\n`牛鬼蛇神依次登场`\n');
INSERT INTO `archive_remarks`
VALUES (10232, '\n快的和出租车券，真的是久违了。这条新闻挂着过去，也挂着未来。\n');
INSERT INTO `archive_remarks`
VALUES (10234,
        '\n`还是社区团购那个事. 但是文章写得很好, 没有被风口冲昏. 或者说, 是不是悲观者正确乐观者成功?`\n\n兴盛优选的卖菜方法，被总结成“社区团购”。\n\n以社区为中心、以小商家的“团长”为分发节点，消费者可以通过微信群、小程序等工具拼团购买生鲜和日化用品。由于是先订单、再配货，可以降低损耗、减少库存；团长的门店就在社区里，还让平台省下了仓储、获客、最后一公里配送的成本。\n\n苦苦烧钱都没找到正确卖菜方式的互联网巨头，一下子看到了希望。\n\n黄峥曾经在“把资本主义倒过来”的思考里写道，假设有一千个人在夏天就想到在冬天要买一件某种样子的羽绒衣，他们一起写了一个联名的订单给生产厂商，并愿意按去年的价格出10%的订金，这种情况下，很有可能工厂是愿意给他们30%的折扣的。\n\n这样的思路被用到了拼多多卖水果的实践里：拼多多的拼单模式包括邀请微信好友拼单和直接凑单，拼单成交价比单独购买明显更低，满足了用户对低价的需求。另一方面，平台通过拼单将零散的需求聚集在一起，商家获得了规模化的需求，更容易形成规模效应、降低成本。\n\n拼单解决了销售端的问题，但生鲜电商最难搞的还是产业链。小、散、乱一直是中国农业的标签，2016年底国内规模农业经营户仅占1.9%。而拼多多近年成功地将农产品产业链下沉到了云南、贵州、广西、海南等省份，让农户可以直接进驻平台卖农产品，县长直播带货让农产品“秒空”也已经成为常态，确实砍掉了中间商，价格也足够便宜。\n\n价格上的劣势，源于拼多多在供应链和物流上的欠缺。“多多买菜”的物流需求，跟卖衣服箱包的物流需求完全不同——\n\n1. 卖衣服箱包，用快递寄出去就行，有大量快递公司竞争，成本低；\n\n2. 卖菜，需要第二天就送到小区里，配送距离短，但时效要求高；\n\n团长作为小区内的供货集散点，主要负责统计人数、发放货品和提供售后服务。他们也逐渐成为小区内的小型KOL，负责社群运营和选品，同时利用自己的社交关系帮助平台低成本获客。\n\n团长资源是社区团购发展的重要一环，但往往也是最易出问题的一个环节。低进入门槛下，团长运营能力参差不齐、流动性高，且出现了团长“叛变”、独立运营等问题。\n\n社区发展前期非常依赖团长的积极性，因此有运营基础、销货能力好的团长成为香饽饽，被各家反复争取。团长身兼数职成为常事，从小平台“叛变”到大平台、从低佣金跳槽到高佣金平台也不是什么新鲜事。\n\n当团长身兼多职成为常态，社区团购的模式也在悄然发生变化：在各团购公司相继推出自己的微信小程序后，团长为了避免自己的私有流量流失，开始从各家公司的小程序中挑选几款价格低的发到微信群里，居民下单后再由团长统一在小程序中下单。\n\n根据36氪在《团长叛变》里的报道，有些社区团购平台遇到了诡异现象：团长把商品团购的小程序丢进微信群之后，很长时间群里面都是静悄悄的，点开小程序，里面几乎没有任何商品成单。而每每抢在发货截止时间前，团购小程序商城内却突然出现了一批大单，发起购买的多数是团长本人。\n\n事实上，工作人员看到的不过是团长花几块钱买过来的死粉群，团购公司自始至终都没有直接接触到团长真正拥有的活跃群。团购公司与小区消费者被人为地隔离开，团购公司只能获得扭曲后的消费数据，也只有几款低价的产品能被推送给消费者。\n\n另外，付出与收入的不匹配也成为团长资源流失的一大原因。在部分竞争激烈的区域，一个小区甚至会盘踞十几个团长，这导致部分团长一天只有零星的订单，收入也只有二三十元。\n\n除了团长的争夺、仓储物流的比拼，阻碍社区团购长期发展、导致行业厮杀如此激烈的，还有社区团购项目经营的高度同质化。2019年“百团大战”之时，全国有一两百个社区团购公司，但这些项目在团长管理、商品供给等方面都大同小异，到最后几乎所有人的供应源都一模一样，价格也没有一个公司特别有优势，于是竞争再度演变成为“补贴战”。\n\n说到底，生鲜电商难做，还是因为卖菜跟搞游戏、卖衣服、送外卖完全不是一回事——\n\n1. 卖菜没有规模效应。搞游戏，把服务器放在那，谁玩都一样；卖衣服，快递可以发往任何地方。卖菜，各地方吃的不一样，配送的时效要求也高；\n\n2. 社区团长需要承担的角色太多，难以拆分和标准化。都是做服务，送外卖高度标准化，卖菜要发链接、提货、送货，还要联络街坊邻里；\n\n3. 每人每天食量几乎是固定的，小区居民数量在短期内也几乎是不变的。游戏可以多玩几款，衣服可以多买几件，吃饭饭量几十年不变，小区居民数量也有明显上限。社区生鲜的天花板其实很低。\n\n因此，生鲜电商不是电商。社区团购对扎根湖南的兴盛优选来说是好模式，出了湖南就不一定。对大肆进驻各城市的互联网巨头来说也是一样的道理。');
INSERT INTO `archive_remarks`
VALUES (10238,
        '\n近日，青少年创造和社交平台《重启世界》（REWORLD）正式宣布，完成由愉悦资本及具有全球影响力的互联网巨头共同参与的总额约3亿元人民币的B轮融资。\n\n《重启世界》（REWORLD）构建在北京代码乾坤自主研发的、中国唯一的互动式物理引擎技术系统上。《重启世界》（REWORLD）由具备高自由度的创造平台及高参与度的年轻人社交平台两部分组成，将想象创造、互动体验、社交交流一体化，打造出完整的UGC创造、互动、社交生态链。\n\n《重启世界》创始人邢山虎是互联网行业领军人物，此次创业是他继金山软件、欢乐时代、麒麟游戏、乐动卓越之后的第五次创业。\n\n目前，《重启世界》已经与多所大中院校、培训机构达成合作，《重启世界》提供标准化课程内容以及师资培训，学生可以更便捷、系统地参与学习，进行搭建、美术设计、编程创造，同时让教育教学更富有乐趣。\n\n《重启世界》之所以获得用户的高度认可，是由于其拥有独立创作游戏、动画的技术优势，用户单人即可完成创作，大大降低了创作门槛。实现这一功能的编辑器是国内首家网络同步物理引擎， 此类物理引擎对技术有较高的需求，需要强大的研发实力才能完成，国内鲜有公司涉足独立研发。《重启世界》坚持深化技术上的投入，攻克了物理引擎同步网络的世界性难题，填补了国内该领域的空白，实现了国内该技术的最高水平。\n\n重启世界》的物理引擎技术已获得几十项技术专利，能够拟真现实世界中的各种力学，如碰撞、重力，高空加速下落，车辆撞击等，无需代码即可满足不同创意游戏的制作需求，甚至可应用于仿真模拟、建筑、计算机等领域。\n\n目前，《重启世界》项目在中美两地汇聚了众多技术骨干，此次融资后，将进一步拓展国际化市场，以更深入的技术投入，更专业的服务、更完善的社区，为UGC创作者营造友好的创作环境，开拓全球化更广阔的新业态和生态。');
INSERT INTO `archive_remarks`
VALUES (10240,
        '\n`看完了感觉: 还是不接受采访比较对!`\n\n他脱胎于硅谷科技，深受巨头青睐，却因一心要推动人机交互的新时代，在过去八年把头埋得越来越深。\n\n他在 C 端保有一定的知名度，却被误以为是家智能可穿戴公司。实际上，大众鲜少看到的 B 面，才是这家技术型公司的真面貌。\n\n你可以说他出道即巅峰，也甚至说他没有存在感。可越来越多的人变为他的用户。在中国，新车占比四分之一的大众汽车集团，搭载着他的车载语音交互系统；在新浪新闻 App，AI 虚拟主播每天为用户语音播报当日时讯，背后的技术也是来自于他；疫情期间，你接到的防控登记电话可能是他旗下的语音机器人打来的。\n\n客观来看，中国真正的技术型公司并不多，因为从商业变现的简单程度上看，做技术的比不上做产品的，做产品比不过做用户的，而做用户的比不过做流量的。\n\n作为中国的科技独角兽企业之一，技术型创业公司「出门问问」区别于搭上安防浪潮的那些机器视觉 AI 公司，用某种技术去切入一个具体的市场。他要做的事情，不是一种简单的工具替代，而是亲自去定义下一代人机交互。');
INSERT INTO `archive_remarks`
VALUES (10242,
        '\n套用社会达尔文法则，能生存下来的未必是最强的，但一定是最适应环境的。相较于许多犹疑不决的海归，翁斌斌显然更愿意接受变化。“比如消费这件事上，国外的逻辑是H5、google、instagram、Facebook，国内是淘宝、天猫、京东、抖音、微信小程序。每个平台都要有knowhow、人脉和经验。”他说，国内创业者天天在这样的环境里，而海归们必须得从头学起。\n\n上世纪九十年代，太平洋上演着无数中国人急于奔向彼岸实现个人财富与梦想的故事。“离开”是许多精英人群的选择。直到1995年，张朝阳放弃美国国籍回到国内：中国互联网时代由此肇始，海外华人的回国潮也从此开篇。但回头来看，“海派”在中国商业历史中的红利期却并不绵长。BAT的大战还未真正开始，李彦宏的百度就已悄然退身；字节跳动、美团、滴滴、京东、拼多多等新巨头之中，有留洋经历的也仅有王兴和黄峥两人。`不能这么说, 要看总数和比例`\n\n互联网萌芽时期，创业讲究的是技术视野和能力，“看过世界”的海归们有着天然的优势。而在过去十年，中国的互联网创业由商业模式创新主导，把已经在国外成熟的形式落地国内，核心在于对本土市场的理解与实践。海归优势在时代的变化被极大程度地消解了。\n\n2014年，一篇名为《波士顿人》的文章讲述了一个令人心潮澎湃的故事：从波士顿世界顶尖大学走出的中国留学生正在通过创业，极可能改变未来的中国。但至今这一幕也未发生。\n\n一家以投资海归闻名的VC曾在去年做过一次内部复盘：这些年所投海归的创业成功率并没有所想象得那么高。“我们曾希望他们成为最好的CEO，但事实证明，他们也许更适合做优秀的CFO。”海归不接地气成了创投圈中的某种刻板印象，也是每一位海归必须快速自我反证的事。\n\n青岛盛夏的一个凌晨，魏新月从一家郊区的工厂疲惫离开。无数次改期之后，她终于拿到了风下的第一个易拉罐。最近，她刚参加完天猫为新品牌举行的的创造营，“风下”在三十多个成熟品牌的产品PK中挺进了前十。她选择把所有精力放在比竞争者们更早地拿出更好的产品来，到年底成果出来了再启动融资。她认识到，“这可能是最核心的竞争力了”。');
INSERT INTO `archive_remarks`
VALUES (10244, '\n`Maybe yes maybe no`\n');
INSERT INTO `archive_remarks`
VALUES (10246,
        '\n根据网络渠道获知，6月24日，RenrenBit（人人比特）创始人赵东疑似被杭州警方带走协助调查，疑似因OTC交易，涉嫌“掩饰隐瞒犯罪所得”。\n\n赵东其人\n\n赵东曾是墨迹天气创始人，2012年撤出墨迹天气，投身于数字货币。他开了矿场，爆过仓，曾欠债6000万并在2年内结清，曾是较大的OTC外汇交易商，还亲自创建了Dfund股票基金，是币圈为数不多的传统出身投身区块链创业的大佬之一。去年赵东想在数字资产和区块链市场行业做几番事业，招兵买马建立了RenrenBit。\n\n面对赵东被抓的质疑，对此RenrenBit CMO梓岑在朋友圈表示，与人人比特公司主体无关，RenrenBit全员在岗。而赵东本人在面对持续质疑后也并未在社交平台发相关消息自证。外界对于赵东和RenrenBit的怀疑达到顶点。\n\n事实上今年监管层对数字货币OTC交易监管越来越严，3月就已发生冻卡的例子，6月曾发生冻卡潮，在OTC交易区进行交易的诸多银行卡遭到冻结，甚至支付宝也遭到冻结，众多OTC交易商均损失惨重，基本已经停业休息。OTC的冷遇可能意味着本土交易所涉及OTC都会被一刀切，今后数字货币交易提现的渠道也被限制。\n\n今年以来，USDT连续超发已经超过100亿美金，但整个币圈价格不升反降，这表明大量的USDT并没有流入币圈。“野路子”五花八门，很多用将USDT用于洗钱、黑市交易等地下通道，这也是今年监管层对OTC交易加强管制的原因。OTC监管潮可以要持续很长一段时间，赵东被抓可能只是一个开端，下一个被抓的大佬会是谁呢？');
INSERT INTO `archive_remarks`
VALUES (10248,
        '\n`我算是知道了. 只要有谣言的基本都是真事, 当然支离破碎的真相`\n\n之后有知情人士对媒体表示，赵东曾参与投资的北京某 OTC 团队因涉及疑似诈骗资金交易正在配合警方调查取证，赵东得知此事后表示主动配合警方调查，并称其本人并未直接参与交易业务。');
INSERT INTO `archive_remarks`
VALUES (10250,
        '\n`提前在群里听到了风声. \"风很大\"`\n\n【财新网】（记者 胡越）10月16日午间，知名加密货币交易所OKEx发布“暂停提币公告”称，近日该公司部分私钥负责人正在配合公安机关调查，目前正处于失联状态导致无法完成授权。因此于2020年10月16日11:00开始（香港时间），OKEx决定暂停用户提币。公告还称，“保证OKEx的其他功能正常”，\"资产安全不受影响”。\n\n另有两位接近OKEx的消息人士对财新记者表示，公告中“配合公安机关调查”的正是OKEx的创始人徐明星。其中一位人士还表示，徐明星至少一周前已经被警方带走，多日未在工作大群中现身，“其实公告写的很明确，什么叫做私钥管理人？难道老徐手里会没有私钥么？”谈及平台后续发展，他表示，徐明星对于公司的财务支出管理较为细致，如果他不能授权，会影响到各项费用以及提币的授权，“（除非）找关系见到他本人拿授权”。');
INSERT INTO `archive_remarks`
VALUES (10252, '\n`不能说是first world problem. 但是他们也并不比学注会的, 学法考的, 学注建的, 以及烹饪叉车的更惨! 所以我还是要说, 视野狭隘, 不值得深入思考`\n');
INSERT INTO `archive_remarks`
VALUES (10254, '\n`经典的时势造英雄例子. 可以想象生化环材同学们也很优秀`\n\nEE85级注定要肩负更大的历史使命。');
INSERT INTO `archive_remarks`
VALUES (10256, '\n`和百度相映成趣. Google就算是要走下坡路, 也是百足之虫死而不僵`\n');
INSERT INTO `archive_remarks`
VALUES (10258,
        '\n`By building a 10x better app - a pinch of salt`\n\nIts just the most scripted and closed up version of IRC that the world has ever seen. Give IRC the real credit.\n\nDiscord is a great product. There is no doubt about it. But still the UI and lingo is more tailored towards the gaming community.');
INSERT INTO `archive_remarks`
VALUES (10260, '\n`2018-2019-2020, 三起三落`\n');
INSERT INTO `archive_remarks`
VALUES (10262, '\n`福报来了`\n');
INSERT INTO `archive_remarks`
VALUES (10264,
        '\n`分别是, 火车头 (妻子母亲小孩都生病了, 结果说不愿意外派困难地区), 字字珠玑 (列举几个猝死, 为什么不珍惜身体), 告研发书 (原文是领导吃螃蟹研发吃不好, 回应是成年人爱吃不吃, 不要有部门负责员工满意要让客户满意), 原生家庭 (猝死一般是压力大, 压力大一般是原生家庭)`\n');
INSERT INTO `archive_remarks`
VALUES (10266,
        '\n`有人评价, 至少在快手干这个还不会被干掉. 胡玲就被干掉了`\n\n\n《谈谈我司的病》\n\n\n\n加入快手快五年了，最近和同事们聊天总提到一个感受：现在很忙以前也很忙，但是现在忙的很心累，17年以前一周六天每天早十晚十常年熬夜都没这么累过。先不谈个人问题，我们来看看公司这个“病”的根源。为了方便阅读，我会先抛出问题然后试着分析问题。\n\nQ1：员工普遍不了解公司战略和战术，对公司的做的事情存在大量疑虑，公司有大量员工觉得我们方方面面都做的不如头条抖音，不知道我们为什么这么做，公司上下人心浮动。\n\n信息通畅问题已经老生常谈了，我举几个例子来说明一下公司信息通畅的问题有多大。\n\n1. 公司当前的态势，可能没几个人知道我们大致的dau的，更别说我们的dau区域分布，单双列形的dau，直播体量，广告体量，电商体量，我们在行业中的位置，我们相比于抖音的优劣势等等，这些信息能了解的员工没有几个。\n\n2. 公司的战略方向，基于我们当前的态势我们做了什么样的决策，背后的逻辑是什么。\n\n2.1 比如管理层已经认知到了双列产品的上限不会太高(背后还有复杂的战略分析报告)，双列要逐渐转型单列，这样大的战略转型员工不清楚。\n\n2.2 比如双列下kol的私域流量粘性太高太强势，很不利于我们把用户的arpu持续做高(直播电商虽然现在势头很好，但本质是kol的私域流量太强，所以我们公域的短视频推小店效果不好)，那么今年流量分配也要重新调整，这个变化员工不清楚。\n\n2.3 基于当前对短视频行业天花板的判断，对用户增长的预期有所降低，而对生态产业和变现能力的发展提高很多，所以成立快手产业化，这个变动员工不清楚。\n\n其实还有数不胜数的例子可以举出来，公司在信息通畅这事情上真的做的很不好。\n\n\n\n先谈自上而下的信息传递，今年我们开始要求“管一层看一层”，我觉得这个理念可以用于战略战术信息的传递，作为管理者你们扪心自问一年有多少时间会和-2的同学讨论问题，有多少会邀请了-2层的同学，有多少信息你告诉-2层的同学了，这是自上而下信息通畅机制做的很差。\n\n再来谈自下而上的信息获取，问答就应该是很好的自下而上问问题的地方，但是现在问答上有几个敢提战略问题的，问答真的已经沦为夸夸群了，后文我还会讲这种现象的形成原因。\n\n另外老生常谈的各种信息平台的使用权限管制是不是做的不够好，我们各种权限平台应该大力推进从“权限管理转审计管理”，绝大部分人有想了解公司数据的时候，一看要领导审批填理由，难道我就写我就是想看看？敢问我一个做短视频的可以申请直播大盘数据吗，可以申请商业化大盘数据吗，可以申请电商大盘数据吗，可以看公司增长数据吗？老板层面上有各种顾问，各种战略分析报告，各种战略研讨，信息输入真的很多，但是一个普通的热爱公司的员工，他想了解公司的情况行业的情况都难得很，一个权限管理就足够把95%爱公司的人都扼杀了。\n\n\n\n我们接着聊问题。\n\nQ2，我司特别喜欢空降管理者，且这些空降管理能适应快手并做出成绩的寥寥无几。\n\nQ3，公司做事情推进特别累，跨部门很累不跨部门也很累，公司存在大量暗中较劲的业务部门，派系林立，导致一线员工做事情很心累。\n\n为了说明问题我决定把我了解的冰山一角例举出来，提到的事情会很片面，但是这是公司信息通畅不行所导致的，我们无法要求员工全面了解每一件事情。从一级部门说起，以前的徐欣和Thomas人尽皆知互相不服，音视频的于冰老师和客户端的春雨老师互相侵略渗透业务，海外KT的Zack和XYZ的远熙较劲，hr部门的刘峰和行政的故事，推荐的两座大山连总和万指导，再谈二级部门，最近闹得风风雨雨的直播林磷和周驰的故事，商业化产品中台ci和业务负责人之间的互不妥协，商业化销售一部和销售二部的较劲，真的太多太多了，难道宿华和一笑两个人之间在这一两年没有那么多较劲吗，还像17年以前那样的亲密吗？\n\n我把Q2和Q3放在一起说，是因为我觉得公司这样的氛围真的是“吃人的制度”，Q2的人才不能发挥出他应有的能力，不仅仅是面试面差了吗，很可能也是公司这样的制度把这些原本很不错的人才杀死了。在这个公司推进事情需要去揣摩对方的心思，估量相关人员是否强势，是否能跟你资源互补，一个空降的人才及时他来了就是一级部门负责人，那他想推进事情也必然涉及到其他一级部门的人，那我怎么去跟相关人搞关系，或者我直接去找老板强推，又会不会得罪别人后面不好相处做事呢？一个新人他刚来能认识公司几个人，等他终于把相关的人混熟了，发现自己也在体制内难以保持初心了。当然我们也能看到公司在努力改了，这几年不再招聘CXO之后，下面一些有能力的人确实做了很多事情，不过真的这块做的还不够，根源问题没解决，这个公司还是“吃人的公司”。另外我真的想问一下，那些我觉得很出彩的老员工伟博啊，柏翔啊等等是真的不能往上提吗，还是我们过于钟爱空降？\n\n\n\n最后我们再回过头来看为什么“我们以前忙现在也忙，但是现在真的太累了”，因为我们太赤诚的爱这个公司了，我们担心他战略战术走的不好可我们连每年的战略战术都不知道是啥，那好吧我们就当个大头兵去做事情，可是我们今天刚做了运营安排的事情，明天产品说运营的事情不合理重做。好不容易有一个大项目过来，结果涉及到的人都是各路神仙，推进花了大半条命，终于一声叹息做完了，公司说业务调整项目冻结，我们的员工真的太难了，越爱这个公司越难，不如佛系吧别爱了，那一分钱做一分事，事情好坏与我何干呢，不投入感情就不会被伤害。\n\n说到这里我还要再说一下老板真的不知道公司这些内部的破事儿吗，以前我只觉得老板们是知道但是没时间管，现在我觉得老板们可能都不知道，东厂(hrbp)、西厂(pmo)、经管委可能真的是老板们对公司了解的全部信息输入了，管一层看一层都是嘴上说说，不解决公司内部的问题，我们没有新的人才也很难有创新的。恕我直言，君有疾在身，不治恐将亡。\n\n\n\n说了那么多不好的事情，公司其实大部分还是比较好的，我们的业务去年逆势增长和抖音一起把短视频的局面打的更开了，今年产业化虽然很难但是有起色，单双列切换公域私域流量重新分配南方战略起步，一切充满了未知但也积极向上。很多之前的问题我们也慢慢的改了，比如以前内耗严重的商业化(刘新华时代)，四分五裂的海外慢慢在整理，主站产品统一等等。其实我们真的能把我们的态势和接下来的战略战术让员工了解，我觉得大家不会那么慌乱，也对做的事情更加有热情和方向的。\n\n\n\n我说的太多太直接了，如果想找我说看法片面的，我确实能获取的信息有限请帮忙解决公司信息通畅问题，如果想让我帮忙解决问题的，臣实无可医，想给我私聊点赞的还不如把你看到的问题说出来，想私聊骂我几句的我真的脸皮太厚了罢了吧，一个月内针对这个话题不接受私聊，我也不想大家回复评论，只会把话题越带越歪。我自认是一个有热情的人，连我这样的人都觉得累了，又何况其他员工。\n\n\n\n加油吧，我们一起热爱的快手！\n\n\n\n2020年6月24号，写于丽江返回的航班\n\n\n“现在的快手和那时的陌陌很像，但真实情况更严重。流量普惠的快手内部成长出几大家族，割据了快手的大多数流量，与快手颇具分庭抗礼之势，两方谁也不敢轻易动谁。”上述人士补充。\n\n\n\n快手目前公认的有6大家族，其中只有散打哥（真名：陈伟杰）出身广东，其余5大家族的核心红人均是东北人。\n\n\n\n快手头部主播们将东北家族文化、师徒传承的理念灵活运用于公司的管理。\n\n\n\n“2018年，快手内部运营开始有意要求淡化快手的东北色彩，却很难。东北化早已深入到快手的产品文化中，一个社区要想修改文化其难度可想而知。”快手一位早期员工告诉《深网》。\n\n');
INSERT INTO `archive_remarks`
VALUES (10268, '\n`难者不会, 会者不难. 君子性非异也, 善假于物也`\n');
INSERT INTO `archive_remarks`
VALUES (10270,
        '\n`Forbe的文章确实有新信息:`\n\nThe $15 million round was led by Epic Games, the first outside investment that the Fortnite maker has made, a significant seal of approval for Manticore’s technology, which is called Core. San Manteo, California-based Manticore had already taken in $45 million since launching in February 2017.\n\nManticore follows on the success of a broad trend toward user-created games that has already led to billion-dollar valuations for Minecraft and Roblox. Both of those companies target younger audiences than Manticore.\n\nDescamps and cofounder Jordan Maynard come from that old world they’re determined to disrupt. Descamps studied the video games business while getting his Standford MBA in the 2000s; he graduated and founded a gaming studio with Maynard, who’d been a computer science major at San Diego State. They sold the company, A Bit Lucky, to Zynga ZNGA +2.1% and worked there for several years prior to leaving and starting Manticore in 2016.\n\nThey spent three years developing Core then made it available to creators in June 2019. It won an important partnership with Hasbro’s HAS +3.3% Dungeons and Dragons, and the two put together a contest this summer challenging players to create games using Core that were based on the venerable brand. The most popular was Forgotten Cisterns, a knight’s journey through a sewer full of undead enemies.');
INSERT INTO `archive_remarks`
VALUES (10272, '\n`包场熬夜赶工保密`\n');
INSERT INTO `archive_remarks`
VALUES (10274, '\n`SER : stock = 5.5 : 1 一万股就是290万, 如果52.88. 还行. 历史上不少人发3万股. 没说禁售多久 - 或者说跟stock就不一样, 只能回购`\n');
INSERT INTO `archive_remarks`
VALUES (10276,
        '\n`历史很迷人. 历史是走出来的. 局中人在当时当日根本就无从知晓历史的走向. 每次我都想到王峻涛`\n\n字节跳动创始人张一鸣极少表扬他的团队，哪怕是缔造6亿日活的抖音。一位相关人士说，他听过最振奋人心的评论是，抖音团队“还不错”。\n\n张一鸣之前不玩游戏，但当公司对游戏业务表现饥渴时，他马上做出一个决定：每个星期五，逼迫自己打两小时游戏，并把时间精确到晚餐后的八点至十点。\n\n旁观者惊讶地发现，在小范围会议上，他对游戏党的各种专有名词，从茫然不知变得如数家珍起来。这被视作自我迭代。“极度理性，理性得像机器人。”该人士说道。\n\n2016年秋，字节跳动上线了一款叫A.me的产品。创始团队只有十个不到的年轻人。\n\n这里面领头的叫任利锋。他1987年出生，身材微胖，留一小撮山羊胡，有时梳个大背头；此前就职于百度贴吧，但前同事们对他没什么印象。他喜欢竖起大拇指，对旁人说：“牛×啊，牛×啊。”\n\n刘多加入时，抖音日活跃用户数才40万。“40万在字节算产品吗？不算好吗？！”打开抖音，刷十条内容，出现的第十一条就是第一条。他义无反顾投身于此，纯粹因为有同龄人，能玩儿到一起。\n\n在字节，抖音只是诸多实验项目中的边缘团队。这时的明星产品是今日头条和西瓜视频。由于工位紧缺，短视频从总部挪去了一公里外的中国卫星通讯大厦。“百万日活，都不是什么大产品，是做着玩儿，”刘多说，“没人觉得这事能成。”\n\n字节跳动孵化了两个短视频项目：火山小视频和抖音。公司重点放在火山。“我们拿到的投放都是火山剩下来的。比如四场跨年演唱会，三个是火山的，有一个火山实在没法投了，他们说那就给你们抖音吧。”2017年底，抖音广告出现在浙江台跨年晚会。\n\n2016年，字节跳动仅2000多人，估值百亿美金规模。张一鸣重视组织的信息透明和流动。每双月，在总部中航广场矮楼负一层的会议室，产品轮流召开业务会，所有人可旁听。“最早用A.me的时候，我都没弄懂，就看到小朋友在那儿跳舞，”一位2016年在字节担任中层的人士说，“抖音那个时候半死不活的。数据很差，各种试，各种起不来。”\n\n他记得去参加抖音双月会，一开始大佬们悉数到场，“后来一鸣都不去了”。\n\n抖音早期，每天中午员工会围成一团，在办公室“吃鸡”。先是打《荒野行动》，后转战《和平精英》。有次，其他同事实在嫌他们太吵，打扰到午休，把他们轰走了。\n\n这群人没有太大抱负，最初设想是做音乐短视频社区，觉得“做个社区就够了”。他们佛系但兴致昂扬，也因为此，抖音聚集起一帮热爱社区的人。\n\n2017年8月，抖音线下巡回party开始了。活动由运营主导，负责人名叫李恬，向任利锋汇报。她是个长着娃娃脸的89年女生，喜欢穿连帽卫衣和背带裤，个子小、但能量足。此时她让同事亲昵地喊她“大恬”，相比“小恬”，这样更牛气。\n\n最早七人组，除任利锋和李恬外，还有两个产品经理，分别是张勃和蒋灵安。张勃辨识度强，纹着大花臂。其他则是运营，包括王佳、马莎和云云。\n\n字节曾发布一篇名为《抖音是怎么做出来的》官方文章，讲述创业故事。但这家公司对信息安全极为苛刻，因此文中成员均为假名。\n他们曾公然跑到快手拉新用户。快手立马察觉封禁抖音水印。辗转数次，他们买通快手创作者，在真人身上贴满抖音贴纸露出。“快手可能现在也不知道我们这么投吧。”凭借求生欲，抖音变着法投放数月，耗费200万。\n\n早期员工坚称，抖音虽在产品上抄袭Musical.ly，但内容生态建设标新立异。Musical.ly有不少低龄内容。他们判断，可以是低龄化的受众，但不能是低龄化的创作者。社区应包罗吃喝玩乐。“我们定义火山和快手是杀猪宰牛的平台，我们应该高级一点吧。”于是他们找了武术的、健身的、旅行的、赛车的、冲浪的、红酒的、绘画的、音乐的、舞蹈的、美妆的、烹饪的……甚至还有帆船的——类别拆得很碎，垂类标签定义300多个。\n配合《中国有嘻哈》投放，2017下半年数据暴增。抖音从小众的亚文化开始走向大众，也从公司角落来到舞池中央。“我们切的是一批有流行文化的年轻人，后续内容爆发是化学反应，”一位亲历者说道，“那时候接触一些机构问，你DAU多少？1000多万。过了一个多星期问，2000多万。我靠，他们都很惊讶。”内部却风平浪静。“我们就每天截个图发到群里，DAU又涨了，挺好的。真的没什么感觉。真的很佛。”\n前端只是这场战役的局部。站在潮流产品抖音背后，字节跳动依赖“中台”运转。\n\n可以想象，中台是一块块积木，方便前端业务灵活调取。一旦实验项目脱颖而出，包括用户增长、推荐算法、技术、商业化、市场等更雄厚资源，会以中台形式灌注进来。字节相信“大力出奇迹”。正规军倾巢出动，快速试错、快速验证。而2018年初的抖音，正好抵达临界点。\n\n“早期团队做出了很大贡献，但我要修正的是，抖音成功离不开字节的大中台。”一位抖音人士认为，字节核心能力圈有三：1，高效的推荐算法做人和信息匹配；2，高效的UG（User Growth，用户增长）；3，高效的商业化。“高效的UG引入用户，用高效的推荐技术去匹配，留存做好后商业化也高效，挣到钱又去投UG。”\n他复盘称，抖音取胜最关键在于，是“字节在做它”，有中台和综合能力支撑。其次原因才包括：选对了方向；发现苗头后做出坚决而正确的决策，倾公司之力砸资源；运营部分超出Musical.ly，充当潮流引领者。\n一位产品经理觉得，抖音推荐和Feeds流过于强大，产品很难再做个体验与之媲美。“我们把2018年的版本拿回来用，留存不会差太多。”\n字节跳动的高层，对新业务态度不一。抖音组织架构挂在张楠下面，但两名知情人士透露，“陈林对早期产品有很大贡献”。\n\n彼时公司层面花更多精力在火山。“陈林觉得，抖音是个崭新的东西，Musical.ly有独创性。”他那时“一直不放心”，帮着招人、派人。\n\n在字节，张楠和陈林是独当一面的高管。他们都是80后，成长路径相似——字节收购其创业项目，跟随公司披荆斩棘开辟一方领地。张楠还曾向陈林汇报过一段时间。\n\n据共事者评价，张楠是典型的运营和市场人才，业务判断力强，产品能力略显短板，契合了抖音重运营、轻产品的路径。\n\n“她是个非常有野心的人，也有很强的忍耐度，并且执着。”一位中层人士说。字节不提倡以“哥”或“姐”相称，但内部叫她“楠姐”。张楠在业务决策上表现强势，“是个很有力气的人”。一位员工回忆道：“经常大家讨论半天，她上去说‘我不同意，下一个’。”\n\n一位内部人士认为，张楠善于单点突破，搞定头部资源。如牵头娃娃变脸特效、罗永浩签约入驻等。“头部的树立要靠集中用力来实现。”\n\n“一些团队判断做事情成不成功，就要看张楠有没有点赞。”一位运营员工说，张楠不在意细节，更从全局和宏观出发。“楠姐很犀利，她的观点很容易让人听懂。”一位产品员工说。\n\n作为女性高管，张楠被看作有理想主义，乐于在产品里发展爱好。比如主导开发了轻颜和剪映。员工认为，女性高管或许令抖音更为“阳春白雪”。\n\n“字节这种网状结构特别累。”上述产品员工说，大部分公司采用树状体系，只需向上级汇报，而网状意味着，只要与其他业务有交集，就会分配你到各种会议上。“一天都是会，晚上才能开始干活。每天工作到灰头土脸、蓬头垢面。”\n\n“说难听点，你得会撕逼，内部去吵。不断地会有人challenge你，不管是他懂还是不懂。”上述运营员工说，它考验推动者的思辨力，在混乱辩驳中杀出一道生机。\n\n到底谁是抖音灵魂人物？有人说是任利锋，有人说是张楠，甚至有人说是朱骏（因为抖音产品形态来自Musical.ly）。据上述内部人士了解：“张楠不觉得卷卷做起来，一鸣也不觉得张楠做起来，觉得是赶上这个时代了。”这场灵魂人物之争，更多人把票投给张一鸣。虽然张一鸣从未在一线指挥，但他们相信，抖音成功是体制的胜利。\n\n\n\n它带来一个冷冰冰的现实：抖音也许根本不需要灵魂人物。在这家理性至上的公司，除了张一鸣，没有一个人绝对重要。\n\n\n\n“这个螺丝钉走了，另外一个螺丝钉补上就可以，”上述运营员工说，“没有说这个机器有特别大的轴承。”\n`最值得看的某过于失败`\n\n挫败感来自对本地生活的贪婪。2018年中，在位于漕河泾的上海总部，抖音秘密成立POI（Point of Interest，兴趣点）团队。他们集结三十人，这对当时的抖音是豪华阵容。全部运营人员才扩张到百人，该团队就占三分之一。\n\n\n\n这帮人依托POI详情页，运营美食、旅行两个垂类。他们想竭尽全力从美团口中抢走一块肥肉。然而打击接踵而至。\n\n\n\n接近该项目的人说，最早，他们自建产品功能，期待自成交易闭环。商家通过企业号入驻后台，在抖音上线优惠券，结果整合产业链资源太难。于是转向第三方服务，美食接外卖、团购平台，旅行接酒店B2B平台，仍未见起色。\n抖音文化以快著称，一切以3.0倍速快进。向眯入职，上午电话通知面试，下午发offer；预约会议室太耽误事，每早开“站会”；OKR每两月复盘，目标激进，必须时刻紧绷，驱赶自己向前奔跑；在这里，收到消息“已读未回”尤其不礼貌，没一会儿对方就把你领导拉来群里；推动计划也是，当周开产品评审，当周AB测试，两周出系统性结果，从数据、研发、算法各方位解析并分析漏洞，火速从中台拉资源，一个月上线完毕。\n\n\n\n此外，他们还有雷打不动的大小周——隔周单休。\n\n\n\n“字节贯穿始终是‘活下来’的文化，每两个月不出成绩的时候，你就很有可能被干掉，”一位接近抖音高管人士说，“是日常在焦虑，那个频率特别密集。白天分分钟都在开会，晚上7点开始回邮件，处理琐碎的事情。12点老板跟你要报告，凌晨2点在等你的东西。”\n“在这艘大船上面，所有人都高度紧张，我们像机器一样被训练着，一年在当三年用。没有朋友、没有情感、也不需要互动。”一位中层回忆，巨大压力下，他变得尖锐。“速度太快了，我几乎像疯了一样，说话快，觉得谁都是傻子。我甚至一直在怼人。”\n\n\n\n让交棒达到高潮的是任利锋，即使一手创立抖音，也未能幸免。2020年，字节宣布任利锋调任西瓜视频。\n\n\n\n这家公司体制强大，也正因为此，没有人能与体制媲美。人甚至像系统上的“零部件”。\n\n`文章从张一鸣的理性说起, 说到没有人情味, 草蛇灰线还行`\n“好嗨呦，感觉人生已经到达了高潮，感觉人生已经到达了巅峰。”2018年10月，待业在家的余兆和录视频，讽刺蹦迪很装，没想到爆火。“那个流量咔咔往上涨，一晚上涨粉几十万，每天都很疯狂。”他更换抖音名为“多余和毛毛姐”。凭借男扮女装和无厘头表演，不到两个月粉丝破千万。\n\n\n\n之后的2019年，毛毛姐为代表的剧情号独领风骚。几乎无人不识毛毛姐。“我那个时候流量好到什么地步？讲一句话就一百万的赞。”毛毛姐告诉我。他从老家奔赴上海，成为裹挟进时代飓风里的人。不仅荣获“现象级网红”称号，还成为娱乐圈座上宾——《武林外传》里饰演邢捕头的范明说，你和姚晨表演异曲同工，很松弛；活动上，赵薇拿话筒当众cue毛毛姐。“微信好友名单会有汤唯，太吓人了。”突如其来的荣耀，让他受宠若惊。\n\n\n\n这是掘金抖音流量的黄金时代。在广州，1992年出生的白水头一回当老板，就尝到暴富快感。“简直像是奇迹。”白水刚毕业找了份月薪3800元的工作，摸爬滚打四年，去年是转折点，领导派她成立MCN。“我们从投入到变现只花了十万块钱，指定是没有人信的。”\n2019年6月，白水公司风楼传媒孵化“黄三斤”。“第一条就爆，三个月粉丝就一千万了。”初出茅庐的公司营收过千万。“我们踩在风口上，真的有很大是运气。”\n\n\n快手生态偏自然生长，野生达人多。抖音不然，从2018年就MCN化、工会化，一层一层建生态。\n\n\n\n对流量敏锐的生意人蜂拥而至。2018年是起点，2019年达到火热，MCN激增至两万家。他们分布在北上广深、成都、长沙等地。业务采取两种模式——孵化型和签约型。前者培养素人，网红分红比例小，10%左右。后者签约已有名气的达人，如毛毛姐签了无忧传媒，网红分成高。网红月薪是底薪+提成，不少可达六位数。\n我走访了位于北京、广州、上海的七家MCN发现，所谓“短视频思维”就是“怎么拍出一个让抖音的机器算法认为好的内容”。更准确说是“怎样通过内容激发用户行为，进而让算法识别到数据，给内容匹配更多流量”。创作者为此苦心钻研。\n由算法支配的恐惧步步紧跟。“没有一个达人不焦虑的。”即使拥有强人设、粉丝量3000多万的毛毛姐，每当点赞量不到一百万，也会翻来覆去睡不着觉，“觉得自己要凉了”。“好不容易站起来，万一不行了怎么办？”\n\n\n\n抖音加速使人辉煌，也加速使人坠落。\n创作者为了迎合算法完播率，视频节奏越来越快、时长越来越短。一条视频爆了，无数人跟风翻拍。为了赚流量，有MCN不惜让十几个网红同时拍一个脚本。随之而来的是同质化泛滥和审美疲劳。上述广州人士把一些人做抖音的心态比喻成“上赌博机”，盼望一朝被算法选中，爆红、暴富，又浮躁又投机。价值观输出成为奢望——这些都让单个原生达人难以掀起巨大风浪。\n\n\n抖音一度想过帮达人艺人化，将潜力股捧上综艺。可惜没成功。讽刺的是，一些在抖音没火起来的人，在外面意外走红。一位运营说，火箭少女101段奥娟曾在抖音穿校服唱歌，杨超越、费启鸣、摩登兄弟也都是运营维护的对象。“我们把他们当成做不起来的达人。”\n\n\n\n他记得当年有同事和摩登兄弟吃烤鸭。没想到两年后，再次到附近餐馆，抬起头，央视一套放着摩登兄弟。他们摇身变成明星，光彩照人、火遍全国，只是和抖音无关。\n“不能只在抖音火”是MCN老板的新共识，不少人跨平台寻求安全感。\n\n“但是你要让人误以为可以成为头部，成为大腕，”一位前抖音人士称，“平台必须给人这样的梦想。”\n\n\n\n07\n\n更功利主义\n\n\n\n抖音和快手的交战史，是一个后来者凶猛的经典案例。\n\n\n\n“我们压力太大了，各方面压力都很大，全方面被抖音超越的感觉。”一位快手人士告诉我。一名抖音较早员工站在现在回想说：“我们定义做成快手那样子估计早死了。”\n\n\n更有意思的是，掌门人张一鸣极力宣扬“延迟满足感”，而“他的公司开发了及时反馈到极致的App”，某位互联网从业者笑谈道。       \n\n迷惑不止于外。“也非常非常困扰我们。”在抖音工作过两年的运营，表达了相似的感受。极端存在两种情形：一些时候是，用户点赞等后台数据都表现良好，但就是得不到更多推荐；一些时候是，明明视频有违规，却在持续地被推荐着。他们只能不停上报给算法部门。“比较明显的会立即处理，有一些模棱两可的，可能过去也就过去了。”\n\n\n\n上述运营说，你知道盒子在高效运转，你能粗浅描摹轮廓，但谁也不知道里面精密的结构和零部件。更何况，五花八门的算法权重调整实验密集展开，这个庞然大物每天都在变化。\n\n\n\n见证抖音崛起的早期员工，也描绘了颇为魔幻的场景：算法工程师就坐他身后，每当内容推荐莫名其妙，他就扭过头质问他。算法工程师只是无奈撇撇嘴：“我也不知道啊。”\n如今，抖音早已不再是“抖音”。它不是音乐短视频社区，甚至也不是短视频平台。最新版App悄然从“抖音短视频”更名“抖音”。它已成为集视频、直播、电商、社交、本地生活等于一身的“怪兽”，并且试图长出更多臂膀。\n\n\n\n管理层在2019年提出“演化”，探究抖音究竟往哪去。是内容平台？还是社交平台？内部观点分裂成两种。\n\n\n\n前者认为应延展内容平台方向，将爱优腾和新闻媒体覆盖的PGC内容做起来；后者认为要抢占社交。两位抖音人士说，它在两者间有些徘徊。\n\n这种焦虑烧到了公司最高层会议上。知情人士告诉我，从去年开始，张一鸣把“社会价值”列为高管会的首项固定议题。\n\n\n\n字节跳动是中国少数没有年会的互联网公司。2019年初，赶超快手后的第一个除夕，抖音有三十来人留守过年。公司准备好年夜饭，张一鸣出面犒劳团队。这位很少表扬团队的创始人，和在座诸位打招呼。理所当然地，他没有发表演说，也没有举起酒杯，只是拿一摞钱来，给每人发了两千块红包。\n\n\n\n“抖音摩天大楼不可能靠一个工程师建起来。可能一鸣也不清楚，最终每行代码起什么作用。”一位员工说。');
INSERT INTO `archive_remarks`
VALUES (10278, '\n`老榕`');
INSERT INTO `archive_remarks`
VALUES (10280, '\n卷?\n');
INSERT INTO `archive_remarks`
VALUES (10282,
        '\nOur mission was to break open quant finance and make it accessible to everyone. You helped realize this mission and came together to form the biggest community of quants the world has ever seen. For that, I am extremely proud and grateful. I sincerely hope that Quantopian is just one milestone in your journey through quantitative finance. Knowing so many of you and your creative energy, I expect you will use your Quantopian experience to learn and grow, and look for new ways to disrupt the industry.\n');
INSERT INTO `archive_remarks`
VALUES (10284,
        '\n`忆苦思甜, 比较国外同行. Rap, 摇滚, 所有亚文化都是这样写一遍`\n\n不过，夹缝中生存是中国文化娱乐从业者的基本生存本领了。\n\n西江月和之前外卖俱乐部的负责人 Kevin 都向别人讲过一个类似的故事，人物和地点不同，但核心情节是一样的：有位脱口秀演员，在演出的时候讲了些不该讲话题，然后被叫去喝茶了，从此再也没有回来过俱乐部。\n\n我心想，还好他是做脱口秀的，单枪匹马。不演大不了就当个编剧，俱乐部也不会受到什么牵连。\n\n我可是认识好多写微信公众号的，公司做到了几百个员工，几百万用户，拿了几千万的投资……还不是一个晚上说没就没了。\n\n看到了微信 想起一个梗 往高考卷子不会的题上写一句毛主席万岁恐怕不会总是管用的\n\n');
INSERT INTO `archive_remarks`
VALUES (10286,
        '\n网易云也不是奔着你的音乐去的，要是真的2000万只买个数字专辑发布独家，绝对是血亏。15块一张的数字专辑一共卖了15万张，只有200万销售额。但是投资人是凯子吗？\n\n\n本来今年要发专辑的几个老骨头现在都捂着不发专辑了，都等着互联网公司上门2000万买断。\n\n\n互联网公司要你们的音乐做什么，还不是提前绑定了线下巡演的收入。这些老骨头们的粉丝，正好到了奔30的当口，几百块钱一张线下演出的门票，让他们掏钱正是时候。去年崔健的演唱会，微博上说“是一群三环附近两套房的北京土著，挥着荧光棒唱自己一无所有”。如果操作得好，半年巡演就给赚回来了。\n\n\n所以我说，搞音乐真是辛苦钱，到了这样音乐的黄金时代，辛辛苦苦好几年，靠一张嘴吃饭，就换了一套房子而已。\n');
INSERT INTO `archive_remarks`
VALUES (10290, '\n`木村拓周写香港, 是很有味道的`\n');
INSERT INTO `archive_remarks`
VALUES (10292,
        '\n某反腐大剧告诉我们，腐败的主要是农民的儿子、老领导的女婿，而干部家庭出身的领导不太容易腐败，通常是对手造谣，或者用错了人，替下面的腐败分子背锅。\n\n\n所以《共享单车的名义》也严格按照这个套路创作。\n\n\n摩拜创始人胡玮炜，出身浙江东阳，曾经靠乡镇企业致富的百强县，如今以横店闻名全国的县级市。\n\n\n她是典型的小镇文艺女青年被理想主义感召去读了新闻，然后去大城市大媒体做记者。\n\n\n而 ofo 的创始人戴威，北大浓眉大眼的学生会主席，他父亲的行政级别，前女友父亲的行政级别都是副部级，典型的比你聪明比你有钱还比你努力。\n\n\n于是在谣言中，摩拜腐败的是领导，消息来源是知乎上一个匿名回答，涉案金额高达数千万人民币。ofo腐败的是基层的运营，创始人戴威没有腐败而是被架空，涉案金额比较低，几万几十万，消息来源是脉脉上前员工和员工的匿名爆料。\n\n\n尽管这些消息的来源都不确凿，但是谣言从来不止于智者，吃瓜群众认定了如此栩栩如生的谣言一定不是空穴来风。\n\n\n更早一周前著名投资人周亚辉先生和空空狐创始人余小丹隔空对怼升级，最后周亚辉亮出了空空狐花20万置装买包的发票。\n\n还有化妆品国货百雀羚上周用3000万制造了多起刷屏营销事件，最后的转化率只有0.00……008%什么的，又让甲方想起了去年被微信大号刷量骗钱的恐惧。\n\n\n2012年后被职业经理人吃相吓到的刘强东至今一朝被蛇咬，十年怕井绳，只信任自己培养的管培生。废掉了好几个宝洁出身的市场负责人之后，如今把老同志徐雷放到了CMO这个首席花钱官的岗位上。\n\n某位“独角兽捕手”所在的基金，纸面上业绩还很好，但是实际上投的公司还都没有上市退出，所以新办公装修得过于“堂而皇之”让LP颇有微词。\n\n\n还有一家过去以改革僵化VC行业为己任的新基金，合伙人在基金投资之前就提前让直系亲属低价建仓，让基金为自己接盘。\n\n\n如今互联网投资的热点从纯线上到O2O，再到网红美食和共享充电宝，自动售货机，基本上已经是纯线下了。纯线上的大平台，也在搞内容采购。一个MC天佑花了今日头条2000万，一张朴树专辑也要了网易云音乐2000万。\n\n一旦涉足了采购、供应、BD，又在短期拿到巨额融资，互联网公司反腐败的难度就和传统企业拉平了。\n\n互联网已经是我们国家的支柱产业，也是中国跻身G2，中国人实现中国梦的重要资本，因此要辩证地看待中国互联网的腐败问题，借腐败问题把整个行业一棍子打死，否定我们广大的独角兽和投资人队伍，更是不可取的。');
INSERT INTO `archive_remarks`
VALUES (10294,
        '\n\n历史告诉我们，懂政治的武侠小说家，运气一般不会太差。梁羽生的运气就很好，金庸的也不差。第一个被总设计师在人民大会堂正式单独会见的香港同胞，就是金庸。\n\n那是1981年7月18日，邓小平以中共中央副主席的身份会见《明报》社长兼创办人金庸。那天邓小平穿着短袖衬衫，站在人民大会堂福建厅门口迎接，一看到金庸就走上去握手：“欢迎查先生回来看看。我们已经是老朋友了。”\n\n总设计师还是很讲究的，老朋友这个词不能乱用，之所以说是老朋友，那是因为他跟金庸之间神交已久。\n\n文革开始后，邓小平被打倒，流放到江西农村，是为“二落”。那时候金庸在《明报》开辟“北望神州”专版写社评，表态支持彭德怀、邓小平，批评四人帮倒行逆施。为此他成了香港的反派文人，不得已跑到新加坡避风头。\n\n到了1976年春，“四人帮”搞反击右倾翻案风，邓小平再次被打倒，是为“三落”。金庸依旧为邓小平站队，还立了flag：邓小平不久后就会东山再起。一年后预言成真，邓小平出来主持工作，金庸在《明报》上热烈拥护改革开放。\n\n邓小平20世纪70年代后期从江西回北京后，托人到境外买了一套金庸的小说。从此，武侠小说成为总设计师的睡前读物。所以三起三落的邓小平在1981年会见两度为自己仗义执言的香港同胞金庸，满面笑容地说，“你的小说我读过，我这是第三次‘重出江湖’啊！你书中的主角大多是历经磨难才终成大事，这是人生的规律。”\n\n锦上添花易，雪中送炭难，金庸的这颗真心，总设计师狠狠地在功劳簿记上了一笔。\n\n在这次会面上，总设计师主动提起金庸之父当年被错杀之事，说“团结起来向前看。”金庸也点点头，“人入黄泉不能复生，算了吧。”在这次会面上，金庸还进言，“为了调动全国一切积极因素投入经济建设，在起用人才、提拔人才之时，似乎应当重视才能、知识、品德，不是共产党员也应当有同样的机会。”\n\n1982年，撒切尔夫人访华前夕去了香港，专程接见金庸，谈啥你猜猜？等到了1985年，不是共产党党员的金老爷子就成了基本法政治体制起草小组的港方负责人。\n\n怎么讲呢，梁羽生对改革开放，一国两制的理解没达到金老爷子的高度，所以基本法起草小组没梁羽生的份儿。\n\n王立群说一切历史都是当代史，金庸用武侠写了大半辈子当代史，1972年写完《鹿鼎记》就封笔了。但是1976年，金庸长子在美国自杀，死时不满20岁。金庸心性大改，遂于晚年“披阅十载，增删五次”，向同样有过丧子之痛的曹雪芹看齐，他在《倚天屠龙记》的后记里面说\n\n“张三丰见到张翠山自刎时的悲痛，谢逊听到张无忌死讯时的伤心，书中写得太也肤浅了，真实人生中不是这样的。因为那时候我还不明白。”\n金老爷子玩了一辈子春秋笔法，到晚年改稿终于搞起了资产阶级人性论。\n\n武侠本来就应该如此，无论政治掀起多大风浪，江湖一蓑烟雨。\n\n这些武侠小说作者论收入上不了畅销作家榜，轮行政级别不能去人民大会堂参加文艺工作会议，连周小平同志都不如。\n\n他们彻底忘了武侠小说曾经的辉煌，忘记了梁羽生和金庸老爷子开辟的用武侠写中国历史，宣传党的路线方针政策的看家绝活。\n\n要我说，这也只能怪金庸，他最后一部小说写得是《鹿鼎记》已经写到了清代，民国上海的小说家，回归前香港的动作片已经用武侠把中国历史讲到了辛亥革命。按照广电总局“建国以后不准成精”的惯例，取缔了一切反动会道门的新中国，当然就没有武侠的生存空间了。\n\n但是我还心怀希望，希望中国梦和一带一路的政策能给下一位伟大的武侠作家提供机会，让武侠也可以和我们一起建设社会主义。');
INSERT INTO `archive_remarks`
VALUES (10296,
        '\n虽然小巨头的创始人还在一遍一遍向员工们洗脑我们是下一个 BAT，但是 2014 年的事情应该教育了很多人，当你的公司正好处在 BAT 军备竞赛的战场上时，你的公司才是最值钱的。\n\n2010 年傅盛的可牛和金山顺利合并安全，还引入了腾讯投资，也就是一场“3Q 大战”的事。2014 年阿里用破纪录的“超过两个91的价格”拿下 UC，就是UC成功顶住腾讯浏览器在移动端的进攻，而阿里巴巴立志要拿下微信以外市场上所有能买到的流量来源。\n\n包括后来，滴滴快的打，美丽说蘑菇街打，大众点评美团饿了么打，摩拜ofo打，最后都是 BAT 在打。打到哪里，哪里就冒出来一串独角兽。\n在互联网的马太效应愈演愈烈的时候，是 BAT ，而不是别的什么掌握着中国互联网核心资产的定价权。\n\n小晚写互联网大并购的那篇文章是这个结论最好的一个例证。里面讲滴滴、快的合并案最紧张的时候，双方在隔壁两个房间里互相给阿里和腾讯的最高层打电话，包凡说，\n\n“ BAT 像天上的神仙，看着人间在打架”。\n\n很多人觉得卖给 BAT 就丧失了独立发展的机会，实际上卖给 BAT 才是保留了独立发展的火种。因为只有在拥有现金奶牛的前提下，大公司才愿意给新业务更多机会。而你一旦错失了卖给 BAT 的机会，只能退而求此次卖给还处在盈亏平衡线上挣扎的第二梯队，后者不是图你能挣钱的业务就是图你能打仗的团队。\n\n像乐视这种公司，可能就是图的是收购你这个消息带来的利好，炒一把股价就算了。钱都不一定给你。\n\n只能说周航之前的创业经历太顺了，让他在做易到的时候一直伴随着天真蓝的BGM。甚至到公司卖给乐视的时候，他还幻想这个浑身上下每一个毛孔对现金都充满渴望的“生态”会善待自己已经在竞争中出局的公司，给予独立发展的机会。\n\n结果是乐视的投资款只到账了30%，易到用车就以亏本的价格吸收了大量的预存款，然后以抵押贷款的形式给乐视的生态贡献了13亿贷款，给自己留了1个亿。\n\n\n在这一点上，见证了中国互联网 20 年的王小川，在搜狐最落魄的时候需要自己给办公室擦桌子的王小川就不知道高到哪里去了。\n\n当年 Google 退出中国之后，搜狗一下变成了搜索第二名。一直对搜索心心念念的周鸿祎想要，找到张朝阳问价，结果王小川悄悄跑到杭州找阿里要了笔钱，这个时候估值 1.5 个亿美金。\n\n两年后阿里以 2.3 亿美元的价格退出，马上大家又围上来抢。周鸿祎说雷军给的估值是 7 亿美金，搜狗直接给 pass 了。张朝阳一开始偏向 360，但是王小川死活不干，担心周鸿祎会把搜狗掏空，就只要腾讯的钱。\n\n最后甚至一些信息管道向老周放出话来，就算张朝阳把搜狗卖给你，王小川也会带着团队拿腾讯、百度、金山的1亿美元出来创业。\n\n所以你看，有的时候这个互联网公司真的像一个国家一样，你看它好不好，就看清华毕业的人往不往那里跑。');
INSERT INTO `archive_remarks`
VALUES (10298, '\n`\"这种破事儿也写？\"`\n');
INSERT INTO `archive_remarks`
VALUES (10300,
        '\n`这篇我有印象, 还是那个政治叙事: 你知道某互联网创业者/某明星是什么行政级别吗?`\n\n徐静蕾只差没说，我能力之外的资本为零。\n\n徐静蕾不清醒，女权分子们也不清醒。徐静蕾和蒋方舟这期圆桌派之后，多少篇10万+告诉你们女人要学徐静蕾。\n\n昨天大家吹王菲，今天吹艾玛沃森，明天又开始吹徐静蕾。然而现实中的女性大多活得像蒋方舟，或死撑如咪蒙。\n\n才华平平并不影响徐静蕾成为一个魅力十足的人，她身上散发的洒脱自信和进攻性人格不仅吸引男性，让她从19岁之后就没有空窗期，更得到了许多贵人的帮助，如今还收到了一大波独立新女性的青睐。\n\n和王菲的遥不可及对应的是，很多人认为，徐静蕾是可以通过后天努力形成的。连徐静蕾自己都这么相信了，要不怎么在圆桌派上谆谆教导蒋方舟，你多美好啊，你应该挑选男人啊！\n\n然而，生活不是喊口号，做到徐静蕾式的潇洒，哪有那么简单？\n\n而咪蒙就有一个糟糕的父亲，GQ那篇特稿里写道：\n\n咪蒙的少年时代充满了父母的争吵、哭闹，以及她至今都无法理解的，父亲毫无愧疚的背叛。他会在客厅与朋友讨论嫖娼的心得，不在乎女儿就在隔壁房间。有天放学回家，咪蒙发现父亲与保姆在卧室调笑。当时她16岁，而保姆15岁。提到父亲对她的影响，咪蒙说，“我对男人、对人性的（信任）全面崩坏。”\n\n……年夜饭，父亲把情人全家带来，咪蒙无法忍受，当着所有人的面让他们走。母亲说过年亲戚都在，算了。“为什么要算啊，为什么要算啊？”采访时，咪蒙回忆起这件事，情绪罕见地激动起来，声音哽咽，“这个事情为什么可以算了？我觉得不能算。');
INSERT INTO `archive_remarks`
VALUES (10302,
        '\n`恰恰是在绝对的力量面前, 戏说和解构开始显得苍白. 凡人你可懂得? 睁开眼看看小米`\n\n大公司的历史大事记和我们的历史教科书一样，有的地方说的比较细，有的地方说得不那么细。抗战曾经是八年，现在是十四年，以后是几年要靠民主集中制决定。`南京政府是不是政府的问题`\n\n\n中国成功的互联网创业者，大体上有两种，一种是草莽型，善断，判断大势，笼络人心，一种是学霸型，善谋，计算布局，带队攻坚。\n\n\n天才一点的学霸型创业者，如雷军和周鸿祎这个水平的。真的是研究透了一个市场，可以推演出未来三年的打法，像做数学证明题计算题一样，一招一式，分毫不差，最后步步为营，一举拿下。雷军做小米手机这个局，大概是他人生中答对的最贵的一道算术题。\n1992年出道的企业家，其生存哲学和马化腾马云们有所不同，和互联网烧钱时代诞生的创业者更不一样。能带队伍、打逆风球。现在还活在水面上，满打满算加上房地产、通信行业，家电行业，现在还没跑出去，没被抓进去的，没被资本大鳄赶出公司，没有被小粉红骂成跑路汉奸卖国贼，还在踏踏实实做实业的。还真的是92派居多。\n\n\n也就这么几个现在互为对手的人，任正非、孙宏斌、董明珠、雷军，还有已经是甩手掌柜的段永平算半个吧。\n但是搞互联网的，雷军同时代的鲍岳桥、华军、王志东，现在还有几个人记得他们？雷军虽然有这些起起落落，但是一直还站在中国互联网行业的第一线。\n\n\n如果雷军是一本书，这些年的起起落落就是最好看的地方。\n\n\n希望多年以后，我们提起雷军，会说这个人年纪轻轻就勤工俭学，爱抽烟，说话有口音，事业三起三落。\n\n');
INSERT INTO `archive_remarks`
VALUES (10304,
        '\n`不是最好, 也不太差. 那句不甘心的话 \"错过太多了\"`\n　　再回头看，工作八年，两年一跳。职业生涯感觉整体往上走，是不是每次都在正确的时间做了正确的选择？不一定。\n\n　　如果2008年不去那家看上去很美好的国企，而是到一家互联网巨头，那职业生涯的起点真的就很高了；从2012到2016年，如果只在亚马逊或者一开始就选择小米，理论上的收益都比现在高。有的人以不断跳槽获得了最优结果，但并不是每个人都有赶上时代与公司风口的洞察力，或者是运气。\n\n　　离开小米时，我最纠结的不是去留，而是手中的期权如何处理，因为公司没正式上市，要保留手中的期权需要付出一定的行权费用，最终以代持的方式保留股票，我要付出的金额在10万人民币以上，这不是一笔小数目。\n\n\n　　我非常纠结，因为时点恰逢小米出现颓势，期权已经不如之前那么抢手，况且又是代持，不知道到时会不会遇到什么法律风险——提前半年离开小米，我可能毫不犹豫就出钱保留期权，再往后半年，可能对小米的未来会看得更清楚一些。\n\n　　后来想想，毕竟手里的期权不多，就自我安慰，一些手握更多期权的老员工，离职付出的行权费可能是百万级的，且上市无期，买房也慢慢地不可期了，我又何必这么纠结。\n\n　　最终，我还是选择持有，怎么说呢，正如当初我为什么加入小米，我想还是：相信大公司，相信雷总吧。\n');
INSERT INTO `archive_remarks`
VALUES (10306,
        '\n`就是在这时候, 我给编辑部写了一封信`\n\n中央电视台台长的办公桌上，放着一部红色的电话机。这个电话的另一端，是大家熟知的首长的办公室。这个电话三年不鸣，一鸣就要惊人。\n\n\n2001年，前台长赵化勇第一次听到这个铃声响起，因为当天的新闻联播出了一点小小的错误。赵化勇接到电话迅速改正了错误，首长没有责怪他，反而留下一了一句，“继续努力工作，努力提高知识水平”。\n\n`红色电话, 电视报也是有的`\n\n央视是有武警站岗的副部级单位，有大约3000有编制的正式员工。还有少量和正式员工待遇看齐，但是没有户口和编制的“台聘”员工。更大头的是“企聘”员工，大约7000人，主要归属于中视汇才文化发展公司，经过统一考试招聘后被分配到央视各个岗位上去。\n刘建宏最早就是临时工，从石家庄电视台借调来的。为了来北京，他把石家庄电视台分的房子都还回去了。\n\n\n刘建宏的贵人是他在人大新闻系的师弟张斌，台里明里暗里的都知道，张斌2000年前后已经是“央5教父”马国力老先生钦定的接班人。\n\n\n2001年申奥成功，马老先生就想着08年奥运会肯定是中国体育的历史顶峰，08年之前把张斌扶上马送一程，08年之后自己就可以安心退休，到时候桃李芬芳，门生故吏满央视，也算一段佳话了。\n\n\n奈何木秀于林风必摧之，张斌老师风度翩翩，又学富五车，常常妙笔春秋，口出华章，早就把央视内外不知道多少姑娘撩得不要不要的。\n\n\n奥运会之前已经出了几回小姑娘们飞蛾扑火的事情了。但是为了大局为重，马老先生对这种事情是能压就压，大事化小小事化了，没想到最后还是被胡紫薇在奥运会之前大闹了一出。\n\n\n很多人奇怪，胡紫薇那次闹场为什么张斌老师如此镇定，就眼看着妻子冲上台抢过话筒，在众目睽睽下把家丑外扬。\n\n2003年央视人事改革之后进来的主持人，像赵普，一个月工资6000多块的，基本都属于“企聘”、后来去了搜狐的邱启明、创办“凯叔讲故事”的王凯，则是没身份的“外协”。\n\n\n罗辑思维的创始人罗振宇，一开始也是临时工，后来转了台聘，但是一直没解决过编制和户口问题。传说央视的3000编制，是一个多余的都没有，一个老同志退休，才能有一个新同志补进来。\n\n\n2013年广电总局和新闻总署合并的时候，要摘老匾换新匾，海霞、康辉、敬一丹、李修平、贺红梅这几位有编制有户口、享受级别的主持人都去广电总局门前的老匾面前留念。\n\n\n但是像赵普、王凯、邱启明这些主持人肯定是不会去的，不要说他们太年轻，和广电总局的感情不够深。即使想去也不能去的，没名没分的，你们也配去送匾？\n\n所以郭振玺本来也是有成绩的。\n\n\n但是《永远在路上》说得好，领导干部们有时候做出点成绩，就容易膨胀。甚至开始丧失核心意识、大局意识和看齐意识。进而走向不守政治规矩，搞团团伙伙，独立王国的不归路。\n\n\n央视本来是没有外协人员的，郭振玺为了把中央二台做大做强，还是用中视广经和中视科华两家公司大量聘人编外人员，壮大财经频道的制作团队。\n\n\n财经频道开了这个坏头之后，各个频道争相效仿，央视使用临时工的现象达到泛滥的顶峰。\n\n\n毕竟在2010年卸任央视广告经济信息主任之后，财经频道成了郭振玺唯一的地盘。从那时候开始，财经频道很多事情都发生了变化。郭振玺这个人开始变得吃相难看，央视财经搞了一些大新闻，比马桶盖还脏的肯德基冰块，房地产开发商欠税3.8万亿，都被证实是误读，严重损害了央视的公信力。\n\n\n郭振玺本人也和史玉柱、潘石屹、任志强先后掀起了骂战，著名投资人阎焱甚至放弃了年度经济人物的评委资格。\n\n\n2013年之后，央视财经的影响力在新媒体的夹攻之下不断下滑，郭振玺要求制片人和主播全员开微博，多做新媒体营销，酿出了“大约8点20发”的惨剧。\n\n\n四面楚歌之中，作为一个土生土长的山东人，郭振玺开始和家乡的企业过从甚密。某机床集团、某动力、某机器人最近几年都曾经被央视年度经济人物颁奖礼提名，也都是央视广告大户，2013年山东某位基建相关的国企老板当选年度经济人物，更是让一些业内人士大呼摸不到头脑。\n\n\n这里不是开山东企业的地图炮，说山东企业上央视都和郭振玺有关。比如山东的蓝翔技校，广告只在地方台和B站播，每次上央视都没什么好事，应该是凭的真本事。');
INSERT INTO `archive_remarks`
VALUES (10308,
        '\n`太惨了, 2020年似乎还有比特币牛市爆仓. 老公赔钱简直成为人设一部分`\n\n歌神还说，“如果你没有经过挫折，一定学不到现在所学的”。\n\n香港明星炒楼炒股开店，然后赔得血本无归，是人生中必经的一堂课。李嘉欣嫁入豪门之前赔掉了一半身家。陈百祥第一次做服装赔得血本无归还是谭咏麟借给他的3万块钱去登记破产，第二次股灾又破产还拉上谭咏麟损失一大笔钱。\n\n有人说“肥猫”郑则仕和张卫健的矛盾，就源于当时郑则仕公司投资电影失败，公司旗下艺人张卫健不仅没有帮助，还把郑则仕告上法庭要求立即支付所欠薪酬。公司倒闭，郑则仕无力偿张卫健，还是朋友萧若元出面先把钱给了张卫健，二人的恩怨和情谊才算是有了了结。\n\n不是张卫健绝情，他炒楼欠的钱拍了六年戏才还上的。\n\n郑则仕为了还2000多万人民币债务，只得把房子和车都卖了，回到了小时候在贫民区生活的日子。在父母搬离豪宅的时候，郑则仕跪在母亲面前说：“妈，相信我，总有一天我会重新让你搬回来。”\n好在坚持了十年，债还清了，郑则仕又一次为父母买了豪宅，完成了当时的承诺。只是如今头发已白，十年一去不复返。\n\n\n2009年10月30日，作为华谊原始股东的冯小刚与王中磊肩并肩见证了华谊兄弟股价的飙升，据说当时二人的笑颜被抓拍，成了中国资本市场的经典一幕，当日70.81元的收盘价让冯小刚一天身价过两亿。\n\n当初也是华谊兄弟一员的任泉，在商讨上市事宜的晚宴上，就以旁听的心态跟着朋友买了36万股。华谊上市的时候朋友打电话嘱咐他看看，他心里甚至没什么波动，直到事后算了算数才悔的连说，“我后悔买少了，真的买少了”。\n\n这两年大陆明星投资的新闻总是正面的。中国电影市场过去两年的井喷，让范冰冰投资唐德影视，赵薇投资阿里影业的百倍回报显得易如反掌。也让更多明星以为中国的资本市场和中国电影一样简单低级。\n\n或许刘涛投资乐视的心态就是，这些年我错过了光线，错过了华谊，错过了唐德，错过了阿里，不能再错过乐视了。\n\n当然，也有可能是她和孙俪一起演《芈月传》的时候受到了影响，看孙俪先入股海润影视，又和老公一起投了乐视影业5000万，不想给人留下“上了课却不敢投”的印象。\n\n但她可能没仔细研究，明星们在资本市场上高额套现的新闻背后，其实都有严苛的对赌协议。\n\n华谊兄弟以百倍溢价来收购的华谊浩瀚时，与李晨、冯绍峰、Angelababy、郑恺、杜淳、陈赫等明星股东签下对赌协议，要求后者五年内保证每年净利润9000万和15%的年增长，不足部分需由明星股东补足。收购冯小刚的东阳美拉时，华谊兄弟则要求每年一亿元净利润和15%的年增长。就连孙俪踩点买入海润影视，也是因为她认识人家公司的老板。\n\n所以联手黄晓明、李冰冰做了Star VC的任泉说，你看到的都是成功，没看到的都是失败。Star VC几位合伙人自知投资专业知识缺乏，就调整成多以跟投为主。Star VC对外宣称投出的独角兽，比如融360、小咖秀等都是小金额跟投。\n\n\n这时候，你们应该听成龙大哥的，拥有康有为故居四合院、比弗利山庄豪宅和耀莱院线部分股权的功夫明星曾经说，“如果要跟人在生意上合作，那我要跟比我有钱的人合作，跟比我聪明的人合作。”\n张泉灵做紫牛基金找了傅盛，胡海泉做投资联手中科招商。小鲜肉鹿晗自己不懂投资，但是有前百度副总裁、清流资本创始人王梦秋这样的亲妈粉，一起做了清晗基金。\n\n\n小燕子赵薇早年曾经自称是“受伤的股民”，然而2008年金融危机之后，赵薇就像开了挂一样，唐德影视让她赚了178倍，结识了马云之后，阿里影业让她套现近10亿港币。最后终于在50倍杠杆收购万家文化这个案子上惊动了证监会和共青团。\n\n杨澜2003年卖掉阳光卫视的时候很是难过，后来因为有老公吴征的帮助，才又成了阳光传媒集团的董事长。尽管这个男人被爆“假文凭”，也有空口袋背米的嫌疑，但是在新书售卖时杨澜还是直言不讳：是吴征成就了今天的我。');
INSERT INTO `archive_remarks`
VALUES (10310,
        '\n`还是创业者是什么编制, 什么出身的叙事体系`\n\n去年共享单车 ofo 的创始人戴维去找真格基金融资，按照正常的流程过会，这个项目要被毙了。\n\n一个自行车的生意能做多大？还是在校学生创业，不靠谱。\n\n这个时候徐小平老师力排众议说，戴维是北大学生会主席，投他我们肯定不吃亏。\n\n传说北大学生会主席是正厅级待遇。因为次年有机会出任全国学联、青联的职务。后两者都是副部级单位。\n\n这100万投下去，现在赚了好几十倍。\n\n你看，还是徐小平老师水平高。\n\n\n\n徐小平老师是1982年到的北大，1987年他出国，应该见过了六届北大学生会主席。\n\n这其中最出名的是1987年当选的学生会主席陆昊。1987年的那个夏天，有人被记者提问“中国的改革比苏联快，您怎么看”。也有人说过“直接民主间接民主，再过五十年我们也可以直接民主”之类的话。\n\n在那样的空气里，如今是中国最年轻正部级干部，黑龙江省省长陆昊成为了第一位经过一人一票直选的北大学生会主席。\n\n他说，我的舞台是党给的。\n\n他说得对，这样的待遇并不是他独一份儿，陆昊之前的北大学生会主席也都是浓眉大眼。\n\n文革后第一届北大学生会主席是袁纯清，原来的山西省省委书记，现任中央农村工作小组副组长。当时为了监督学生会的权力，有一个北大的年轻人发起了学生会常代会，并且后来自己出任会长，这个人就是今天的李总理。\n\n81年的学生会主席潘维明年纪轻轻就出任上海市委宣传部长，副部级干部，要不是后来放弃仕途去发展自己的爱好旅游和摄影，还能更进一步。82年的朱善璐后来当了北大党委书记，副部级。1984年的刘能元出任上海期货交易所总经理。\n\n再加上一个35岁当上北京市副市长的陆昊，可以说那些年的北大学生会主席在学校得到大量锻炼的机会，一出校门就进入考察、提拔的快车道，跻身省部级是大概率事件，是货真价实的“共产主义接班人”。\n\n\n进入新世纪，北大清华的学生会主席里面，也出现了三位直接进入政坛的样板，刘凯，阳波，朱凯，他们分别在30岁左右的年纪到了北京朝阳区、通州区、门头沟区担任共青团委书记，经过几年的锻炼之后，在35岁左右的年纪成为办公室主任、副区长、县长。\n\n他们从政的起点、升迁的速度和前辈相比都差了很多，而且他们没有像学长们那样，一毕业就旗帜鲜明要求“到西部区，到基层去，到祖国需要我们的地方去”，而是选择到北京郊区挂职锻炼。\n\n这也是2000年之后北大清华学生的普遍现象，去基层的少了，出国的、愿意留在北京的多了。清华大学01到07年的学生会主席都选择了留校，而且大多数都出任了校团委副书记。\n\n曾经的共产主义接班人现在只要求一个留京指标了。\n目前校级学生会主席大体还能保住革命早节，但是北大清华的院级学生会主席已经出现了塌方式的丑闻。有的盗窃被判刑，有的约炮被人肉，还有那个卖腐同时卖面膜的“北大最帅双胞胎”，也号称是北大两个学院的学生会主席。\n\n这都在社会上造成了很坏的影响，浓眉大眼的学生会主席怎么能叛变革命呢？\n\n好在清华大学开始了新的造神运动，特级奖学金。每一届特等奖学金评选都能在微信公众号上造出来一两篇10万+，无非是学霸大神们如何碾压我们常人，我们常人又应当如何主动献上膝盖。\n\n造神毕竟是造神，SNH48的四千年一遇的“C位”也要被打两声黑枪，很快清华大学的特等奖学金就爆出来内斗和伪造经历的传闻。\n\n但是这丝毫不影响在知乎上，清华大学特等奖学的讨论一年比一年热烈，热门人选从学术成就到颜值出身再到感情状况都要被扒个遍，再加上几个匿名回答如同综艺选秀节目的损友连线，紧张状况也堪比SNH48年度总决赛。\n\n相信在不久的将来，清华特等奖学金得主成为XX大学有史以来最年轻教授、拿到BAT天价offer，创业收到投资人雪片一样的TS也会成为家常便饭。\n\n本来中国的孩子都要思考一个沉重的问题，等我长大了，到底应该选清华还是北大？\n\n如今在这样的新闻中，在家长的要求下，他们面前又多了一个问题，到底是应该争取学生会主席还是特等奖学金。\n\n他们的负担又加重了，谁来救救孩子们呐！');
INSERT INTO `archive_remarks`
VALUES (10312,
        '  \n`这篇印象很深. 五常中心小学`\n阿里巴巴园区旁边的五常中心小学，二十多年前还是余杭县五常公社东风生产大队所属的农村小学。\n\n\n2013年阿里巴巴从滨江区搬迁到这里，附近五常街道和仓前街道的房价开始坐上火箭，这个小学也摇身一变成了马云母校杭州师范大学的附属小学。\n\n\n阿里巴巴高层的孩子通常住在杭州城内各个名校的学区房里。但是因为五常小学离公司近，小学成绩又不是很要紧，所以还有相当一部分阿里老员工把孩子送到了五常小学就读。\n\n\n传说这些“橙二代”在学校里面已经有拼爹的苗头了，\n\n\n“小子，我爸是P8，你爸是P几啊”，\n\n“我爸妈都是中供铁军，你家是刚从北京新来的吧”，\n\n“我妈是HRG，你知道什么是价值观第一吗，价值观第一就是我妈第一”。\n\n这时候回迁户家的孩子看着“橙二代”吹牛逼，就像《血色浪漫》和《阳关灿烂的日子》里胡同串子出身的顽主，眼瞅着大院子弟穿将校昵骑永久自行车拍婆子，只有流口水的份儿。\n\n\n现在这群小子还能流口水。等到马云投资138亿元的云谷学校建起来了，他们连口水也没得流了。\n\n网络安全大神吴翰清四年前离开阿里创业，做了两年把公司拆了分别卖给百度和阿里，他回了阿里，另一拨人去了百度。\n\n\n\n互联网人真是好日子过久了，总以为12K的起薪是对程序员的羞辱，以为工资三年翻一番，职位五年眺三级是理所应当，以为一个大公司的中层加上几个90后泥腿子拿到几百万天使投资是正常现象。\n\n大家都转不过弯来。知乎上有一票打抱不平的程序员摩拳擦掌，大骂资本家不要脸，要为无产阶级兄弟讨回公道。\n\n\n他们忘了，在1992年之前，中国没有任何一段历史可以证明，寒门可以出贵子，阶层的流动可以一代以内完成。\n\n\n他们也不想知道，2008年的金融危机后，没有一国的现状可以证明，中产阶级可以一人工作全家不饿，有房有车有医保，教育养老一劳永逸。\n不要说什么二胎，学区房，财务自由我们本来是不配的。甚至就连“我是农民的儿子”这句话，从前也只有犯了错的省部级领导干部才有资格说。\n\n如今一个落魄的工程师在朋友圈写文章就敢随便用，这自媒体恐怕也要管一管了。');
INSERT INTO `archive_remarks`
VALUES (10314,
        '\n同样是“单飞”的顶级巨星，这是姚明和李娜的根本不同。李娜从一开始就没有对体制的约束妥协过。李娜从 11岁 就开始反抗教练，罢练，结果被罚站到第三天才开口道歉。20 岁因为对国家队的训练方式不满，她留了一封信就走人了。2005 年炮轰举国体制、和网管中心主任孙晋芳针锋相对，法网夺冠不感谢国家，前年向纽约时报吐槽国家队逼他们服用激素。\n\n姚明的特别在于，他既不像李娜那么张牙舞爪，也不像刘翔那么听天由命。他也不像邓亚萍，在体制内几十年，游刃有余，从思维方式到行事风格都被完全同化。\n\n姚明跟体制保持着安全的距离，适时妥协，也适时伸张——比如去年带着 18 支 CBA 俱乐部做了中职联，一副以下犯上倒逼改革的劲头，甚至公开吐槽“篮协没法沟通”。但这种极偶尔的激进，更像是姚明的某种策略，毕竟领导其实从 2015 年就开始酝酿姚明做主席的事了。就像 2002 年 CBA 总决赛天王山之战赛前，姚明对着媒体使劲嘚瑟，说“八一队老啦，没法跟我们拼了”。\n\n\n所以，并不是姚明想当主席，是总局要姚明当主席。篮协主席向来是等额选举，这次的唯一候选人就是姚明。徐济成老师说了，这件事是“中央指方向”。\n从那之后，姚明已经不是“改革”者了，而是“被请来执行改革”者。\n就像这些年所有人都在骂信兰成不作为、骂他把前任篮管中心主任李元伟的改革尝试打回原形。没有人记得信兰成从 2009 中国男篮兵败天津之后，狠抓青年队，建立了 U16 - U19 的四级梯队，带出来郭艾伦、赵继伟，还有去年差点去了 NBA 的周琦等。\n\n但风险再高，姚明也不会拒绝。他这辈子都没有对体制说过不；实际上他们一家人，三辈子，都没有过。当他逐渐变成一种精神符号时，说“不”的成本又逐渐变得更高。张佳玮说得好，姚明的存在本身就“暗示着一种新的中国形象——开放、融合、资本的彼此妥协”。\n\n如果去年姚明做过的尝试，证明了美式英雄主义在这片土地上无法生存，那姚明接下来要做的事情，就是一种具有社会主义特色的中式英雄主义。');
INSERT INTO `archive_remarks`
VALUES (10316,
        '\n`哈哈哈, 呸`\n\nSnapchat 上市前，创始人 Evan Spiegel 迎娶了超模米兰达·可儿，两个人是在 LV 办的派对上认识的，米兰达·可儿说 Spiegel 坐在那里像个50岁的人，很严肃，搭起讪来说自己不喜欢派对，就知道工作上班，一下子吸引到了自己。\n\n我们中国人从小没接触过社交场合，性压抑，无力搭讪。\n\n\n在美国不是，在派对上不苟言笑的都不是新手，是老司机。Spiegel 怎么可能不喜欢派对只知道工作？\n\n\n他15岁没有成年的时候就去过红牛做营销实习生，主要任务就是举办一场又一场的派对，把红牛搭酒一起送出去。Spiegel 说这份工作给自己的最大收获，就是知道了派对到底是怎么回事。\n\n\nSnapchat 创业的第一年，他就从投资人那里套现1000万美元改善生活，后面Snapchat一轮又一轮不间断融资，他从来没缺过钱。Evan Spiegel 堪称是美版陈思成，异常自恋，在媒体面前特别喜欢炫耀自己的成功，他有句名言，\n\n\n“我是一个接受高等教育的年轻的白男，生活本来就是不公平的”。\n\n\n虽然曾经拒绝过 Facebook 高达40亿美元的报价，但是 Spiegel 和扎克伯格创业，像一面镜子的内外。都是藤校兄弟会派对上的酒池肉林，激发了他们的创业的灵感，都有早期踢走合伙人的桥段，连投资人都要同样遭受羞辱。\n\n\n扎克伯格是穿着拖鞋睡衣去给红杉上课，你们不应该投资我们的十大理由， Spiegel 是你们钱可以留下，但是要让我先套现，而且不管我套多少，你们都没有投票权。\n\n\n扎克伯格的父母都是牙医，有自己的诊所，按理说是美国中产阶级上层的家庭，但是他家的生活又极其俭朴，一辈子住在老旧的别墅里。\n\n\n从姓氏中Berg这个后缀就能看出来，这是一个犹太人家庭。但是扎克伯格的父亲放弃了犹太人的宗教认同，成为一名无神论者。\n\n\n就像伍迪·艾伦一样，纽约的无神论犹太人，意味着你是一个天生的左派。这可能是扎克伯格没有染上 Spiegel 那种及时行乐人生哲学，仍然热衷于慈善和社会活动的原因。\n\n\n只是左派这个东西，在硅谷和大学里是政治正确，人人争相表忠心。像我们的手抄党章和共青团学干一样，党中央和中纪委早就识破了，说他们“机关化、娱乐化、贵族化、行政化”。\n\n\n可惜在硅谷，因为没有党中央和中纪委，很多人还没有被识破，一个人是真左还是假左，很多时候是看不出来。\n\n`露出来的治国理政那本书`\n一个人喜欢热脸贴冷屁股，不远万里跑到北京来吸雾霾，非想着让别人给自己女儿起个名字好多挣点钱的人，就算他用世界上最好的语言写代码，就算他有心学习我党治国理政的方法，都不可能是一个真正的左派。\n\n我们一直以来崇拜和神往的硅谷，这种横冲直撞的感觉，这些穷孩子摇滚明星一样的味道，这两年逐渐消失了。\n\n硅谷现在哪里还有乔布斯啊，最近一个号称乔布斯的女创业者，Elizabeth Holmes，出身于父母都是公务员的家庭，斯坦福毕业，“一滴血完成所有疾病检验”的神话最后被戳破原来是个骗局。\n\nKalanick 是1977年出生的，杰克·多西是1976年出生的，他们第一次编程的时候冷战还没有结束，他们辍学创业的时候还没有911和互联网泡沫，他们出名的时候还没有次贷危机。\n\n\n但是他们身后，硅谷再也没有穷儿子了。\n\n高中毕业后杰克·多西被送到了纽约大学，辍学创业，Kalanick 被送到 UCLA ，辍学创业，乔布斯被送到里德学院，辍学创业。\n\n\n盖茨去了哈佛，辍学创业，马斯克和 Snapchat 创始人 Spiegel 去了斯坦福，辍学创业。\n\n曾经我们听到说，花有重开日，人无再少年，很感伤。\n\n\n但是更感伤的事情，少年是代代都有的，一个国家却不能再年轻回去。\n\n');
INSERT INTO `archive_remarks`
VALUES (10318,
        '\n`我们曾配不上麦当劳. 现在我们配了, 我们应感激`\n`之前就说过, 对我来说, 跨国公司标准化工业制品是化为我身体的骨肉. 麦当劳耐克阿迪宜家智能手机`\n\n麦当劳这样的外企，在不知不觉中填补了中国社会的很多基础建设缺失，比如学生自习场所少、公厕覆盖率低等等，甚至在一定程度孵化中国的城市文明。\n\n21 年前，地球上最伟大的新闻工作者之一，三次拿到普利策新闻奖的托马斯 · 弗里德曼，提出了“金色拱门理论”：\n\n“任何两个有麦当劳的国家之间，都没打过仗。”\n\n后来的案例证明了这个理论并不严谨。但在冷战刚结束的 90 年代初，一个拥有麦当劳的社会，基本上等同于一个经济稳定、中产力量强盛社会。人们对经济发展的兴趣超过了意识形态，对消费的欲望超过了打仗。\n也是在这个时候，中国第一家麦当劳在深圳开业。中国人第一次见识到跨国集团的标准化服务，目瞪口呆，更不要提超级严苛的卫生标准和柜台后面那堆自动化的机器设备。\n但如果你的室友在麦当劳打工，你每天都会去买一个圆筒冰淇林，还要监督他帮你把圆筒中间的空心部分也填得满满的。\n\n没在麦当劳打过工的学生，也一定在麦当劳通宵自习过。24 小时营业，有空调有厕所有咖啡，还能续杯，没有比这里更适合学生刷夜复习的地方。\n\n去年一次加班至深夜，路过中关村创业大街对面的麦当劳，看到一个认识的创业团队在里面加班。问起来，说是大街停电，几家咖啡馆都提前关门了，整个中关村只有这里能待上一晚。\n\n当然，对大多数人来说，麦当劳最显著的功能，还是无处不在的移动厕所。\n\n相反，在北上广对外来人口越来越不友好的时候，麦当劳一直代表着城市消费文化，代表着干净和友好，向所有人敞开它的金色拱门。对一些新进城的青年农民工来说，吃上一顿麦当劳可能象征着某种融入城市的仪式。\n老编辑年初去看崔健演唱会，完了和朋友侃到半夜。凌晨两点多走到一家麦当劳，发现半家店都是流浪汉在蜷着睡觉，掏出手机拍了张照片。店员马上走过来，请求他不要把照片发在社交媒体上，“我们让他们在这睡，上面已经不是很满意了，就不要再闹大了”。');
INSERT INTO `archive_remarks`
VALUES (10320,
        '\n`拯救互联网 - 并没有. 但是对, 食物链更上游也只有地产商了`\n这是我第一次见到贾跃亭在发布会上说人话，在上周的融创乐视战略投资发布会上。\n\n\n从前他的发布会有多浮夸你们是知道的。三句话不离开生态，两张PPT就要友商窒息，一言不合就要化反。\n\n\n如果说人去了阿里要洗脑，996不在话下，价值观要记牢。去乐视那就叫洗澡了，连发朋友圈的画风都要变微商范儿了。\n\n然后桄榔，资本寒冬来了，钱烧不下去了。这时候如果有一个人摸着自己脑袋说，你们战略行，就是缺钱，该多好啊。\n\n\n1000万就能救活一家明星创业公司，不就是五道口一套房子的钱吗？\n\n1个亿就能给一匹曾经的独角兽续命，不就是一套四合院的钱吗？\n\n1亿美元就能把一家公司业绩打扮得漂漂亮亮，送到创业板准备排队上市，不就是一栋写字楼的钱吗？\n还有我们现在这些搞内容创业的，动不动就要打造IP，做中国的迪士尼。中国就算搞出来迪士尼，那也是王健林的事情。你们当个郑渊洁就不错了。郑渊洁80年代为了存放舒克贝塔的小读者来信，在京郊以1400元一平的价格买了十套房子。现在舒克贝塔的书再出版都不给他署名了，但是这十套房子可是货真价实的亿元资产。\n\n郑渊洁当年好像还在微博上讲过一个段子。说新浪还在理想国际大厦的时候，潘石屹去做节目，见北面有一大片绿地，赶紧打电话给助理说，中关村这么黄金的地段还有这么大片空地，快看看卖了没有。\n\n\n秘书回复，潘总，那是北大。\n\n');
INSERT INTO `archive_remarks`
VALUES (10322,
        '\n`硅谷崇拜与制度自信`\n\n王小川和李彦宏估计也会老死不相往来，也是在这次大会后的采访，被问到和李彦宏的区别。王小川脱口而出，第一我技术比他好，第二他比我命好。\n\n\n网易有道的CEO周枫也说过类似的话，大意是搜狗做不起来主要是因为王小川技术不行。\n\n\n同样参加了GIF大会的李彦宏如果听到了，心里可能想，显摆你们技术好是吧，你等着，我找了一个技术比你们好的。\n最近GIF大会上，李彦宏竟然已经在说自己三分之二的时间在北京，三分之一的时间在各地旅行，除了参加贝爷的节目之外，主要是找人。\n\n\n科技公司创始人退居二线让职业经理人上位没什么好下场，比如雅虎就是从一个CEO的失败走向另外一个失败的CEO。不过这两年在印度职业经理人的治理下，微软和Google运行得还不错。\n\n\n也许是这些先例让百度觉得可以一试，定下了所有人向 Qi 汇报，Qi再向李彦宏汇报的古怪构架。\n\n但是和百度内部的山头相比，微软和Google这些年上位的老印只能说是傻白甜。一辆自行车把陆奇从Raj和Nadella的微软送到了向海龙、朱光的百度，真是历史的进程啊！我担心最终很有可能是陆奇没有改变百度，百度却改变了陆奇。\n\n\n何苦来百度呢？\n\n\n陆奇离职之后，下家先后有四个版本的传言，Uber、滴滴、百度和腾讯。但是贵为北美科技公司职位最高的华裔，去BAT也一定要最高职位，要不行政级别对不上啊。\n\n\n至于滴滴，最近程维说自己见了Google无人车、斯坦福AI实验室创始人李飞飞。真是言多必失，这样的CEO想来和陆奇的共同语言可能就比较少，还是要和Robin才能谈笑风生。\n\n\n所以，陆奇的要求只能百度满足。和离职的众多微软高管和科学家一样，Qi选择了百度。这也算是路径依赖了。看好未来百度能集齐微软三位华裔全球副总裁，现在就差一个沈向阳了。\n\n\n而最近几年从硅谷回来的华裔互联网公司高管好像真没几个，就算下定决心顶着雾霾回来了，也都不再有从前的 Buff 加成。如今陆奇从微软的实权人物到百度的总裁，只能说是平级调动。\n\n\n这让我想到了微软的前中国区总裁唐骏，唐骏在微软的时候虽然和比尔盖茨之间隔着大中华区总裁，亚太区总裁，全球副总裁至少三个层级，跟陆奇是天壤之别，换到现在不过只是一个区域总经理的title。\n\n\n但是他04年加盟如日中天的盛大，首富陈天桥为此开跑到北京为唐骏开了一个无比风光的新闻发布会，宣布将公司的业务与管理全面交给唐骏。\n\n\n真是此一时彼一时啊。\n\n\n\n国内互联网如今成了名副其实的G2，我们坚持道路自信，文化自信，制度自信，理论自信，走出了一条区别于硅谷的中国特色的互联网发展和治理的道路。\n\n\n好像走自己的路，就能让硅谷无路可走。\n\n\n毛主席说，别了司徒雷登。所以陆奇之后，恐怕再也没有陆奇了。\n\n中国的互联网大佬，无论是多么苦大仇深，到了硅谷总会像孩子一样手舞足蹈。成功的创业者非常希望能获得来自硅谷的首肯，所以挖到硅谷来的高管一定要大张旗鼓宣传，所以有硅谷的大咖来了一定要尽力安排一场座谈。\n\n\n而失败的创业者，比如去年被极客公园带着去了硅谷的张涛和周航，一个被美团踢出了局，一个被滴滴彻底击败，去硅谷之后参观SpaceX和Google，也是神采奕奕。硅谷俨然可以疗伤。\n\n\n所以去硅谷谓之朝圣，硅谷来客谓之神人。\n\n');
INSERT INTO `archive_remarks`
VALUES (10324,
        '\n`我青春 - 经典. 我以前 - 老掉牙. 我之后 - 幼稚, 完蛋了`\n另外一方面就是非常适应于中国国情的渠道体系，“FD省代”。一手打造这一销售渠道体系的赵科林是澳大利亚版的“段永平”，非常熟悉渠道与营销的奥秘，是诺基亚在中国的关键人物。所以他离开诺基亚之后能在联想华为几家公司潇洒走一回。\n\n\n就是说，你们花了很多钱，都用在渠道和外壳上了，你们竟然还这么怀念。\n我猜是不是等到90后老了，他们也会怀念蓝绿大厂OPPO和VIVO，怀念他们拍了这么多明星的广告，怀念“充电五分钟，通话两小时”的广告词多么经典。\n\n让人怀念真是一门学问，你让小部分人怀念你靠的是让他们挣钱，过上好日子。但是你让大部分人过上好日子他们有时候并不领情，要不然怎么前一天某位伟人的纪念日，那么多人出来怀念圣君和贤相，感激涕零，没有粮票的小日子这才过了几天啊？\n\n是啊，小日子才过了几天，七八年之前你跟人说诺基亚、摩托罗拉、黑莓都变成中国人手里的品牌，怕是要遭到这些死忠粉合力的嘲讽。他们宁愿用着二手的洋垃圾，也要嘲讽买千元智能机的人是屌丝。\n\n\n诺基亚回归中国在我看来就是一道测试题，测试中国市场还有多少这样的傻瓜死忠粉。\n把千元机卖到1699元，这说明诺基亚这个品牌的溢价是699元，按照当前汇率算就是100美元。诺基亚这个品牌卖给HMD和富士康子公司的价格是3.5亿美元，中国市场需要至少350万个傻瓜他们才可以收回成本。\n\n如果证明了有350万人愿意为诺基亚这三个字多掏699，下面就要测试一下有多少人愿意为诺基亚三个字购买贵1000元的中端机，贵2000元的高端机。\n\n如果到时候还有大批人买单，证明诺基亚是真回来了，也证明国产手机这五年白干了。');
INSERT INTO `archive_remarks`
VALUES (10326,
        '\n`这些媒体从业者和作者. 审查日子不好过至今, 基调从未改过. 可是时代向前`\n\n2012年12月14日，中央六台电影频道史无前例地播放了《V字仇杀队》，一刀未剪。\n\n电视机前的许多人一度怀疑自己在做梦，还有一些人激动万分，说这是历史性的进步，文艺和创作的终于得到信任和尊重了，有些东西的确不应该藏着掩着。\n\n而那些历经沧桑的人则温柔地说，不要想太多啦，洗洗睡吧。\n\n2013年，IMDb 解禁，中国影迷们奔走相告，欢欣鼓舞，“各位水军再见了，让好电影迎面向我扑来吧！”\n\n曾经的我们可能比小天还要单纯善良。\n\n“烂片通缉令”当时说：“IMDb 解禁只能说明一个问题：大家都已经受不鸟国产电影了，估计以后国产电影拍的不合格，会承担一定责任，导演被封杀，演员被流放。从此永不被取用。”\n\n终于，在2016年的末尾，等着拥抱好电影的那些人，摔了一个狗吃屎，以为电影拍不好导演要背锅的那些人，自己先背上锅了。\n\n1\n\n真是世事难料，飞来横祸。\n\n时间再往前推一年2011年，第十放映室在年终点评里这样评价《让子弹飞》：\n\n《让子弹飞》这部电影，完全不同于中国电影工业体系所可能生产出来的那些中国式大片。这就好比一个，本来已经让顾客毫无牵挂的餐馆，既没换老板，也没换采购，后厨用的原料也还是那些东西，只因为换了个厨师，今天出来的菜就让顾客惊喜连连。\n\n只是大家也都清楚，这种惊喜是吃了这顿没下顿。因为这和餐馆没关系，完全看厨师今天的心情和状态。\n\n六年过去了，这个餐馆不仅毫无起色，还开始强买强卖了，点名批评几个吃了饭还嚷嚷难吃砸店家招牌的。一语成谶的第十放映室也在2013年被停播，据说是因为领导审批时表示：“既然影片不好，你们干嘛还评点呢？说点好的不就完了吗？”\n\n所以说，豆瓣猫眼上的各位，既然影片不好，那就珍爱生命，远离烂片，不提也就罢了，你们干嘛还打分呢？是不是贱？\n\n除此之外，人民日报也为我们指出了一条明路：只要去除了个别“恶意”的、“崇洋媚外”的、为博眼球的、圈粉丝、流量变现的影评人言论，电影口碑就会大幅度上扬，人民就会喜闻乐见。\n\n我看这个逻辑完全没问题，猫眼已经把“专业评分”的功能暂时下架，效果拔群，《长城》立刻获得了一个客观公正的分数：“观众评分”8.4分，力压张艺谋的《红高粱》、《大红灯笼高高挂》等，成为了张大师新的巅峰之作。\n\n而豆瓣这个软柿子被一捏再捏，终于捏爆了。\n\n这个聚集着互联网内最多小众人群、文艺青年、丧逼、精神病的“精神角落”虽然很难形成什么力量，但却有着最为古老的真实评分系统，影视业和水军都很难影响一部片子的最终评分，它的价值完全基于它的公信力。');
INSERT INTO `archive_remarks`
VALUES (10328,
        '\n1994 - 1995 是游戏杂志爆发的两年。三大游戏杂志《电子游戏软件》、《家用电脑与游戏》和《大众软件》相继创刊，这是我们拥有的第一代游戏媒体。\n\n`是. 我曾经历`\n\n当写字能挣钱，媒体就不仅能养出好内容，还能养出牛逼的人。李想 16、17 岁的时候，还没开始做泡泡网，已经开始给《电脑报》写稿子了。李学凌创业前最被人记住的标签是网易总编辑，但再之前他是《每周电脑报》的执行总编辑，也在《程序员》杂志待过。\n\n`李想, 汽车之家. 李学凌, YY. `\n\n刘韧是 1996 年加入《中国计算机报》的。一年多，写了 50 个互联网创业者，然后出版了《知识英雄》。2001 年刘韧跳槽去《电脑报》做一个新项目，差点把当时在《中国企业家》的牛文文一块带了去。\n\n\n1998 年初，《泰坦尼克号》这部电影要不要引进国内都还不确定。影片的盗版碟放在店里无人问津。普罗大众不感兴趣，觉得这不过是又一部好莱坞烂俗爱情片罢。\n\n所幸，一位艺术修养极高的影评人慧眼识珠，在九届人大一次会议上谈到了这部电影：\n\n“不要以为资本主义就没有思想交流的东西。最近要上演一部叫《泰坦尼克号》的电影，过去叫《冰海沉船》，花了二亿五拍的这部电影，现在收入已经十亿，这也是风险投资啊......这次我请政治局的同志也去看一看，不是说宣传资本主义的东西，而是说我们要知己知彼，才能百战百胜。”\n\n然后《泰坦尼克》这部电影一刀未剪席卷中国，创造的票房纪录保持了11年，启蒙了一代中国人的性和爱情观。\n\n在大部分人连 Game Boy 都没玩儿上的时代，玩家要获取游戏信息只有两种来源：一是盗版碟店铺的老板，二就是游戏杂志。所以随着单机游戏的崛起，游戏杂志迎来了春天。\n媒体一旦能挣钱，就愿意花钱；一旦舍得花钱，就能出好内容。\n\n十几年前，《电脑报》给的稿费可以高达千字 700 块。“纸媒传奇”《知音》的稿费业内最高，也不过是千字 1000 - 2000 块的水平。在今天，可能只有和菜头冯大辉这样的大 V 能收到这个水平的打赏了。再考虑到通货膨胀，那时候一篇 5000 字的大稿，真可以在北京买一平米房子。\n\n\n“大软”从 2012 年开始亏损，就再没盈利过。\n\n杂志社想去融资，但主管单位“中国科学技术情报学会”不同意，说融资会造成国有资产流失。第二年亏损加大，主管单位直接把“大软”刊号给收了，相当于关停了杂志社。一些编辑不愿放弃，搞了个众筹，筹了两百万，要转型新媒体。可惜为时已晚，流量已经被 17173 们吃死了。\n至于游戏，20 年后全地球最挣钱的游戏公司已经是中国的腾讯，但我们再没见过“仙剑1”这样灵气扑鼻，从故事内核到表现形式都开宗立派的国产游戏。\n\n玩家很少再为游戏本身注入任何情感。我们也再也没有国民级的游戏大作。\n\n然后一眨眼就到了今天，所谓内容爆炸的时代。\n\n每一天，中文互联网都在生产每个人穷极一生都看不完的内容。偏偏再没有人能帮我们分辨、过滤和挑选，然后告诉我们什么是好内容。这些人可能是宋振峰，可能是刘韧，可能是陈宗周、可能是陈彤，总之他不在了。\n\n有人把信任交给一个叫“智能分发引擎”的东西，我们发现它效率奇高，千人千面，但是每一面都是你的下半身而非上半身决定的。这是非常科学的，因为解剖学告诉我们人的脊椎比大脑反应快。\n\n它身价百亿美元的创始人非常引以为豪，而且教导我们要 facing to reality，Stay hungry, Stay young。\n\nStay hungry, Stay young 这句话大概是乔布斯的忠告 Stay hungry, Stay foolish 的变种。我想张一鸣知道这句话一定不是通过今日头条，他知道这句话可能是通过酷讯的陈华，也可能是通过饭否的王兴。张一鸣的两位前老板应该都看过2005年乔布斯在斯坦福大学毕业典礼上的演讲。\n四十多年前美国有一本百科全书一样的杂志，叫《全球目录》。全书七章，从“理解完整的系统”这种形而上的章节，到“工业和手工业”，什么都有。\n\n这本奇怪的杂志征服了整个嬉皮时代的美国。大学教授在看，街头的嬉皮士也在看。杂志 1972 年刊出最后一期，封底是一张清晨乡间公路的图，配字是：stay hungry, stay foolish.\n\n这很像普罗米修斯偷火给人类的故事。希腊神话里，宙斯不给人类提供火，普罗米修斯就从太阳车上偷来火种，小心翼翼护着送到地上。人类用火照亮了夜路，抵抗夜里偷袭的猛兽，烤熟了肉吃，变得更坚强。而火种在人与人之间传播，最终有了文明。\n\n好的媒体应该像普罗米修斯一样，把火种交到从来没有见到过火的人类手里。\n\n但是到了互联网的时代，有人告诉你，普罗米修斯过时了。\n\n在《人民日报》说豆瓣猫眼评分崇洋媚外之前两年，冯小刚大导演也骂影评人，“一个个装大尾巴狼”，“你们丫知道什么是蒙太奇么？狗屁。”\n说影评无用，倒不如说认真做影评的人没有了。\n\n昨天豆瓣猫眼评分的风波已经过去了，《人民日报》评论部出来拨乱反正，人群又一次很满意地散去。但是猫眼的专业评分还是消失掉了。可能是人民日报认为之前的那篇文章里说得对，猫眼上 45 个专业影评人打的分，权重和 40 万普通观众打的分相近，凭什么专业影评人一句顶一万句，不合理。');
INSERT INTO `archive_remarks`
VALUES (10330,
        '\n`如:` 开发一个小程序，让我们重新来过。回到2008年App Store发布的起点，回到2000年BAT创立时的起点。我们不吹牛逼了，不想做10亿美元估值的独角兽了，就做一个墨迹天气，做一个同道大叔，然后2亿把自己卖掉。能和卖房创业的损失打平，能弥补从BAT离职创业损失的期权就行。\n\n我想张小龙之所以在这部分花了如此大的精力去解释，主要是因为目前在市场上弥漫着一股微信小程序的狂躁症。\n\n\n“流量红利来了”，“抓住第一波红利”，“不计任何代价，All IN”这样的表述不停挑动着大家的神经。\n\n\n2000年左右第一批做域名交易的如何如何，2008年之后第一批做App的如何如何，2012年之后第一批做微信公众号的如何如何。\n\n最后的半个小时，讲到微信小程序的入口时，张小龙来了精神，非常明确地告诉大家微信不会做小程序应用商店，不会做小程序的分类推荐，对小程序推送通知的限制非产严格，\n\n\n开发一个小程序，让我们重新来过。回到2008年App Store发布的起点，回到2000年BAT创立时的起点。我们不吹牛逼了，不想做10亿美元估值的独角兽了，就做一个墨迹天气，做一个同道大叔，然后2亿把自己卖掉。能和卖房创业的损失打平，能弥补从BAT离职创业损失的期权就行。\n\n但是回过头来看我们写的《京东的当权派已经被打倒》，《支付宝这么搞我看就很好》，《互联网公司的行政级别》，《百度的马博士要回来了》，《每一个老板心中都有一个郭德纲》，10万+的文章总是很相似的。\n\n\n老道消息今年做的一点微小的贡献，其实就是用政治化的语言去描述中国的互联网。\n\n而能这样写的原因并不在于我们脑洞够大。而是中国互联网的三巨头BAT的竞争，在气质上居然和国共两党、美帝的三角关系很相似。\n\n\n一家是已经没有使命，靠利益纠集在一起的公司，派系林立令出多门，宣传上也被搞得很臭。一家是价值观高于一起，“党指挥枪”，领袖的意志靠运动贯彻，战斗力有时候惊人，但是运动扩大化也难免“七分是成绩，三分是错误”，难免需要“拨乱反正”。最后一家虽然历史上也有些不清白，但是阔了之后大体上是讲道理的，价值观普世，在同行衬托之下竟然成了灯塔。\n\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10332,
        '\n`很重要 - 一定要看坚持乐视的散户的故事. 什么叫心路历程!`\n就这，贾跃亭还说乐视融资能力不强。结果上个月“一财”统计了一下，乐视这些年所有业务融资超过 800 亿。乐粉不开心了，在股吧开撕，“贾总是百年一遇的天才，要成大事就要烧钱，这很正常”。江苏无锡有一个大户，从 2011 年开始迈入乐视，6 年没减过仓，说“陪伴才是最长情的告白”。还有人说\n\n\n“一个为了梦想甘于拿 1 元年薪的老板，一个甘于免息 3 年借给母公司的老总，一个明明可以什么都不干整天完全可以享受海边沙滩过逍遥日子的人，却整天没日没夜辛勤劳作的贾总。整个中国能有几人与之相比？我们为何没有理由去支持他呢？”\n\n老编辑上周在编辑部闲来无事，给我们出了一个脑筋急转弯，\n“90后小王毕业后找不到对口工作，2015年上半年他在北京给A股股民做配资，下半年去杭州给大妈们在期货市场开户买螺纹钢，今年春节前后在上海办理首付贷和房屋过桥贷款，过去半年又开始在深圳某保险公司卖万能险”\n\n请问，小王明年准备干啥？\n\n我们三个都答不出来。\n\n老编辑说答案是，\n\n明年小王啥也不干了，小王财务自由了。\n“人无贬基，中或最赢。四千起牛，好威支希”\n\n前面三个大家都不难理解。最后一个比较拗口，不容易理解，主要指网易新闻财经新闻的跟帖区存在的大量同质化评论。不管新闻里说什么，都以正面回应为主，好，威武，支持，有希望，简称好威支希。\n\n过去两年在雪球，在股吧，在散户的QQ群里，用这种四个字的简称来描述行情成了一种亚文化，股汇双杀、弃房保汇、弃汇保房、房汇双杀。\n\n我以前一直不理解“魔幻现实主义”是什么意思，直到我看到雪球的 Slogan 可是“聪明的投资者都在这里”。\n这次我上道很快，消内普现，众自猪冬。\n\n\n作为一个在香港买不起房的“新香港人”，过去几年我蜗居北京，心态很好。既不出国，也不海淘，说实话对汇率浮动不太敏感，除了偶尔回香港探访亲朋发现我的肉饼饭又涨了 5 块。但让我真切感受到人民币值钱了，是过去几届国庆朋友圈摄影大赛。\n\n人民币值钱，中国人出门玩儿，到哪都觉得便宜。前些年还去香港人挤人，到 2014、2015，香港没意思了，全都跑日本去。黄金周回来，办公室里的“白色恋人”够你当一个礼拜早餐。\n\n老编辑管过去三年进入互联网行业，投身创业的叫“泡沫一代”。时间从人民币对美元汇率的最低点，到今天，三年不到。泡沫一代，刚过了这三年不到的好日子。\n\n泡沫一代从来没经历过经济周期，只知道过去30年我们创造了经济奇迹，党中央在下一盘大棋，“歌唱我们亲爱的祖国终于成为帝国列强”。\n\nB站的少年看完《那年那兔》说，国运来了挡都挡不住。\n\n\n心随境转是凡夫。如果中产阶级的上升通道被彻底堵死，那大家都心安了。可偏偏身边那些年龄不到自己一半，连拿好几家顶级投资机构几千万投资的小孩，未成年就财务自由了。\n\n中产阶级最大的焦虑，就是害怕跌出自己的阶级。于是我们拼命地找，找那颗杰克的魔豆，希望它长出来一株巨藤直通天际，把我们送到更高更安全的地方。\n\n房地产门槛太高，那就炒股。“股债双杀”？炒期货。今年最疯狂的时候，一天的棉花交易量可以做 60 亿条裤子，一天的大豆交易量可以做 560 亿块儿豆腐。\n\n十个玩期货的人，十个人都知道“豆粕之王吴洪涛”，号称半年赚十倍的专家。这十个里大概就一个人知道豆粕到底是个什么东西。\n\n“炒房炒股炒黄金，满仓乐视螺纹钢”。毫无经济常识和判断能力的散户，凭着对财富的饥渴和胆量，竟然也有人能赚到钱，因为总有更不懂的人接盘。泡沫时代没有人在博弈，都在博傻。\n\n博傻游戏里，谁都不知道自己是不是最后一棒。棉花从涨停到跌停，只需要 7 分钟。A股一天能跌将近十分之一。\n\n买A股A股崩盘，炒房子房子限购，稳赚不赔的只有脑筋急转弯里面的小王。\n\n一个耳光算什么。去年 6 月股灾。9 月，证监会主席助理张育军被抓，10 月，国信证券总裁陈鸿桥在家里自杀身亡。历史惊人地相似。8 年前的那次股灾后，证监会副主席王益被抓，涌金集团董事长魏东自杀。\n\n绰号“逍遥”的期货操盘手刘强，是中国期货界的传奇人物，毕业于北京物资学院期货专业，全国唯一一所开设期货专业的学校。\n\n2014 年时他曾写过一本半自传回忆体小说，提到他大学时的三个室友，李尔群、索建国、罗向东毕业后都从事期货——后来一个死了，一个被关在北京市第一监狱，一个逃亡到了美国，只剩他自己还活跃在市场中。\n\n直到 17 个月后，股灾后的第二个月，他也从华贸中心酒店顶层跳了下来。\n\n哎，这个世界太危险，我只想当脑筋急转弯里面那个小王。现在回香港卖保险给大陆客户，不知道还来得及吗？');
INSERT INTO `archive_remarks`
VALUES (10334,
        '\n`支付宝圈子. 语录合集`\n微信做过摇一摇，陌陌早期请模特陪聊，滴滴最开始让自己员工去打车。这都是产品的必经之路。\n\n这条路我们支付宝当然也要走过去，等我们成功了。这些媒体又会做一个大标题，“支付宝的成功之道”，做个大封面，和今天他们骂我们一样，分析得头头是道。\n\n\n所以支付宝这么搞，不管你滋瓷不滋瓷，我看就很好。');
INSERT INTO `archive_remarks`
VALUES (10336,
        '\n`防火防盗防蝈蝻是吧`\n罗振宇更是弄了一个2200万的广告拍卖，提前把两年的钱都赚了，连罗振宇自己都说：“感谢papi酱肯要我们的钱。”\n\n这个热点蹭得我给满分。但是万万没有想到，半年之后，热点蹭也蹭了，广告卖也卖了，“当然要提前一次性把papi酱透支”的罗辑思维竟然把投资的500万要回去了，之前还说过什么投资papi酱是最大耻辱。\n\n包小姐马上想到了郎咸平教授，婚内出轨睡了一位年轻漂亮的空姐七八年，最后不但把送人家房子要回去了，还让这位空姐背上了900万债务。\n\n幸好徐小平的真格基金愿意接手罗辑思维撤出的全部股份，老年投资人还是比中年投资人体面。\n\n果然还是那句话，防火防盗防你国中年男子！\n\n一个姑娘，如果三年前就是创业者，说明她至少见过徐小平一次。因为当时女性创业者还没有今天这么多，徐老师还照顾得过来。\n\n08年的时候一位女生找上徐小平，要二十万的投资。虽然徐小平认为她的创意绝对不会成功，但出于对女性创业者的鼓励还是给了她，同时嘱咐她，\n\n“千万不要告诉别人是我投的，否则人们会怀疑我为什么投你，我丢得起这个钱，我丢不起这个人。”\n\n谁知道钱一到手，这个女生立刻兴奋地对在网上宣布：“徐小平投我了！”\n\n徐小平自己说自己“差一点身败名裂”。\n\n但是这位在徐小平见过的不靠谱的女性创业者中只能排名第三，因为排名第二的，曾经在路演中说徐小平和她在总统套房谈项目。\n\n“这纯粹是瞎编，正经的投资怎么可能在总统套房谈”，时隔两年之后，徐小平回忆起来此事仍然愤愤不平。\n\n姑娘记好了，国贸大酒店的总统套房一晚上88888，你觉得投资人愿意在你的项目上投这么多钱吗？\n\n今年有个复旦中文系大二女生做了个校园媒体，写了一篇10万+《我上了985、211，才发现自己一无所有》刷屏。她拿了一位中年男性老师的投资，你猜多少钱？\n\n两万元，人民币。\n\n所以越是这样包小姐越是不放心，半年前这个集美貌和才华于一身的女子去见徐小平和罗振宇，我就害怕他被这一对中老年投资人组合套路了。\n\n果然，央视媒体老前辈和中央音乐学院学长对着低配版的苏菲·玛索传授了一夜人生经验，听他们讲了一夜的风口、势能、跨界、营销，papi酱打了好几次瞌睡，然后被他们得手了。\n\n融资1200万，估值一个亿。\n\n徐小平说：“papi酱是今年投的最好的项目之一”。真格基金这一单下去，全世界的内容创业者都愿意找他们聊聊。500万投资款能买什么广告，莆田系人流广告只够点5000次，咪蒙的软文只能买11篇，你说值不值？\n\n所以一个姑娘家家，遇到了古道热肠想向你传授人生经验的中年男子，一定要提高警惕。如果你不像papi酱这样的人肉提款机，那更要仔细分辨了，眼前谢顶、发福、皮笑肉不笑的这位想传授的到底是人生经验还是人生精液。\n\n前文那位女创业者说在总统套房和徐小平谈项目，可能只是一句玩笑话，但是徐小平为什么大动肝火？因为创投圈有太多不好的事情发生，别的投资人可以躲在暗处犯错误，徐老师就只能在聚光灯下守身如玉。\n\n知乎上有个段子，女性创业者如何避免被投资人性骚扰？答案是：只要你长得跟董明珠一样就可以。还有人在回答“你身边有哪些创业成功的女孩子”时，连用了三个“长得漂亮”作为前提。最后总结：如果你长得漂亮，你就赢了一大半。\n而当下社会，小姐做直播，厂妹用滤镜，猫奴要女权，凤姐会整容，实习生都学坏了去读咪蒙，去哪儿找又聪明又漂亮又不粘人，家世清白还不会漫天要价的姑娘呢？\n“你的案子投委会已经毙掉了，但是我觉得还可以争取”；\n\n\n“你的团队还缺一个懂XX的合伙人，今天晚上到XX酒店大堂我们聊聊”；\n\n“我已经把你的项目推荐给XX，但是他们比较看重XX，来我房间我帮你改BP”。\n\n最近资本寒冬，投资机构里德高望重的合伙人在忙着总结过去几年的经验教训写一篇《XX投资笔记》，小鲜肉投资经理和分析师如果不是转了一篇《我为什么不做VC了》之后开始考虑转行，就是沉迷于文明6和守望先锋不能自拔。\n\n正经的投资人哪里有时间跟你聊项目？\n\n反倒是那些不上不下的中年投资人，十几年几十年过去，自己没熬成合伙人，糟糠之妻倒熬成了黄脸婆，于是饱暖思淫欲，人闲生是非。\n\n在电梯上，投资人搂住她的腰，周莹琪把他的手支开。到了房间，投资人说：“我有点累，我想躺在床上跟你们继续聊。”于是她和合伙人坐在床对面的沙发上继续向投资人介绍自己的项目。没讲多久，投资人又说：“你们累不累啊，要不要上来躺一下？”\n\n嗯，这里不是起点中文网。而是《人物》杂志采访25岁的女性创业者周莹琪的一篇报道。某基金合伙人安排了一位投资人下班后在深圳希尔顿酒店的大堂见面聊项目，没聊多久，这位投资人对她们说：“大堂有点吵，去我房间吧。”\n硬的你不吃还有软的。中年投资人喜欢以人生导师的设定进入你的生活，除了“改BP”，“聊项目”，“介绍其他投资人”这三个套路，偶尔还会把你当做红颜知己，与你谈谈事业与家庭，要给你打点钱应急，“不用你还”。\n\n这两年“大众创业，万众创新”，多了很多来路不明的个人天使，更是可怕。习惯性撒谎、吹牛、满嘴跑火车，谈起项目来没有职业态度，施舍点小恩小惠便洋洋得意。\n\n或许有女性创业者在这些中年投资人之间游刃有余，如鱼得水，享受一下老男人的大方。但这些人经过十几年的摸爬滚打，除了下体无处发泄的荷尔蒙，就是攒下的一肚子坏水。所有来自他们的馈赠，其实都暗中标好了价格。\n\n老男人也是与时俱进的，他们现在已经不会再用甜言蜜语这样过时的套路，他们改说“我想要投资你”，闪烁着欣赏的目光，输出着长者的智慧。\n\n但让很多姑娘失望的是，这背后仍然不过是一场高级的性骚扰。');
INSERT INTO `archive_remarks`
VALUES (10338,
        '\n`雷军! 普罗米修斯, 西西弗斯, 现在的以及最后的英雄`\n雷军在金山的时候，电脑里装了一款市面上最贵的硬盘。专门用于保存自己出道十几年来写的代码。他闲下来就会打开欣赏这些代码，有时候还跑一下看看，觉得自己写的代码真是好啊，现在的程序员真是一届不如一届。\n\n遇到下属写不好代码，雷军还会把他们拉到自己电脑前面，让他和自己一起欣赏，“你看看，这个变量就该这样获取，你看看，代码注释像你这样写是不行的”。\n\n直到有一天，公司新来了一位IT。正好碰上雷军的电脑因为（因为体验360的产品 / 手动删除线）崩溃。雷军就让这位IT帮自己重装系统，没想到他把整个硬盘格式化。\n\n代码没了，雷军没办法向下属显摆自己代码了，专心去做了项目管理。\n\n当然凡事有例外，后来在小米有个叫张功的美女前端，经常出现在小米发布会的PPT中作为用户头像，号称是小米最美工程师。雷军见到她，没忍住还亲自给她指导代码。\n\n有图为证。\n\n所以说，农民觉得皇帝有一把金锄头，皇后娘娘要给他烙大饼这种事也不完全是YY嘛！\n\n一个屌丝码农YY，等我牛逼了，一定得把自己的代码裱起来让全公司学习，公司美女前端写不出代码的时候只准我一个人在旁边指导。\n\n我本能的反应是他用了春秋笔法，雷军应该不是路过。因为原来负责研发的周光平博士被安排首席科学家虚职之后，雷军是亲自负责硬件研发和供应链的。\n\n雷军真的是劳模，直到今天他依然是小米的首席产品经理。一个估值450亿美元公司的老板，依旧要管一个像素两个像素的问题，壁纸用什么的问题，icon设计要不要换的问题。最后导致的是小米的产品处处体现雷军的品味。\n\n但是所谓的雷军豹变好像还留了这么一个尾巴，就是雷军总是要在一线亲力亲为的毛病，这可能是2014年达到巅峰之后，小米痛失好局的原因之一。\n\n做一家100亿美元的公司和一家1000亿美元的公司是不一样的，曾鸣06年点醒了马云，舆论2010年骂醒了马化腾。\n\n至于雷军，尽快扔掉自己的金锄头吧！');
INSERT INTO `archive_remarks`
VALUES (10340,
        '\n`顾名思义就是几个可能的要素, 以及哪些大厂在做`\n\nAt the same time, it’s likely that China’s forked Metaverse will be even more different from (and centrally controlled compared to) the Western one. And here, the tech/media conglomerate Tencent (which also publishes most of the Western games released in China, as well as those of Japan’s Nintendo and Square Enix), is an obvious anchor. The company also owns a reported 40% of Epic Games.');
INSERT INTO `archive_remarks`
VALUES (10342,
        '\n过去150年, 最大的IP, 人们的主要时间和注意力, 花在了 Massive Immersive Fantasy Worlds - Star Wars, DC, Harry Potter, Pokemon etc\n\nEver-growing needs, to immerse ourselves in franchises. 写同人文, 续作, 移植, 观众参与者的共建让fantasy worlds越来越大\n\nAll-media - IP是书, 电影, 游戏. 不会停止. 像土地兼并互相挤压生存空间\n\n\n\nWhy Netflix will continue to dominate - people do not value their leisure time enough. People just want to watch what\'s good enough. What\'s presented in front of them\n\nCultural norm moving away - compare movies vs franchises. 2-hour unfamiliar world & characters. One-off watch-n-go experience. 而IP人们会不停看下去, 只要Star Wars做下去 (50 yrs of emotional attachment!). 和一部单一电影的长期经济价值没法比. 这么看来国内很多一些造IP抢IP的趋势理解是很领先的. 饭圈也是营造出来的一个大IP\n\n\n\nLearning, 对这个问题有了新答案: \"编辑器做出来的游戏会不会都长得像?\"\n\n1. 如果CP花足够功夫可以让游戏长得不像, 我们完全开放这样的能力\n\n2. 如果都有点像, 那不是坏事, 那就是IP. 用户消费的时候更熟悉, 更代入, 有很多context. 长此以往别的地方玩都没这个味. 就像Pokemon的片头, War3启动菜单掉下来的音效一样\n\n\n\nFortnite有个模式叫just chatting. 听语音聊天就完事了, 语音房.\n\n\n\n问: 成年人老一代的人也能接受吗? 答不一定, 但是老年人越来越老.\n\n付费潜力方面, value captured还远远小于value created. 我们也发现国内抽卡重氪网游和蓝月传奇类arpu奇高, 也就是说其他的游戏还有很大的付费潜力.\n\nSecondlife例子, 游戏里有个卖马饲料的business (玩家自己做的). 结果一次游戏升级, 马出了bug不能吃饲料了. 买家卖家的trust in the system受到损伤\n\n\n\nMatt Ball对Tim Sweeney和Epic评价非常高, gaming行业的Jeff Bezos. 认为他promote interoperability (app store / google play drama), 认为他不看重眼前的收益盈利, 而是drive up TAM. 举了几个例子\n\n\n\n提到了几个video game franchise life revenue数字, 是比较惊人的. 好游戏可遇不可求, 但是franchise一旦起来, 持续出水平差不多的续作是比较稳的. 还是大IP fantasy world逻辑, 复利:\n\n\n进化: arcade (街机一个机器一个游戏) → console → PC买断 → PC点卡 → Mobile内购氪金. 另外Matt不看好cloud gaming, delivery cost太高, 并不拟真显示. 硬件希望还要更便宜, 更小, 就不需要cloud gaming. 光速也是有延迟的\n\n也提到了所有media变得越来越低门槛 (不管是制作还是发行): 文章小说, 视频电影, 到游戏和其他interactive media - 互动内容');
INSERT INTO `archive_remarks`
VALUES (10344, '\n`以前twitter挂了就放这个图, too cheery for a system outage. 后来他们grind好了`\n');
INSERT INTO `archive_remarks`
VALUES (10346,
        '\n这次世界互联网大会胜利闭幕了，美国硅谷的代表，Google 的CEO 劈柴，微软CEO纳德拉，苹果CEO库克，亚马逊创始人贝佐斯，特斯拉CEO马斯克，都没有来。\n\n当然他们主要是因为焦头烂额，忙于处理川普当选总统带来的冲击。像中国人民的老朋友，Linkedin 创始人 Reid Hoffman ，就准时来报到了。\n\n国内部分，嘉宾名单体现了我们统战部门一贯的高水平。\n\n过去两年出现的 O2O 泡沫、VR 泡沫、早期 VC 资本泡沫没有一个影响到了有关部门的决策。相关的领导同志洞若观火，靠鼓吹资本寒冬上位的投资人和靠不断释放利好抬升股价的A股上市公司没有一个浑水摸鱼收到邀请。\n\n说出来你可能都不信，乐视自称是中国第四大互联网公司，也许是宇宙独一无二的生态，不但这届没有收到邀请，过去三届世界互联网大会都没有收到邀请。因此贾跃亭只能去次一级的，由深圳市政府办的 IT 领袖峰会上过把瘾，和马云、马化腾、李彦宏同台一次。\n\n贾跃亭可能觉得委屈，但是你两学一做没有搞好怪谁呢？最近乐视资金链紧缺，贾跃亭把自己长江商学院的同学请来到乐视总部，大张旗鼓签字，融了6亿美元。这不是搞团团伙伙，拉帮结派是什么，有没有把“禁止参加同乡会，同学会，战友会”的纪律处分条例放在眼里？\n\n今年是王兴是第一次参加世界互联网大会，以前他只能跟张一鸣一起参加龙岩互联网大会。这次的跨度，相当于从老乡会蹦到的春晚，有些紧脏，两位“胡建之光”还不能谈笑轰声。张一鸣继续谈 AI 的老调，王兴面对裁员风波惜字如金，但是在阿里的地盘上，被跑得没有那么快的杭州记者逼问出来了美团和阿里巴巴之间的恩怨。\n王兴和马云冤有头债有主，但是作为唯一一个在互联网大会开幕式上发言的互联网企业家，马云需要有更大格局。他古为今用，洋为中用，提到了1865年英国的红旗法案。\n\n当时英国政府规定一辆汽车要有三个人开，其中一个人步行在车前，举着红旗，汽车不能跑到红旗前面。于是英国的汽车工业就落后了，便宜了美国的福特，\n\n“这样的红旗法案今天在全世界各国依然存在。”\n这个世界各国，包不包括中国，你马云要讲清楚。最近喜欢拿着这个红旗法案说事的，就是阿里巴巴投资的滴滴。阿里巴巴投资SM遇到了限韩令，最近人民银行又要牵头搞“必须掌握在自己手里”的网联平台监督支付宝微信支付，你是不是有怨言？这个打着红旗的人是谁，红旗打得对不对，以后要不要继续打，马云你也要讲清楚嘛！\n接下来的两天，新闻无非是农民企业家雷军竟然穿上了巴宝莉风衣，又坐在了周鸿祎的身旁，让周鸿祎想靠却不敢靠。丁磊又请了互联网的半壁江山吃自家猪肉，情真但是不清真。\n\n雷军，杨元庆和余承东把酒言欢，说要联合占据全球手机出货量前三名，然后自家兄弟再分胜负。好家伙，完全不把出货量排在他们前面的OPPO、VIVO当回事啊。\n\n');
INSERT INTO `archive_remarks`
VALUES (10348,
        '\n雷军从前在金山是很抠的，因为其实在金山他也不是大股东，早期只是一个北京分公司总经理。1995年他做砸了金山的拳头产品“盘古组件”，很郁闷跑回家泡了半年CFido论坛。\n\n直到2011年，雷军当上了金山董事长，求伯君和张旋龙将所持金山投票权全权委托给他。后来金山和小米又两次增持，雷军才真正意义上成了金山的主人。\n\n这才有了2013年，雷军给所有金山员工每人1000股，接近两万港币的事情。所以腾讯给全体员工发股票这件事，最近炒得很火，但是应该说是抄袭雷军的。\n张旋龙这个人很值得说，首先他是张小龙的哥哥。是的，叫张小龙，但是不是微信的张小龙，重名而已。\n\n其次，大家都知道雷军，一部分人知道求伯君，但是现在记得张旋龙的人很少了。其实他才是金山的创始人，在博士不如狗，硕士满地走的中关村，一个高中毕业的胡建人竟然先后当上了金山和方正两大民族软件公司的董事长。\n\n当然原因有很多，其中有一个原因很值得说，就是他当年把金山50%的股份免费送给了技术天才求伯君，有了金山的第一次辉煌。\n\n后来他又和求伯君一起把股份委托给雷军，有了第二次辉煌。\n\n`写得好! 是这么回事. 左倾底层平民一定说, 6000万这么多!`\n\n董小姐表面上很风光，别人以为她就是格力，格力就是她，实际上她占有格力的股票不到1%。董明珠去年年薪 400 多万，年底分红也不过 6000 多万。\n\n格力员工见了她要鼓掌，她自己当格力的代言人，甚至要格力手机把她的照片当做屏保，何苦呢？\n\n依然敌不过珠海国资委一纸通知，就这样丢掉了格力集团董事长的位子。国资委是不会当张旋龙的，50%的股票分给你，开玩笑嘛！国有资产重大流失。至于投资3000万回报300亿，这是组织交给你的任务，你完成的很好，所以你是正处级领导干部。\n\n`对乐视正确的判断`\n\n我现在不只是觉得董明珠应该去乐视，我觉得年轻人都应该去乐视。\n\n昨天我说年轻人要去腾讯，你们说不是每一个人都可以去腾讯，全员派发股票这种事不是年年都有。你们就这样错过了2012年之前的阿里，错过了2014年的金山，又错过了2016年的腾讯。\n\n但是我觉得你们不应该错过2017年的乐视，他们现在只是让高管自筹资金购买公司股票，下一步应该就会惠及普通员工。\n\n说不定哪一天你收到一封全体邮件，标题里面又是生态，又是分享，仔细一看内容，让你们每个人领1000股票代替下半年的工资。\n\n按照乐视给自己画的股价路线图...是的，自己的K线自己画，就是这么任性...3年之后迎接你们的将是“十倍股价，万亿乐视”。\n\n让那些去腾讯的人后悔去吧？');
INSERT INTO `archive_remarks`
VALUES (10350,
        '\n没想到至今还有人拿百度收购 hao123 来说事，\n\n“ hao123 当年可是占到了百度40%的流量啊，收入都破千万了，只不过卖了5000万人民币。91手机助手何德何能，一个做盗版软件的，居然百度花19亿美元收购，一定有问题，一定是李明远搞腐败”。\n百度2004年上市前如何低价收购hao123？这个问题曾经被雷锋网创始人林军认为是中国互联网四大未解之谜，但是实际上他是揣着明白装糊涂。\n\nhao123的创始人李兴平是个草根站长，广东梅州人，和魅族老板黄章是同乡。这个人初中毕业就去网吧当了网管，根据小城市网民记不住网址这个毛病，发明了网址站。\n\n后来百度的股票李兴平一股也没卖，百度给的现金全部都用来买腾讯的股票。十年之后账面回报超过20倍，跑赢北京、深圳房价，堪称一代股神。\n\n李兴平和他老婆是很容易满足的，但是91手机助手不一样。“胡建之光”大而不能倒，他们也有“盗版软件系网友上传”作为挡箭牌。一些侵犯知识产权的投诉被转到福州当地有司，基本上也都不了了之。\n\n而且91手机助手的投资人里面有IDG，大股东网龙在香港上市，投资人名单里面有李泽楷、梁伯韬这种陆港通吃的名流，也有新加坡主权基金淡马锡。百度当年收购hao123的“天时、地利、人和”在这一局里是不存在的。\n\n同样一颗夜明珠，放在周大福的橱窗里和被乞丐捡到，出手的价格当然是不一样的。\n\n关于李明远有经济问题的很多分析非常诡异，还言之凿凿百度是放了李明远一马，股东仍然有可能起诉云云。\n\n要知道百度进钱的地方是广告销售和流量联盟，出钱的地方是战略投资部、公关、市场。百度谁是财神爷，广告主知道，站长知道，媒体知道，开发者知道，难道只有李彦宏不知道？\n\n李明远是一个负责把百度PC端流量向移动端迁移的人，手上并不过钱。你说李明远腐败，这就好比说，你开了一家公司，销售不腐败，采购不腐败，财务不腐败，唯独产品经理腐败。');
INSERT INTO `archive_remarks`
VALUES (10352,
        '\n\n今天东方网的总裁、总编辑徐世平连发两封公开信给马化腾，这两封信很多人已经看过了，大意是说，\n\n“我从事新闻行业这么多年，曾经担任过什么什么重要职务，马化腾你删我文章封我号，我通过这么多老领导老朋友反映问题，你竟然置之不理，要给我一个说法。”\n事情起因是东方网旗下的微信公众号“新闻早餐”因为一篇文章涉嫌造谣，被删除文章并封号7天。\n\n马化腾要是正厅级，腾讯就是正厅级的单位，总裁刘炽平是副厅级，各个BU部门的负责人、CXO自然是正处级。副总裁是副处级，剩下各条产品线的总监，只能是正科级干部。\n\n以后再有猎头挖你们去鹅厂，你除了看薪水，还要对照一下自己的行政级别，考虑一下有没有受委屈。\n\n你别不当回事儿，阿里巴巴和百度的人，如果被鹅厂平级挖过去就有点委屈。因为他们原来的单位都是副部级，平级调动等于行政级别降了半级。\n\n此话怎讲？\n\n百度CEO李彦宏是全国工商联副主席，工商联是正部级单位，副主席就理所当然是副部级。因此百度的最高决策层e-staff九名成员，包括今天才爆出离职传闻的李明远，都是正厅级干部。\n\n马云虽然很早前就被称为“马省长”，因为阿里巴巴的GMV相当于一个省的GDP。但是行政级别这种事情，不能按照公司的经济价值来算，要不然市值比阿里还高的腾讯怎么只是一个正厅级呢？\n\n马云目前担任的职务很多，但是这个人很滑头，从来不担任任何需要开会和汇报的工作。各种行业交流协会的会长职务，又不是桥牌协会的会长，也都无法确定行政级别。\n\n好在今年马云接受了一个联合国的任命，成为联合国青年创业和小企业特别顾问。联合国在委任书中特别提到，这个职务相当于秘书长潘基文的助理，区别于虚职联合国大使。\n\n意思就是马云在联合国是正经有行政级别的，不是像安吉丽娜·朱莉那样做慈善的花瓶。\n\n中国在联合国派驻的最高官员是驻联合国大使，和驻美、俄、英、法等强国的大使一样，是副部级的。参照来看，在联合国直接向潘基文汇报工作的马云，也应该是副部级的。\n\n这就说得通了，53所重点央企都是副部级的行政级别，阿里巴巴再重要，也不会比中粮、中移动这样关乎国计民生的公司重要。当然也不排除未来阿里巴巴和蚂蚁金服的地位持续上升，和中石油、中石化、铁总比肩，马云也成为正部级的领导干部，真正配上马省长的名号。\n\n现在已经有这样的苗头了，今年最高法院的前新闻局副局长、正厅级的新闻发言人孙军工辞职加盟阿里巴巴担任副总裁，向合伙人金建杭汇报工作。副厅级的岗位出现了一位正厅级的干部，也许这就叫“岗位超配”吧，有时候是该部门受到领导重视，未来有希望加强的信号。\n\n马云这个人是有野心的，他一不小心就说出来自己和总统一样忙。还办了一个“中央网校”湖畔大学，把什么青年才俊都笼络进来。学校是随便办的吗？你看看中央党校中央团校都是谁在当校长？\n\n\n另外一个证据是刘强东的前女友，前国家机关事务管理局政策研究处处长龚小京今年重返京东，担任比刘强东低一级的副总裁。这也是非常清楚的平级调动了，不知道你们那些搞互联网媒体干嘛一惊一乍。\n早期投资人行政级别低的恶果就是经常对大政方针的领会不到位，投资因此经常翻船，比如投了跨境电商结果海关总署马上发布了新规定，投了影视剧马上广电总局出台了限韩令。\n\n\n所以你们这些搞互联网，不要整天向钱看。一个公司的价值，除了提现在股价和估值这种短期指标上，还应该看他的行政级别。');
INSERT INTO `archive_remarks`
VALUES (10354,
        '\n10 月 26 日注定是世界篮坛值得纪念的一天。\n\n在恒大集团第二届内部篮球赛揭幕战上，58 岁的恒大集团主席许家印狂砍 32 分，当选全场 MVP，帮助“高管队”险胜“员工队”。\n\n这场比赛，许家印半场就砍下 28 分 1 助，帮助球队拉开分差。第四节许家印休息时，对方一度把分差从 16 分缩小到 3 分。在比赛最后两分钟，许家印重新登场扮演救世主，篮下强攻夺得关键两分，锁定胜局。\n注意左边这位，正在严防许家印的“员工队”球员。如果光看表情，我还以为他在防乔丹。\n\n我突然想起了以前虎扑上的一个段子：\n\n以前在单位打篮球，一直以为他们打得很差个个是菜鸡。直到那天领导没来。。。我仿佛站在了 NBA 的赛场上。\n\n我相信上图左边这位员工，一定是混迹虎扑多年的 JR。虎扑上的“如何陪领导打篮球”教学贴，他掌握了几乎全部精髓。\n许家印是个好领导，就是严了点。网上有传言，在恒大，许家印给谁打电话响超过三声没人接，谁就要罚款两万；高管十万月薪被罚掉个一半是常有的事。\n\n早年在河南钢铁公司当车间主任和厂长的时候，为了杜绝值班人员打瞌睡，许家印还发明过“150度考核法”。值班人员身体打开幅度超过 150 度就定性为上班睡觉，要罚款。\n\n如果我在乐视工作，公关部的同事找每家自媒体发的每篇公关稿，我都会积极转发到朋友圈。对外如果提到乐视，不能说“集团”或者“公司”，要说“生态”。\n\n“Jack周，现在我们全公司有多少人？”\n\n“报告老板，我们整个乐视生态旗下有 8000 人，正化反得令人窒息。”\n如果实在打不了太极，早餐前得公司晨读，背诵阿里巴巴的价值观。只知道现在的价值观是不够的，还必须如数家珍讲出阿里巴巴从六脉神剑以来价值观的变迁。\n\n马云的语录和阿里巴巴的奋斗史，你们点什么我给你们讲什么。万一哪天写了个脚本抢了个月饼，HR来找我考考我的价值观，我对答如流。\n如果我去百度工作，我第一件事是搞清楚 Robin 到底拿过几次 “IT风云人物”、上过几次“福布斯”和“财富”。把 Robin 全国政协委员、全国工商联副主席、中国互联网协会副理事长.....几百字的 title list 背得滚瓜烂熟。\n\n我去360之前就知道周鸿祎喜欢打枪，团建一定建议去玩真人CS。我去做投资之前就知道张颖喜欢骑摩托车，包凡喜欢打拳。我去网易做游戏之前就知道丁磊民谣。还有那些刚刚冒头的创业者，最近都说自己喜欢摇滚。张小龙推荐的每一本书我都读过，我不知道拿了多少产品经理的Offer。\n\n好了，拿着这本“大公司立足指南”，相信你到哪里都可以升职加薪。');
INSERT INTO `archive_remarks`
VALUES (10356,
        '\n`不用比了! 张一鸣, 王兴, 撑起当今互联网半壁江山. 了不起`\n新闻是华裔女子在美国穿睡衣击毙入室抢劫黑人，以一敌三。这个新闻正碰上美国黑人说唱歌手辱华，说中国人囤现金不报警活该被抢。所以就挑起了国内的情绪，又长了美国华人的志气。\n\n经查，这名华裔女子来自胡建省会湖州。\n\n龙岩三杰\n\n“今年内容创业的轰口在哪里，我们楞为是短视频的接起，从起年九夜以来，洗用我们胡务的用户欢勒一欢，其中视频每天播放超过10亿次，那由谁来杰定这10亿次视频的昏花呢，今日头条还是强调机器鞋习，根据每个棱的兴契进行昏花”，\n作为互联网龙岩三杰（两外两个人是美团王兴、雪球方三文，都是胡建龙岩人）中年纪最小的一个，张一鸣的江湖地位在最近两年有了一个质的飞跃，是一颗喃喃升起的新星。目前除了160亿美元的美团之外，就要数今日头条估值最接近100亿美元。\n\n你看王兴这个人就很鸡贼，他的金句“既往不恋、纵情向前”，没有一个 f 的声母，也没有一个 ue 的韵母。这样即使让胡建人念出来，也不会有花音不准的烦恼。\n\n当年在华清嘉园，张一鸣先是跟着陈华、吴世春做酷讯，后来跟着王兴做饭否。饭否被关之后，酷讯的投资方SIG把酷讯当年流量极大的房产频道拿出来让张一鸣单独做九九房。这是他第一次创业，和徐易容第二次创业做美丽说的时间几乎重合。\n\n因此在华清嘉园五虎中，他不是老革命，是个红小鬼。\n\n美团的估值160亿美元比今日头条的估值高，王兴又比张一鸣大了四岁，出道早了三年。在互联网行业，一年算一茬，三年算一辈了。如果要从龙岩三杰评选胡建之光，王兴是当仁不让啊。\n\n只是，龙岩人怎么能做胡建之光呢？\n\n胡建自古“一府五州二军”号称八闽之地，省内的鄙视链盘根错节，复杂程度可以和内斗省江苏相提并论。不错似乎确凿的是，龙岩所在的闽西一般位于鄙视链的底端。\n\n龙岩最东边的漳平人，觉得自己姓漳（闽南的漳州），又讲闽南语，怎么就被划在了闽西。如果不是出了互联网龙岩三杰，同在闽西的三明市也可以凭借沙县小吃在龙岩人身上再踩上一脚。\n\n而胡建内斗鄙视链的顶端，是省会湖州，名片厦门和财神泉州。\n\n说到草根，龙岩三杰分别毕业于北大、清华、南开。而蔡文胜15岁就拿着家里的500块钱辍学去摆摊卖打火机。17岁自己买了寻呼机，20岁买一万多的摩托车，22岁买三万多的大哥大，23岁就去了东南亚闯世界，29岁回来炒股做域名生意。\n\n温家宝说中国2500个县市他跑过1800个，所以他是大国总理。而蔡文胜呢，拥有这1800个县市的拼音域名，所以成了第一流的天使投资人。\n\n陈水扁之所以是台湾之光，因为台南出身的他敢进“天龙国”，选赢了台北市市长。\n\n蔡文胜为了进京是费了一番功夫的，比如当年他做的265网址站，很多免费流量送给了北京的关系户。联想要做门户网站，蔡文胜免费把价值几百万的域名FM365送来，换来成为柳传志的座上宾。创新工场投了这么多年，估值最高的项目还是蔡文胜友情价格送来的美图。\n\n但是骨子里的东西是很难改变的。美柚的陈方毅是莆田人，在厦门创业，他就在知乎上谈起胡建人经常被黑“迷信”，说自己不相信风水，但是也会一定程度上遵守。\n\n');
INSERT INTO `archive_remarks`
VALUES (10358,
        '\n曲凯最近写的一篇《为什么我不做VC了》，很火。\n\n我来提炼一下这篇文章的中心思想：\n\n> 我和经纬的庄明浩都发现基金的合伙人太他妈年轻了。然后庄老师说了一句，天下岂有四十年之太子乎。我说了一句，苟利国家生死以，岂因祸福避趋之。然后我们俩决定创业，一个写文章搞个大新闻，一个去跟老公（王思聪的熊猫TV）闷声发大财。\n\n你们说我总结得吼不吼？\n\n`好!`\n\n马云曾经说过，阿里巴巴走很容易，回来很难。\n\n\nVC行业也是这样。这么多年来多少年轻人都觉得VC行业需要颠覆，甚至有人身体力行创业来革这些传统VC的命。但是结果是VC岿然不动，这些准备颠覆自己前老板的人呢，因为主观或者客观的原因，再也回不来了。\n\n\n曲凯写了这篇文章，大佬们看在眼里，记在心里。他再想回去VC，除非天下有变。\n\n\n天下哪儿那么容易有变。\n\n\n别的不说，我说改革开放块40年了，多少人前赴后继，三年一波，五年一届，都觉得有生之年能给我党松松土。于是想在海外吃着火锅唱着歌，搞一搞民运，博得斗士美名，以待天下有变，就回来摘挑子。\n\n\n结果呢？\n\n\n写到这里，倒有点黑曲凯的意思。不行，我们是互联网行业的TFboys，肯定要利出一孔。\n\n\n只能怪曲凯你没提前让我看稿子。你要是让我提前看稿子，我一定让你把标题改成《打铁还需自身硬，年轻人先学会做事再来VC》。\n\n\n然后在里面加上几句唾面自干的话，说是“自己不行”，“先出去历练历练”，“再回来报效老板”云云。VC大佬们肯定会纷纷点赞，说这个年轻人有前途。还会转发到群里，对着今年新招来的分析师和投资经理说，\n\n\n“我早给你们说过42章经是投资界第一大号，要多看，跟人家好好学习。”\n曲凯，我只能帮你到这儿了。\n\n说实话，我刚看到曲老师这篇文章就知道要引起很多VC行业的反弹。毕竟，VC行业人来人往见怪不怪，但是很忌讳端起碗吃饭，放下筷子骂娘。就是李丰、曹毅这样的大佬离开原来的基金，也不会公开说一句前东家的不是，更何况向整个VC行业开地图炮。\n\n\n你说VC行业不适合年轻人，以后我怎么跟投行、券商、MBB抢清北复交的优秀应届生，我们怎么让年轻的基金经理和分析师给我玩命source deal？\n\n\n这两年真正借着VC大爆发挣到钱的，在北京付了首付的年轻人，不是创业者，不是投资人，还真的就是FA。“一年参与closed上百个deal的人，一个项目融资分上几万十几万，财务就自由了”。当然这是个段子，但是closed两位数deal在北京房价低潮期付了首付的，还真有一批人。\n\n\n“如果你能跟着牛逼大佬，VC胜，如果不能，一线FA大于二三线VC。作为FA你还能通过项目和大佬产生点联系，比如一起开会，一起沟通融资方案”。\n说的太好了，如今能和基金大佬们谈笑风生的年轻人，就是这样颜值又高，身段又软，说话又甜的FA。\n\n\n更重要的是，该上位的年轻人也已经上位了。VC行业里的年轻人，在VC至少还算是甲方，现在去FA给自己曾经的乙方打下手，还是很有心理门槛的。\n\n曲凯要进入的，我们已经在的内容行业，马上也会是这样。不用今年春节，我相信我就能看到一篇《我为什么不做微信公众号了》或者《内容创业就是个坑》，再次刷屏，来个10万+。\n\n到时候你怕不怕？反正老编辑是不怕，我身经百战，哪个资本寒冬我没写过？\n\n\n当然还要讲个故事，要不然不像老编辑写的。\n\n曲凯同学和BAI的当红炸子鸡汪天凡同学，都和36氪有一段缘分，曲凯曾经来36氪上了一个星期的班，汪天凡曾经给刘成城写过邮件，自告奋勇要在英国帮36氪办开放日。\n\n\n后来两个人都进入VC行业，三年过去了，汪天凡升了副总裁，也是未来合伙人的考察对象，曲凯同学离开VC做了42章经，成了投资界新晋大V。\n');
INSERT INTO `archive_remarks`
VALUES (10360,
        '\n`庄明浩去了熊猫TV, 然后就是那个\"4个VC老兵跳进直播, 3个上市了, 还有一个我\"的故事`\n\n纯互联网工具时代，100% 的互联网元素。到了消费升级和文娱内容，其中的互联网元素大概还能剩 2%？\n\n像消费升级里的典型“三只松鼠”，我觉得借助得更多是概念，类比一下，没有移动互联网“脑白金”也一样能火起来。\n\n像文娱内容里的典型《奇葩说》，我觉得借助的更多是新意，类比一下，没有移动互联网《快乐女声》也一样能火起来。\n\n互联网核心的连接、交互或技术等，在这两者身上都找不到太多印记。\n\n但话说回来，为什么这会是一个问题呢？\n\n我们知道，VC 投资的原则之一是：\n\n投资的目的就是投独角兽，找鲸鱼。\n\n那么为什么互联网公司里容易出独角兽呢？因为在连接这个属性之上，互联网具有天然的快速扩张性（scalable），又基于技术门槛、网络效应或规模效应这三大护城河，互联网公司天生具有一种长期的垄断属性。\n\n内容是短期易传播，长期不可复制、又难以垄断的，消费品短期难传播、长期可复制，却一样是难以垄断的。\n\n所以，《奇葩说》再火，马东打造的第二款节目《饭局的诱惑》也是没有什么声音。“三只松鼠”再厉害，也还是会有“良品铺子”打出来。\n\n这当然不是说这类公司不是好公司，他们已经是非常好的投资标的，但本身这样的公司已经少之又少（要么起点很早、要么起点很高），所以哪怕没有很好的护城河，也能发展到这个程度。但长远来看，仍旧会有竞争和留存的问题。\n\n所以，这都不符合 VC 找独角兽的典型投资风格。\n\n互联网因素少了，潜在独角兽也就少了，而年轻的 VC 从业者同时却多了不少，从供需关系的角度来说，现在做 VC 也不是个好选择。\n其实，在我做 VC 以前，一直觉得 VC 最看重的是判断力，但入行以后，发现最入门级的其实是 Social 能力。\n\n如果把所有的创业项目比作一个金字塔，每上升一层就是融到新的一轮的话，那么能投到最上层好项目的前提，是能看到最底层绝对多数的项目。\n\n首先能看到，才有机会判断，就是这么简单的道理，所以 Social 能力在前，判断能力局后，而在这方面 VC 比拼的就是人脉和信息，所以新入行的这一波年轻 VC 迅速变得 FA 化，而很多 FA 则直接变得房产中介化。总之，大家都是销售。\n\n再者，VC 投资成功本身就是小概率事件，在小概率事件之下，经验、理论和运气的差异度会被无限缩小。如果一年只出一家独角兽，那么怎么分得清判断力和运气呢？\n\n6）我有点理解写《庞麦郎》的鲸书，和写《耶鲁村官》的杨眉了。以后我再也不黑任何文字工作者了，以后郭敬明就是我的偶像了。\n\n唉，上篇的末尾我还在心疼庄明浩老师，最后发现果然自己还是太 naive 了。不被黑最好的方式就是自黑。看完这么多，如果你还觉得我说的不对，还想黑我，那我也承认我离开就是因为我做的不好，你看这样好不好？\n\n心疼自己。');
INSERT INTO `archive_remarks`
VALUES (10362,
        '\n\n宋冬野果然吸的是大麻。昨天他被抓的时候，不知道有没有这样跟警察和家人解释：\n\n“这个是大麻，在美国是合法的，很多搞音乐的都抽大麻的，你知道鲍勃·迪伦吗？”\n\n警察叔叔二话不说给他铐上，拍了拍宋冬野的大胖脑袋，“废什么话，这里是朝阳”。\n中国人民太不好客了。在 2011 年 iPhone 4S 发售的那个秋天，几百万人抢购“乔布斯的最后作品”，但只有几千人去看鲍勃·迪伦——每个人都想学乔布斯创业成功，或者用乔布斯的手机。但没多少人知道乔布斯毕生偶像是鲍勃·迪伦，两个人还有过一个共同的女朋友。\n\n人少就算了。你们居然没有尽到地主之谊，让民谣之神吸上一口中南海。\n\n鲍勃·迪伦 shame on you。\n\nbilibili篮球队\n\n不知道伍迪·艾伦听到鲍勃·迪伦这个老嬉皮拿诺贝尔文学奖的时候，会不会燃起一股“扶我起来试试”的斗志。\n\n鲍勃·迪伦获奖之时，英国每日电讯报写了一篇不无酸意的评论，A world that gives Bob Dylan a Nobel Prize is a world that nominates Trump for president。用微信体翻译一下就是，你问我为什么鲍勃迪伦也可以拿诺贝尔文学奖，我说世道变坏是从川普获得总统提名开始的。\n奥运会跟诺贝尔对我来说，确实有点像。没有中国人得奖或参赛的时候，并不怎么关注；一旦中国有存在感，就吃瓜围观。我猜不少人跟我一样，要不是莫言、大刘，对国际上的文学奖根本没有认知。一是事不关己，二是遥不可及。\n\n所以早些时候《北京折叠》获雨果奖时，很多 hardcore 的科幻读者不满，觉得它和《三体》不是一个水平。但我倒是被小小震撼了：原来雨果奖离我们也没那么远。不用太恢弘的世界观和太缜密细致的逻辑，写写阶级固化和贫富差距也有机会拿雨果奖。\n\n那我也有机会啊！我们多喜欢写这社会有多操蛋，读书人也开始不要脸了，世道变坏你也配姓赵这些乱七八糟的东西。以前只是觉得居然阅读量还不错，现在好像有了更多盼头。\n\n老编辑今天刚刚在投资人那里吃了瘪，回来看到鲍勃·迪伦拿了诺贝尔文学奖，一下子来了精神，摇头晃脑的说他们县出过四届茅盾文学奖得主。\n\n我相信他不会是第五个，但是好像又有点不太确定。毕竟现在是 2016 年了，有个说出“应该关掉互联网”和“墨西哥来的都不是好人，应该在美墨边境修堵墙”的家伙都快当上美国总统了。Angelababy 和李易峰刚刚拿下了最佳男女配角。\n\n上周还有一支穿着 “上海 BiliBili 队” 球服的球队，和哈登带领的火箭队打了一场正儿八经的 NBA 季前赛。\n\n我感觉这个世界乱套了。\n\n世道变坏是从投资人找到曹云金开始的\n\n徐沪生以前写了十几年诗，每天起码读十个小时书。2014 年刚创办一条视频，融了几百万美金，就说自己没空读书和写诗了。阿里巴巴的总监王帅也是个诗人，现在还写，那年和京东双十一公关大战，他说“鸡举报了鸭，说鸭垄断了湖面”。\n\n不过他现在是阿里巴巴集团光鲜形象的化妆师，他每年可能要辣手摧花，删掉好几百篇稿件。\n\n传说当年贾平凹和陈忠实都住在陕西文联的大院里，每次记者来敲门，都是陈忠实去开门，记者说我找贾平凹，因为贾平凹在国外拿了奖。陈忠实一气之下回家去，放着厅官文联副主席不当，非要写《白鹿原》，“棺材里给自己当枕头”。\n\n可惜这种事情不会再有了，换做现在，陈忠实门口站着一排投资人，要拉他去做某个内容创业项目的合伙人，打造八百里秦川第一旅游IP。\n\n现在中国最聪明的一群人每天雷军马云徐小平语录如数家珍，经纬红杉IDG投资风格娓娓道来，但是恐怕没有几个人能说出来老舍、茅盾、鲁迅、曹禺戏四大文学奖的区别。\n\n世界上最动听的话不是“我爱你”，而是“你的肿瘤是良性的”。\n至于我们不上班，接下来几个月会做网络大电影，大概年底前就会推出。明年赶个贺岁档、提名个金鸡奖，也就满意了。\n\n> 可以，这篇文章格局很大，有望冲击普利策评论奖\n\n木村拓周 (作者) 回复大面2016-10-14\n你这条评论也有望入选');
INSERT INTO `archive_remarks`
VALUES (10364,
        '\n`这就是我想写的那一篇啊! 技术人的英雄纪元. 江民杀毒`\n技术本身并不可耻。\n\n如果王欣不能东山再起的话，多年以后我们再回过头来看，这就是这位80后程序员人生最光辉的时刻。\n\n\n屌丝们看了毛片，记住的总是“德艺双馨”的老师们。挂在嘴上，记在心中，存在深深的硬盘里。然而总是忘了那些程序员，那些一步一步把“多线程加速”、“断点续传”、“全格式支持”、“边下边看”开发出来的程序员。\n\n\n我觉得有些遗憾，所以就写写他们的故事，从今天受审的王欣开始说。\n王欣这些人出道的时候，正是程序员的黄金时代，一个技术解决一个需求，一个需求让几百万人记住几款软件，下载下来其中一款，用得习惯，然后经年不变。根本不知道什么叫产品经理，也无需讨好什么用户体验。爱用就用，不爱用滚。\n> 最开始大家用的是迅雷，就是要先下载才能看，而快播只要5-10秒就可以看，如果按每人每天节约半小时计算，可以说快播在迅雷的基础上帮全中国人省了两千年。\n迅雷当年也是看片神器，会员加速服务更是为了用户的“高频、刚需”。2014年净网行动一刀切，迅雷的会员服务收入损失惨重。那时候网上的段子是“老板邹胜龙带着他的3.5亿个种子跑路了”。到了王欣被抓，神回复变成了“他是中国最有种的男人”。\n但是从结果上来看，幸亏雷军给迅雷托底，后者才成功上市。虽然最后沦落到给小米的云服务做了底层，但是好歹创始人落袋为安。而周鸿祎爱莫能助，眼睁睁看着腾讯在家门口把自己投资上市退出的一次绝佳机会毁掉。\n\n\n从IDG离职创办360之后，周鸿祎无时不刻不在期待着这样一个机会。和企鹅家的血海深仇，怕是这辈子无法化解了。\n\n\n更会玩儿的是网际快车的创始人侯延堂，开发网际快车比迅雷早了四年，卖给了汽车之家的贵人黄明明。但是此君沉迷魔兽世界，一年不更新，拱手把市场让给了迅雷。断点续传是当年网际快车的杀手锏，网络环境不稳定，在家里电脑上学习生理知识又需要偷偷摸摸，网际快车实在是必备神器。\n\n\n不过断点续传的发明者应该是网络蚂蚁（最初只有英文版，名字叫NetAnts），作者是洪以容。根据新浪创事记的一篇文章，洪以容还是国内软件植入广告的第一人，后来还做了一套量化投资模型，在熊市里居然也挣到了钱。\n比如PP点点通和Vagaa这种，作者的名字都很难在互联网上找到，毕竟做人要低调。最低调的是草榴社区的总版主大红鹰，从来没有人知道他是谁。去年1024关站，这些版主不是在北美就是在香港，也没有人受到什么牵连。不过有个冒充草榴的收费网站被查，创始人叫陆大伟，反而被判了三年。\n王欣进去的时候林军写过一篇文章，拿电驴创始人黄一孟的例子给他打气。电驴被关闭之后黄一孟做了心动游戏，推出了大火的《神仙道》，2012年CJ的时候放出话来说一个月收入一个亿。\n播放器普遍洗白之后，毛片的天堂转到了网盘，除了大公司主导开发的360网盘和百度网盘（至今）非常好用之外，赖霖枫做的115网盘很多人应该都记得。2012年被禁止分享之前的115网盘的日访问量有2000万。赖霖枫至今还活跃在创业一线，2013年还鼓捣过免费硬件，但是始终没火起来。\n\n\n真道是，\n\n\n时也，运也，命也。\n\n王欣最后被判了三年半，以他的身手，在监狱里申请一个国家发明专利，立功减刑，一年后就出来并不是什么问题。到时候周鸿祎和两次错过他的IDG再联合投个几千万，收集旧部人马又是一方诸侯。\n\n但是王欣个人可以回来，那属于程序员创业的黄金时代，不可能再回来了。\n');
INSERT INTO `archive_remarks`
VALUES (10366,
        '\n`李德胜不就不用?`\n即使离创业大街这么近，这座教堂显然不是为了创业者开设的，它的年龄是3W咖啡的20倍，比车库咖啡大了90岁。它创建的时候，北边的那所大学还叫燕京大学，校长是如今埋在西湖边的司徒雷登。\n\n焦虑和压力是创业的常态，抗住这种焦虑和压力算是创业者的义务吧。\n\n\n海淀堂的官网有信众来信，有一个tag叫“人在职场”，收录了从2010到2013年之间的30多封信众的工作感悟。其中没有一位是创业者，从事互联网的也只有1人，是一名河南周口的中专生，说自己不会高数和英语，却找到了一份软件开发的工作，感谢主的恩德。\n\n看来创业者是不信教的。\n\n张锐这种创业者，有新闻理想，带着很多兄弟一起创业，又拿过很大的钱很高的估值。在这种情况下他的撕裂是三重的。个人情怀的破灭、投资人退出的压力，同事期待的落差，是一齐压过来的。\n\n而且互联网医疗行业有一些害群之马，尤为可恨，常常制造一些有意或无意的谣言，春雨医生作为行业翘楚，承担了这些谣言中的多数。\n\n财新那篇《张锐：一个愤青的创业史》写得极好，说张锐做了之前不想做的药企的会议，在投资人推动下被迫加快上市进程，身边同事接连离去，多次被造谣资金链断裂，把这四种压力都很平静地讲出来了。\n\n爱别离，怨憎会，求不得，五阴炽盛，这是佛教所说的人生八苦种的后四种。前面四种是生、老、病、死。\n\n中国的《左传》中有句话，是“国之大事，在祀与戎”，西方的《圣经》里也有句话，凯撒的归凯撒，上帝的归上帝。\n\n无论从哪句话看来，中国的创业者是少了一半的。\n如果中关村有这样一座庙，这寺庙里的僧人，不免也应该首先互联网化以利于弘法。像龙泉寺的博士僧团一样，这里都是连续创业者、大公司高管的出身。\n\n他们除了熟悉禅宗公案，还能引用原研哉《设计中的设计》，Peter thiel的《Zero to One》、刘慈欣的《三体》和Robert Martin的《代码简洁之道》。为首的主持最好也要带过几百上千人的团队，做过百万用户的产品，有过独角兽公司的创业经验。\n\n这时我脑子里突然闪出来了王兴的形象。标志性的光头，一张腼腆的娃娃脸，斯文的细框眼镜，还有略带胡建口音的普通话，几年前的他如果换上一身粗布僧衣，像极了已蒙开示但尚未开悟小沙弥。经历了这些年的世变之后，更是一尊斗战圣佛了。\n\n而且，王兴本人还真的信佛。\n\n今年夏天，美团因为支付牌照的问题遭遇举报。王兴有一天凌晨望着北京的夜空，在饭否上写下两条推文，“白云朵朵，历历在目”，“成、住、坏、空”。后一条正是佛教用语，意思是世界生长、存续、毁灭，空寂，谓之四劫。\n\n好吧，中央已经决定了，由你来当这个寺庙的主持。');
INSERT INTO `archive_remarks`
VALUES (10368,
        '\n`印象很深, 我还以为加过. 读过至少两遍`\n`做了老板, 才明白为什么老板喜欢人身依附`\n\n\n直到去年的情人节，滴滴和快的合并，滴滴接入支付宝，后来阿里又和苹果一起投了一轮滴滴，换取滴滴使用阿里系的高德地图。在这个过程中，腾讯方面逐渐感觉到程维的作风始终还是个阿里人，却和自己最大的外部股东渐行渐远。\n\n所以程维最终没有“欺师灭祖”，王刚又可以回杭州和马云打牌了。\n\n---\n\n所以朱啸虎把阿里巴巴B2B副总裁干嘉伟推荐给了拉手网。但是架不住王兴六次去杭州请干嘉伟出山，后者就成了美团的COO。\n\n干嘉伟那个时候在阿里巴巴刚“犯了错误”被降职，还在组织的考察期。但是在阿里巴巴，一向是外来职业经理犯错属于路线问题，老干部犯错只是执行问题。干嘉伟是阿里67号员工，管着7000多号“中供铁军”，如果留在阿里，重新被重用只是时间问题。\n\n所以干嘉伟去美团是得到最高层首肯的，而且他本人实际上是阿里巴巴投资美团的尽职调查人，是带着组织交代的任务去的。\n\n干嘉伟为美团在千团大战中杀出重围立下了汗马功劳，2014年他口授了一篇《美团地推铁军是怎么练成的》，讲怎么在美团移植阿里中供铁军经验，讲马云“打通我的任督二脉”，让他认识到管理的四重境界。\n\n但是在那之后，谋求独立发展的美团就和阿里巴巴渐行渐远。特别是和腾讯投资的大众点评合并。实际上是王兴连夜发起董事会，修改股东章程，变更董事会席位，然后把阿里的意见排除在外。\n\n这一套当年马云用过，阿里巴巴开董事会，只提前两天邀请大股东雅虎的CEO巴茨参加，后者坐十几个小时的飞机到杭州，根本来不及任何准备，只好马云说什么就是什么。\n\n但是把从阿里身上学会的都用到阿里身上，这是欺师灭祖啊！\n\n之后阿里战略投资部的人就对美团就“恨之入骨”。阿里对美团的决策已经超出了理性追求回报的范畴。今年美团在获取支付牌照上受到刁难和举报，在美团系列融资的关键时刻，又传出来阿里巴巴打折出售老股打压美团估值的消息。\n\n---\n\n其实每一个互联网大佬都像马云一样，恨欺师灭祖，吃里扒外。周鸿祎追杀傅盛，任正非羞辱李一男，丁磊抓捕魏剑鸿、腾讯调查刘春宁，古永锵举报卢梵溪。这样的桥段每一年都在上演。\n\n老板们不喜欢的，不是你离职，而是你离职之后比原来还过得好，让人心散了，队伍不好带了。\n\n幸亏是在互联网行业，人才流动如此频繁，聪明人总在寻找新机会，不喜欢又能怎样。只要别同时触犯两大天条，挖前东家的人同时又做和前东家一样的业务，老板们也就只好睁一只眼闭一只眼。\n\n所以才有金山系做游戏开枝散叶，网易门户前主编们全面开花，阿里中供铁军撑起了O2O半壁江山。\n\n但是在一潭死水的传统行业，如果又是一家独大，那就很考验前老板的德行了。曹云金今天在微博上写《是时候，也该做个了结了》，反击郭德纲将他逐出师门这件事，就是一个很好地例子。\n\n德云社刚过了二十周年庆，各路明星都来捧场，小岳岳躺着拿到欢乐喜剧人总冠军。在我们外行眼中，相声现在就等于德云社，德云社就等于相声。郭德纲最近一次采访时说，我想让谁红就让谁红，让他7月15日红他就7月15日红。\n\n看来郭德纲是没少看央视的新闻，当年马俊仁的采访何其狂也，\n“我想让谁破记录就让谁破，想什么时候破就什么时候破！”\n\n但是《桃花扇》里说得好，眼见他起高楼，眼见他宴宾客。郭德纲可不要寻思着如何防止楼塌了。让人刷新三观的是，郭德纲竟然选择了修德云社家谱，褫夺不听话的徒弟艺名这种做法。还用大字报的方式羞辱人格，\n“另有曾用云字艺名者二人，欺天灭祖，悖逆人伦，逢难变节，卖师求荣，恶言构陷，意狠心毒，似此寡廉鲜耻，令人发指”。\n\n此外，还立下十不准的班规，要一劳永逸地清理门户。\n\n真是如今马上就70周年国庆，民国都一百零五年了。居然还有人想在一个行业里面恢复封建礼教，班社宗法，要搞人身依附，君臣父子，三纲五常。\n\n上一个让徒弟三叩九拜的人是谁？我记得他在北京的什么大舞台好像被拆掉了，私人飞机丢在那里也不敢开了。\n我还记得《霸王别姬》里面有一袁四爷，特别赏识程蝶衣，送他一盒首饰，要和他做红颜知己。寒来暑往，秋收冬藏，袁四爷历经大清、民国、日伪三朝不倒，是梨园永远的后台。直到人民政府解放北平，换来一句\n“反动戏霸袁世卿，一贯反共反人民，为害一方，罪恶滔天，不杀不足以平民愤”。\n于是就给毙了。就给毙了。');
INSERT INTO `archive_remarks`
VALUES (10370,
        '\n`刘韧和周鸿祎, 和Donews`\n在刘韧被他的老朋友周鸿祎弄进监狱之前， 霍炬是 Donews 的CTO，所以他认识了 tinyfool、和菜头、罗永浩、李笑来、冯大辉、池建强。有些人睡完了霍炬家的沙发大家还要拉霍炬一起去唱歌，唐朝乐队的歌是必点的。霍炬还说 tinyfool，\n\n`总之就是老一代更有底线. 才不是! 周鸿祎就是一个毫无底线的典型`\n\n如果听过崔健那句“因为我的病，就是没有感觉”，被揭穿吹牛逼不认账的余佳文还怎么会继续说出“90后都这么玩儿”这样的话。\n\n`宅代洗, 剪断洗衣机电线谋求订单`\n如果听过窦唯一个词一个词念出“矛盾、虚伪、贪婪、欺骗”，郭超宇怎么会有脸拿剪别人洗衣机电线说事儿，完了还说那是策划好的公关。\n\n`电商营销大促`\n如果听过《蓝色骨头》里“要么我选择孤独，要么我选择堕落”，楚楚街的副总裁蒙克怎么会想到用求救信号做营销的惊人 low 举，愚弄人们的善良和信任。\n\n> 就在众多网友的热烈讨论中，真相终于水落石出。蒙克在其朋友圈，微信群以及微博发表澄清声明，对关心他的朋友表示真诚的歉意和感谢之情。原来，此次蒙克的求救不是为自己，而是为了拯救千千万万为漂亮付出巨大成本的90后女孩。为了拯救她们，楚楚街在9月9号会举行周年大促。在如此恶劣的电商环境中，一个总裁做出如此举动。不少网友纷纷惊呼，套路太深，实在是意想不到。\n\n数据造假，虚报融资，拖欠工资。朋友圈里纷纷讲起来笑话，《给你讲个笑话，我是创业者》，《给你讲个笑话，我是搞互联网的》，《给你讲个笑话，我是公司的 CEO》。\n\n创业者变坏真的是从他们不听摇滚开始的。\n\n以前的创业者们，事情可以没成，但是不可以不体面。你能逼老罗写出来，“44岁的罗永浩站在被告席上”，你能揪出来冯大辉当 CTO 不务正业更新小道消息。那是因为这些人傻啊，心里有什么说什么，还白纸黑字写出来，让你们扒，让你们打脸。');
INSERT INTO `archive_remarks`
VALUES (10372,
        '\n`说的是城乡, first world problem的事`\n但是这不能改变，在中国广袤的中西部农村，暴力、愚昧、贫困和迷信有其不死的土壤。从八十年前萧红写《呼兰河传》里面的“团圆媳妇儿死了”，到二十年前曹乃谦写《到黑夜想你没办法》里面的“二楞疯了”。这两本书不是针对谁，而是说在座所有的底层批判文，都是垃圾。\n\n\n\n故事发生在甘肃某县城，有一个卖猪肉的屠户。从毛主席号召不分回汉，“养猪积肥”开始，这个屠户就在县里卖猪肉。猪肉当然只有汉民吃，回民不吃。屠户的猪肉铺子就在自家门口，街坊都是汉民，不过离回民的聚集区也不远。\n\n到了九十年代，回民的聚集区有了一点扩张。在他周围有几家林林总总的清真餐馆。那时候穆斯林确实是很温和、爱好和平的宗教，并没有谁上门拉着白色的横幅，说这个屠户卖猪肉是破坏民族团结。\n\n但是偶尔还有些回民小青年来挑衅，尤其是一个独居的破落户。此人没有正经工作，也不去清真寺做功课，回汉都嫌弃。但是他总会借口屠户的屠宰影响到他家，要讹一点肉回家，讹回家了就径直煮了吃。\n\n屠户被人讹了肉，周围的汉人群众并不帮他。因为这个屠户总缺斤短两，但是无人敢说。只能眼看着他整天对顾客板着一张脸，凶巴巴挥舞着他的剁骨刀，咔嚓、咔嚓、咔嚓。\n\n突然有一天开始，大家觉得屠户不再缺斤短两了，不但对大家笑脸相迎，而且走之前总会向顾客的袋子里塞上一块肉作添头。屠户说这是傻狍子肉，东北来的，让大家尝尝鲜。\n\n甘肃人哪里吃过狍子肉，连傻孢子走路都没见过，只觉得这个狍子肉很酸，不好吃，有的家买回去放了很重的调料吃了，有的家买回去直接扔掉喂狗，就是喂狗，有的狗闻了汪汪叫两声，不吃，有的狗汪汪叫两声，吃了。\n\n又过了一段时间，大家发现那个讹猪肉吃的回族破落户好久不见了，有人报了警，警察来街坊挨家挨户做调查。调查到一位80多岁的老人，经历过民国九年海原大地震之后的饥荒。他说他孙媳妇儿煮了这狍子肉给他吃过，他说那是人肉，但是家里人说他老糊涂了，没人信他。');
INSERT INTO `archive_remarks`
VALUES (10374, '\n`在线灵堂. 多好的风口, 怎么没人来做? 买不到量吧`\n');
INSERT INTO `archive_remarks`
VALUES (10376,
        '\n`不是因为柳传志西电, 是因为魏则西`\n我相信百度在安排李彦宏校招演讲的时候是花了心思的，西安交通大学是死对头周鸿祎的后花园，华中科技大学是腾讯的保留地，雷军的母校武汉大学可是发生过给方校长扔鞋的惨剧。西安电子科大？借他们一个胆子也不敢去啊。\n\n李彦宏在纽约遇到马东敏的时候，后者号称是纽约中国留学圈的公主，前者则是一个稍显木讷的局外人。\n\n动身去美国之前，李彦宏有过两次失败的恋爱和一次签证被拒的经历。1992年在总设计师南巡讲话之前，他在气氛压抑的北京晃了半年，在街头上发调查问卷，受了不少的白眼。\n\n而马东敏是学术贵族，15岁考进中科大少年班，19岁留学，25岁拿到博士学位，一路顺风顺水。\n\n从出身来说，李彦宏的父母是锅炉厂和制革厂的基层工人。而马东敏出生于中科院合肥某研究所的大院，父母是高级知识分子。\n\n如此看来，李彦宏姐弟俩双双考上北大是更加了不起的成绩。家学渊源的巨大鸿沟，是完全靠着父亲李富贵的循循善诱弥平的。\n\n但是中国高考制度曾经的神奇之处就在于把18岁前后的人生截然分开。18岁之前李彦宏感受到的是自己作为阳泉县状元的风光无限，之后越过了龙门，反而有一点局外人的自卑。\n\n他自己曾经回忆，代表阳泉去太原参加计算机大赛，在省城学生面前只拿了一个“安慰奖”，导致他高考后不敢报考计算机专业。\n\n所以像徐易容、陈华这种北大计算机的高材生，毕业多年之后还对李彦宏有优越感。\n\n徐易容公开调侃说，看到我们北大图书馆系的人也可以做一个中国的Google，我创业的信心大增。陈华做酷讯跟百度对垒的时候就觉得李彦宏也没什么了不起的，“当年还不是找我师兄雷鸣去做百度的构架师”。\n\n要知道，即使是在中国最顶级的几所高校里面，也是存在鄙视链的。通过奥赛进入清北的王小川、徐易容，还有80年代考进科大少年班的马东敏，雄踞鄙视链的顶端。\n\n1995年两个人结婚的时候，马东敏把结婚照寄到合肥家里，马老先生觉得女儿穿得太寒酸，很不满意。');
INSERT INTO `archive_remarks`
VALUES (10378, '\n`通篇革命语言, 娱乐效果很好, 算是写作天赋吧. 对code review的来回讽刺非常有不懂技术的人的味儿`\n');
INSERT INTO `archive_remarks`
VALUES (10380,
        '\n`精彩. 一方面这些网红程序员让人痛恨 (没有别的行业那么严重), 另一方面永远都是造谣张张嘴辟谣跑断腿. 如果说你早泄, 编得煞有介事栩栩如生怎么办?`\n`但是这篇肯定太真了, 指名道姓. 再结合上软弱无力的回应, 昭然若揭`\n\n在丁香园的产品和技术都有一个体会，大辉总是时不时的喊“我们太慢了，我们要快”，但是怎么快呢？谁知道呢？喊完以后有什么用呢？作为一个已经早早脱离技术的管理者，只知道召集所有人半夜喊几句，或者在群里骂几句，看周报主要是标点、大小写和错别字等等，有一次他把另外一个同事的周报猛夸了一阵，而这个同事一直被数个业务部门投诉。\n这种问题就是他心中的痛。\n\n因为博客写的好，自我经营的好，他的名字前面加了很多著名、首席之类的头衔，让业界对他在阿里的级别产生了很多联想。\n\n但是，\n\n如果有人问冯大辉「你在阿里的时候是P几啊？」\n\n他一般都讳莫如深，浅浅笑一下「不高，不高……」，一种过去的荣耀不要再提的谦虚劲，给人想象空间。\n\n事实上，是真的不高。\n\n为什么级别是他心中的痛呢，因为他经常在江湖上和人互喷，别人质疑他的一种主要观点就是「你除了会喷以外，还有什么样的真本事？」，阿里的高级别就是「真本事」的最好背书，然而他并没有。\n\nFeng 高效的一天\n\n不混圈子，不到会议上换名片，不接受媒体采访，每天工作超过12小时。理解他的一天，才知道什么叫比你聪明的人比你更努力，也会对精益创业和增长黑客有更深入的了解。\n\n他是文学爱好者，和路遥一样，他的早晨是从中午开始的，看似平凡人生，其实百年孤独。\n\n睡到11点起床，发一条朋友圈「特么的楼上装修的真是烦死人，不干扰他人这么简单的事情，在这个社会到底有多难？」\n\n下楼买早餐，发一条朋友圈「我说你们这些创业者啊，一天到晚要改变世界，谁特么能来改变一下我吃早餐的环境，一个可靠的早餐能做好，才能改变世界，别特么尽搞些VR、大数据、人工智能这些不靠谱的。」\n\n12点，到公司，助理忘了给他买咖啡，骂一句「你这个蠢货，滚」然后开始刷朋友圈微博，同时收发工作邮件，大约100多封吧（扁平化管理嘛），其实大部分直接删掉不看。\n\n13点了，还没有吃中饭，发一条朋友圈「吃饭真是一个麻烦的事儿，浪费时间」\n\n14点，开始写微信公众号，扫地的阿姨从他的办公室窗前走过，他愤怒的去拉下窗帘，发一条朋友圈「把办公环境弄好一点，比特么给员工发生日祝福重要的多」。还可以补一条「你们这些蠢货，就不能干点正经事情吗？我说了多少次了，把我办公室的窗帘和膜贴好，干不好，全特么给我滚蛋！」\n\n15点，微信公众号文章有个大致的草稿了。发一条朋友圈「总有人问我每天发那么多朋友圈和微博，写公众号文章，我到底什么时候工作。他们不知道，对他们来说写一篇文章发朋友圈要耗费太多时间，对于我来说就是抬抬手指的事情。」\n\n期间参加一个工作会议，大部分时间在刷手机，突然抬头说一句「停一下」，到白板前涂涂画画，骂一下人太蠢什么的，然后散会！\n\n16点，断断续续修改一下公众号文章，在几个「我们都是老炮儿基友别人都是傻逼群」内交换一下八卦，互相吹捧，间或发几条朋友圈表示兄弟我虽然只在方寸之室，但天下之事无所不知，你们不要小看更不要得罪我哟。\n\n17点，发一条大意如下朋友圈「关于**事情，那么多媒体发文章都没说到点上，难怪你们这些媒体都混不下去了，我要不要晚上发一篇说一下这个事情呢？」，其实文章一个下午七七八八的已经基本准备好了。文章如果是跟热点，一定是「独特视角」来写，比你们这些媒体和自媒体不知道高到那里去了；如果不是热点一般会顺便说「我写文章不喜欢跟热点，而是写那些放在时间长河中随时读起来也有价值的那种」\n\n18点，开始高效率的工作。回复邮件「怎么周报中有错别字？产品经理连周报都写不好，能做的好产品吗？」「**周报写的很好，大家看看他周报的排版」「麻烦大家写周报的时候都顶格写」，发各种别人发是鸡汤，他发是哲理的朋友圈「会议是效率的杀手」「一个说要为互联网献身的求职者，特么的居然问我邮箱地址是什么，他还是踏踏实实在大公司上班吧」……\n\n19点，发这样的朋友圈「你们这些人，说要请我吃海底捞的，全特么都是打嘴炮」「这周已经是第三次吃海底捞了，请我吃海底捞的融资都成功了，你们感受一下」\n\n20点，「海底捞的CEO就特么应该到在行约一次我，系统太特么烂了，改进一下，至少节省20%的人工，不约我，我才不告诉他，是他的大损失，本消息同时抄送微信团队」\n\n21点，对微信公众号文章进行最后的润色修改，然后推送，居然发现有错别字。作为完美主义者必须发一条说明「错别字啊，真是自己很难看出来，真想花钱雇人专门帮我修改，愿意的人发个消息给我吧，不一定给你发工资，但是保证你会有惊喜」，吹捧和互动开始了，忙一阵，打赏的鼓励，质疑的拉黑。\n\n22点，开始焦虑，好像同事们也都是和他一样，这一天就是在社交媒体上高效工作，具体的事儿没进展。然后让助理在团队群内发消息「所有同事，今晚11点请全部到公司开会，不得请假。」\n\n23点，人头攒头，「你们可能以为我疯了，深更半夜找大家来开会，但是我真的很焦虑，我们太慢了，我们这样是干不过竞争对手的，我们必须快，你们明白我的意思吧？」\n\n0点，发一首代表鉴赏逼格的歌曲到朋友圈，或许可以顺带吐槽一把「虾米就算产品再好，但我就是讨厌他们创始人的德行」，不服你来咬我啊。\n\n1点，发一条「死后自会长眠，我也没打算活到80岁」，然后开始长达8小时以上的睡眠。\n\n以上纯属虚构写作，切勿对号入座。');
INSERT INTO `archive_remarks`
VALUES (10382, '\n`根本不行. 一个DBA出身, 阿里多年低P, 代码忘光, 职场毒瘤的小丑形象跃然纸上. 一个CTO天天说自己运用影响力找外包运营产品决策反垃圾规则看周报, 真是笑死人`\n');
INSERT INTO `archive_remarks`
VALUES (10384,
        '\n`都有吧! 相对水平和绝对水平的区别. 绝对水平来说比如书和知识更容易获取. 相对水平就是阶级流动, 做人上人`\n\n真不知道有些人哪里来的自信，认为互联网一定可以弥合贫富差距。\n\n我记得冯小刚接受《时尚先生》的采访时拿大鹏举例子说，\n“这个时代再也没有怀才不遇”。\n我觉得冯小刚说得对，因为一大批人连“才”也不许有了。\n十五年前岳云鹏在小餐馆遇上了郭德纲来吃炸酱面，现在要是有个岳云鹏，穿上统一的饿了么制服，戴上安全帽，给郭德纲递上炸酱面就走，哪里会知道自己有才。\n');
INSERT INTO `archive_remarks`
VALUES (10386,
        '\n`吴世春陈华酷讯, 徐易容美丽说, `\n如果说中国有自己的YC的话，我觉得只有一个，宇宙中心五道口的小区，华清嘉园。华清嘉园五虎（你说五鼠也行），王兴、陈华、徐易容、吴世春、张一鸣，搞出来两个百亿美元级别的公司，两头独角兽还有一个不错的基金。\n\n这些人在华清嘉园的时候，没人教他们怎么创业。但是你先在走进一家志在做“中国YC”的孵化器，你可能发现工作人员大多是 90 后，还有不少实习生。5 个工作经验加起来不到 3 年的年轻人，需要服务 25 个加起来 800 岁的 CEO。\n\n这样的服务体系，让大部分孵化器除了提供零食和速溶咖啡、请一些嘉宾办分享会之外，很难列出来几条真正的服务。\n\n在国内投资机构，投后部门还是绝对的边缘，孵化器的服务更大多数是减分项，砍掉最好。这里安利一下我们所在的头条创作空间，体验非常好，很少干扰创业者。\n\n倒不是说创业者不需要帮助，创业者非常需要帮助。硅谷的投资机构 A16Z ，三分之二的人，包括合伙人都在做投后。但是想到A16Z的投后阵容和连接到的资源，我真想模仿马克·安德森和本·霍洛维茨的冷漠脸说，\n\n“我不是针对YC，我是说在座的各位都是辣鸡。”\n去年 3 月份，有一家叫 Magic 的创业公司在 YC 春季 Demo Day 上亮相，两天后它拿到红杉领投的 1200 万美金。\n\n之后的半年，中国一共出现了 40 家 Magic 模式公司。\n\nYC 一年两次的 Demo Day 中美创投圈每年必追的两场路演，热度几乎仅次于另一个分春秋两季的盛会——苹果发布会。\n\n上周，YC 2016 秋季 Demo Day 又来了。等着硅谷同行们指点方向的国内创业者，看到路演项目却傻了眼：家政 O2O 平台 Miso；C2C 技能互换平台 Sim bi；婚庆服务 Joy......\n\n这不是照抄中国的商业模式吗？当然，Flex给女生每月寄卫生棉条这个事不算照抄，中国的创业公司都是寄卫生巾，其中还有一位假装留法设计师的金链子大哥上了创业选秀节目，想拿一坨卫生巾融500万，结果因为根本特么不会说法语被俞敏洪一语戳穿。\n\n一位投资人吐槽说，\n\n“参加今年的YC Demo Day，感觉回到2014年的中关村创业大街。”\n');
INSERT INTO `archive_remarks`
VALUES (10388,
        '\n\n我对此有更大的期待，作为一个在两家门户都工作过的老编辑，我知道审查和KPI这一只有形的手，一只无形的手，会如何干扰内容创作者们生产内容的质量，我们微信上有两篇即将成为10万加的文章大约在早上8点20被删掉，最近4篇文章3篇头条不通过审核，另外一篇通过审核了但是不给推荐。\n我们不上班，写一些互联网行业的事情，都是大家身边的事情，有帝王将相才子佳人，也有泼皮破落户，拍一些视频，都是程序员设计师产品经理乱斗，互联网人喜怒哀乐的寻常事。画漫画讽刺一下BAT，创业者，投资人也是不再话下。\n\n别的领域我不知道，我就说说我知道的话联网领域。直到今天，写互联网大的合并案，写BAT，写刘强东、马化腾、雷军，能采访到第一手资料还是那么偶尔几家媒体，几个作者。\n\n从前写这个都是什么特稿作者，专栏作家。虽然文人总是相轻，但是又偶尔会互相抬轿子，好像必须有什么新闻理想，非得是进过那个南方系的黄埔军校才能写出来好看又有价值的东西。\n\n搞得之前我们这些网络编辑，都只敢给屌丝创业公司写写软文，给什么手机，笔记本写写测评，我现在不信这个邪，都是妈生妈养，都是看着豆瓣天涯知乎，看着86版西游记和还珠格格长大的，我凭什么写不好文章？\n\n所以89年的管培生当上了京东的法人代表，刘强东的初恋回到京东，别人都最追热点写三个女人一台戏，奶茶已经哭晕，我们写了《京东的当权派已经被打倒》。我们还写了两个创业圣地《华清嘉园》和《海龙大厦》，写完之后华清嘉园五虎，王兴，徐易容，还有张一鸣都关注了我们。\n\n不是我们不追热点，围绕GIF快手，X博士那篇《农村底层残酷物语》之后，我们写了两篇，一篇《天通苑的张小龙》，一篇《黑社会一届不如一届》，提供了两个不同的角度。\n\n如果只做流量的奴隶，那内容创业的黄金时代是十年前，那时候互联网上一半的流量可能都是毛片，你做一个下载器，上面有资源，做一百万用户可能就是一个星期的事儿。然后你洗白了就是迅雷，洗不白就是快播。\n\n我觉得我不能再说了，好像保安要过来把我架走了。');
INSERT INTO `archive_remarks`
VALUES (10390,
        '\n`还是有很多有意思的史料`\n\n中国的员工既要为谷歌全球业务做贡献，又要开拓本地市场，谷歌总部可能觉得你没必要做这么多本地化，你要愿意做就做吧，但是全球的业务更重要，不能受到影响。\n\nKeso：Google 学术搜索吧，屏蔽这个对我们自己的互联网没有任何好处，只能伤了自己。很多人，科学家，学生已经呼吁很久了。还有 Google Play，现在我们已经不可能离开 Android 在做一个新的移动互联网，就跟当年不可能离开微软去谈计算机。\n\n`马云精神有点问题`\n老编辑：马云，我听说是刘韧有一次签名售书，有读者提醒他应该关注一下杭州的马云。所以他后来去杭州的时候才约了马云，马云那天外婆去世，特意在家料理完之后晚上请刘韧喝茶，有这回事儿吗？\n\nKeso：有这回事儿。他后来跟我聊过，马云这个人跟他说得东西太天马行空，他没敢写。\n\n老编辑：说的什么？\n\nKeso：说1995年初，马云作为翻译跟一个高速公路项目去美国谈判，在美国被黑社会绑架，讲得非常惊心动魄、他虎口脱险。\n\n老编辑：从来没听他公开说过，只知道马云说去美国要两百万美元，见了几十家VC，没人给他。\n\nKeso：所以他说被绑架，我们没人敢信，刘韧怀疑这个人精神可能有点问题。所以到淘宝做得很大了，刘韧才开始写马云。\n\n`大厂: Apple推不动Apple Pay, 阿里推不动来往`\n或许在腾讯公司看来周鸿祎就是犯了破坏计算机信息系统罪。所以当时他们已经向深圳公安局报案了，深圳公安局派人到北京来要实施抓捕。但是要当地警方协查，就没有抓成……\n\n老编辑：哈哈，难道是因为祁（齐）厅长，有人说只要齐向东（注：360总裁，曾经是新华社最年轻的厅级干部，也是第一个辞职到互联网公司任职的厅级干部）和周鸿祎他们两口子没有闹翻，在北京你抓不到周鸿祎的。\n\nKeso：360和北京公安局的关系怎么样，这个我不清楚啊。\n\n老编辑：我也只知道人家是警民共建先进单位。\n\n不过关于马化腾在北京抓不了周鸿祎，我听说过两个版本的段子，一个说周鸿祎投了快播，还是和腾讯五虎之一的曾李青一起投的，所以定期要去深圳和王欣聊一聊。有一次马化腾准备趁周鸿祎来深圳的时候实施抓捕，结果被周鸿祎知道了，很长一段时间就不去深圳了，跟谍战剧似的。\n\n还有一个版本更离谱，说是周鸿祎看好深圳一个项目，这个项目CEO是个卧底，想和腾讯一起诱骗周鸿祎到深圳考察产品。周鸿祎都买了机票了，最后没去。\n\n老编辑：那有机会你问问马化腾是怎么回事，从那个时候开始，创业者就有了被南山区法院起诉的恐惧。\n\nKeso：上一次他来北京，他单独请我吃饭，那时候他们正在起诉珊瑚虫QQ。珊瑚虫的作者陈寿福后来还被抓起来了。我就跟马化腾说，深圳真是盛产小心眼儿的大公司。当时华为也在起诉前员工，富士康正在起诉记者先是华为起诉前员工，接着是富士康起诉记者。\n\n马化腾听了嘿嘿笑了，说还真是的。\n\n那段时间他一直在关注Facebook，觉得和QQ的产品模式可以结合，然后聊了视频业务，他还犹豫腾讯视频是不是应该切入，因为当时觉得太烧钱了。\n\n我们还谈到腾讯做了大量产品，既无意义，又在市场上树立太多敌人。那为什么还要做这么多产品。马化腾的意思说腾讯已经这么大了，上万工程师、产品经理，这么多年轻人，闲着也是闲着。何不练练手，做得成当然好，做不成也没什么损失。在微信出来之前，马化腾一直都是个挺没有安全感的人。\n\n老编辑：那是《狗日的腾讯》的时候。\n\n`名利和刘韧`\n\n老编辑：只是你在名、利上没有收到很高回报吧，曾经带过的记者里面，杨子现在是携程公关副总裁，冯大刚是36氪总裁，这么多年，过去了，你还是个独立互联网分析师。\n\nKeso：我也曾经被很多人鼓动出来要创业，要做投资。但是真的去做这些事情，发现自己不是那样的人，操不了那样的心。还是写字比较适合我。我很难受外界的影响，比如谁投资发了财，谁创业上市了。\n\n06年有一段时间，大家都在忙着炒股，前几年大家都在忙着创业，今天大家都在忙着买房。但是我一直没受什么影响，该干什么干什么。\n\n老编辑：但是你的老朋友刘韧就受到影响了。百度上市之后他觉得一定要加入一家上市公司。\n\nKeso：刘韧有他的计算成本收益的方式，他会计算自己写字这个事情能给自己带来多大的回报，如果这个回报他觉得不满意，他就不写了。\n\n老编辑：他和周鸿祎之间的恩怨，你怎么看。\n\nKeso：在周鸿祎创业早期跟CNNIC发生冲突的时候，刘韧旗帜鲜明地站在周鸿祎一边，写过不少支持他的文章，但是后来Donews又发了批评周鸿祎的文章。马李灵珊文章里说过的送音响的事情，他俩曾经关系好到常常一起去新街口淘碟，一起去良子泡脚。但是一旦牵扯到公司利益，这个就很难办了。\n\n`策源冯波老婆是邓小平外孙女`\n老编辑：周鸿祎给送音响这事儿，我还听过一个番外篇，周鸿祎给不少人都送过音响，其中一套送给了联创策源的创始人冯波，周鸿祎亲自上门安装的，装得满头大汗，结果还被女主人训斥了，“看你把屋里的地板踩的，把鞋套给我穿上”。\n\n这个女主人说出来名字你们都不一定知道，但是女主人的外公你们没有人不知道的。\n\n---\n\n老编辑：那今天的访谈我们就到此为止了。\n\n再说一遍，Keso，也欢迎你回来，你看互联网，我们看你。\n\nKeso：谢谢。');
INSERT INTO `archive_remarks`
VALUES (10392,
        '\n前几年有人做研究，发现全国的调查记者有 14% 来自湖南，位居全国第一。\n\n陌陌的 CEO 唐岩是湖南娄底人。当时他微博转发了这个数据，说“中国的媒体行业几乎没有门槛，于是自命不凡、报国无门的湖南人来了”。\n\n当时确有这个说法，南方报业大院里面的官方语言是湖南话。广东北边就挨着湖南，这些湖南小城出身、在一线城市接受教育，被新闻理想感召的记者每次过年回家都能听到来自基层的坏消息。\n\n以前在家乡的时候他们不觉得怎样，但是在风气开化、经济繁荣的大城市呆久了，就觉得岂有此理。所以这些湖南记者特别喜欢顺路回老家做调查报道，不是写拆迁就是写上访，不是写横征暴敛就是写官商勾结，搞得湖南“官不聊生”。\n\n因为湖南政府管不了广东的媒体，所以只好把状告到中央去。湖南政府官员还把为首的四位湖南籍记者邓飞、罗昌平、欧阳洪亮和龙志称为“湖南四害”。\n\n---\n\n>  老编辑上周写张黎，写完之后就命令编辑部全体学习《人间正道是沧桑》。包小姐说了一句，“有时间还不如看《欢乐颂2》”。就被老编辑说是恶意诽谤，勒令她禁止发文章两星期。\n\n我老老实实看到第三集，杨立青在黄埔军校的面试里讲解湖南，说近代革命都是“广东人闹革命，浙江人出钱，湖南人流血。”\n\n近两百年，湖南最著名的特产就是伟人。从曾国藩左宗棠到毛泽东，甚至我们都不知道是不是真实存在过的雷锋，都是湖南人。\n所以前几年社交网络上，很常见骄傲的湖南人写文章，盘点历史上湖南出过的伟人、干过的大事，标题都是这样的：《湖南人凭什么》《对不起，湖南人又让全国人民黯然失色了》。\n\n---\n\n但他讨厌别人标签化自己，在微博上抱怨过。他的微博不用真名，昵称故意换成了火星文的“为你变乖”——当年他打帝国看到这种名字的玩家一定是手起刀落的。\n\n有段时间微博流行地域梗，他说“我是湖南人，我不看电视，恰不得苦，不霸蛮，还很不耐烦”。\n\n实际上他确实挺霸蛮的。早期团队常因为某些问题讨论得不可开交，到最后往往以唐岩一句“那就听我的”解决。当年他在三元桥地下室租住的日子也确实吃过苦头，不然 25 岁生日那份 13 块的水煮肉片饭，不会成为他为数不多能记住的生日。\n\n所以这其实有点“假装不努力”的感觉。\n\n程苓峰三年前写过一篇文章，对比陌陌和豆瓣，说清华本科、留美博士的阿北像蒋介石，是犬性和狮性的统一；而野鸡大学毕业、在论坛上跟人吵架出身的唐岩，像毛泽东，是虎性和猴性的统一。\n\n唐岩故意转发了文章，说“恩来啊，我们长征滴时候，经过了程苓峰的家乡吗？”\n\n---\n\n2   \n\n上周快手融资 3.5 亿，又一次震惊了一线城市互联网从业者。快手 CEO 宿华也被推到聚光灯下，大家一看，宿华也是湖南人。\n\n这么一算，张小龙的微信、宿华的快手、唐岩的陌陌，这三个原生于移动互联网的、流量最大的社交产品，全部是湖南人做的。\n\n如果再算上去年的映客，和在国外爆发的 musical.ly，那就是五个——映客 CEO 奉佑生老家湖南永州，musical.ly CEO 阳陆育老家湖南益阳。今天创业家还发文了，把宿华、奉佑生、阳陆育并称为湖南三杰。\n人们说好的社交产品都是孤独者做出来的，因为越缺什么就越渴望什么。这句话有点黑世纪佳缘的创始人龚海燕，但实际上连她都是湖南人，老家常德桃源。\n\n---\n\n当年 Google 中国有一帮有才华的程序员喜欢聚在一块儿，折腾些有意思的东西，但宿华总是独来独往。老编辑前几天去见轻芒的王俊煜，他那段时间在 Google 和宿华是同事。俊煜说他在公司的时候几乎就没有注意过这么一个人，还是后来创业了才有机会跟宿华面聊。\n\n宿华当年在百度的那个 team，2012 年拿了一个很高的内部奖，据说每个人要发 68 万奖金。团队的人发微博，特地“@”了八、九个前同事表示感谢，唯独找不到宿华的微博，只好直接打出了名字。\n\n他对李志刚说，人类说不定只是新一代的猴子，猴子并不知道人类的这么厉害。再一想广褒的宇宙里，人类做的所有事情，似乎都那么的渺小，每每这时，宿华就会感到很悲伤。\n\n宿华老家在张家界南边儿一个几乎全村都姓宿的小村庄。这轮出来 PR 时，宿华对媒体说过，他家村子里 1998 才通电，当年去北京上学得步行两个小时、转两趟长途汽车再搭三个小时飞机。\n\n在清华他从本科读到博士，2006 年不想读了，跑到 Google 研究搜索引擎广告系统。之后的 5 年，他无论创业还是去大公司工作，做的全是搜索引擎和广告系统的事儿。几次失败，最后终于在 2013 年做了一个 One Box 卖给了阿里，然后遇到了程一笑。\n\n公开资料上，宿华经历了大概 4 次创业。但有以前在 Google 的宿华同事告诉老道消息，宿华近几年折腾过的项目其实不下 30 个。\n\n他创业时的下属在微博上回忆，当年宿华会对他的代码一行一行地检查、挑毛病，非常耐心。怕下属在众人面前挂不住脸，还专门拉着他躲到小屋里说。\n\n可以，这很“恰得苦，耐得烦，霸得蛮”。\n\n---\n\n产品做到最后，都是创始人的影子。你是一个什么样的人，就做出来什么样的东西。\n\n而你是什么地方的人，很大程度上就决定了你是什么样的人。\n\n福建人擅长做屌丝需求，从域名到应用助手，最后把新闻也做成了这个味儿。广东人搞电商是因为资源优势，但京东亏了 12 年，而聚美优品和唯品会都是连年盈利的，这大概是“袋袋平安”的生意人思维作祟。\n\n现在一级市场投资这么谨慎，搞互联网创业的，光靠清北学历、BAT 经历背书已经很难融下大笔傻钱了。\n\n所以建议创业者们，聊投资前，最好把户口迁到福建龙岩，就说你和张一鸣、王兴从小一起长大的。毕业生应聘产品经理岗位之前，最好把户口迁移到湖南，而且必须避开长沙湘潭株洲，越是小城出身，对人性的观察越深刻。\n\n这也没什么丢人的。互联网创业的好机会，错过一次，再等十年。\n\n当然，如果和千年大计相比，十年一遇的风口也就是屁大点风。\n\n当真有大志者，在 4 月 1 号那个下午，已经带着户口本、从北京一路向南开了 150 公里，抵达一个叫雄县的地方，赶在当地政府第二天冻结户口迁移之前，递交了户口迁移申请。');
INSERT INTO `archive_remarks`
VALUES (10394,
        '\n`科技一定能解决`\n\n人始终渴望跟他人互动，渴望真实的沟通与接触，目前实体娃娃还做不到这一点，它们无法配合你，无法给你回应，也无法跟你沟通，很多人买娃娃是希望回家的时候看到有人在等自己，但娃娃却只能坐在那里，始终说不出那一句：你回来了。\n张帆就一直期待着娃娃的“反应”。他是一个北京的股票交易员，36岁。他认为现实生活中的爱情有着太多的附加条件，如今已经放弃了跟真实女性组建家庭的想法，打算跟娃娃建立起精神上的沟通。\n\n对他来说，娃娃就是女性的他，而不是一个女人。他平时会为娃娃购买各种风格的服饰，帮她打扮成女警、名媛、大小姐等，也会为她熨烫衣服。在跟娃娃互相陪伴的过程中，他不会不自觉地查看娃娃的“反应”。\n\n吧友们有时也想象娃娃有了灵魂会怎么样，一些人回复说：“娃娃有了灵魂还会喜欢你吗？别想了。”\n\n谈到拥有娃娃的好处，一些啪娃党说得相当直白：“现实中一两万块钱根本追不到这么漂亮的女生，像实体娃娃这么美的女神早都给那些土豪富二代包养了，十几万都拿不下来，而且娃娃还很听话，任我摆布，娶一个娃娃回家生活又单纯又自由。”\n\n有些啪娃党还会在实体娃娃论坛里旗帜鲜明地反对拍照党，说他们给娃娃赋予了太多情怀，娃娃毕竟还是性玩具，希望厂商能多在这方面下功夫。');
INSERT INTO `archive_remarks`
VALUES (10396,
        '\n`这篇才是正宗 \"让人痛哭流涕的Uber实习\"`\n\n不久后，有同事在微信群里转发了一封被媒体称为TK（特拉维斯·卡拉尼克，Uber创始人兼CEO）内部公开信的截图，称Uber和滴滴两家公司即将合并。不过直到那个时候，依旧没有人相信合并的传言是真的，即使它已经在微博和微信朋友圈里被传播了一个早上，“之前类似的传言不时就有，然后一次次被辟谣，我们早已习惯。”王倩说，“就连这次TK的那个截图，我们也都以为是假的”。\n\n中午，所有正式员工出去开餐桌会议，王倩和其他实习生们则在办公室里继续和系统故障做战斗。间歇，几个实习生凑在一起讨论，如果两家公司真的被合并，自己该何去何从，“要不先去把实习证明开了”，“我看先把之前的发票报销才比较重要”，这些都是当天持续了一中午的玩笑。\n\n`等于说数学都不太好`\n\n“扮演过财神，cosplay过美国队长、钢铁侠，为了办活动在夜店台子上跳过舞，爬过窗台、洗过天窗，香港接过周秀娜，当过宣传模特，主持过新闻发布会，拉过十几箱货、扛过几十公斤物料，试过一整晚贴100张海报，在朋友圈里求过大家转活动的宣传，街边做过推销员。”刘师宏说，自己最忙时一周工作超过130小时，一次多种场外因素爆发，自己还要拼命工作，最后躲在阳台上哭。有时候为了做活动自己垫了很多钱，结果连饭都吃不起。“兜里揣过两千万的车钥匙，也拉过几十万的赞助，亲手包过两万个红包，大年三十还回复了一万多封投诉邮件。”\n\n“我怎么也无法忘记拍微电影度过的不疯魔不成活的那个月。作为本地人，把优步城市主题微电影献给故乡这座城市，把乘客和车主的故事献给这座城市里面一个曾经与优步同行的人们，是我九个月来最骄傲的事。”一个ID叫陈思聪的微信用户留言说。\n\n`谈婧会好. 其他人则不一定`\n\n谈婧2014年4月加入Uber中国、飞去上海去做“铁三角”中的运营经理时，只是打算在结束投资银行的工作、去MIT（麻省理工）读书前的空档里，找点事儿干干。3个月后，到了本来该动身去美国的时候，她跟她妈妈说，“我不去MIT念书了”。\n\n那时，滴滴已经有1亿用户了，但Uber在中国是个完全没有自主流量的小App，完全是从零起步。\n\n在Uber上班到第二个月，谈婧的眼睛和脸肿了起来，持续了一个月。“为什么？”我问她。“免疫力下降吧？”她说，“真是难以想象地累。”\n\nUber最开始的策略，是跟租车公司合作，做“Uber Black”豪华型专车。“你别看我现在好像挺像样，”谈婧穿着印花图案的裙子，坐在北京CBD区的一个咖啡馆里对36氪说，但是她做运营经理时，为了搞清楚司机们怎么偷懒，玩“猫鼠游戏”，要跟司机打成一片，每天要架上黑框大眼镜，穿上松松垮垮“很接地气”的衣服，跟司机混在一起。混熟了，司机们真就会跟她讲，怎么耍滑，谁在偷懒。\n\n她的另一部分日常，是“中关村刷机小妹”。周一给司机付款付一整天，周二给司机们装app，还要帮司机手机充电，准备好充电器，培训材料和协议；周三周四，给租赁公司开培训会，她一个人培训了100场。\n\n但到了晚上，她又要登上高跟鞋，去混时尚圈、大使馆、小明星的活动。当时Uber是要把自己跟LV这样的品牌挂在一起的。回来后，晚上再看邮件，做数据分析，规划管理模式——每两三个星期，就要把运营体系改一遍。到了第二天早上7点，她必需爬起来，观察早高峰的情况。\n\n“你一般工作到几点？”我问谈婧。“没有点儿。”她说。“No Life（没有生活）。”');
INSERT INTO `archive_remarks`
VALUES (10398,
        '\n`最辛辣, 看得最透. 但是, 悲观者正确, 乐观者成功`\n\n曾经有一段时间，我觉得自己收到的所有实习生、应届生简历，几乎都有一行Uber的实习经验。让我不知道该感慨Uber实习生流动性大还是感慨Uber对年轻人的吸引力大。\n\n平心而论，这些简历都不错，我面试了其中一些，后来知道他们在互联网行业还发展得不错，但是没有听说谁留在了Uber。\n\n顶峰时期Uber中国正式员工和实习生之间的比例是1比两位数，后来1比7，现在也有大约三倍的样子。所以，没留下来这很正常。\n\n在杭州、广州、天津这样的城市里，一个工作日不到100元的实习工资（如果算上周末加班可能50都不到），加上几百元打车劵（基本也就用在工作途中了）和微乎其微的转正希望，支撑这些年轻人在烈日炎炎下“Keep Clam and Uber On”。\n\nUber中国真的做对了了一些东西，但是要像一些评论说的那样，说这是一个什么品牌和公司文化的奇迹，天生骄傲什么的，那就太傲娇了。\n\n从前就有基金券商、传统媒体、4A广告公司、500强中国总部，寄托着年轻人对职场的想象。他们出于理想主义或者现世虚荣的考虑，幻想着在高档写字楼中，和名校出身、外形姣好、办事干练的同事合作，通宵加班、搞定大单、成为明星员工。\n\n在视频网站、电视台上和网络文学里，这样的烂俗情节一遍一遍翻新经久不衰。在应届生BBS和学校内网里，讨论这些机构Offer、待遇、面试问题的帖子被顶了一年又一年。\n\n所以这些机构随意开出0到100一天的实习工资，你们爱来不来，不爱来滚。来了就要7·11一周工作六天半，剩下半天在医院。\n\n现在新一茬的应届生和实习生又来了，这些机构没有从前那么cool了，cool的是互联网概念，是创业，是改变世界。\n\nUber中国很好地填补了这个空白，全球估值最高的未上市互联网公司，摇滚明星气质的创始人，充满设计感的产品和Logo。而且Uber早期的城市GM包括从MIT辍学的谈婧、哥大毕业汪莹、还有从投行出身的张严琪、宝洁出身的王晓峰等等，完美继承了前述那些机构的光环。\n\n36氪那篇10万+的被合并之后的Uber员工特写，说到里面有一个Uber中国的主管，\n\n“@all，我们在work out今天的新闻，请大家注意，第一，对外目前先不要做评论与回应；第二，下午Manager会在外开个会，之后会给大家一个回应~第三，城市的运作运营还在继续，请大家该干嘛干嘛，先manage好手上的工作。”文字的最后，似乎为了安慰人心，该负责人加了一句，“我们整个team都还在一起，just keep calm，Uber on！”\n这不就是我们80后的老朋友4A腔吗？\n\n---\n\n这就是为什么合并案之后，你能在各种微信公众号评论区，在微博，在知乎问答，看到自带干粮写天生骄傲体的Uber实习生。他们多数来自二线城市的Uber团队，杭州、广州（目测要被喷）、天津比较普遍，北上深倒是少见。\n我不惮以最坏的恶意揣测，这些城市优质的实习岗位更少，互联网参与感更稀缺，所以Uber牌的包包就显得更加可贵。\n\n\n从Uber地方微博账号粉丝数你都可以看出端倪，粉丝数最高的是杭州11万，天津接近10万，但是北京、深圳、上海三座城市粉丝数一个比一个少，都没有超过5万。\n\n2015年的时候，成都、广州、杭州三座城市已经跻身Uber全球城市订单量前五，开通不到一年的成都甚至顶掉了纽约成为了全球Uber订单量最大的城市。而今年年中Uber开会的时候，柳甄拿来为员工打气的例子变成了“郑州”。\n\n还想说的是，让你骄傲的并不是什么Uber，而是你的青春。\n\n---\n\n`没有程序员, 怪不得. 没处去, 4A外企不行了`\nUber China是不是都是marketing的人，没有搞技术的\n\n对，产品团队全在美国，中国没有任何权限动产品的丝毫毛发。\n');
INSERT INTO `archive_remarks`
VALUES (10400,
        '\n入门看到的是一个正常4室2厅的住宅房，如果不是客厅里挂着一张性感美女的KT版，完全看不出来这是一个体验店。店里一共有四个房间营业，每个房间的床上都坐着一个性感裸女（硅胶娃娃），或丰满或瘦小，每个娃娃尽显性感之态，其中最大的一个房间放着一个大黑妞的娃娃，emmm 黑皮肤、马桶腰、脸部是典型的黑人相貌，我看了看娃娃又看了看店长，我想他大概有他独特的审美观念吧。\n\n`额搞笑呢, 这些草根第一手行业经历文章, 总是带着一些没必要的个人色彩, 又土味又亲切`\n车程还有一半，他说其实做的士司机不是很多人想象的那么简单，需要有急救技能和很多面对突发状况的处理能力。我问他既然他可以做到很多可以帮助乘客的事情，为什么不在车里做个名片，这样会有很多隐藏的客户来找他，他的收入应该也会比现在高很多，毕竟他已经通过他专业的服务得到了很多乘客的认可。他对我说他做这些事情仅仅只是出于想要去这么做，并不是想通过做这件事去谋取一份利润，他只做他一个的士司机该做的事情，客人能够遇到他，他能遇到客人也只是彼此的缘分而已。说到这里车已经到了我住的小区，我下车看着的士司机缓缓起步远去，和他相比我想我的我的境界还是低了太多。\n');
INSERT INTO `archive_remarks`
VALUES (10402,
        '\n`文字水平在, 但是说法无新意`\n支付宝的团队没意识到这点就算了，还大言不惭，拿瓦特的蒸汽机、爱迪生的灯泡还有莱特兄弟的飞机自比。\n\n今天中午我和老编辑去吃黄焖鸡米饭，点完打开支付宝准备付账。不知道为什么，我点的明明是支付宝 icon，打开的 App 却总是陌陌。\n\n连续三次过后，我才发现，这个App蓝白相间、首页就是几个突兀大头像的好友推荐界面，居然真的是支付宝。\n\n');
INSERT INTO `archive_remarks`
VALUES (10404,
        '\n`Various points on the spectrum. 这篇是最亲4A的`\n`然后真的有好多地方很蠢. 但是此中有真意, 改变世界的年轻力量. Superpumped`\n\n\nP姐是我大学社团里的主席，毕业之后去了Uber，一年跑遍4个城市，她说团队的名字叫做launcher，开拓者的意思。\n\n她说有一次她被一大群恶意刷单的司机围一圈，一个司机的妈妈突然倒地，说如果不恢复，她的高血压发了会马上死。她说那个时候她心里唯一一个念头就是保护书包里的电脑，因为那里面都是公司的资料。我问你不要命了，她说这叫ownership。\n\n他说他的大学在长沙，当 Uber 长沙招实习生的时候他就去了，最开始就当着一份实习做，但上线那一天，他坐上一辆 Uber，司机是个四十五岁的大叔。司机和他谈天说地介绍这座他呆了四年的城市，但是依然有很多地点他从未去过，下车的时候司机说，以后有空出来溜两圈，就当认几个新朋友，那一刻，狮子说内向的他找到了些对于生活的热情。\n\n他说，理工科的他其实满文艺的，他觉得行走的车流正在创造这个城市。\n\nCelebrate Cities，为城市喝彩，这个公司是最让他心动的，没有之一。');
INSERT INTO `archive_remarks`
VALUES (10406, '\n`算什么呢? 多了去了. Got rich by getting lucky. 别的地方更多, 百度是较多`\n');
INSERT INTO `archive_remarks`
VALUES (10408,
        '\n`冷静流畅，是个非常正常的人`\n`一帮正常的人，做正常的事情 -> 有情有义的人, 做有意义的事. Only the paranoid survive. 不疯魔不成活.`\n\n`这些人不懂2亿美元. 如果公司价值两亿美元, 高管占千五期权, 他只有1M - 700万人民币. 他们不是你. 你也不是你一个人.`\n\n`现在王俊煜去做轻芒, 小清新内容分发这类`\n\n---\n\n看完不明白这篇文章想表达什么。\n豌豆荚走的野路子一样不少，常年996，做捆绑，推送、更新、打扰用户频率上一度是业界最高，断社保不管是不是失误更是砍到了员工头上。大部分这类行为本质都是来自业绩和收入的压力，只是各家的程度不同而已，有什么好歌颂的呢？\n\n---\n\n但是王俊煜是个正常人，有错误他会承认，在知乎上一笔一划写答案、道歉、说明原因。最近一个月，他还写了两篇文章《不是终点》、《在弯路上继续向前》，说到自己做对的和做错的，都能冷静流畅，是个非常正常的人在说话。\n\n\n汽车之家创始人李想说，他的新公司“要是一帮正常的人，做正常的事情”。因为在互联网行业，正常人是很稀缺的。你必须张牙舞爪，像个教主，或者像个上帝，永远不会犯错，又能点石成金的样子。看不正常的创始人久了，正常的创始人反而显得不正常了。\n\n网龙和豌豆荚后来一样都是一个孵化器一样的公司，但是网龙每款游戏立项之前都要求签算卦。网龙的董事长刘德建可是堪萨斯大学生物与化学专业毕业的啊！\n\n\n过去两年里，眼见着多少成功的创业者，本来很正常，突然就受到了一些人的影响，也张牙舞爪起来，也开始造金句，打鸡血，装神弄鬼地要做教主。这些人都受过良好的高等教育，但是似乎不相信一个正常的人可以把公司做好。\n\n\n豌豆荚2亿美元卖给阿里巴巴，在我眼中就证明了一个正常的人，可以把公司做到2亿美元。\n\n在《华尔街之狼》里面，小李子说，我穷过也富过，I choose rich every fucking time。\n\n\n而让我选择100遍，每一遍我都会选择成为王俊煜。\n');
INSERT INTO `archive_remarks`
VALUES (10410,
        '\n`你看, 阿里伟大的成功`\n\n---\n\n`面过几个万达电商的人, 我记得`\n\n四通一达的电商业务死得都很快，顺丰家大业大一直撑着，做完优选做嘿客，做完嘿客做海淘，做出了百亿元的大败局。万达电商5年来除了资本运作和人事变动，几乎就听不到正经的新闻。最后是这周，沃尔玛实在忍不了持续亏损的一号店，甩包给京东换了5%的股份。\n\n---\n\nJack Ma除了经常预测别人什么时候会后悔，还每年总结一下自己最后悔的事情，昨天他说\n\n“我有生以来最大的错误就是创建阿里巴巴。我没料到这会改变我的一生，我本来只是想成立一家小公司，然而它却变成了这么大的企业。把我的时间全部占用了，如果有来生，不会再做这样的生意，希望有机会去到世界上任意一个国家，在那里平静度日。我不想谈论商业，不想工作”。\n这个装逼我给满分。\n\n大概是年龄大了，马云忘了阿里巴巴刚成立的时候，他是怎么对着镜头录下了自给十八罗汉洗脑的画面，\n\n“我们要做的是中国人创办的最伟大的互联网公司”。\n坐在后排的彭蕾一边听一边偷偷翻白眼。\n\n其实马云年年要说自己后悔的。去年他最后悔的事情是让阿里巴巴上市了，\n\n“如果我能有第二次人生，我会让我的公司保持私有化。当你IPO后，人生就会变得艰难。”\n前年他后悔自己乱说话，“每次出去吹牛逼之后都很后悔”。因为他在浙商大会上说，“老干部总是会回来的”，“我可能有点反动，政府要做的事情一号召，我转身就跑”。\n\n再之前他后悔对着南华早报的记者说1989年总设计师的铁腕做得对，后悔买了雅虎中国，后悔进入美国市场。\n\n哪些是真后悔，哪些是假后悔，傻傻分不清楚。\n\n');
INSERT INTO `archive_remarks`
VALUES (10412,
        '\n`不如拿1%. 但是...最难走的路`\n\n张旭豪、康嘉、汪渊,、曹文学这些人08年4月最开始创业时，最开始是发小名片留个电话，直接送外卖的，接到订餐电话，到餐厅买盒饭后骑电瓶车配送到订餐的人手中；后来几人说服＂天天服务网＂技术成员、上海交大软件学院的叶峰，曾诺给10%股权一起创业，08年9月，叶峰正式加入开发网站；上海交大的同学在这个网站下单，饿了么的几个同学根据下单去饭店订餐后配送。后来，不幸发生一起配送的同学摔断了腿，再后来更不幸的是配送时电动自行车被偷了，再后来更不幸的是，服务器电脑也被偷了。[中途参加创业大赛，领了10万的创业基金好像是]\n\n他们创始人痛定思痛，决定不做配送这种劳务工作了，改为技术服务，让饭店在他们网站开店，学校同学下单，饭店配送，他们网站抽提成，提成额是挺恐怖的8%，一开始还是挺艰难的，后来挺过来了。但是因为人员很少，服务差强人意，印象深刻的是技术负责人和我说，网站的催一催功能是假的，仅仅起到安慰客户的作用，他们没有人力去催饭店，开发的催一催功能就是个心理安慰。\n后来，风投入场，一次性给了100万美金的风投资金，然后创始人决定做大，几个人和投资者闭门商量一下，决定开掉现在的技术负责人，然后就开掉现在的技术负责人了，承诺的10%的股权，以技术负责人达不到相应的技术能力，1分钱都没有给哦。然后他们重新招了新的技术负责人。（看看，人家创始人根本不把技术负责人当成是一起的创始人哦）。\n\n然后当时在bbs上、在校内上，撕得可厉害了，创始人亲自出来澄清哦，他们的澄清用词能把技术人员笑哭。简直在侮辱人来着，请各位技术人才欣赏一下：\n\n>CEO决定将原本承诺给予叶峰的股份，抽出绝大部分放 \n入期权池。以此来激励他（如果以后能胜任CTO的位置，还是会依据承诺还给他）以及吸引更多优秀的成员来增强技术团队的实力。可最后，叶峰拒绝了提议，选 \n择离职。很多交大同学纷纷表示，饿了么好不要脸，绝不再在上面下单了么；然而没什么卵用，技术负责人开掉了就是开掉了，股权1分没给就还是1分没给。反而结果是，饿了么闯出了交大校园，闯出了上海，辐射到了全中国。商场上比战场还恶劣，道义毫无意义，233。按现在饿了么的市值，股权即便被稀释为1%，那也是一笔天量的巨款呵。\n');
INSERT INTO `archive_remarks`
VALUES (10414,
        '\n`最后没骗到多少. 刘青云@凌空资本`\n\n在聊到“早期投资看团队”的时候，这位低调的投资人说到：“昨天碰到一个创业者，一直跟我强调是清华毕业的。我斯坦福毕业的都没说什么。现在清北的人都烂大街了。”\n\n在座的人一听，更加认可。原来是斯坦福的大神，赶紧夹菜，倒酒。然后毕恭毕敬地坐好，听他还有什么高见。\n\n接下来开始听他娓娓道来的经历：\n\n“我在斯坦福CS读的本科，期间在Apple实习，见过活的乔布斯。你们都没见过活乔布斯对吧？哈哈。在Apple的时候我跟着乔布斯一起开发iOS，接着我去了Google，在大搜索组。回国以后，我进了腾讯，跟着张小龙的广研团队一起开发微信。然后开始创业，做了个项目之后没做成，于是来做基金了，募资五千万美金，也有人民币。我们的LP是几个放高利贷的，哈哈，就算亏掉了，也就当是给我妈送的零花钱。”\n');
INSERT INTO `archive_remarks`
VALUES (10416,
        '\n`核心论点, 好公司不会被媒体写死`\n\n大新闻出来后，创业公司怒了，机构怕了。林清华本人还是天涯的前副总裁，造起舆论来也是一把好手，便说记者黑公关，要人家撤稿、道歉、消除影响。\n\n这本身是互联网创投圈的寻常桥段。\n\n但是有意思的是，事实清楚之后，仍有人批评方园婧老师多事。我看到有一位媒体出身的投资人说自己当年为了一家创业公司好，压下了一篇负面的稿子。\n\n“你写一篇文章，让一家创业公司死掉了，请问这是你们想要的结果吗？”\n好大的帽子啊！\n\n这个观点过去两年我听说了不少次，其逻辑是创业公司早期起步困难，有一些毛病瑕不掩瑜，媒体还是要以鼓励为主。\n\n但是明星衣橱是一家融到了D轮的公司，如果还需要媒体的关爱才能活下来，那也未免太高看媒体了。媒体又不是雷军，你也不是陈年啊。\n\n这种想法现在已经把有些创业者惯得不成样子，林清华接受创业家采访的时候，说到自己谎报融资额和综艺节目赞助费用，振振有词，\n\n“一般不都愿意吹吹牛嘛。吹牛不是抓眼球嘛。”\n是啊，你也只是谎报了三倍的融资额，还有人在后面加个零呢！\n\n');
INSERT INTO `archive_remarks`
VALUES (10418, '\n`垃圾公司, 拙劣水军, 一场丑剧`\n\n`水军很熟练, 但是没脑子就是了`\n');
INSERT INTO `archive_remarks`
VALUES (10420,
        '\n`那年快手还不为人知, 抖音还没有. 太快了. 投资人也看不到, 没一个人装 (而且所有人都用iPhone, 所以也不会知道Meta. 哈)`\n\n中国的社交，有三股势力。一股是金沙江创投的朱啸虎发朋友圈说的，“张小龙、唐岩都是湖南人，投社交就要投湖南的产品经理。”\n\n一股是在线秀场，六间房、9158还有今天大红大紫的映客，都是从杭州杀出来的，杭州电商孕育出来的网红基因功不可没。\n\n最后一股就是东北人，从春晚到直播平台，从YY到映客，娱乐得东北人者得天下。作为一个合格的东北人，过去在三亚要有一套房，现在在网上要有一个直播间。');
INSERT INTO `archive_remarks`
VALUES (10422, '\n`特稿不好写, 要小心. 一篇压棺材底`\n');
INSERT INTO `archive_remarks`
VALUES (10424,
        '\n`亲手转过这篇`\n\n\n我这么写的目的倒不是为了加入最近唱衰创业公司的大合唱，为大家重返大公司做注解。而是说资本寒冬、经济下行对于大公司和创业公司都是公平的。如果从长周期来看，选择并没有比努力更重要。\n\n大公司的烦恼一点也不比小公司少。\n\n所以微信刚刚活跃用户破8亿了，但是马化腾至今回忆起2010年还会感到后怕，那一年没有微信这张移动互联网船票，却有一篇《狗日的腾讯》的报道。\n\n所以阿里财报全面开花，但是马云还是要强攻社交，来往不行，就让支付宝亲自上。\n\n---\n\n`雷军关注: 小米走下坡, 小米不行了, etc`\n\n最近被媒体“黑出翔”的大公司除了百度自然就是小米了。唱衰小米的大合唱在前天达到了顶峰，因为IDC发布了数据，小米三季度的出货量1050万部，同比暴跌38%。\n\n8月16日是小米手机5周年庆，也是小米商城的年度促销火热的时候，雷军忙里抽闲到知乎上关注了以下四个问题。\n\n---\n\n当年的微博有没有活跃度下滑？\n\n有。\n\n如今的分答有没有麻烦？\n\n有。\n\n但是我如果是当年微博的员工，或者如今分答的团队，I barely give a shit。');
INSERT INTO `archive_remarks`
VALUES (10426, '\n`现在内推网终究是关了. 100Offer也卖了. 大部分创业: 并非天选之人的创业者, 混乱有起有落的过程, 不好不坏不赚不赔的结果`\n');
INSERT INTO `archive_remarks`
VALUES (10428,
        '\n这几年市场变化实在太快了，很多公司的产品你可能还没怎么用过，人家已经做到上市了，甚至创始人成了首富，比如拼多多，我相信还有很多人是没怎么用过的，另一个就是马上要上市了的快手。\n\n作为电商以及社交娱乐产品，尚且有很多人没有用过，就更不要说那些B端产品、供应链产品以及科技类产品了，所以真正的机会其实非常多，特别是那些隐藏在某些你看不见的地方，这里的看不见不是指眼睛看不见，而是你的心看不见。\n\n作为快手最早的投资人。晨兴资本（现五源资本）合伙人张野前几年多次分享过快手的成长过程和其投资逻辑，从早期整个过程来看，晨星基本上是在深度参与孵化快手，但实质上这个过程运气成分也很大。\n\n后续其它投资人不断加码，虽然对外都有讲自己的一套投资逻辑，但核心还是快手的数据增长太漂亮了，之前在DCM投了快手的胡博予有分享过这个话题，核心还是增长数据，其它逻辑都有点扯淡，或者说可以用来解释，但它不一定是原因。\n\n所以对于创业者来说，核心还是业务的增长，只要快速增长，不是逻辑的东西也变成了逻辑，而且投资人会帮你去梳理逻辑。\n\n今天再次看了一些对快手融资过程的文章，潘乱的这篇算是比较详细，这里分享一下。\n\n\n【快手融资故事：直播和社交转折点】\n\n1.快手的融资历程晨兴讲过很多。11年-12年晨兴的张斐在披量投社交项目，每个放小几百万人民币，其中有一个APP叫GIF快手，用户做GIF图片的然后发到微博，何炅用他发过动图还带火了一阵，不过到13年公司就没什么钱了。\n\n晨兴这时候做了一件特别牛逼的事情，就是把宿华拽过来。 \n\n宿华最初没有加入快手，当时是以技术顾问的身份合作的。晨兴的想法是，既然原来的路行不通了，就支持或劝勉创始人转型换方向，让快手从一个工具变成社区。然后反正公司账上也没什么钱了，就让程一笑稀释了大量的股份，创建了一个巨大无比的期权池。\n\n晨兴先给了快手一笔过桥贷款，然后才把宿华搞过来，这时宿华的股份已经是最多的了。给完过桥贷款后，晨兴占20多个点。当时张斐提的解决方案是“晨兴的股份是20%，一笑他们三个人是80%，我们双方都稀释一半股权，凑出50%股份给新团队，其中大部分是给了宿华和他的团队，并且晨兴提议让宿华做CEO，统管公司，一笑负责产品。”\n\n当时两位创始人的职业背景是，程一笑做快手之前的工作是点点网的工程师，而谷歌出来的宿华则跟张栋做过一堆搜索，还成功卖过公司。\n\n2.14年初宿华入职快手任CEO，到4、5月份快手做到了90万DAU，这时DCM的胡博予找上门了。DCM在快手快到100万DAU时投了1500万美金，这轮投后快手差不多估值8000万美金。然后DCM也稀释了一些股份到快手期权池，给到创始团队。\n\n当时DCM刚投完，红杉也去加价抢了，而且是沈南鹏亲自出马，但真正投进去是在DST之后的跟投。\n\n3.DCM后面大概就是过了5、6个月，DST就冲进来领了一轮，直接砸了1亿美金，快手的估值就已经翻了十几倍了。14年底DST的中国区负责人还是周受资，他认为头条取代了报纸，快手取代了电视台，当时是这个投资逻辑。当然说的都很宏观，实际情况是数据涨的太猛了。\n\n在这轮时其实快手怎么变现还没有那么清楚，但是规模涨的非常快。从上一轮的100万DAU涨到800-900万DAU，只用了6个月的时间，DST就给了一个8亿投前，9亿投后的估值。红杉也在这轮跟投。\n\n但DST投完以后有段时间其实很郁闷。14年底后快手DAU还继续保持高增长，但涨到2000万DAU的时候，快手停了半年没涨。那是15年中到16年初， 15年七八月份到16年2月份期间，在2000万DAU的阶段横盘了半年。\n\n在这段时间，秒拍出了个对口型产品小咖秀，微博把所有流量和明星资源都堆在上面了。小咖秀做成了那个时代的快手精选，各项数据都涨得非常快，影响了快手的增长盘。\n\n秒拍的母公司当时乘着小咖秀这股风，融了2亿美金。且秒拍小咖秀和一直播，三个产品都跟微博深度绑定，快手还是个名不见经传的草根产品，产品根基还不是特别稳。\n\n4.这时百度出现了，投了2亿美金，投后快手估值20亿美金。16年百度战略投资快手时，快手公司只有100人，没有收入，产品日活在2000万DAU左右。\n\n当时百度的战略是所有媒体类的新兴产品都会看，知道视频肯定是下一个阶段的重要的内容载体和媒介，所以有爱奇艺，搜索结果的视频等等，百度视频分拆出来也有千万级的DAU。如果快手真变成百度视频战略的一部分，那百度今天长视频有爱奇艺，短视频有快手，同时还有搜索和信息流，那今天百度将会很不一样。\n\n不过百度战略投资快手的目的是希望快手做短视频广告的，因为宿华本身就是凤巢出来的人。当时百度铺了一堆人，研究怎么给快手开广告系统，给他上广告。不过后来快手选择直播而非广告，百度也从战略投资者变成了财务投资者。\n\n在16年初，映客起量了，一时间冒出来上百家直播公司。宿华当时在纠结，到底是广告还是直播，他觉得直播这个形态跟短视频很像，内容都是人且可以融入短视频的瀑布流里面。所以当时选择战役的时候，宿华决定围绕直播来做。\n\n为什么这个事对？因为快手普惠的算法逻辑，是基于人而不是基于内容消费，广告分发也不好弄。一套产品里面，很难有两套算法，只是把广告变成内容放进去。直到今天快手广告的CPM还是上不去，原因就是CTR上不去，自己做过小流量测试，效果不好留存在跌。\n\n快手直到16年中因为做直播需要支付模块才招了第一个产品经理，却没想到自己这么适合做直播，且直播的变现效率丝毫不弱于信息流广告，同时还能让庞大的主播群体通过快手赚到钱。之后经常在快手网红主播个人页里看到签名，感谢快手平台。\n\n黎瑞刚的华人文化产业基金也在这一年参与了快手的融资。\n\n5.16年下半年快手又开始了新一轮融资。不过一开始预期不是很高，因为公司估值20亿美金了，很高了。那会也没有明确的商业化计划，还是讲用户增长的故事。\n\n16年夏天开始做融资，快手的预期是比上一轮融资20亿美金高一点，这个就算Pre-IPO轮，做完之后也不打算再继续融资了，觉得差不多也要上市了。当时宿华还去过香港和美国做路演，主要是股东觉得差不多准备好了。\n\n当时宿华给海外投资人的一个愿景是，海外有Instagram，那他希望中国有Instagram，但是这个Instagram是属于普通老百姓的，我可以看看别人的生活的，没有那些特别高大上的或者特意演点什么的，看别人的生活而已。\n\n但很多投资人当时还是没能太理解快手在做什么，因为很多人还是觉得挺奇怪，说谁会用这样产品。在16年下半年，X博士的一篇《残酷底层物语:一个视频软件的中国农村》卷起巨大波浪，没想到之前一直低调的快手第一次进入主流传播语境，是以这样巨大负面的方式。\n\n但这时快手的直播突然起量了，直播又带动了产品的用户增长。到16年12月份，快手DAU4200万，MAU1亿，人均时长40多分钟。\n\n这时腾讯出来了。快手直播是16年下半年起量的，等到腾讯closed时快手直播收入已经很高，月流水2.5亿人民币。大部分没有反应过来的财务投资者，等到腾讯确定投了这个消息传出来，都涌上来抢，不过那时候想抢都抢不回来了。\n\n17年3月快手宣布获得腾讯3.5亿美金投资，投后25亿美金，DCM跟投。那年美拍（美图）在香港上市，高峰摸到过一千亿港币，超过100亿美金。但业内人都知道，快手是远远胜过美拍的资产。\n\n这一轮close之后，快手就从乡野被拉上神坛了，开始频繁出现在公共区域。\n\n6.快手一开始用户都是自然增长，本身就没怎么烧钱，上了直播之后都是纯赚钱。到17年秋天快手DAU8000多万，接近或者超过了头条主端，人均时长也达到了60分钟。\n\n腾讯投后，很多投资人都去找快手聊我们能不能加价投一点，有喊50亿有喊80亿的。但没想到，快手的直播收入涨的跟日活一样快，到17年末快手的月流水已经超过10亿。这时腾讯和红杉两家老股东，直接说我们出180亿刀。这就相当于把其他的财务投资人都给封杀了。PE不懂社交，没办法分辨这个。\n\n这个阶段也是头条切换增长引擎，抖音爆发的时间点。\n\n最后就是去年底爆出来的，快手又融了10亿美金，投前250亿美金。18年末快手每月靠直播的收入已经超过20亿。这一年快手业务方面的相关细节我在《快手已成为世界最大直播公司》里有论述。\n\n7.回顾一下，快手发展过程中有两个转折点。\n\n第一件事是在选择商业化路径时，宿华选择了既是用户产品又是商业产品的直播。第二件事是他在抖音靠流行内容狂飙猛进情况下，更沉下心开始坚决做熟人社交。快手主端过去一年的核心是社交化，产品上线了类朋友圈/QQ空间的说说。快手从17年就开始对社交不断投入，加强关注，加强普通人和普通人的沟通，一直都在朝着这个目标去做。这两件事情应该对他用户粘性都是有巨大帮助的。\n\n如果你去宁夏调研，会发现腾讯在西北渗透很弱，很多农民都是不怎么用微信的，快手的渗透率是丝毫不弱于腾讯的。这些农牧民兄弟他们将快手作为社交工具，一人每天发超过70条消息。\n\n8.对于百度和腾讯来说，快手都从战略投资变成了财务投资。这块就不展开了，相信老板们已经在思考如何解决这个棘手问题了。');
INSERT INTO `archive_remarks`
VALUES (10430,
        '\n`哦! 天真过, 是吗`\n\n刘强东算是过了一把当老板的瘾，第一天就给全体员工一人发了一个卡西欧手表。还规定餐馆员工从此以后不再吃客人的剩饭，剩饭倒掉，员工再做新的吃。听说员工都住在稻香园的地下室，刘强东在六郎庄给他们租了两个大院子，还特意装了空调。\n\n\n\n刘强东对员工真是好啊，但是他那时候还在读大四，还要写论文，一周就只能到饭店看一两次。没有老板管，这些员工们要开心死了。\n\n\n\n餐馆工资最高的是大厨，原来喝二锅头的，后来店里有什么好酒喝什么，吃饭也越来越讲究，晚上下酒要吃驴肉、大虾，四喜丸子……\n\n\n\n而且这个大厨和前台收银的妹子谈起了恋爱，串通起来把好的食材报成腐烂的食材贪掉，采购也把食材的价格谎报了一倍，这让刘强东的餐馆倒闭不说，还背上了20万的债务。\n\n\n\n刘强东回忆起这段往事的时候说，说自己再也不相信人性，相信管理。\n\n---\n\n`职业经理人不行, 熟悉的戏码`\n\n刘强东常说创始人是一个公司的瓶颈，这么大的家业，他觉得自己有点管不了，决定去美国充充电。2013年春节在哈佛商学院，春季学期在哥伦比亚大学，也就是在这儿，他遇到了奶茶。\n\n\n\n2013年618前夕，暌违四个月的刘强东终于回国。旁听CXO们对所有VP的考评，外来的“常委”对打天下的“中央委员”很不客气，刘强东好几次想站起来替老部下反驳，话都到了嘴边，逼着自己喝了一口水坐好，一直等到会议结束才出来发言，\n\n\n\n“这个会开得很好”。\n\n\n\n那段时间是刘强东和这帮职业经理人的蜜月期，他对外界一遍一遍强调自己会放权，必须放权。还曾经对手下说过“几千万的单子就不用找我签字了”，一时传为佳话。\n\n\n\n然而好景不长。\n\n\n\n2012年年底，时任罗辑思维联合创始人，当时的京东副总裁吴声爆出的“食京链”丑闻，把京东大笔营销开支交给自己关联的公司。\n\n\n\n从那之后，刘强东开始非常忌讳职业经理人大手大脚花钱。2013年的618前夕，京东副总裁、前宝洁高管程峻怡，在央视广告招标会上豪掷2.3亿之后，也被刘强东要求转岗。\n\n\n毕竟阿里巴巴殷鉴不远。2007年阿里巴巴B2B上市前后吸纳了大量的职业经理人改善公司人才结构，18罗汉为代表的元老纷纷让路。但是三年左右的时间之后，元老又逐渐完成逆袭，职业经理人逐渐隐退。\n\n\n\n但是在京东外部，大家还后知后觉。直到8月2日爆出大新闻，89年的央财姑娘张雱“坐着直升机飞上来”，于2016年7月1日成为47家京东关联公司的法人代表和自然人股东。\n\n---\n\n`改用管培, 重用团中央`\n\n\n2013年去美国游学之前，刘强东全程参与了第六期京东管培生的招募和培训。这也是最后一届“老刘亲自带”的京东管培生。在哥伦比亚大学遇到奶茶之后，刘强东就没怎么管过管培生了。\n\n\n\n刘强东说管培生是京东自己最满意的部分。2007年开始，管培生计划每届招收30到50人不等，进来京东先军训一个月，然后在所有业务轮岗半年，最后双向选择分配补充到全国各地各部门。\n\n\n\n管培生进来京东就可以直接越过层层领导向刘强东本人直接汇报。以五年为期，干到副总裁和总监的比比皆是。堪称是老刘的团中央，京东干部的快车道。\n\n\n\n刘强东的前女友“西红柿”庄佳是2007年的“黄埔一期”，跟刘强东一起去纳斯达克敲钟投资者关系总监李瑞玉是“黄埔三期”，余睿是“黄埔二期”，张雱则是“黄埔五期”。\n\n\n\n除了土管培还有洋管培，2013年奶茶伴游哥伦比亚大学之后，刘强东见识了外面的世界，张罗起了国际管培生项目。花了10万US Dollar，招了6个海外名校的MBA。\n\n\n\n虽然此时土管培已经没有当年的殊荣，但是洋管培还是被老刘高看一眼，单独拉了一个7人的微信群，随时上达天听。这个群里仅仅两年就出了个京东金融白条总监洪洁，还有京东全球购总监邱煌。\n\n连管培生面临的批评，也和最近巡视组对团中央的批评如出一辙，“机关化、贵族化、娱乐化”。\n\n\n\n曾经出现过京东全员加班备战618，管培生却在楼下大张旗鼓排练文艺表演。还有明星管培生把部门潜规则捅到老刘那里，让整个部门鸡飞狗跳，业务推倒重来。\n\n\n\n但是刘强东没有改革“团中央”的本钱，当权派留下的空白需要有后备力量来填补。\n\n---\n\n`前女友归来`\n\n但是防不胜防的是，跟随自己打天下的兄弟中，并没有出现独当一面的人物。相比于阿里十八罗汉、腾讯五虎，刘强东不但不但没有自己的蔡崇信，黎万强，连陆兆禧、李明远也没有。\n\n\n\n最懂刘强东的人也一直不在京东内部。如果不算李国庆的话，最懂刘强东的应该是今日资本的徐新。\n\n说到这里有一个梗，刘强东初恋女友龚晓京的百度百科，很长一段时间都用的是徐新的头像做配图，还被很多媒体以讹传讹，真是完全不考虑珍爱网创始人李松的感受啊。\n\n\n\n所以，刘强东的初恋龚晓京突然返回京东担任公共事务战略顾问，可以解读为京东内部终于出现了一个刘强东可以完全信任的人。\n\n\n\n当媒体铺天盖地说，三个女人一台戏，奶茶到底什么感受的时候，大概没有意识到龚小京虽然根本不懂京东的业务，但是她作为国家机关事务管理局正处级干部，管着中直机关的房产，和驻京各部委周旋18年。世事洞明、人情练达未必逊于那些外企高管和创业者出身的副总裁。');
INSERT INTO `archive_remarks`
VALUES (10432,
        '\n`网络三国, 好像听说过, 还真没玩过. 幻灵游侠真玩过`\n\n　　林海啸少年天才，1997年，16岁的林海啸从浙江大学计算机系少年班毕业。他和史玉柱还是校友和系友。毕业后，林海啸加入浙大灵峰科技开发有限公司，任网络部副经理。1998年7月，组建鸿志网络科技开发有限公司。林海啸被称做”中国网游外挂第一人”。这缘于他曾制作了网游《网络三国》的外挂”网三工作狂”。《网络三国》是中国大地上最早风靡的网络游戏之一，始于2000年左右。据说这款外挂为他挣到了几百万元。他还尝试过制作自己的网络游戏《世纪录》。在游戏圈子内，林海啸被称为业内最顶尖的三个人之一。\n');
INSERT INTO `archive_remarks`
VALUES (10434, '\n`王者荣耀的前世今生`\n');
INSERT INTO `archive_remarks`
VALUES (10436, '\n`当时我热血沸腾`\n');
INSERT INTO `archive_remarks`
VALUES (10438,
        '\n`周枫庄莉神仙眷侣`\n\n\n如果要做一个神仙眷侣的排行，有道 CEO 加前猎豹 VP、蔚来汽车 CTO 的组合，至少从“行政级别”上来看，要排在霍矩和西乔前面。\n\n在这对神仙眷侣面前，计算机系有两个人是自卑的，一个是睡在周枫下铺的许朝军，一个是隔壁105的王小川。\n\n---\n\n从小地方考到清华北大的学霸，很容易怀疑人生。李彦宏如此，许朝军如此，王小川也是如此。\n\n\n\n在成都七中砍瓜切菜的奥赛冠军，一考就是全班倒数第四，心理落差可想而知。\n\n\n\n那时候，王小川和许朝军举头三尺，除了可以看到周枫和庄莉这一对神仙眷侣，还有一个颜值和成绩一样高的小伙子周杰，一个成绩和颜值一样高的姑娘胡宁。\n\n\n\n所以千万别信王小川说什么清华计算机突然五年改成了四年，自己梦寐以求普林斯顿，但是申请来不及了。五年改四年又不是就你一个，人家周杰还不是去耶鲁跟美国总统们做校友了，胡宁还不是申到了计算机第一牛校 CMU 。\n\n---\n\n2005年，胡宁和周杰在 Google 重逢了。\n\n\n\n直到 2005、06 年的时候，清华计算机 96 级同学们的命运，周枫、庄莉、王小川、周杰、胡宁、胡琛、许朝军。他们之间还没有什么差异，在 Google，在搜狐，或者自己搞个小公司创业，大家都是靠本事吃饭的，每个人都有光明的前途。\n\n\n\n也是在 2005 年之前，清华计算机96级的同学们，还普遍存在一种错觉，就是百度没有那么厉害，有资本扶我起来试试我应该也能行。\n\n---\n\n`我的天, 许朝军教人德扑被抓`\n\n但是对于清华大学计算机系的小伙子们来说，确实是 the end of the beginning 到来了。大家靠本事吃饭的第一阶段就这么过去了。\n\n\n\n那个时候千橡的技术总监是许朝军，王兴卖掉人人之后原班人马又做了饭否。加上阿北的豆瓣，程杭的虎扑。整个 Web 2.0的几乎都掌握在清华大学毕业生手里。\n\n\n\n再加上在网易的周枫、搜狐的龚宇，搜狗的王小川，把持 Google 中国的周杰。那时候如果让你畅想十年后的中国互联网，你可能会觉得清华至少三分天下有其二吧。\n\n\n\n但是真的十年过去后，人人和饭否都是半死不活的状态，豆瓣和虎扑都被称作是典型的慢公司，盈利永远靠挤，上市永远在明年。\n\n\n\n许朝军说，Web 2.0 是我的信仰，做社交是我的宿命。这不是他一个人的宿命，也是他的同学们的宿命，清华96级的同学们大多数都游戏、搜索、社交，三种中国互联网早期最主要的模式中打转。\n\n\n\n胡宁和周杰，从 Google 离职之后分别做了聚胜万合和浪淘金，都去做了精准营销，显然是把在 Google 的经验平行迁移到创业了。周枫一直坚守五道口做搜索的老四，直到 2013 年丁磊拿主意，把有道搜索交给了 360。\n\n\n\n胡宁后来被收购去了 360，庄莉去了猎豹。王小川为了自己的一亩三分地，在搜狐、阿里、腾讯、360之间艰难生存，今年终于要上市了。\n\n---\n\n`盛大系创业者`\n\n陈天桥由于身体原因在日本休息下来，只能以视频的方式现身，一头白发的前首富充满愧疚地对“盛斗士”们说，盛大系创业者发展没有BAT好，原因是盛大已经没有业务了，不能给大家流量上支持。\n\n\n\n许朝军如果在场听到，一定最有感慨。搜狐、人人网、盛大，许朝军的职业履历好像很光鲜。但是等到他创业的时候，几乎每一个前东家都义无反顾地走下坡路，他又抱不住BAT的大腿，全凭单打独斗，可不就败下阵来。\n\n\n\n甚至他和前老板还有一次严重的冲突。陈一舟指责许朝军的老婆，人人网的副总裁杨慕涵为许朝军的社交项目提供校园推广资源，搞利益输送。杨慕涵2013年从人人网离职的时候，来接手她工作的正是胡琛，和许朝军一个宿舍的，初中就开始用 Apple II 编程的胡琛。\n\n\n\n就在胡琛重返人人网的时候，许朝军曾经的小粉丝程一笑，放弃了图片、声音，all in视频，付出的是日活从几十万跌到了一万的代价。但是好在他遇到了宿华，已经做过30多个失败产品的前 Google 中国员工拒绝了豌豆荚的王俊煜，和程一笑的草台班子合并，一起搬到了华清嘉园，然后有了今天的快手。\n\n\n\n宿华是清华大学软件工程学院的，博士阶段辍学。\n\n\n\n如果当年王兴继续做社交，而许朝军去做了交易，这个世界会发生什么？\n\n\n\n许朝军绝对是应该做交易的，因为陈小红和雷军的仙桃同乡。雷军自不必说，卓越亚马逊套现之后，做天使投资人也是取之于电商，用之于电商。陈小红何许人也，老虎基金的中国区总经理，阿里巴巴之后的垂直电商被她投了一个遍，手里同时掌握着京东、当当、凡客，后来清空当当股票去收购阿里巴巴的老股，就不知道是不是她的决策了。\n\n\n\n陈小红和雷军合作了两个重大案子，一个是凡客，一个是口袋购物。如果许朝军做了电商，这个仙桃老乡可能是第三个。\n\n\n\n可能有人会阴阳怪气地说，凡客和口袋购物也没有很好嘛。但是想想跟着雷军的，再怎么不济，像陈年惨成那样还是要拉一把的，不至于由着许朝军去开什么德州扑克国际学校。\n\n---\n`加起来没有李彦宏大`\n\n“钱来得快去得也快”，王雷雷后来总结 Tom 网太过于依赖 SP 业务的教训。2008 年空中网的移动化不顺利，被 UC 和 3G 门户打得找不着北，他离开 Tom 接替周云帆担任空中网 CEO，很快就遇到了2009年中国移动反腐风暴，一度被要求“协助调查”销声匿迹了很多年。再复出的时候，就把空中网彻底变成了运营军事类游戏的网站。\n\n\n\n现在王雷雷守着空中网的一亩三分地也很开心，他和自己的用户能打成一片，这几年在军事类游戏的玩家中也成了一个不大不小的 IP。最近《战狼2》热播，空中网是合作方，军事题材的爆红让王雷雷觉得未来有希望了。\n\n\n\n而空中网的前任 CEO 周云帆，从中关村管委会副主任做到昌平副区长，中关村发展集团总经理，最终成了科技部的厅官。\n\n\n\n现在看到周云帆作为领导干部的标准照片，很难把他和当年那个在三才堂写字楼里熬夜撸代码的海归联系在一起。当年电子工程系一个班 35 个人，26 个人出国留学，只有他一个人回国创业。弃官从商下海的我们见的多了，创业成功后再失利，然后还能弃商从政，这个就很罕见了。\n\n\n\n或许是因为周云帆也有一个厉害的爷爷。不过更出名的是他的大伯，叫周小川。\n\n\n\n启迪孵化的董事长张金生讲的那句话，清华大学创业的，十个中有八个能成功。其实还应该由下半句，就是加一起没有北大的李彦宏大。\n\n\n\n这个事情困扰过清华大学的一些创业者，比如张朝阳就是因为被李彦宏们越甩越远，好几次陷入抑郁，只能靠挑战自己的身体寻找活着的意义，登过山、跑过马拉松，最近53岁的老网红又横渡了兴城海峡。\n\n\n\n过去有过极大成功的人，如果进入了瓶颈就会陷入自我怀疑。王小川赌气就不上市就不结婚，许朝军烦恼就靠扑克证明自己。杨慕涵说过，许朝军隐藏着一颗他自己也不愿承认胜负心。\n\n---\n\n\n电子工程系的牛逼之处，不在于出了多少院士 IEEE Fellow，多少领导人，多少互联网创业者，而在于出了一群唱民谣的。这个传统从高晓松开始的。除了姚勇是电机系的之外，水木年华前后几任成员，李健、卢庚戌、缪杰，也都是电子工程系的；跟高晓松一届的郁冬也是。所以他们不仅能看到眼前的互联网，还有诗和远方。\n\n\n许朝军绷了这么多年，能刹刹车也是好事。如果这次被判刑，他可能要面临 3 年以上牢狱之灾。希望几年后出来之后，他能像高晓松一样，说一句“坐牢这段是我一生中最快乐的时光”，放下好胜心，放下社交没做成、创业不成功的包袱，放下不如 96 级计算机系同学的阴影。\n\n\n\n清华大学计算机系的 9 号楼 2015 年就拆了，高考状元和竞赛冠军的首选，也早就从计算机系变成了姚班。这一页早该翻篇了。\n\n---\n\n「中年的朋友们，今天来相会，\n端起保温杯，枸杞水暖胃\n忆情怀，抿咖啡，估值惹人醉，\n欢歌笑语绕着彩云飞。\n啊，亲爱的朋友们，\n美妙的春光属于谁？\n属于我，属于你，\n属于我们八十年代老一辈！」\n');
INSERT INTO `archive_remarks`
VALUES (10440,
        '\n`创始人的道德没有影响. 如果做大, 殊途同归`\n\n这从前不怪李彦宏，未来也不能怪张一鸣。皇皇北京，天子脚下，风水轮流转，今年到谁家。但是销售永远是那些销售，小编永远是那些小编，媒体老湿永远是那些媒体老湿，当然关部门也永远是有关部门。\n\n \n\n就在今天，张一鸣接受小晚采访这篇文章，让他说出了我不同意环 X 时报价值观这些大实话的报道，在微信上和财经的网站上都消失了。\n\n \n\n这就是为什么没有人能在北京成立一家拥有独特价值观的公司，想靠管培生打倒当权派的刘强东也不行。深圳有腾讯、华为，杭州有阿里巴巴，他们都花了十几年时间在远离北京的地方培养素人。\n\n \n\n而北京就只有“百度成功之道”，这里最成功的互联网公司会越来越像百度。\n\n \n\n除了纳税和雾霾，这大概是这座城市的第三种逃不过。\n');
INSERT INTO `archive_remarks`
VALUES (10442,
        '\n`二代, 太子问题. 天下岂有四十年之太子乎? 互联网公司, 接班难. 又不能跟传统行业似的, 交给儿子`\n\n2001年俞永福刚进联想，正好是杨元庆接班柳传志。他在联想没见过柳传志，所以有些报道说俞永福是联想出身，因为得柳传志真传而深得马云欣赏，这个就有点太扯了。\n\n俞永福27岁成为联想集团最年轻的副总裁。杨元庆当年也是27岁当上部门总经理，然后走上了接班之路。\n\n\n中关村第一才女梁宁曾经写文章说，杨元庆29岁就当联想火车头，一口气拉了23年，是因为柳传志的知遇之恩。\n\n\n杨元庆隔两三年就被批评差柳传志太远，年年工资被拿出来说事，拉这个火车头一辈子，无怨无悔。\n\n她还写了和杨元庆一时瑜亮的郭为。后者在联想负责其他品牌的代理，当时是联想最挣钱的业务。为了给杨元庆让道，郭为31岁盛年被派到大亚湾盖房子，无怨无悔，一直帮柳传志老爷子守着神州数码这块鸡肋业务，也是因为知遇之恩。\n\n\n像杨元庆和郭为这样的人，现在互联网圈几乎没有。年年有个风口，谁能耐住寂寞给你拉20年火车。\n\n比如俞永福，被雷军一忽悠，就跑到UC去当CEO。一直被认为雷军系人马，去年雷军46岁生日，俞永福还是座上宾。\n\n\n俞永福在北京互联网圈看了快十年的神仙打架，总觉得自己是那个变量X，360、百度、腾讯，自己倒向谁谁就会赢。看了一圈，几次谈判都只差一口气了，俞永福觉得跟谁都不靠谱，最后还是把自己卖给了杭州来的马云。\n\n\n但是进了阿里，俞永福还是反复说，“谁也不是我老板，我是合伙人”。\n\n\n这样的人，真的是太子吗？\n\n\n2\n\n\n但是俞永福就这么在阿里巴巴一路蹿升，拿下了高德地图，拿下了阿里妈妈，晋升合伙人，然后成为文娱小组小组长，这个星期阿里影业又宣布任命俞永福董事长、CEO一肩担。\n\n\n现在相当于阿里巴巴除了电商业务以外的所有版图都在俞永福这个外来户手里。马云是给了一切能给的，收购UC的时候给俞永福的大多数是股票而非现金。相当于俞永福是货真价实的合伙人，真的姓马。\n\n\n移动事业群在北京的成立大会，马云亲自过来背书，二号首长彭蕾甚至说，允许公司有自己独特的文化，和阿里巴巴不一样，只要使命是一致的。\n\n\n这在阿里巴巴的历史上绝无仅有，相当于放弃了阿里巴巴版本的“党指挥枪”：价值观高于一切，HR和公关的支部建在连上。\n\n\n如此殊荣，有些人觉得不可思议，俞永福何德何能，只不过证明自己能做好一个浏览器。京东收购的最多给个副总裁，百度收购的可以进董事会不能进estaff，腾讯收购的连门都不让进，管好你自己的公司就好。\n\n---\n\n\nBAT、360京东、四大门户，现在大部分还是霸道总裁当道。但是雷军、周鸿祎、马云、马化腾，李彦宏，都是接近或者已经五张的人了。找接班人的事情都会在未来几年提上日程。\n\n\n\n华人文化圈里面，企业家的二代问题非常突出。马云去台湾，发现都是六七八十岁的人，郭台铭、施崇棠、张仲谋，在谈创新。\n\n\n\n今天国际新闻的第一版应该都有这张照片，韩国八大财团掌门人参加国会听证会。三十年前，韩国总统全斗焕面临弹劾的时候，是这八个人的爹来参加的听证会。\n\n如果说2025年后的创业者还要面临“生，死，BAT”的选择，你可能不信。互联网人总是觉得自己例外，别的行业可以暮气沉沉，自己的行业三五年就一定有一次颠覆。\n\n\n\n实际上BAT的统治已经超过十年了。移动互联网并没有颠覆他们，程维在滴滴打车只不过占了两三个点的股份，最大的外部股东是谁？\n\n---\n\n3\n\n\n\n重要的事情只说一遍，历史上几乎所有有计划的接班都被打乱了。\n\n\n\n1987年总设计师觉得已经可以放下担子了，没想到接班人两年后觉得自己老了，无所谓了。幸亏一位长者念了两首诗，让历史的进程和个人的奋斗完美结合在一起。但是总设计师依然要92年亲自南巡，发表讲话，才有了我们今天的幸福生活。\n\n\n\n马云宣布“退休”，并推出陆兆禧当CEO的时候，陆兆禧正是年富力强的44岁，而且在马云安排下在集团所有BU轮岗一遍。“扶上马，送一程”也不过如此。谁知道三年不到就退下来了，而且是到站下车，裸退，连合伙人的身份都一齐退掉了。\n\n\n\n当然这体现了陆兆禧同志的高风亮节。\n\n\n\n阿里巴巴官方的说法是60后为70后让道，这就是典型的春秋笔法了。陆兆禧是69年的，张勇是72年的，中间不过差了三年。\n\n\n\n陆兆禧的离去，有的人说无线战略上有了偏差，和马云出现了分歧。也有的人说，陆兆禧自己确实也没有这个冲锋陷阵的动力了。\n\n\n\n还是那句话，我老了，无所谓了。\n\n\n\n这种心态在阿里元老那里还是比较普遍的。不要说18罗汉，所有2010年之前入职的阿里巴巴员工几乎都是一座小的地下钱庄了。\n\n\n\n\n不少人整天倒腾着美元、黄金，加州的房子，给基金做LP，有的人为了避税改了国籍。改了国籍的人是一定不能接班的，马云曾经就被质疑移民，最后出来辟谣自己是地地道道杭州佬，永远是中国人。\n\n\n\n阿里巴巴已经是“副部级”的互联网公司，未来七个子公司一起发力，成了关乎国计民生的“正部级单位”。CEO如果是一个外国人，肯定不符合裸官不得提拔，不得担任重要领导的规定。\n\n\n\n这也是拿了股票不要现金的俞永福能上位的客观条件。\n\n\n\n不过储君的最大敌人永远还是日渐老去的皇帝。\n\n---\n\n说个无关的事，1975年11月，毛主席提议政治局通过一个肯定“文革”的决议，由总设计师来起草。\n\n总设计师回答说，“我是桃花源中人，不知有汉，无论魏晋”。\n\n\n\n然后，已经代表中国在联合国大会上讲话，已经代替周总理主持国务院工作的总设计师，第三次被解除党内外一切职务。\n\n');
INSERT INTO `archive_remarks`
VALUES (10444,
        '\n1983年，深圳的打工男女刚穿上喇叭裤，就要在厂门口被政府派下来的工作组剪掉。北京复兴路的大院里刚传出港台流行音乐，将校呢、短裙、墨镜、酒精违和地交错在一起，但是西安的三位组织舞会的青年却以“流氓罪”罪名被最高法院核准死刑。\n\n\n但是也是在1983年，劳动人事部、国家经济委员会联合下发《关于企业职工要求“停薪留职”问题的通知》，允许国企员工离职下海创业，两年停薪留职期间，不升迁，不享受各种福利，但是保留原有职级和基本劳动保险。\n\n“中国人既温敦又酷烈，有不可思议的耐性，能与任何祸福作无尽之周旋。在心上，不在话下，十年如此，百年不过是十个十年”。\n\n\n一代核心也不过就是十年，就算二十年也就是二十年，马云说阿里巴巴要活102年的。');
INSERT INTO `archive_remarks`
VALUES (10446,
        '\n`马云老爹和马云早年的一些事. 其实有点牵强, 但是也是挺有意义的信息`\n\n马云喜欢金庸武侠，喜欢耍宝，瘦小的身段看起来像块武丑的料。最近他唱红灯记选段《浑身是胆雄赳赳》，一边数板的好像就是许家印，从流出的视频来看，也就是普通票友的水平。\n\n马云真是被阿里巴巴给耽误了。以马老先生家学渊源，不要说西皮二黄不该唱得颤颤悠悠，拿出杭州评话“手眼身法步”一成的绝活，也能吧李玉和的形象撑起来。\n\n难怪他这辈子最后悔的事情就是创办里阿里巴巴。\n\n---\n\n\n除了为党的建设写过几本专著外，李瑞环同志还写过三本书：《李瑞环谈京剧艺术》、《李瑞环改编剧本集》，以及《木工简易计算法》。\n\n\n如此看来，台湾有个白先勇改《牡丹亭》，我们大陆也有个李瑞环改《西厢记》。\n\n不过要论京剧三百年谁贡献最大，那我们还要说一句，谁能比老佛爷更懂戏？\n\n王卿瑶说老佛爷听戏很精，有时挑眼都挑得很服人。老佛爷看完杨小楼的《铁笼山》，发话说杨小楼的扮相、个头、嗓子都还可以，就是工架没有金福好看。金福指的是谭鑫培。\n\n---\n\n中国自古以来就有君子六艺的说法，因此在斗争中用文艺作品隐晦地表达立场，一向是领袖们的必修课。不然上来就摊牌，“你瞅啥”，“瞅你咋滴”，那不成大砍省的小混混了。\n\n上有所好，下必甚焉，领袖们如此，下面的厅局级干部也有样学样。你看最近热播的《人民的名义》里面，侯亮平两赴山水庄园，每一次都要和祁厅长、高小琴唱沙家浜选段《智斗》，“他们到底是姓蒋还是姓汪”这句唱来唱去，还不是在问你侯亮平到底是不是我们汉大帮。\n\n\n所以作为一个公司的领导者，不管事业做得多大，需要有匹配的文艺修养。王健林霸麦，张小龙听摇滚，周鸿祎演三体，刘强东办文学奖。连最近流年不利的贾跃亭，唱起一首《野子》，“怎么大风越狠,你心越荡”，很是像模像样。\n\n新一代的王兴信仰佛教，面相看来也是个有慧根的人，所以老在饭否上发一些“成住坏空”，“白手起家和白手套起家”之类充满禅机的东西。\n\n相比较而言，在动员会上让大家唱《乌兰巴托的夜》，程维就显得很阿里系，太接地气。而张一鸣因为从来不显露自己的文艺造诣，在外界看来就像是一尊冷酷的流量机器，随时会走上李彦宏和百度的老路。\n\n马云目前虽然在文艺圈很多朋友，但是无论给王菲演唱会捧场，还是帮小燕子赵薇炒股，总是花钱图一热闹的样子，像个外地进京的暴发户。\n\n志在打造百年老店的阿里巴巴，需要有一个在文艺上有所建树的马云，从票友的水平中突围出来，以显示马云超凡脱俗的领袖身份。\n\n不然在湖畔大学开课了一届又一届，讲得东西还是那么老一套，“忆苦、思甜、拐着弯儿骂京东”，实在太对不起马来法老先生了。');
INSERT INTO `archive_remarks`
VALUES (10448,
        '\n`不一定有了! 就看Meta了. 比特大陆?`\n\n`还有一个点, 就是政治话语随着经济逆势的逆转. 果然经济基础决定上层建筑. 中国这么有钱, 那么就是赢了, 一切就对. 传销赚钱了, 传销就对 (当然不是). 但是最终也会是.`\n\n2014 年的时候我在老东家36氪工作。年底会办大会的时候，我们做了个社交领域的分论坛，把 NICE 的周首、same 的许旭恒和 Blink 的施凯文三个新晋社交领域创业者邀请了过来。\n\n\n\n那个分论坛应该是整个大会里最受关注的一个。当时上半年智能硬件的热潮已经过去，下半年最热闹的赛道是社交。虽然微信已经统治了 IM，但眼看着陌陌马上要上市，人们觉得社交似乎还有机会。\n\n\n\n三位创始人都是 85 后，年轻、睿智。而且在那前后，NICE 对外宣布了一年内的第三轮融资， 3600 万美金；Blink 上线不到两个月估值过亿美金；比较低调的 same 也拿到腾讯领投的里两千万美金 B 轮。\n\n\n\n当时我坐在台下，心想什么时候也能成为这样的青年才俊。\n\n\n\n几年后的今天，再也没有人聊社交了。流量贵成狗，搞到了也兜不住，赚钱还死难死难的。三位创业明星很快被大众遗忘掉了。\n\n\n李想说过，像他那样辍学创业、年少成名已经不太可能复制了，更合适的路径是在一个成熟公司里做到中高层，带着经验出来做自己想做的事情。今天回头看过去这些年最成功的新一代创业者，头条的张一鸣，滴滴的程维，确实都是这个路径，而不是年少成名型选手。\n\n\n\n然而，被动或主动，每一个被裹挟在这样的浪潮里的年轻人，都很难完全不迷失。\n\n\n前几天程苓峰写了一篇《一个记者对一个亡者的交代》。程苓峰当年在“中企”，造概念、攒人头、贴标签，把茅侃侃、李想、高燃和戴志康捧成了 80 后四大创业才子；现在悲剧发生了，他也在反思，当年满心的豪迈，今天变成满腹的惶恐。\n\n---\n\n不是 80 后着急。80 后成长的这三十年里，是最沸腾的三十年：80 年代下海潮，邓爷爷 92 南巡之后又是一波高速增长，2000 年前后互联网创业，2008 之后的疯狂楼市，2015 年又是双创热潮又是 A 股神话。\n\n\n\n隔三差五的造福浪潮让人应接不暇。错过了下海不能错过股市，错过了股市不能错过楼市，错过了楼市不能错过乐视。都错过了，就听徐老师一句，all in 区块链。\n\n`茅侃侃（1983年~2018年1月25日），男，IT首席架构师兼首席运营官，出生于北京市。小学五年级开始玩电脑，14岁开始在《大众软件》等杂志发表数篇文章，并自行设计开发软件。初中文凭，2004年正式创业，MaJoy总裁。2014年担任GTV（游戏竞技频道）的副总裁，负责视频等业务。\n2018年1月25日，茅侃侃自杀，终年35岁。 [1]`\n\n而如果这个社会定义的“价值”还是那么单一，如果我们把那条独木桥视作千军万马唯一的出路，那我们无非是从一种显性的、压抑的集体主义，转移到另一种隐形的、狂躁的集体主义。放在我们这一代面前的所谓选择就是假选择。\n\n');
INSERT INTO `archive_remarks`
VALUES (10450,
        '\n`嗨氏的事. 太多这些不小心被吹到高位的人. 所以也说\"微博是照妖镜\". 联想到昨天看孙杨, 也是`\n\n\n嗨氏从 2011 年开始在爱拍上发游戏视频，起初只是为了证明自己没有开挂，没想到播放量超预期，很快冲到了六位数。\n\n\n\n那些视频在今天看来很无聊。嗨氏在视频里反复念着花钱买来的皮肤和武器的名字，经常爆粗口，更多的时候根本听不清他在说什么。他言语中离不开“帮会”、“兄弟”这些话题，给人一种小孩子装社会人的既视感。\n\n\n\n但在当时，会做视频，在公会里已经算是“文化人”了。嗨氏很快变成了“嗨哥”，有了自己的粉丝群。如果想要进入他的《我的世界》服务器跟他一起玩游戏，每个月需要交 300 块钱会费。\n\n\n\n这时候他才 13 岁。\n\n\n\n嗨氏从一开始就是勤奋的。他播过很多游戏，从 QQ 炫舞到英雄联盟，从使命召唤到我的世界，人气也水涨船高。2014 年，他在直播里说家里人闹离婚，经常吵到第二天早晨，但他却没有停止更新。\n\n\n\n不过真正让他成为今天的“嗨氏”的，还是《王者荣耀》。\n\n\n\n15 年，嗨氏去了 WE 青训营，尝试当一名英雄联盟的职业选手，结果根本没获得出场机会。他退而求次，决定继续当主播。按他的说法，当时他面临一个关键的选择，从三款热门游戏里选一个作为主要赛道：英雄联盟、全民超神，和王者荣耀。\n\n\n\n他赌对了赛道。王者荣耀 2016 全年收入 68 个亿；今年更加飙到日活用户过亿，一个季度卷走 100 多个亿。\n\n\n\n嗨氏喜欢打法师输出位，常用的是貂蝉、不知火舞这样的漂亮小姐姐，观赏性很强。许多新玩家一搜攻略就能搜到他的名字，再加上他和“嗨妈”在运营上比较下功夫，经常抽奖送皮肤，曝光度很高，人气涨得很快。\n\n\n\n嗨氏的粉丝数量级很快上了百万。按照粉丝们的说法，嗨氏是游戏主播中的一股清流，不说脏话，心态很好，一直和粉丝们开玩笑互动，是一个阳光少年的形象。\n\n\n\n粉丝最津津乐道的事情，是当初嗨氏没有国服最强称号，导致粉丝被别的主播嘲讽，连着好几个通宵把自己的号打到国服最强火舞，为粉丝争口气，这也是“我的意中人是国服第一不知火舞”的由来。\n\n\n\n嗨氏毫无疑问是粉丝运营做得最好的主播之一。他和粉丝的关系超越了一般主播和观众。他的粉丝自称“嗨宝”，每天在直播间里刷的礼物就价值数万元；嗨氏的零食店上新，喊一嗓子，粉丝就会去大把大把地采购。\n\n\n\n一个十几岁的西南县城少年，在短短几年间，通过游戏和直播名利双收，享受到了近乎鹿晗这种明星小鲜肉才有的粉丝待遇。\n\n\n\n这种成功模式，堪称是这一代小镇青年的中国梦。\n\n---\n\n`堪比红包神. 大部分穷人都过不了这一关 - 穷惯了, 不知大小轻重`\n\n\n“画手事件”是一批粉丝对他态度的转折点。嗨氏直播间的题图、宣传画、形象等很多物料，都是粉丝无偿帮他做的。几个月前一个粉丝画手想用自己给嗨氏画的形象，做一批钥匙扣去漫展上卖，被嗨妈阻住了，说粉丝作品版权也属于嗨粉后援会。\n\n\n\n而嗨氏的淘宝店里，在没有获得授权的情况下，正卖着用粉丝们画的图印制的周边 T 恤。愤怒的画手发了条微博，说清了来龙去脉，希望嗨氏的店把 T 恤下架，结果却被嗨氏粉丝们攻击了一顿，个人信息也被人肉了出来。\n\n\n\n事后嗨氏母子出来道歉，解释说确实不懂知识版权的事情。但刚道完歉，嗨妈又点赞了“农夫与蛇”故事的微博，暗示画手是白眼狼。更让粉丝心寒的是，那件 T 恤过了一个月依然在卖，后来只不过换成了“福袋”的方式变相出售。\n\n\n8 月 4 日，“张大仙”宣布从原平台企鹅跳槽到斗鱼，而且是“百倍签约金”。不少同行开始批评他没有契约精神。嗨氏转发事件时，说了一句话，\n\n\n\n“我做人做事都有自己的底线和原则”。\n\n\n\n但后来张大仙发了声明，解释跳槽是为了替生意失败的爸妈还债，晒出了在企鹅这么长时间只拿到税前 18 万的工资单，还付清了 200 万违约金，最后就连老东家都说“欢迎随时回家”，事情解决得佷体面。\n\n\n\n而半个多月之后，“有底线有原则”的嗨氏也跳槽到了斗鱼。\n\n---\n\n`但是有street smart. 但是没有逻辑和理性`\n\n\n一般主播也不会愿意自己的家长这么插手自己的事业。但嗨氏对他的单亲妈妈，有一种近似于崇拜的感情。他说过，“我妈能把所有最冷门的生意做到我们那个地方最挣钱， 我至今学不会”。\n\n嗨妈管理着嗨氏的微博，自己的微博也有二十多万粉丝。她对 BBKing 说自己“一天要回两万条消息”，两个拇指还落下了职业病，没法伸直。\n\n\n\n算一下，一天有 86400 秒。两万条消息的话，不吃不喝不睡，也得 4 秒一条。\n\n\n\n这种无逻辑的表述，在嗨妈的表达里非常常见。');
INSERT INTO `archive_remarks`
VALUES (10452,
        '\n`产品经理思路, 一切用户导向. 很有道理`\n\n今年 8 月的时候，王宝强被出轨事件曝光。一夜之间，几千个吃瓜群众跑到“神曲皇后”王蓉的微博底下，一顿乱骂，“你对得起宝宝吗？”\n\n\n这位曾经每年赚 7 位数、和周杰伦拿过同一个奖的最佳男女歌手、两度登上福布斯中国名人榜的神曲女王，被网友们误认成了马蓉。\n\n\n\n唱《爱情买卖》的慕容晓晓整个 2014 年都没有工作，在家产子。去年她复出，第一场演出跑到安徽阜阳的乡村旅游文化节上，唱的还是 6 年前的《爱情买卖》。\n\n\n\n她的热门微博前两条都是工作宣传，都有接近 1 万的转发量；第四条吐槽兰州的机场，只有 4 个转发。有人留言，“这得请了多少水军啊”。\n\n\n\n神曲歌手的集体生存状态，能直接反映神曲市场的变化。在各大神曲排行榜、广场舞门户网站里，最热搜的神曲依然是《小苹果》，一首两年半之前发行的歌。5 年前的《伤不起》和 7 年前的《最炫民族风》也坚挺在榜。\n\n---\n\n作为一个神曲制作人，老猫对歌词质量，有自己的评判体系。《伤不起》的作词者化石，原本把高潮歌词写成“伤不起，心都掏给你”。老猫拿到手，果断改成了“伤不起，真的伤不起”。\n\n\n\n这种做法，老猫称之为“强制记忆法”。“这就是市场判断。事实证明我的判断是对的。到最后这个火了，大家也就记住这三个字，没别的。”《伤不起》在 2011 年正式发布，蝉联了 4 个月百度 MP3 Top 500 冠军，一年后成了中国移动年度彩铃下载冠军。\n\n大量采用网络热词是老猫另一个习惯。如果将来有人整理王麟作品集，可能会得到一部互联网热词史记：《很傻很天真》、《我和我的小伙伴都惊呆了》、《思密达》‍、《女汉子》、《服不服》、《大宝剑》、《雅蠛蝶》......\n\n推广神曲需要一些非常手段。手机出厂预装，三四线城市的手机维修店，盗版CD店，这都是神曲分发的重要阵地。原则上商户播放音乐，是要向唱片公司购买公播版权的。但在神曲圈，为了洗脑，唱片公司会主动付钱给大超市、商圈等人流密集场所，要求播放特定的歌曲。\n\n\n\n在这些方法论和技巧下，老猫打造出了非常多的神曲作品。庞龙在春晚上唱的《幸福的两口子》，被大鹏用在屌丝男士某一集里的《老婆最大》，都是他的作品。\n\n---\n\n`迎合市场, 向现实低头. 而且不是我手写我心, 而是装疯卖傻. 这比sell garbage to garbage man躲在台后是不同的一条路. 我就走不了`\n\n但老猫最广为人知的“作品”不是歌曲，是他亲手打造的两个神曲皇后。一个就是王麟，另一个是王蓉。许多人对王蓉的印象停留在专辑《我不是黄蓉》，但这既不是她演唱事业的起点，也不是终点。\n\n王蓉的真名和另一个天后重名，王菲。还叫王菲的时候，她在中国传媒大学念播音，和李湘是同届同班的同学。刚进大学她就拿了全校歌手大赛冠军，大二又拿了北京高校歌手大赛独唱第一名。\n\n\n\n王蓉自学吉他，自学填写，自学作曲，每样都上手极快，是同学间出了名的才女。学校里教吉他的刘天礼教授也很喜欢她，还邀请她一起拍摄教学视频——这位刘天礼教授正是老猫的父亲。王蓉从此结识老猫。\n\n\n\n大学里的四年，王蓉综合成绩总评第一。播音专业唯一的留京指标给了她，但她不要成为一名主持人，她要唱歌。她改名伊菲，签约了老猫所在的天星娱乐，正式出道。\n\n\n此后王蓉的每一首歌几乎都和老猫有关系。2005 年网络红人芙蓉姐姐冒出头，王蓉唱了一首《芙蓉姐夫》，老猫作词。2009 年老猫帮她制作了《要抱抱》，2011 年又炮制了神曲 《好乐DAY》。中日钓鱼岛争端白热化的时候，两人出了一首《我们的钓鱼岛》。前年，两人又做了神曲《坏姐姐》和《小鸡小鸡》。\n\n---\n\n\n“（改造歌路之前）她根本就不会跳舞。脸太大就整容，把骨头掰掉。一切都得这么玩儿。她说这歌她不喜欢，不喜欢你也得唱，因为这就是潮流。”\n\n\n\n后来复盘当年打造王蓉的经历时，老猫这么说。\n\n\n\n到 2009 年，因为身份证照片和本人不像，王蓉在首都机场被扣留，随后公开承认整容。有人认为这是一场炒作，王蓉团队否认。后来，她又被拍到去精神医院看病，网上传出她“身患精神病”的传闻。\n\n\n\n随着王蓉负面新闻越来越多，很多歌迷指责老猫“毁人不倦”，把一个才女弄成神经兮兮的神曲歌手。老猫不以为然。他相信在中国，“音乐”和“音乐产业”是完全区隔的两个概念。\n\n\n\n他说他信奉两条原则，一条是“成功就是硬道理”。另一条是“乱拳打死老实货”。\n\n\n\n老猫和方文山是朋友。当年方文山想在大陆找一个长期合作的作曲人，考察了一圈，最后选中了他。几年前两人合作了主旋律歌曲《北京精神》，后来还一起在大陆搞“汉服文化节”。\n\n他说他记得，曾任英皇 CEO 的李进跟他说过一句话：在音乐公司任高职，要把握一个原则，“只有商业，没有音乐”。\n\n---\n\n`一个角度, 但是确实让人回忆`\n\n2016 年洗刷朋友圈和微博不再是神曲，是《感觉身体被掏空》这种看似恶搞，实则高规格的作品。这首歌也用了网络热词做歌名。歌曲的 MV 发布一天后，仅在微博的播放量就接近 2000 万，而且评价一致的好。\n\n\n\n这是彩虹合唱团第二首爆款神曲，第一首叫《张士超你到底把我家钥匙放哪里了》。歌手杨宗纬上周在一个节目里翻唱了《张士超》的改编版；同一个节目前几期，华晨宇翻唱了《我的滑板鞋》的改编版。两个视频都在微博上迅速传播开来。\n\n对神曲而言，最致命的不是失去社交网络——这个阵地只负责影响力，不负责变现——而是神曲开始失去了彩铃。\n\n\n如果内容领域的投资潮提前几年到来，在这些神曲传唱度的顶峰，神曲歌手们是不是也能拿到风投？老猫的资源调度能力，王麟在知乎上的影响力，是不是能找到别的释放路径？\n\n\n\n这些问题如今只能悬在空中。\n\n两个月后，她又在另一道问题下提到，自己“正在众筹一首单曲，着手转型，希望大家可以支持我！”\n\n\n\n后来，转型单曲没发，倒是发了一张专辑，叫《杀马特 / 饭特稀》，里面全是为神曲而神曲的作品。歌曲没有任何反响，除了一些网友的嘲讽：说好的转型呢？《雅蠛蝶》是什么鬼？');
INSERT INTO `archive_remarks`
VALUES (10454,
        '\n`这篇总体对应的是小晚的专访, 太多人关注边界, 而不关注核心. \"如果阿里巴巴做得更有底线一点，我会更尊敬他们\". 逻辑完整, 论据史料丰富, 很自洽的一篇文章`\n\n\n在上周的元璟资本闭门分享会上，36 氪总裁冯大刚问了阿里巴巴合伙人王帅对于王兴的批评阿里巴巴没有底线怎么看。\n\n王帅这个人，喜欢在微博上写两首歪诗，整个就是一个马云的影子。说话从来是云山雾罩，听起来全都是道理，一琢磨全是废话。不过这一次在端上 “过去的一切都不重要”、“一切都是最好的安排” 的马氏心灵鸡汤前，这位阿里巴巴的宣传部部长兼统战部副部长说，\n\n“首先，小晚很漂亮，所以王兴说什么都正常，我当然是选择原谅他们了”。\n\n紧张的气氛马上舒活了起来。\n\n对于阿里巴巴这样 “党指挥枪”、“支部建在连上” 的公司来说，有一个会吟诗的领导人真好。不用凶巴巴地摆出一副脸说，美团和阿里的合作都是历史了，再讨论没有一点现实意义。\n\n---\n\n`好, 慷慨悲歌之士. 但是最终有什么\"用\"呢`\n\n`便利蜂有用`\n\n红杉中国的创始人沈南鹏也是携程的创始人之一，当被问到 “你们如何说服庄辰超同意合并，拿钱走人” 时，他的回答非常得体有范儿，“这个恐怕只能很多年以后在我的自传里写出来了”。\n\n2015 年的秋天，已经和携程杀红了眼的去哪儿员工第一次听到双方合并的流言时，庄辰超去金沙江创投的办公室和携程李彦宏进行谈判。\n\n庄辰超第二次和李彦宏发生冲突，他要求保证去哪儿员工的股份和期权不受损失。如果李彦宏不答应，他甚至想用一些激烈的手段证明自己的决心。\n\n过去中国企业的并购案中，经常出现被吞并的一方员工，股份和期权会在法律允许范围内被极力压缩的现象。\n\n好在李彦宏是个君子，答应了。然后庄辰超发出那封著名的朋友圈，“去哪儿的故事结束了，托付给我的信任悉数交付”。\n\n都说燕赵自古多慷慨悲歌之士，但是庄辰超是一个上海人。\n\n---\n\n今年 4 月份，马云的新一期湖畔大学在杭州开学，聚集了几十个互联网创业的新贵。这批学员年龄从 30  岁以下到 50 岁不等。公司估值大概在数亿美元之间，是 2014 年创业大跃进之后坚持三年还没死掉的一批。\n\n这大概是中国互联网的中央党校。\n\n与此同时，在中国互联网第一掮客，华兴资本老板包凡的牵头下，梁建章、庄辰超、张一鸣、王兴、程维、王小川这些百亿美元左右身家的互联网小巨头和新希望的大小姐刘畅，华为的女婿，孟晚舟的先生一干人等，坐在一起搞了个学习班。\n\n这个学习班叫三思院，主要引导中国互联网和新经济的少壮派关注人口、气候变化、环境保护、城乡差距等一系列社会问题。\n\n从形式上看，三思院有点像政治局每月一次的集体学习，不过从这些创业者的行政级别来看，更像是共青团中央书记处扩大会议。\n\n这两拨人是玩不到一起的，程维还是支付宝区域经理的时候，应该还咽得下马云的鸡汤。但是这几年和柳青一起见过大钱，打过硬仗，自然开始追求某种程度的第一性原理，更愿意洗洗耳朵，听教授中的创业者，创业者中的教授梁建章讲讲中国的人口问题。\n\n根据学习之前的测试，这些身家百亿美元的少壮派政治光谱差别很大，但是经过两期的学习，他们的立场还在，但都往中间靠了靠。\n\n据说在三思苑的学习班上，梁建章和庄辰超形影不离、基得不行，一点也不像是两年前还刺刀见红的对手。\n\n---\n\n`王小川, 不容易, 搜狗市值凡几`\n\n庄辰超在华师大二附的时候拿过华罗庚数学竞赛一等奖和全美数学奥赛金牌，王小川在成都七中的时候拿的是国际信息学奥赛金牌。\n\n中国互联网早期学霸密度很高，梁建章、张朝阳和张亚琴这样的才算真学霸，李彦宏在北大因为读的是冷门的图书馆系都被看不起，武大的雷军、华科的张小龙、西交的周鸿祎，都算不得学霸。\n\n学霸多了就不值钱，哪里像今天各家为了招一个机器学习的好苗子，从高中就开始抓人。当年做搜索的时候，王小川从清华计算机国家集训队招了 12 个实习生，就靠管一顿新鲜热乎的早餐，就忽悠人家早起加班。\n\n张朝阳让王小川做搜索打百度，只给了 6 个 headcount。等到 2005 年百度上市了，百度把对手们越甩越远，张朝阳对王小川的草台班子失去了耐心。于是有了王小川第一次靠边站，最潦倒的时候他要自己给团队擦办公桌，生怕这 “十几个人，七八条枪” 也跑了。\n\n幸亏马占凯发明了搜狗拼音输入法。王小川虽然每次跟百度叫板的时候老显得小肚鸡肠，但是只要一提搜狗输入法，都会饮水思源感谢马占凯，这点比百度 PR 后来把贴吧的发明权都归到李彦宏身上厚道多了。\n\n俞军你说是不是？\n\n这个时候，王小川申请了一次去深圳的出差。这条差旅信息一出现在总裁办的 OA 系统上，张朝阳就知道他葫芦里面卖的什么药。王小川在去机场的路上接到张朝阳助理的电话，让他调转车头回来，不然立即停职。\n\n从首都机场到清华东门最多不过一小时车程。在这不到一个小时的时间里，王小川拨通了一个电话，和电话那边的 Pony 和 Martin 当场谈下了腾讯战略投资的基本条款，价格比周鸿祎出得更高，条件更好。\n\n等到回去见到了张朝阳，王小川把这个条件拍在桌子上，两个人的对话我们不得而知，但是我想和彭德怀毛主席在庐山会议上的对话应该差不多，\n\n“这些年来你 X 了我这么多次娘，我就 X 你这一次还不行，08 年你要我靠边站，第二年我还不是陪着笑脸跟你去爬山，Charles 我知道你是个好人，要是拿了腾讯的钱我还跟你卖命，要是卖给周鸿祎，我就带着人回清华东门打游击去。”\n\n张朝阳知道，雷军和腾讯像对待傅盛一样，早就准备好 1 亿美元准备投给单飞的王小川。\n\n最后的结果你们当然都知道，就是这张照片。\n\n到底为什么，为了避免落在周鸿祎手里，王小川要红拂夜奔雪夜上梁山，搬一次阿里的救兵，再搬一次腾讯的救兵。\n\n我想王小川大概可以借用王兴那句话，“从战斗力上，周鸿祎很强，如果 360 做得更有底线一点，我会更尊敬他们”。\n\n但是王小川没讲，有必要讲出来吗？\n\n---\n\n`教授, 完人梁建章`\n\n梁建章和庄辰超、王小川、王兴、张一鸣、程维等人在一个学习班里学习，其实是一件很奇怪的事情。年龄上来讲，梁建章比他们大概大了十年，创业的辈分来讲，梁建章是门户网站这一波的，他更应该作为班主任，安排少壮派们的学习。\n\n某种意义上讲，梁建章是中国互联网历史上唯一一个完人。\n\n中国传统意义上的圣人，讲究所谓的立德、立功、立言三不朽。立德方面，携程四君子创业，至今和梁建章的关系都很好。这一点好像是上海领导者的优势，很少内部恶斗。更难得的是，和庄辰超刺刀见红两年，两人从未恶语相向。\n\n两进宫携程自然是立功了。而做人口学研究，梁建章真的是心无旁骛去美国读博士，到达足以资政的水平。 梁建章的演讲，既无学究气，也没有鸡汤味儿。讲问题就是讲问题，世界观和方法论很 solid，一直以来也没有什么变化，你也很难觉察到他的情绪。\n\n\n相形之下，王兴就显得有些学生气了。他一开口，你就能感觉到最近他又读了什么书，书里的东西现学现卖。而自洽的人一般来说是不应该受一本书的影响。 王兴的优点是六经注我，他不管用什么理论，举什么例子，总是能把现在他关心的问题，特别是美团的问题讲得很好。\n\n王兴和梁建章放在一起，前者就像是班里比较机灵的学生，总能提出让别的学生侧目的问题和论述。后者就像是教授，讲话四平八稳但是无懈可击，一两句话终结大家激烈的争论。\n\n所以王兴实在应该向梁建章学习，第一条就是如何和阿里巴巴相处。携程这么多年来，没有像门户一样凋零，也从未成长为 BAT 这样的巨头，所以梁建章和他的兄弟们能守着这一亩三分地，穿越中国互联网创业的三个周期，实在是一个不小的奇迹。\n\n摆在今天 100 亿美元巨头面前的只有两条路，一条路是怼阿里，拿后者的战略投资和微信的一个入口，保持公司一定的独立性，京东是这条道路的天花板。一条路是怼腾讯，然后公司卖给阿里，马云把能送的家当都送给你当陪嫁，自己也变成阿里巴巴事业的接班人，这条路上俞永福是榜样。');
INSERT INTO `archive_remarks`
VALUES (10456,
        '\n`换我是张朝阳, 我也要抑郁...吗?`\n\n而张朝阳也一直在折腾，除了患上抑郁症的两年，一直冲在第一线，每一波互联网的大机会他都下手很早。和他资历相当的，如果还没有封神，都已经退隐江湖。对手从王志东变成了张一鸣，小他二十岁。\n\n然而搜狐一直没有拿到过一个市场第一。如果互联网有奥斯卡，他也至少错过了五届。\n\n---\n\n老张至今未婚，不知道幕后有没有红颜知己给他这样的支持。但是台前只能看到一个一个人离他而去。但是老张好像从来不计较这些，古永锵走他不计较，龚宇走他不计较。古永锵就不同，卢梵溪走，说抓就抓。`\n\n---\n\n奥斯卡的评委不过百席。评委都是人，人可以被感动的，也是可以被熬过去的。所以小李子只要坚持，修成正果不过是时间问题。但是时代不同，不由分说，碾过就碾过。毛主席诗词说得好，“天若有情天亦老”，讲的就是这个道理。\n\n\n\n所以我怕好人张朝阳熬不过这个时代，但是我真的希望他能熬过这个时代，拿一座互联网的小金人，然后退隐江湖。\n\n---\n\n2000年7月搜狐上市，但是之前被新浪和网易捷足先登。最后四大门户的排位，大概也是新浪第一，网易搜狐伯仲之间。\n\n2009年搜狐畅游上市，张朝阳成为第一个拥有两家美股上市公司的大佬。但是盛大五年前已经登陆美股，网易和腾讯的游戏业务也后来居上。如果要评“游戏奥斯卡”，搜狐连前三都难保。\n\nPC时代搜索引擎是最大入口。百度、360、搜狗三家算是三国志。模式也很相近，搜索引擎+浏览器+工具。然而百度做好了搜索引擎地位超然，360主打安全也做成了半个入口。但是搜狗2010年从搜狐拆出来，上市路一走就是6年，三年前王小川坚持要投靠腾讯，至今也还没看到尽头。\n\n搜狐是视频网站和自制内容的先行者。优酷的古永锵、爱奇艺的龚宇都是张朝阳的部下。然而一晃五年过去了，视频网站似乎大局已定，搜狐视频又叨陪末座。\n\n\n新闻客户端也是搜狐动手最早，早期靠预装赢得半壁江山，张朝阳推崇自媒体、UGC开风气之先。但是后来腾讯发力，今日头条异军突起，网易新浪猛追，现在也是保不住前三的位置。\n\n\n\n换我是张朝阳，我恐怕也要得抑郁症。\n\n\n\n“我是真的什么都有，但是我居然这么痛苦”，\n\n\n\n这是张朝阳2013年接受杨澜采访时说的，那时候他刚刚从抑郁症里走出来。\n\n\n\n但是我并不觉得张朝阳什么都有。上周是搜狐18周年庆，张朝阳讲了什么，没有媒体报道，头条都被平胸女子papi酱抢了去。也没听说有娱乐圈大腕到场给老张站台，可以说是草草收场。\n\n\n\n你在微博上搜“搜狐，18周年”，可有一个互联网圈大佬公开道喜？');
INSERT INTO `archive_remarks`
VALUES (10458,
        '\n`常居加州的新加坡人, 陈天桥先生. 感人的文章`\n\n`后生也是互联网出身, 新加坡人, 和上海/加州颇有渊源. 愿效鞍前马后`\n\n饶毅老师挺有意思，美国大选的时候关心美国华人前途，痛心疾首要把朋友圈所有支持川普的人拉黑。陈天桥给华裔学生比例颇高的加州理工捐了款，他却又批评陈氏夫妇“在中国赚钱支持美国研究”。\n\n\n可是陈天桥早就不在中国赚钱了，作为三家美国上市公司的股东，在北美有70万英亩林地，你说他现在赚的到底是美国的钱还是中国的钱。\n\n\n知乎上面讨论的也都集中于到底应该捐给国内还是国外。不理性的回答都是口诛笔伐，不爱国的帽子分分钟扣了过来。理性一点的结论都是国内私人捐助研究不成熟，应该尽快配套，方便陈天桥这样的富人参与资助科研。\n\n\n这也是有点滑稽，陈天桥现在作为一个新加坡人，你问他到底那里是国外，那里是国内？\n\n\n和张磊捐款耶鲁回报母校、潘石屹捐款哈佛打进圈子不同，陈天桥捐款给谢尔顿和钱学森的母校是深思熟虑的，他花了两年时间考察了世界范围内的很多家研究机构，甚至亲自学习脑科学原版教材，最后做出了决定。\n\n\n问题在于为什么要支持脑科学？\n\n\n你可以猜不到周鸿祎为什么爱好打枪，张小龙为什么喜欢听摇滚，猜不到李彦宏在办公室种了多少花花草草，马云是什么时候开始喜欢去庙里决定阿里巴巴的前途。\n\n\n而陈天桥研究脑科学的理由很简单，43岁的前首富身体一直不好，脑子却依旧很好。\n\n---\n\n`一向超前于时代`\n\n历史的车轮进入2016年之后，真的是转的有点快。陈天桥要研究的事情和Elon Musk研究的事情一样，过去都是只能出现在科幻小说里。\n\n\n是不是太超前了呢？\n\n\n陈天桥和他弟弟陈大年的盛大，一向超前于时代。他们创业故事开头很好，是年轻人因为游戏一夜暴富，甚至于要在收购新浪还是收购腾讯中做一个艰难的决定，在马云还在杭州绞尽脑汁对抗易趣的时候，陈天桥本人已经成为第一位列席两会的互联网公司创始人。\n\n\n继续往下写就是陈天桥心中永远的痛，盛大盒子。陈大年心中永远的痛则是盛大创新院，写出来都是悲剧。\n\n`黎瑞刚, 中共党员, 2011年8月至2012年8月任中共上海市委副秘书长, 上海市委办公厅主任. 曾任上海文广新闻传媒集团总裁、上海第一财经传媒有限公司董事长. 是华人文化产业投资基金董事长. 2002年10月, 出任上海文广新闻传媒集团(SMG)总裁. 还能这样官商结合.`\n\n\n但是即使是大上海，也只能容下一个中国的迪士尼。陈天桥看到了通往中国迪士尼的路，把《传奇》卖点卡挣来的钱全都用来买一辆豪华跑车，准备在这条路上撒欢狂奔。却没看到修这条路的人叫黎瑞刚。\n\n\n广电总局06年一纸通知下来，IPTV全部被叫停。\n\n然后2010年弟弟陈大年看到了移动互联网的前景，把中国最好的300个开发人才全都笼络到盛大创新院，孵化了几十个项目，包括云存储，商业数据库，智能手机ROM，大数据，Web操作系统，云笔记，智能硬件，语音识别，移动支付。\n\n\n可以说后来五年中国移动互联网几乎所有的方向他们都做了。\n\n\n但是没想到北京有个华清嘉园，有个车库咖啡，屌丝横下来心来，比拿着百万年薪的大牛战斗力更强。\n\n后来盛大创新园出来的人中跑出了30多家创业公司，许式伟的七牛云存储，季昕华的Ucloud，黄伟的云知声都是几亿美元的公司。这些人都是把盛大创新院的项目拿出来继续往前做。\n\n最近王刚和徐小平都说，投中了赛道投错了人是最痛苦的。他们是没问过陈大年，投中了人也投中了赛道但是公司跟你没关系，这个有多痛苦。\n\n\n盛大故事的结尾是个悲剧，陈天桥不断辞去职务变卖家产。陈大年清理了创新院所有的项目和大牛，只留下 WiFi万能钥匙，去年给员工一人买一辆特斯拉。\n\n所以你看到，在前瞻性这个事情上，陈天桥兄弟俩都是有不良记录了的，说不定这次又成了超前历史一步的先驱。\n\n\n可能未来真的像饶毅老师说的那样，中国才是生命科学和神经科学冉冉上升的国家，率先研发出来脑机接口技术的是蓝翔；说不定虽然Caltech提前一步研发出大脑移植的颠覆性技术，却被日渐保守的美国政府禁止；说不定技术成本太高，开发出来之后全世界只有王健林和马云用得起。\n\n\n千言万语化成一个标题，\n\n\n“陈天桥海外寻找长生不老药，中国或成最大赢家。”');
INSERT INTO `archive_remarks`
VALUES (10460, '\n`背景, 这篇回应听起来更有真凭实据. 无论如何, 公司不好, 一切都不行`\n');
INSERT INTO `archive_remarks`
VALUES (10462,
        '\n`言多必失, 喷多了难免`\n\n但是王思聪有点尴尬，他觉得这是让人“向权贵低头”。这点他和父亲很不一样，王健林所到之处，就是让所有人都低头，让员工都像高考一样。\n\n\n\n《战狼2》和China Joy，分别是父子两个人的舞台。\n\n\n\n熊猫直播的展台，Show Girl 的质量就能体现出王校长的重视程度和品位。但是游戏这门生意里，挣大钱的还是腾讯、网易。\n\n \n\n万达也有参与是《战狼2》的联合出品方，勉强喝口肉汤。出品方名单里，无论是橙子映像、优酷土豆，还是光线传媒，都是阿里系。\n\n\n\n过去几年，大家都叫马云爸爸，叫思聪老公。对于王健林来说，这个还不算跌份儿。\n\n\n\n但是王思聪的前女友雪梨也在上个月宣布订婚了。对于淘宝上一年销售额20亿的网红来说，王思聪已经不是老公，但是马云依然是爸爸。\n\n\n\n和雪梨在一起的时候，王思聪还是那个口无遮拦、鲜衣怒马的五陵少年。\n\n\n\n王思聪最后一次在微博上和人怼，对手是柯洁。柯洁在和 AlphaGo 终极一战之前，王思聪好死不死地讲了一句之前的嚣张劲儿哪里去了。让一向爱看王思聪真性情人设的吃瓜群众全都站在更真性情的柯洁那里。\n\n\n\n但是这在王思聪怼天怼地怼空气的微博生涯里，并不是最失败的案例。\n\n \n\n2011年李开复为新书《微博：改变一切》发微博打广告，潘石屹友情转发宣传，王思聪转发说了句，李开复现在就靠写点书养家糊口了么，有点往潘石屹那发展了。李开复的新书封面印着他的照片，王思聪看热闹不嫌事大，又补了句，其实我一直鄙视书封面有作者大头贴的，还要不要脸了？\n\n \n\n他没想到几年后王健林出了一本《万达哲学》，面向全球发行四种语言版本，一共卖了127万册，每一册封面上都印着王健林的大头照。\n\n\n\n他更没想到的是，本来这种替企业家立生祠、歌功颂德的书没什么，机场上到处都是，大家也多有习惯。但是半年多之后一本更大部头的，有作者大头贴，总结治理经验的书籍上市，横扫全球。\n\n---\n\n`我的也没有很近`\n\n\n王健林曾经通过美国梦工厂的创始人卡森伯格牵线，想约妮可·基德曼和汤姆·克鲁斯见面。万达买了美国第二大院线AMC，两位明星很给面子答应出席。当天王健林迟到了一个小时，卡森伯格问王健林原因，王健林回答，我的私人飞机停太远了。卡森伯格怼了回去，是么，我的私人飞机们也没有停得很近。\n\n \n\n15年BBC采访王思聪，问了不少问题，“那帮人给我挖坑儿，发了我 100 个问题，我只回答了 15 个，其他问题根本回答不了，什么你对现在领导人和毛时代风格的对比，往左还是往右的，这怎么回答？”虽然王思聪在微博上怼雷军怼京东，但是人民内部矛盾跟敌我矛盾，王思聪还是分得清的。\n\n   \n\n王健林说过，95年到2004年的时候，万达在大连过得很难受，当时大连某个喜欢足球的领导不喜欢万达，万达拿不到地，很多地，他都是从别人手里加一层价格盘过来的。\n\n---\n\n他不是没有想过在国内投资。2015年美团的王兴在linkedin上收到猎头的邀请，“王总您好，万达集团xxx，想邀请您作为万达电商CEO的职位，不知道您有没有兴趣接触一下？”\n\n');
INSERT INTO `archive_remarks`
VALUES (10464,
        '\n\n说到沈南鹏，很早之前有个说法是沈南鹏是早期项目的伯乐，普通投资人在姚明 20 岁的时候都不敢投，他能在姚明 5 岁的时候就对他进行投资，太牛了。\n\n \n\n现在，朱啸虎才是早期项目的救世主。他是那个敢在一个人 3 岁时就大胆投资，然后大声告诉全世界这就是姚明的人。\n\n \n\n至于这个人什么时候能真的成为姚明，根本不重要，也不是朱啸虎需要关心的——反正长到 5 岁，就被沈南鹏买走了。\n\n---\n\n`赌性王刚收股`\n\n\n被人称为浑身上下散发着蜜汁自信的王刚，也是因为投中了滴滴。当然，王刚早期在滴滴的身份到底是创始人还是投资人很难说清楚。就像我们很难说清楚王刚在阿里巴巴究竟有过多少股份。\n\n\n\n人说杭州有一个西湖，有一个西溪。阿里巴巴上市前，急着用钱买房买车改善生活的老阿里一波排着队去西溪喜来登找某几家外资美元基金卖老股，另外一波排着队去王刚在西湖边的宅子领钱。王刚从铁军老同事那里收的股份多得震惊了马云，“国家队都进场了还不收手”。后来再有老同事去找王刚卖股份，王刚就真不敢收了。\n\n---\n\n`就一个比一个操心`\n\n\n和传统美元基金打了一辈子交道的雷军喜欢说一句话，帮忙不添乱。但是帮忙和添乱之间的界限很难划清，所以最后在传统美元基金那里的共识是，创业者说要帮忙再帮忙。\n\n\n\n但是这个观点朱啸虎不认可，王刚一定不认可，周亚辉会说，我才是创业者。\n\n\n业绩在市场上放着，所以老一辈的投资人也不得不服，现如今年轻投资人也没谁有兴趣听熊晓鸽分享什么五个千亿市场，我为什么错过了阿里巴巴，倒是刚入行三年的周亚辉投资笔记传遍了朋友圈。经纬的老大张颖就好几次公开表示，反思经纬为什么这么大的团队，抓到的案子还不如朱啸虎。\n\n\n\n张颖曾在台上说着说着就讲到了朱啸虎，正好朱啸虎也在现场，张颖顺嘴就说这个事情我们是不是应该请朱啸虎来讲一讲。结果几个美元基金的大佬。符绩勋、龙宇，顺着他的目光看过去，发现朱啸虎已经睡着了，几个人都没忍住笑。\n\n\n\n这些美元基金大佬，对朱啸虎的看法，还是有点“门口的野蛮人”的意思。\n\n\n朱啸虎还好，至少还是正经的美元基金合伙人。有几个人能说出来王刚的基金叫什么名字，几个人讲清楚周亚辉的案子是他个人的还是昆仑万维的？\n\n\n\n你以为周亚辉打钱快是真的钱在手里烧得慌？老牌基金可以把 TS 当钞票用抢案子，他们不行啊。周亚辉是被源码资本的曹毅带进投资圈的，曹毅号称是最像沈南鹏的年轻投资人，当然在给 TS 这个问题上也很像。\n\n\n\n曹毅和王兴、张一鸣讲话的时候，周亚辉看了眼馋，屁颠屁颠上去套近乎，他自己都说就是想投资点美团，结果王兴一直不置可否。后来周亚辉才知道，王兴只是不好意思当面说，人家想要的投资人都是 Deep Pocket，根本看不上他兜里的那俩“钢镚”。\n\n\n\n周亚辉投资一亩田的时候，TS 都签好了，DD 和 SPA 也准备的七七八八了，结果云锋基金突然插进来一杠子，把估值抬高了 50%。一亩田的创始人红着脸跟周亚辉谈了谈，说：不能把关系搞僵了搞坏了。最后老周忙活一场，只得了一个点的份额。\n\n\n\n我要是周亚辉真觉得自己冤啊，打钱快的时候你们谁也没说我的好，投资款不按时到账，凭什么红杉干得，我就干不得。\n\n\n\n谁不记得早几年《创业家》杂志发过一篇文章，暗指某家喜欢押赛道的投资机构经常签完 TS 又毁约，浪费创业者的时间和机会成本。还提到机构里那个知名投资人脾气差，创业公司业绩不达标，一杯热水就能直接泼到创始人脸上。这篇文章引得沈南鹏暴怒的文章最后从中文互联网上彻底消失了。\n\nOld Money 瞧不上 New Money，这简直是投资行业的热力学第二定律。\n\n\n一边是创业新贵退出的钱和传统企业土豪们的人民币排山倒海而来，他们需要周亚辉和王刚。同时老牌美元基金像经纬、红杉、IDG 也募资不愁，抱上了最粗的大腿社保基金，用国家的钱往一级市场撒。这两鼓劲儿撞在一起，热钱翻滚。\n\n\n\nA 股的堰塞湖和美股的不确定性让原来正常的退出链条断掉了，行业竞争以并购告终，BAT 反而成了互联网公司退出的最好渠道。市场不再追求长期价值，开始追求促成短期交易。\n\n\n\n所以包凡苦口婆心警告，警惕风投散户化。\n\n\n可惜资本市场从来都不是靠道德标准进化的。所有的规矩都是老一辈立下，用来管住新一辈的。\n\n\n\n老一辈就是白莲花？红杉和老虎押注赛道，一二三名全投的打法早年也颇有争议，别的创业者敢怒不敢言，至少李国庆就公开开过炮。朱啸虎拒绝张磊同时投 ofo 和摩拜的提议，就有着一层考虑。\n\n\n\n狼性这个词也不是朱啸虎发明的。张颖当年从中经合带着整建制的团队投奔经纬，也是开了一个不小的先例。甚至很长一段时间里，经纬都被人称作是 VC 行业的九鼎。要说通过舆论影响资本市场判断，朱啸虎到今天也无法超越张颖预测寒冬到来的那封“内部邮件”。\n\n\n\n《华尔街之狼》里面说，“用这样来定义，的确是我们都疯了，但是只要人类存在着，就会有新的疯子加入进来”。\n\n\n\n我们的老祖宗说，君以此始，必以此终。\n\n\n\n现在天下已经没人不知道朱啸虎了，而最终取代朱啸虎的，一定是一个觉得朱啸虎还不够朱啸虎的人。\n\n');
INSERT INTO `archive_remarks`
VALUES (10466,
        '\n`深刻, 惨痛的教训`\n\n“很多失败的项目，最关键的是驾驭不住项目。”朱啸虎说，投的时候，总相信它是能做起来的。从0到1不是那么难，但做起来之后，还能不能hold住，这个最难。\n\n移动互联网发展迅速，很少能有人能跟着公司那么快的速度一起成长。金沙江一路投下来发现，在个人能力成长上，一个创始人今年管100人，明年管200人，这是可控的。如果今年管100人，明年涨到1000人，那就必须要找更强的人进来。但很多创业者都不愿意找比自己强很多的人进来，一层层弱下去，到最后就hold不住了。\n\n`来自这里`\n\n“程维能够找来柳青，ofo也招了非常多优秀的人进去，团队必须在公司发展好的时候，借助这个势头把团队补齐。”朱啸虎说。\n\n戴威在北大的时候做过学生会主席。金沙江投资了ofo之后，另一个自称也做过学生会主席的北大学生找到朱啸虎。他说自己也有一个项目，你也投我吧。他想做拍照片的事情，自己拍照片很牛的，很多人找他拍照片，一个人收几万块钱。朱啸虎觉得还挺有意思的，就故意挑战他。“这个市场不够大啊，做不了多大的。”结果，听到这句话，对方理都不理他，站起来直接走出了朱啸虎的办公室。\n\n“人和人很不一样的，稍微聊几句就知道这个人怎么样，到底行不行。”朱啸虎说。当时见戴威，也问了很多问题，戴威都有详细的回答。车是多少频次，每次赚多少钱，怎么维修这些车，怎么找这些车，都有很详细的想法，“一看就知道这个人很沉稳”。');
INSERT INTO `archive_remarks`
VALUES (10468,
        '\n`此时懂了, \"像咪蒙一样红过\"`\n\n---\n\n`更厉害的徐静蕾, 章士钊的外孙女. 耗光钱财, 泯然众人`\n\n当年的洪晃拥有其他人无法企及的人脉和资源，除了媒体和网站，她很早涉入影视，2005年还自己主演了宁瀛的《无穷动》，有一段时间，她跑去写小说和剧本。姜文的《一步之遥》里还有她的表演。她和诸多导演和演员的关系是洪晃独有的优势，当年，她有一万个理由把中国的华纳集团这件事做成。\n\n \n\n而对于咪蒙来说，一个有影视梦想的媒体人却只能通过日更的微信公众号来实现理想，这是一件分裂的事，从资金到人脉，洪晃手里与生俱来的资源是咪蒙一辈子都不可企及的东西。\n\n \n\n洪晃一辈子都在通过抛弃手中的资源来滥资源，如果咪蒙拥有她这样的资源，还用得着在微信公众号上从骂人到擦边球，还用五万元助理的噱头忽悠青年才俊？最不济也像郭敬明一样，把《low逼和贱人》或者《职场不相信眼泪》拍到第四部了。\n\n \n\n2011年，洪晃说史家胡同51号院已经退给外交部了，自己已经不是特权阶级。\n\n\n\n 2016年，《iLook世界都市》停刊，洪晃在“晃言晃语”里面连载小说《张大小姐》。读者们最喜欢的就是在评论区猜测小说中各色人物的原型，谁是苏芒，谁是刘索拉，一水儿的\n\n\n\n终于，洪晃也沦落为一个写微信公众号的人。\n\n\n\n谁看不起谁啊？\n\n---\n\n`安妮宝贝`\n\n\n对于今天所有推崇的生存规则而言，安妮宝贝没有一项与之匹配。她从不出现在媒体，即便新书发售，也只接受任职过的《城市画报》独家专访。她长期住在偏远郊外，不上网不读报不看任何资讯信息。种菜种花，读古书是她的日常，还有针线活儿。\n\n\n\n2011年，她成为杂志书《大方》的主编，杂志slogan也是离群索居，叫“暂时离开资讯、应景、热闹、实效话题”，创刊号是村上春树一篇冗长的独家专访。做到第三期，这本Mook就被叫停了。\n\n \n\n她做的惟一与时俱进的事情是在2007年国庆节生下了一个女儿，名叫恩养。\n\n \n\n十几年来，她喂养过的读者最终反过头来批评她的文字，骂她的阴暗和对脱俗的刻意。而安妮宝贝本人未曾对此作任何回应，她说：写作十年，加诸身上的标签无数，我对外界言论无兴趣，也很少发言说明。\n\n \n\n2014年，安妮宝贝改名为庆山。\n\n---\n\n`哦对了! 上一个咪蒙. 像少年啦飞驰还写过, 枪手编书也会写这种, 好卖, \"被撞了爱上对方\"什么的`\n\n\n关于女性的情感，还有一位姓安的女作家。\n\n\n\n她叫安顿，如果你要从中国媒体行业的过去寻找一个咪蒙的影子，那最合适的非安顿莫属了。\n\n\n\n从1995年开始，安顿用“口述实录”的方式，记录了大量中国人的隐秘情感，那是《北京青年报》的黄金年代，每个周末，报纸售罄，大家都冲着这“绝对隐私”买单。这些隐秘的情感在今天看来无非是“出轨”、“吸毒”、“约炮”，热搜上天天出现，无人诧异，即便是当事人，也早已变得理直气壮，就像木子美这样。\n\n\n\n而当年，这些带着无处安放的秘密找到安顿的读者，媒体都会隐去真名，现场没有摄影更没有直播。他们背负的愧疚、自责、怨恨和其他复杂的感情，在安顿这样一个陌生记者面前，获得了安全的接纳。这个“口述实录”的情感专栏引发了全国各大报纸的模仿，那几年几乎是“情感讲述”的报道风潮。\n\n\n\n安顿的专栏最后成为万言纸书《绝对隐私》，最终又被李少红翻拍成电视电影，她本人在后来很长的一段时间里，也成为了两性话题的常驻嘉宾，出现在各类媒体。《北京青年报》在首都的东三环有一栋楼，曾经是新闻理想者的乐园，不知道今天还在不在了？\n\n世纪之交开始火的女性情感作家，安顿算是个典型了。她们依靠2008年之前还算宽松的舆论氛围，争奇斗艳。但是没有人能扛过市场残酷地推陈出新，大部分人在一次美好或者不美好的婚姻之后就开始认命。\n\n---\n\n`中山大学中文系毕业, 她写过社会新闻, 写过汶川地震, 实在不只是性与爱`\n\n也就木子美顽强地活了下来。\n\n\n十三年过去了，徐静蕾还是女权最后的寄托，木子美在微博上还有百万粉丝，一条微博还有几百条回复。\n\n \n\n木子美的《遗情书》最早是以性爱日记的形式发表在网络上。当时木子美每两周就换一个或多个男人上床，然后将床上细节写进日记里。不仅频繁更换性伴侣，还曾当着朋友的面与朋友的朋友性交。此外，日记内容显示，木子美并不拒绝参加多男多女集体性派对。\n\n \n\n日记里还详述自己和广州一位著名摇滚乐手一夜情的大量细节，披露乐手真名实姓。这篇日记被迅速转贴到当时很红的“西祠胡同”论坛，引起轰动，并开始在各个论坛广泛流传，最终被三大门户网站转载。《遗情书》的访问量从此激增。尽管过往的日记已被统统屏蔽，慕名前来的网民却有增无减。《遗情书》当时访问量每日增长6,000次以上，成为中国当时点击率最高的私人网页之一。\n\n\n\n《遗情书》后来被榕树下收购，当时出版署对黄书的态度是连《上海宝贝》都通不过的，更别提《遗情书》了。搞到最后，没人敢接啊，二十一世纪出版社拍拍胸脯，冒死接了这本书，因为他们知道，书出来了一定能火。\n\n\n\n但是木子美对书商为她树立的“放荡”形象非常愤怒。直到今天，她都未能揭掉那些露骨粗鄙的标签。中山大学中文系毕业，她写过社会新闻，写过汶川地震，实在不只是性与爱。\n\n \n\n当时她对朋友说：《遗情书》我宁愿不出了，我不签合同了！ 你让新浪都撤下来，我不爽！我觉得我在被利用，被卖！为什么无数人不了解事实，不了解我，就在谩骂……她的朋友说媒体就是这么变态，媒体和出版商觉得你是一块大肥肉。木子美自己也是做媒体的，当年她始终不明白为什么这些人可以不负责任地乱写。\n\n\n于是，她重新总结了自己睡过的男人们，评点了全国不同省份男人的床上功夫，实在让很多人汗颜。2014年10月30日，张歆艺和杨树鹏在微博宣布离婚。第二天晚上，木子美就在微博贴出了自己两年前写的一篇长文，详尽描述自己和杨树鹏的开房细节。不仅如此，还贴出多年前两人还是笔友时的往来邮件。\n\n \n\n2015年，她和一位出租车司机谈恋爱，人家有老婆孩子。她把他睡了之后，在微博上公开他俩详细的进展，甚至公布了对方的照片，并公开和司机的老婆对骂。\n\n\n\n木子美就是这么顽强地活下来的。\n\n\n\n但是你很难想象咪蒙会以木子美的方式存在着。她会因为害怕自己太胖而拒绝GQ的拍照，因为害怕孩子上不了好学校而在微信上向粉丝求助。\n\n\n即使咪蒙回来了，我相信她年薪5万的助理黄小污和安迪，在下一次开那个传说中无比牛X闪闪的“标题选题会”时会陷入自我否定和迷茫。\n\n\n\n虽然她们写过《永远爱国，永远热泪盈眶》，但是实际上她们还没有彻底掌握什么样的标题才算符合社会主义核心价值观，才算是正能量。');
INSERT INTO `archive_remarks`
VALUES (10470,
        '\n`地理决定, 出身决定论`\n\n你仔细观察上一代的互联网创业者，马云、马化腾、李彦宏、雷军、刘强东，还有下一代的王兴、程维、张一鸣，他们是什么地方的人，他们的父母从事什么职业，再跟他们后来公司发展的走向，他们的行事方式对应，能够得到很多有意思的结论。\n\n\n\n我们都在一线城市，在互联网、文化娱乐、金融这样的新兴行业。有时候看起来身份认同挺一致的，但是一牵扯到一些关键问题，两句话就能把一个人的身份认同给勾出来。中医西医问题，女权问题，某些领导人的历史评价问题，高考改革问题，滴滴到底该不该京人京车的问题，素质教育的问题，学区房的问题，雾霾的问题。\n\n\n\n每天我们在微信公众号上吵吵闹闹，看起来是三观问题，本质上是身份认同的问题。身份认同出现了偏差，你就别想就三观问题达成一致。哪怕双方从经济上、学历上、社会地位上看起来多么相似。\n\n\n中国自古以来皇权不下县，县下惟宗族。党的文件也有一种处理办法叫，“下发到县团级”。县以下的社会结构，在东北就是单位，国企和机关大院，在潮汕人和莆田人那里可能还是宗族，在一线城市可能是学区，也可能是行业聚集，比如中关村、CBD、望京Soho。不同的社会结构带来完全不同的社会流动，也带来完全不同的身份认同。\n\n---\n\n`北山东, 南胡建`\n\n举个例子，山东和福建的人均GDP很近似，发展水平也近似，甚至两个省省会和港口的矛盾，沿海和内陆的差距都很相似。我之前写文章说过一句话，叫北山东，南胡建。\n\n我在中科院研究生院读书的时候，发现班里面最多的就是山东人，中科院研究生院是把科研系统全国各地各个研究所的人聚集在一起，我相信比一般大学更有代表性。现在都说山东干部山东干部，十八大中央委员里面山东人最多，现役上将里面山东人最多。\n\n\n\n而一部分胡建人，哪里有挣钱的机会，你会发现他们跑得比谁都快。中国互联网的很多玩法，有的是胡建人发明的，有的是胡建人用到极致的。莆田系的故事说不完，阿里巴巴和胡建人的斗智斗勇，也是可以写进教材了。\n\n\n\n这两种人，真的是分别把中国体制内和体制外的两种规则吃透了，他们的阶层上升路径完全不同，拜妈祖和和拜孔子的，聊不到一块的。\n\n\n我们老道消息本来一直在写互联网、文化娱乐行业的文章，512那天写了一篇关于汶川地震和曹妃甸的文章，只活了一个早上，在微博上接近200万阅读，1万转发，是那个时间段微博最火的原创文章。\n\n\n\n我很多搞地质、石油行业的老同学，从来不看我们老道消息，这一篇文章下来，全都在转，因为这篇文章是用了石油地质行业人和新闻人交锋的视角看两个热点问题，勾起了两种不同的身份认同。\n\n\n\n所以你要知道，发现一个共同的身份认同，对于内容的传播有多么重要的价值。现在微信公众号上的品类战争已经结束，衣食住行，吃喝拉撒，什么值得买什么值得看什么值得DIY，全都有人做了。但是中国有10多亿人，今天微信公众平台已经是一个接近10亿活跃用户的大平台。\n\n\n\n伟大革命导师马克思说，人是其全部社会关系的总和。要我说，微信公众号上，人是其身份认同的叠加。\n\n\n\n不要总想着一线城市，中产阶级，消费升级这一件事儿。中国人有太多重身份认同可以轻易绕过目前这些大号设置的竞争壁垒，每一种身份认同都有。\n\n---\n\n`三档文艺, 下九流. 下一半就是讲写作SKU方法论, 令人印象深刻`\n\n第一种等级是士大夫托物言志进行的创作，比如范仲淹、柳宗元、王安石写的东西一定在中国的文学批评史上占据最高的位置，他们就典型的符合士大夫托物言志进行的创作。\n\n第二等文艺就是官办机构豢养文人的宣传和修撰，比如修《四库全书》翰林，比如帮皇帝写罪己诏，比如写人民日报上的社论，这是又一种文艺。\n\n匠人按照市场需求进行的创作，这是文艺的最底端。古代的梨园，杂耍、甚至小说，都不登大雅之堂的。文艺跟官方意识形态、官方的关系都有一定的关系，而且关系的深浅不一样，决定了文艺的地位。\n\n另外一种是受到压制和遗忘的是体制外的自我表达，独立于体制之外，完全是独立的一套体系，这种完全跟体制没有关系，甚至跟体制是对立关系，这种文艺会被压制。\n\n你的SKU的矩阵，你这个内容电商能够写什么样的内容，就决定了你在融资过程中投资人对你的评估。一个长期的写作领域至少需要 50 个SKU，也就是说你描述的对象、写作的至少要有 50 个。例如我在互联网领域，可以描述 50 个公司、 50 个事件或者 50 个问题，并且这些SKU都是自带流量的，比如我写百度、京东、 360 或者雷军、马化腾、马云，我写出来的东西一定会有流向，是有价值的。另外，还要每年对SKU重新更新一遍。就跟苹果一样，今年卖苹果6，明年卖苹果7。你可以不断拓展自己的赛道。\n\n---\n\n`庹震几次改南方周末新年特刊, 中国梦宪政梦梦之难改来改去, 最后改出很多事实错误, 还接管微博账号什么的`\n\n我和南周和财新的两个前编委会成员聊，一个说跟政治、审查的东西我们都不需要关心，基本是舒立一个人去打交道。一个回忆了自己在新年献词事件中的表现，说我们这些记者面对“他们”都是业余的，但是“他们”是专业的，我们连怎么提条件都不知道。这很触动我。主编对于一家媒体真的像父母一样，要替写作者抗住外来的压力。一个家庭如果外来的压力父母扛不住，直接转嫁到孩子身上，基本上这个孩子长大之后性格会有缺陷。\n\n---\n\n`写帝王将相, 才子佳人`\n\n文章既然是为了激发用户的自我意识，既然好的写作者要追求不可抑制的表达欲，你就要看这个人的背景有没有可能和你的作者有同理心。你不能找一个一口京腔的人去给北漂写文章，也不能找一个用OPPO、vivo的人去写移动互联网的评论文章。\n\n\n\n既然你知道好的文章要形成独特的口音，那你就要看这个人有没有希望形成这种独特口音。你要看他的教育背景和出身，和你用户有没有同理心。你给中产阶级，伪中产阶级写文章，他毕业的学校最好还不错。也不是说非要清北复交，不是非要985以上，普通的一本院校，或者他在自己专业里面比较拔尖的重点院校也可以。\n\n\n\n不是歧视分数低的学校，而是内容行业有一个独特性，就是大家都希望看到智力上比自己更高的人写作。就像大家买东西总想买略微超出自己支付能力的东西一样，优秀院校的学生未必优秀，但是他接受了一种优秀人才之间通用的口音。他使用的词汇和逻辑，最后帮助他形成了这种口音。\n\n\n我们老道消息，比如互联网行业是我亲自写的。我自己数了一下，大概十家左右的公司，BAT，小米京东360，网易微博等等。马云、马化腾、雷军、刘强东、张小龙、李彦宏这些大佬大概十多个，投资机构和知名投资人大概有接近十个，比如徐老师，比如红杉经纬IDG。还有一些重要的话题，比如每年的风口，每年涌现的年轻创业者，互联网公司职场现象，加起来大概50多个SKU。\n\n\n\n这些公司，这些人，这些话题，只要老编辑写，一定就有流量。一周一篇，一年就过去了。第二年，这些SKU下面每个又都有新的故事了，像iPhone每年更新一次你都要买一样，我又可以一周一篇。\n\n\n\n所以我要求，每一个作者在自己写作的领域，要找到50个SKU，这样你才能长期持续进行写作。没有50个SKU，你写着写着就没东西写了。你就要扩充赛道，增加SKU。\n\n\n\n我们最近就在增加赛道，我们有两个编辑，一个是我，带两个人就写帝王将相、才子佳人，从互联网的大佬写到金融行业，文化娱乐行业的大佬。另外小周带着两个人去挖亚文化，挖小众的文化消费群体，一个一个去攻陷，每个人都要有50个SKU。\n\n\n\n做淘宝的有个经验，初期的时候靠爆款，中期靠服务，后期靠供应。\n\n创业者要明白，投资人更要明白。很多还不错的媒体，在投资人的忽悠下，不好好去做内容，搞机会主义。以为自己什么都能干，实际上什么都干不好，最后连自己的老本行都丢掉了。\n\n\n\n一次伟大的内容创业，要追求的不是王兴的“既往不恋，纵情向前”，而是要追求和农民一样丰收的喜悦。\n\n');
INSERT INTO `archive_remarks`
VALUES (10472,
        '\n`这是说地学研究的好日子`\n\n玉树地震后，我去自己的研究生培养单位做实验，报到后做的第一件事情就是512地震灾害宣传日。\n\n那天的氛围，更像是节日而不是祭日，学生能发到补助，职工能领到奖品，老师们也分头上了各种节目。\n\n后来得知我们的所长迟迟没有评上院士，是因为08年奥运会在 Nature 上的一篇文章，预测汶川所在龙门山断裂带地区发生地震的危险性很小。\n\n又多了三年，等到我毕业时，所长又评上了院士，因为08年之后国家在龙门山断裂带的研究上撒下巨资。国内的数据、人才、资金，国外的方法、合作、交流都不是问题了，所长的研究如虎添翼，再接再厉发了几篇顶级论文。\n\n院士头衔到手后，所长挥一挥衣袖，到南方某著名高校去当院长，再也不用在北京吸霾。\n\n正所谓升官的升官，发财的发财。那真是地学研究的黄金时代啊，\n\n大地震、四万亿铁公基建设，原油价格达到147美元一桶的历史最高价格。渐渐地，听闻北京的、四川的兄弟单位，如何一掷千金，仪器只买最贵的，如何不顾中央三令五申自建楼堂馆所，自己住自建的酒店给自己报销，学生的野外补助如何发到四百一天。\n\n---\n\n`谎报油田储量`\n\n毕竟国家大台黄金时段争分夺秒，省略了蒋洁敏在石油行业内看起来最大的一桩罪行，那就是虚报了冀东南堡油田。\n\n2007年5月，中石油宣布在渤海发现了储量10亿吨的冀东南堡油田。当时温总理对媒体表示激动地睡不着觉。中石油大涨14%，称为港股市值最高的公司。\n\n---\n\n`共和国长子中的长子, 以及, 地球不需要你拯救!`\n\n不过感谢互联网时代，冷门专业也能变成热点。B站上有个火了两年多的视频，叫《柴静 VS 丁仲礼》。讲的是 2009 年哥本哈根气候变化会议谈判后的一段采访，柴静在采访中流露出一定的倾向性，即中国应该接受发达国家提出的减排方案。\n\n而丁仲礼院士，中科院副院长，有理有据地解释了发达国家的减排方案为什么是不公平的，中国为什么不能接受。并且把减排方案的理论依据，地球将会升高2°C的模拟实验结论斥为水晶球。最后丁仲礼还抛出了一句非常霸气的回应，\n\n“这不是人类拯救地球的问题，是人类拯救自己的问题，地球用不着你拯救，地球比现在再高十几度的时候有的是，地球二氧化碳的浓度比现在高10倍的时候有的是”。\n\n柴静在这轮采访中吃了大亏，她实在是没想到眼前这位看起来和善儒雅的老科学家，不但完全对西方那一套不以为然，还如此咄咄逼人。毕竟她没见过老院士年轻时候为了给所里研究员争取住房指标，带着大家抄起地质锤去打架的场景。\n\n五年之后，在《穹顶之下》这部片子里，柴静把吃的亏全找回来了。她将环境污染的原因直指成品油质量，甚至是两桶油的垄断问题。经过剪辑的纪录片里，不仅，中石化的总工程师曹湘洪院士不但十分倨傲，而且显得十分愚蠢。\n\n柴静这下捅了马蜂窝，两桶油从上到下都做出了非常强烈的回应，官方的回应还算有礼有节。石油行业的管理者和基层员工直接把“汉奸”的帽子扣在了柴静头上。\n\n作为一个在煤矿区长大的，父亲是医生，母亲是教师的央视主持人，可能很难理解石油工人的骄傲。国企是共和国的长子，石油工业就是长子中的长子。虽然从行政级别上来讲，石油工业部撤并之后，两桶油的行政级别就比铁道部和铁总低了半级。不过正所谓“石油工人一声吼，地球也要抖三抖”。在中国，从余秋里和康世恩开始，石油系统的最高领导跻身国家领导人序列就是大概率事件。\n\n可惜再也没有这样的骄傲了，三桶油的前领导人，两个腐败掉了，只有从最小的中海油转到中石化的傅成玉算到站下车、安全着陆。石油价格已经长期维持在50美元的线上，这个价格对于中国的石油工业来说，无利可图，维持而已。\n\n骄傲在很多人身上都消失掉了，我最近去见了一位还在地学科研一线的同学。\n\n他打开手机，让我看他们单位的博士后群的聊天记录，这群博士后在讨论着卖户口的事情。北京博士后出站前可以利用假结婚给异性一个进京指标。这成了薪水微博的博士后一个发财的机会。\n\n然后我们聊了很多，主要是房价。谁也没想起马上就是第九个512了，第十个又怎样呢？学地质的都知道，地震是不能预测的，1975年海城的地震我们蒙对过一次，从此，再也没有人蒙对过。\n\n还是丁仲礼院士说的对，\n\n“地球不需要你拯救！”\n');
INSERT INTO `archive_remarks`
VALUES (10474,
        '\n`也不失为很好的宣传效果!`\n\n大概半个世纪前，黛安芬内衣想打入香港市场，要做一支粤语广告片。承接那次传播的代理商当时在香港还没有分公司，于是他们在美国拍好片子，到华人街找了个会讲粤语的中国老头翻译兼配音。\n\n没想到老头是广东台山人，乡音很重，用词也比较刚烈，把广告语念成了\"戴黛安坟奶罩，令你多磨的美丽\"。\n\n片子送到香港播出，笑傻了全港观众，没几天就被撤下了。\n\n`4A外企腔`\n\n这曾经是一代中国年轻人最向往的职场环境，宽松而自由，光鲜且高薪。\n\n但过去 20 年中国互联网的发展告诉我们，最终率先成事的，是 996 、狼性文化，是所谓\"互联网思维\"和\"快速迭代\"的文化。《广告狂人》里那样纸醉金迷的广告世界已经不复存在了，没有人能再喝着威士忌，灵光一现，就创作出流芳百世的作品。');
INSERT INTO `archive_remarks`
VALUES (10476,
        '\n`自己人, 根正苗红 - 不落在具体事件, 但是可以抽离出一般规律. 自己人总是好办一些`\n\n崔健父亲是空政文工团的，母亲是中央歌舞团的。1986年，两只裤脚高低不平的崔健吊着吉他在演唱会上唱起了《一无所有》。他大声嘶吼“我要给你我的追求，还有我的自由，可你总是笑我，一无所有”，从此就是华语乐坛最重要的符号。\n\n\n\n所以同样是文工团的故事，崔健一出手就是林副统帅的往事，他敢触及同性恋议题，敢于谈论文革最敏感的符号，甚至电影里面“首长的女人嫁给司机”，“国家安全部门介入房地产开发”两个桥段在打虎运动之后逐渐明朗的政商关系里，又投射出了新的寓言。\n\n\n\n如果说只是影射那也没什么，只能说崔健胆子大。毕竟老编辑讲过，如果说在中国，有一把掌握尺度的戒尺，对自己的孩子，才可以高高举起，轻轻落下的。\n\n\n\n史料表明林立果对张宁有一个逐渐从排斥到追求的过程。而《蓝色骨头》把林立果和张宁演义为心灵相通的恋人，他们两个的心意相通就像是那首结晶之曲《迷失的季节》里唱的，\n\n---\n\n`最值得写的男孩林立果`\n\n\n林立果是典型的成长在变革年代的大院子弟，他是一个对当前政治形势无比清醒的年轻人，一针见血指出了对笔杆子和枪杆子的矛盾。不仅聪明，而且桀骜不驯，对“那个旗手”很不以为然，张口闭口“她懂什么艺术”。\n\n\n\n这种想象未必符合史实，但是是一种更高级的“历史正确”。说到底，《蓝色骨头》和《芳华》都是对文工团历史的重构，但和崔健的重构相比，冯小刚的重构就显得太庸俗，太中规中矩。\n\n\n\n特别是《蓝色骨头》中孙洪为《迷失的季节》的那段配舞。一个外国人，就算是完全听不懂中文，也能从中感受到剧烈的压抑和炽热的欲望。短短的两分钟后，崔健的现代性，普世性和艺术性就和冯小刚的流行化、中国化、庸俗化截然分开。\n\n\n\n前数三十年，后数三十年，中国最值得写，最值得拍的年轻人就是林立果，只有他才配得上崔健。体制最大的受益者成了体制内第一个开口讲真话的年轻人，大逆不道的《571工程纪要》和后来伟光正的《关于建国以来党的若干历史问题的决议》显示出某种精神上的一致性。\n\n\n\n甘阳讲过，文革期间大部分人的觉醒，是从林彪叛逃开始的。至今我们读起来571工程纪要，仍然会被这位林立果内心的波澜震撼，“为了向中国人民负责，向中国历史负责，我们的等待和忍耐是有限度的”。\n\n\n\n多年以后，全世界的媒体对80后金正恩的手起刀落大呼意外，实在是小看了后生的聪明。英国《太阳报》写过一篇关于金正恩的报道，讲金正恩留学瑞士那会儿，身材适中，系发带，戴墨镜，也是一个摇滚男孩,尤其热爱“吉他之神”吉米·亨德里克斯。\n\n\n其实“后三十年”的高干子弟，每一个都是林立果的影子，满脑子革命浪漫主义情怀，极容易眼高手低，向往在战争、运动甚至是商业的大潮中建功立业。\n\n\n\n他们是忠臣逆子的对立统一，对父辈的教条和生活方式不以为然，但是一到重要历史关头，仍然对确保“红色江山永不变色”责无旁贷。\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10478,
        '\n\n\n但是周鸿祎真正尝到人民民主专政的铁拳，还要等到他读研的时候。因为要开发反病毒卡，他和两个合伙人在学校到处蹭机房，后来机房失窃，他被当做嫌疑人抓了起来。 \n\n\n\n周鸿祎一开始不肯承认，但是人民公安三下五除二，连夜审讯，不断威胁他“今晚就带他上路，送去尝尝市局的厉害”，还告诉他合伙人都已经招认。最后周鸿祎崩溃了，编造了“翻墙进机房，用哑铃砸开机箱，把CPU和内存条卖给自己实习过的公司”这样一份口供。 \n\n2010年，深圳公安派人来北京抓周鸿祎的时候，以为警察克流氓志在必得。 但是当时周鸿祎已经跑得比谁都快，去了香港。而且九门提督天子脚下，外地公安随随便便来跨省成何体统。当时主政公安部的，是一位从上海调进北京的儒雅部长，他觉得不应该轻率介入企业之间的问题，就做出批示让先转到工信部调查。\n\n\n当时居中调停的人也不少。360是红杉中国创始人沈南鹏的成名作，后来沈南鹏又成了腾讯全天候的朋友，他给双方打过不少电话。这个世界好就好在，政府有政府的大局，沈南鹏有沈南鹏的面子。于是3Q大战停了，周鸿祎安全了。 \n\n\n\n所以四年后当周鸿祎再次在香港遇到贾跃亭，两人心有戚戚，还一起吃了一顿饭。直到今天，虽然经过了酷派合作的撕逼，周鸿祎还是说自己能理解贾跃亭。只是老周觉得眼前这个人看起来和自己一样大大咧咧，但是实际上心事重重，是个阴鸷的奸雄。\n\n\n“非典时期，周鸿祎戴着面具，孤零零地坐着飞机去全国各地跑业务；3Q大战中，明知道马化腾会宣布二选一，就放一首自己最喜欢音乐，等待王功权调解失败的靴子落地”，\n\n\n\n“在雅虎中国，学英语融入外企的努力没有两天，就忍不住扯掉身上的西装，拍桌子，丢椅子。 还有铁哥们儿王雷雷带他去中央警卫局的驻地打枪，摸到冰冷杀人机器的那一刻，让他一下子就克服了多年的警察恐惧症”。\n\n\n\n中国没有阿甘，周鸿祎虽然生于70年代，骨子里仍然是一个毛派，自我美化的英雄主义者。在创业中重大的历史关头，他会自我代入 D Day前的艾森豪威尔，梁鸣海战时的李舜臣，北非战场上和隆美尔对垒的巴顿将军。\n\n\n\n历史是中国人的宗教。周鸿祎的很多决定，都是在前人的历史或者个人早年经历中汲取智慧。这在做搜索、做手机这些事情上体现地淋漓尽致。\n\n---\n\n`插了一大堆工信部领导的事. 好想找到信息源啊, 怎么不来个References`\n\n中国的互联网大佬，都没见过奇迹。他们也分为两种型号，一种是吃过社会主义的苦头，一种是祖国强大了，先尝了社会主义的甜头。1969年生的周鸿祎是老型号，1983年生的张一鸣是新型号。\n\n\n至今还有人津津乐道，三年前今日头条遭到五大门户围攻，形势岌岌可危的时候。五大门户总编辑如何一起去朝阳门内大街225号聆讯，被一位司局级干部骂得狗血喷头，这名司局级干部如今已经被带走。\n\n\n\n也有人津津乐道，这位司局级干部的直属领导，到 Facebook 扎克伯格的办公室里，一屁股坐在全球最大互联网公司CEO的座位上。那把黑色的 Herman Miller Embody 让他感觉很舒服，顺手对着桌上的摆设指指点点，留下小扎在一旁尬笑。\n\n\n\n过去几年，全中国，不对，全世界的互联网公司都经常派人去这位领导那里汇报工作。汇报工作的内容我们不得而知，但是这个单位录取公务员的标准在网站上写得清清楚楚，\n\n\n\n“党员，政治敏感性强；具有一定的组织协调能力，应急处理能力、分析研判能力和文字综合能力；计算机操作熟练，外语限英语专业报考，需要有专业八级证书，能够适应节假日、夜班值班工作”。\n\n\n\n符合上述条件的优秀公务员们就在一块整面墙的大屏幕前见证者整个中国互联网的运行，什么上了热搜，什么百度指数增长最快，朋友圈里什么在刷屏，他们门儿清。与此相对应的，新浪的新大楼里，也专门有一块屏幕用来显示这个部门的IP的访问情况，以及更重要的是，这位领导的微博页面。\n\n\n\n毕竟这位领导是中国互联网产品的重度用户，曾经问过一句发人深思的话，你们用过陌陌吗？\n\n\n\n但是即使功课做到了这个地步，新浪和微博汇报的工作没有今日头条汇报的工作更能让领导满意。毕竟门户的总编们从前都是大报大刊出来的，没有胡舒立大姐的命，还都得了点胡舒立大姐的病，领导的意见总是贯彻得不彻底，不坚决。而今日头条的工程师们，在完全理性思维、产品思维的张一鸣领导下，真的是听党指挥，能打胜仗，作风优良。');
INSERT INTO `archive_remarks`
VALUES (10480,
        '\n`11年的大稿, 我不是林彪`\n\n关键点是：傅盛为什么要离开360？是因为为非作歹、蓄谋叛逃、恩将仇报，还是功高震主、迫不得已、一走了之？当然，事情原貌肯定不会是单纯的一边倒。听听故事吧。请注意，这是一段傅盛口述的历史。信不信由你。\n\n傅盛从3721开始就跟着周鸿祎，一直到雅虎，再到奇虎。从一个一线员工做到360安全卫士事业部总经理。2008年周鸿祎把奇虎分成三驾马车：搜索，360，口碑营销。傅盛是三驾马车之一的掌舵者。那时是傅盛和周鸿祎的蜜月期。不过奇虎的三驾马车很快就只剩下了一驾：搜索败了，口碑营销是鸡肋，不主流、没潜力，只剩下360一枝独秀。但，360不是周鸿祎亲自掌控的业务，他寄予的重望和大量的精力一直在搜索。\n');
INSERT INTO `archive_remarks`
VALUES (10482,
        '\n“南瓜张”本名张楠赓，北航博士，也是“四大天王”之一。2013 年以前，比特币挖掘者们只需要使用显卡就可以源源不断地获得比特币。那时他就设计出了专门挖掘比特币的 FPGA 矿机，卖给老外，一年能赚十几万。南瓜张是个动漫宅，他给这矿机起名“伊卡洛斯”，广告图上是动画片《天降之物》里的同名女主角。\n\n---\n\n`又是中科大, 让我想起: 庄重和胡森都是科大本科, 耶鲁PhD`\n\n李笑来当初很看好烤猫这个中科大少年班的学生，他在演讲里这样夸过烤猫：“烤猫的股票是目前比特币世界里最值得投资的唯一股票，道理特别特别简单，其它一切芯片生产商和管理者都没有烤猫的脑瓜儿，人家有详细的精算模型，这是数学的问题。”\n\n---\n\n李笑来有个发小叫罗永浩。\n\n\n\n当时罗永浩在延吉六中，成绩不好，留级了一年，刚好等来了转校生李笑来。两人年轻的经历其实不太一样，罗永浩脾气倔，高中便辍学，自己在外打拼；李笑来的人生相对顺风顺水，后来考上了长春大学会计专业。\n\n\n\n但他们有一个共同点，就是野心比较大。罗永浩辍学之后，他俩有一次坐在延吉的马路牙子上晒太阳的日子。罗永浩突然骂了一句，他妈的，\n\n\n\n“咱们这辈子总得干票大的”。\n\n\n\n1994 年，李笑来念大三，看到长春火车站旁边有个批发市场在招商，便跑去谈合作。他回到延吉老家，与当时已经在闯荡江湖的罗永浩一起，在报纸上登广告，帮批发市场赚了二十多万，自己拿到两万块的提成。\n\n\n\n李笑来没要现金，而是在批发市场里选了个位置不错的柜台，卖电脑组装件。1997 年，生意人李笑来做到了金鹰板卡东北地区总代理，有了一些积蓄，不巧父亲一场重病，钱又花光了。\n\n\n\n最后罗永浩给李笑来指了条明路，去新东方当老师。罗永浩之前跟李笑来倒腾过一阵子电脑配件，还是没赚到钱，于是苦学了一段时间英语，还在简历里说自己当过一段时间传销讲师，顺利入职新东方。不过后来跟罗振宇访谈的时候他澄清，其实是吹牛，没讲过。在新东方里，还没过 30 岁的罗永浩被人喊作老罗，凭借一套老罗语录，成了网络红人。\n\n---\n\n以太坊刚出来的时候，炒币者们只是觉得，这是又一个来骗钱的山寨币罢了。\n\n\n维塔利克·布特林是个 90 后，李笑来帮批发市场招商那年，他出生在了俄罗斯。6岁就随父母移民加拿大的他，在 2011 年开始为《比特币周刊》工作，那时他才 17 岁，是个天才程序员。\n\n\n\n但维塔利克说自己不是一个比特币信徒。他挖过几枚比特币，还用它们买了一件T恤，现在这件早就被他扔掉的 T 恤已经价值十几万块了。\n\n\n\n2013 年 10 月，比特币涨到了几百美元，与此同时，使用比特币进行交易的暗网黑市”丝绸之路”被 FBI 捣毁，“比特币洗钱”的议论此起彼伏。维塔利克看到了比特币的成功，也看到了比特币的局限。年末，他创立了以太坊。\n\n\n确实，两年间比特币网络的算力涨了 1.2 万倍，大部分人最后都只剩下姿态了。曾经控制了全网 30% 算力的烤猫，被稀释到 1% 都不剩，黯然退场，一同离开的还有许多个体户矿工。在这个中国比特币的迷惘年代，李笑来也说“不要和周期对着干”，闲下来写了一篇《写给女性的性高潮指南》，广受女青年好评。\n\n\n不过这次的峰会上没有李笑来的身影。面对区块链，那时的李笑来似乎并不很感兴趣。他在 2015 年 12 月的《比特币世界简明生存指南》里说：“在我眼里根本不存在什么区块链技术，这个概念太扯淡了” 。文章主要还是在教大家怎么炒币，以及推广自己门票 999 元的私密群。\n\n\n\n结果这边李笑来刚说完，国务院的十三五规划里，区块链就被列为了重要发展方向。杭州市在西湖区建了个区块链产业园钱江西溪和景，与浙江大学隔山相望。鲁冠球的万向要在七年里投资 2000 亿，和以太坊合作，在萧山建一个创新聚能城，城里全都得用区块链技术。\n\n');
INSERT INTO `archive_remarks`
VALUES (10484,
        '\n`香港打工皇帝在深圳打工`\n\n\n这位打工皇帝到底是谁，税务局保护隐私，没明说。\n\n\n\n香港的市井街头，哪个富豪赚了多少钱，永远是最热闹的家常闲话。以往香港最高薪的职业经纪人，是李嘉诚的头号干将霍建宁。但那年媒体算了算，缴7900 万税，年收入需要超过5 个亿，而和记黄埔的财报显示霍建宁该年酬金为1.7 个亿。\n\n\n\n好事者翻了翻港交所权益披露记录，发现腾讯总裁刘炽平，在2010 年行使了大概440 万股腾讯控股认股权，账面获利6 个亿左右，刚好符合打工皇帝缴的税。\n\n\n\n香港人恍然大悟：原来我们的打工皇帝，现在已经在给深圳公司打工了。\n\n`北上的香港人`\n\n刘炽平跟马化腾几乎是相反的成长路线。他完全是精英出身：生于北京，6 岁全家移民香港，在香港读最顶尖的传统名校英皇学院。很多商界、学术界和政界人士都从这里毕业，包括梁振英特首。\n\n\n\n90 年代他又到美国念书，拿了一个本科和两个硕士学位，分别在三家名校。95 年他在斯坦福读电子工程硕；在那之前一年，同系的一位华人学长，刚刚做了一个网站准备注册成公司，网站名叫Yahoo。\n\n\n\n这种香港背景、海外留学的职业经理人，在两千年初的中国互联网公司里，很受欢迎。这些人能给国内企业带来成熟的企业体系和国际化的视野。\n\n\n\n蔡崇信虽然是台湾人，但从95 年开始他就在香港的投资机构工作。而在香港土生土长的古永锵，在去给张朝阳做CFO之前，辗转过咨询公司和外企。\n\n\n\n熟悉西方那一套的香港人，都跑到中国互联网公司里发光发热了。\n\n\n所以即便每次马云一拿起麦克风就霸气凌然妙语连珠，英文也不在话下。但我猜，香港人还是会更喜欢马化腾的潮汕口音吧。');
INSERT INTO `archive_remarks`
VALUES (10486,
        '\n\n实际上民谣最初是非常激进的表达方式，几乎总是伴随着政治思潮而流行。30 年代的民谣复兴，本质上是左翼运动的一环，是人们的抗议的声音。‍Bob Dylan 的偶像 Woody Guthrie 和 Pete Seeger 在那时候组了一个叫人民之歌的乐队，歌唱战争和政治对人民生活的压迫。\n\n\n\n后来 Bob Dylan 在 60 年代越战背景下，写出来 Blowing in the Wind，引领了新民谣浪潮。歌曲发表几个月之后，马丁·路德·金发表了著名的 I Have a Dream 演讲，拉开了美国民权运动的大幕。\n\n---\n\n\n但是没有人可以否定，上电视几乎是音乐人唯一的超速上升渠道。宋冬野的《董小姐》，马頔的《南山南》都是被人在电视上翻唱火的。\n\n\n\n后来翻唱节目实在找不到好歌了，电视台就开始策划原创类的音乐节目，然后赵雷、莫西子诗、杭盖、南征北战、AR 才一个接一个被大家熟知。\n\n\n\n下定决心不上电视，那你就做好熬的准备。李志是没有上过选秀节目。但李志明年 40 岁了。\n\n\n\n前年还有一次我采访宋柯，他说了一句话我印象深刻，大概是“音乐选秀节目很火，但那是电视产业的事情，本质上跟音乐产业没什么关系”。然后我看他第二年就上了《蒙面歌王》当评委。\n\n\n所以赵雷这次火了之后，很多人泼冷水，觉得赵雷被过誉了，觉得那首《成都》很平庸。\n\n\n\n我倒觉得，不是赵雷的水平只到这儿，而是只有这种东西在现在的媒介环境里火了。小情小爱，故乡故土，南方姑娘，北方女王，可以了。你还指望从电视上听什么呢？\n\n\n\n我就敬李逼是条汉子，敢唱人民不需要自由。\n\n\n但在我们这里的，民谣从来没激进过。从 1995 年开始，我们听的就是《同桌的你》《睡在上铺的兄弟》《恋恋风尘》。我们的民谣歌手从一开始，唱的就只能是小情小爱小迷茫，老编辑在知乎上说中国民谣两大窠臼，唱别人想去不能去的地方，唱自己想日不能日的姑娘。\n\n所以这个时代没有好内容，这个锅是创作者的，也是渠道的，但归根结底，是这盛世的。\n\n\n\n这么看，混民谣圈，不错了。有听众，有场地，有演出，签个公司努力跑巡演，等着哪天上上电视睡睡果儿。\n\n---\n\n`预言家了. 有嘻哈!`\n\n\n和《咬春》一齐被文化部禁掉 120 的首违规歌曲，基本上被说唱霸榜。阴三儿被禁掉几乎 20 首歌，比如《北京晚报》、《老师你好》，占了整个榜单快六分之一。\n\n\n\n我去年回广州过年，拜访一家在广东说唱圈非常有名的厂牌。厂牌的负责人几乎可以说是广东最优秀的嘻哈音乐制作人。工作室比我想象中小，当然也没有花里胡哨的钞票毒品大长腿什么的。他给我泡了一杯茶，我们聊了一会儿，然后和我一起到楼下酒楼的快餐部吃了 12 元一份的晚餐。\n\n\n\n我当时想说的是，你TM比我们写字的还穷啊！');
INSERT INTO `archive_remarks`
VALUES (10488, '\n`中国有嘻哈, 把好多人激动的. 也是, 怎么是它呢, 不和谐呀, 离纳入主流本以为挺远的. 总也有偶然`\n');
INSERT INTO `archive_remarks`
VALUES (10490, '\n`现实中, 老编辑买了. 并给他带来了安稳与慰藉`\n');
INSERT INTO `archive_remarks`
VALUES (10492,
        '\n`几个四川人. 郭敬明, ayawawa, 周小平`\n\n`莫怪无心恋清境，已将书剑许明时`\n\n2000年，还在富顺二中读高二的郭敬明参加了第三届“新概念作文大赛”。参赛前，郭敬明找到语文老师陈泽林，请求老师指点指点自己。陈泽林带着郭敬明在学校的湖边一圈一圈地走，告诉郭敬明，你得在意识流上下下功夫，但还是要有一个线索，不能太散。你肯定获奖，但几等奖就看你造化了。\n\n“成都小吃联盟”反映出的是成都“选秀重镇”的特殊地位。05年超女五强里有四个人出自成都，09年超女前四里三个人也来自成都赛区。');
INSERT INTO `archive_remarks`
VALUES (10494, '\n`杀死那个中年男人`\n\n');
INSERT INTO `archive_remarks`
VALUES (10496, '\n`是的我有印象. 各执一词, 枉然不供`\n');
INSERT INTO `archive_remarks`
VALUES (10498,
        '\n`妄人赚钱`\n\n张番番的 “代言人” 宋春雨则主导了张一方的意见。有人形容宋春雨 “非常真诚地认为自己老公是天底下最有才华的导演，只缺一个机会。”\n \n最后终于有一次，张番番松口了，说，可以谈。\n \n一场漫长又波折的谈判启动了。张番番上来就要了一个亿。\n \n那时，林奇心里面 “肯定当场就答应了”，但他嘴上没把话说死，出于他一贯在谈判中表现的精明，他想：过两天，晾一下，还可以还价。\n \n没想到，过了两天，张番番先说了：兄弟，我觉得一个亿还是太少了，能不能再加两千万。\n \n价格就这么一路加下去。\n\n---\n\n和林奇同期的湖畔大学学员、唱吧 CEO 陈华曾在采访中回忆对林奇的印象：他年纪好像比我还小一点，公司上市了，又在折腾《三体》电影。我觉得研究三体电影的人一般都是比较有梦想的人，这个事情还挺有挑战。\n\n\n林奇问刘慈欣，“给岁月以文明”——到底是什么东西在支撑着这句话？《三体》的故事跨越了几亿年的漫长岁月，支撑人类往前走的，就是文明。“而游戏和文明的关系是什么？就是传承。哪怕我们只是做一个小小时间段的复原。” 林奇说，但这很重要。\n \n林奇意识到：已经野蛮生长了十年的游族，到了应该考虑使命和价值观的时候了。那之后，游族 logo 下面多了一句话：用科技传颂文明。拿到《三体》的这几年里，游族也经历许多波动。2019 年，和林奇一起创业的七八个人里，前前后后走掉五六个。这期间，有过哭泣的挽留，也有过很难看的撕破脸皮。\n\n\n那段时间，他约刘慈欣在北京详聊《三体》未来的计划，尽管大刘的很多作品都被影视化了，但在作者心中，“《三体》毫无疑问是最疼爱的儿子”。\n \n见面那天，他们从下午一直聊到晚上，聊了将近四个小时，刘慈欣讲了一些经历和故事，也表达了对林奇的理解，他释怀了一些，“谁容易过呢？” 坐在游族大厦的林奇变得不一样了。\n \n在被问到 “这几年里，你心中一直关于自己的疑问是什么” 时，林奇回答：“就是到底应该干什么的问题。90 岁的时候，如何跟这个世界 say bye。”\n \n“传说临死的时候脑子是会很清楚的，在那个无比清醒的时刻，你怎么跟世界说再见。”\n \n“所以你很怕临死之前想的是：我怎么把《三体》给搞毁了？”\n \n“很怕死的时候，脑子最清楚的时候，才发现自己是这么傻的一个傻 X。”\n \n“以前做不好《三体》还有各种客观因素，今天我要一个人面对这个问题，我要一个人承担这个责任。” 林奇说。\n \n“反正最先开局的人也都走了，那就从零开始。白纸一张，没有包袱了。”');
INSERT INTO `archive_remarks`
VALUES (10500,
        '\n`湖南卫视, 东方卫视, 魏文彬和黎瑞刚在体制内的奋斗`\n\n`以及怀念改革, 怀念改革派. 改革最开始的时候永远是最进步的, 然后发展和变化慢下来`\n\n“如果我们什么都听命政府，百姓会蔑视我们；如果我们完全遵从民意，政府会把我们驱逐出去……这是两难的。如何在官人的剪子和百姓的票子间走钢丝，如何保持清醒的头脑和永不磨灭的热情——我们还真有一些可以意会无法言传的经验、教训。”\n\n\n15年时，《锵锵三人行》已经做了18年，而凤凰卫视开播也20年了。窦文涛像王质一样，在凤凰卫视小小的直播间里放飞自我太久，不知道今夕是何夕。现在连黎叔都入主TVB了，香港大陆一盘棋，哪里还是法外之地呢？\n\n15年窦文涛把大陆说成中国还可以认错道歉，大不了也就是再被迎客松一回；到了17年，窦文涛再试图挑战审查制时，《锵锵三人行》发了条微博，“因公司节目调整，锵锵暂时停播，感谢大家多年厚爱，后会有期。”\n\n《极限挑战》停播的时候，总导演严敏曾说过一个故事，西西弗斯因为触犯了众神而被惩罚，循环往复地往山顶推着岩石，岩石却在还未到达山顶的时候又滚落下去，宿命一样虚无而徒劳的悲剧，\n\n“做节目的人其实是一个推石上山的人。推石上山这个过程，你不能去追求结果，只能告诉自己，我努力的去推了，这段时间我推着石头就好了。”\n\n这不仅是魏文彬、黎瑞刚、杨伟光、陈长乐的宿命，这是所有电视人的宿命。要将改革进行到底，电视人永远在路上。\n\n');
INSERT INTO `archive_remarks`
VALUES (10502, '\n`老道消息编辑部开拓新SKU. 论点不新鲜, 赚钱, 正规, 社会支持, 粉丝短视. 把握得还可以`\n');
INSERT INTO `archive_remarks`
VALUES (10504, '\n`四十年了, 企业家和国资委们的故事还没结束`\n');
INSERT INTO `archive_remarks`
VALUES (10506,
        '\n`把握得还可以. \"大人, 时代变了\". 还混杂着文科生和人文主义者的不满和恐慌.`\n\n网上流传张小龙说过一句话，“产品经理永远都应该是文艺青年，而非理性青年”。\n\n这句话哪怕是鲁迅说的，安在张小龙身上也显得很合适。关于龙哥的文艺和深沉，和菜头《我所知道的张小龙》里写得很清楚了，这篇文章没看过就别说自己是做互联网的了。\n\n但张小龙之后，你还说得出互联网行业有哪个以文艺、感性著称的产品经理，做出过现象级的产品或者企业？\n\n过去三年，整个中国互联网最成功的公司是今日头条。头条是一家什么样的公司？工程师文化而非产品经理文化占主导，简单来说就是不服少逼逼，跑个 AB Test 看看。\n\n潘乱之前那篇《微信已经老了，头条永远年轻》里写得很清楚了，“就连火山里两个小视频之间那条缝的宽度都是做几百组 AB 做出来的”。\n\n张小龙和张一鸣，都姓张，但却是两个极端。前者信奉直觉，喜欢做先验式的判断；后者极端理性，一切用数据说话。\n');
INSERT INTO `archive_remarks`
VALUES (10508, '\n`李文星因为传销 (假招聘实则收费加传销) 的事情死的时候. 提到了李文星和魏则西都是很好的学校`\n\n`读大学没有用了`');
INSERT INTO `archive_remarks`
VALUES (10510,
        '\n`郭敬明配得上列传. 很爱他`\n\n`我的心, 永远和北漂, 凤凰男, 自卑的被欺凌者在一起`\n\n2016年之前，郭敬明的公司最世文化每年净利润上千万。但他始终有危机感，经常会在下班后给员工打电话，“又出来了一个新电影、新趋势，你看了吗?我们怎么办啊，是不是跟不上新趋势了?”\n\n为了跟上小说影视化的趋势，2013年，郭敬明决定当导演，把《小时代》搬上大银幕。他踌躇满志，“这次我进影坛，一定会像当时我进文坛一样，震死他们。”\n\n为了拍好电影，他连自己的脾气都改了.《小时代》监制柴智屏接受《时尚先生Esquire》采访时说，拍片过程中，两人没少争执。但某次开会，郭敬明突然直视着她，说：“柴姐，你真像我妈妈。”又把母亲的照片拿给她看。从此之后，每当再有分歧，他就改口叫她“母后”，“‘母后母后，我希望可以怎么怎么样。”\n\n《爵迹》最令郭敬明骄傲的是开篇3分钟的长镜头。这个长镜头从2月份开始做，直到8月30号才做完，半年的时间就在做这一个镜头。“我这个人的性格就是不放弃，不服输，要做就一定把事情做好”。\n\n---\n\n资本在郭敬明身上获得巨额回报后，曾像潮水一样向郭敬明涌来，但现在食尽鸟投林，落了白茫茫大地真干净。16年的郭敬明就像菲茨杰拉德写的盖茨比，\n\n“我们就这样扬着船帆奋力前进，逆水行舟，而浪潮奔流不歇，将我们推回往昔岁月。”\n\n\n来自四川自贡的郭敬明现在的身份证上写着上海市静安区。他在静安区买了栋别墅，市价两亿，路边社说那是汪精卫四姨太的老房子，陈璧君说“1. 完全捏造 2. 已交律师处理”。\n\n2001年，郭敬明参加了第三届新概念作文大赛，“我是很认真地想要拿第一名”。为了确保得第一，他仔细研究了前两届新概念获奖者的文风，才敢投出作品。他写了整整7篇5000字的文章，买了7本《萌芽》杂志，剪下7张报名表。\n\n---\n\n结果他高考失利，栽在自己拿手的作文上，总分60分，他得了30分，第一志愿厦门大学没去成，去了第二志愿的上海大学。\n\n上海大学没厦门大学好，但高中时郭敬明就迷恋上海， “就在那些无聊的上海人大谈上海的俗气并且一脸不屑的时候...为什么要让不爱上海的人出生在上海？上帝一定搞错了。我固执地认定我将来的生活应该在上海。”\n\n但是上海大学是上海人的大学，学校一半以上都是上海本地学生，他们班就他一个外地人，老师上课直接用上海话开讲。\n\n\n---\n\n07年父亲50岁生日时，郭敬明准备买辆车送给父亲。一位做出版的商人听到郭敬明要买车，于是推荐成都的一家做汽车专版的报纸负责人。对方表示可以代郭敬明选车，然后亲自送到自贡去，郭敬明很开心地答应了。\n\n但就在父亲收到汽车的第二天，郭敬明就在报纸上看到自己父亲坐在汽车上的照片，标题是《暴发户的可笑嘴脸》。郭敬明哭着给父亲打完电话后，买光了周围的所有报纸，在垃圾桶里烧成灰烬。郭敬明在《我这样的儿子》中写，“我真的好恨他们”。\n\n这不是郭敬明第一次被欺骗。\n\n这话郭敬明肯定不认可，“我这样一个人，二十多岁、三十岁，没有爱情，大概七八年没有假期，付出了这么多在工作上，另外一个人他整天都在玩，在谈恋爱，结果他成功了，那你觉得这样合理吗？”\n\n郭敬明很勤奋，白天接受采访出席活动，晚上挑灯夜战写稿，一天能写两万字，比起点上的网文作者还要拼，敬业程度堪比唐家三少。\n\n但唐家三少最近也陷入抄袭风波里了，现如今高产的网文作者，十有八九都避免不了抄袭的指控。而郭敬明抄袭，在法律上比他们走得更远。\n\n郭敬明在采访中表现出的对自己的剖析是清醒的，在散文中写出来对世界的感触是敏感的。如果老老实实当一个普通作协会员是够用的。但是动辄要在现实之外架空一个新世界，庞大的人物关系和世界设定，不借鉴借鉴怎么行呢？\n\n中国有五千年的历史，也就一部《红楼梦》，美国Jazz Age几十年也就出了一个菲茨杰拉德，勤奋有用的话，还要天才干嘛？如果真的要写当代红楼梦的话，也是二十年之后的王思聪写。\n\n《天才的编辑》里面的主人公麦克斯铂金斯一手挖掘了菲茨杰拉德、海明威、沃尔夫，他们能被写进文学史的作品，也就屈屈那么几部。而这几位天才写完了这几部作品后，老得老，疯得疯，死得死。谁能像郭敬明一样一年一部戏地折腾。\n\n所以郭敬明虽然身处一个菲茨杰拉德相似的时代，也不断在作品中寻找菲茨杰拉德式的灵感，但是永远成为不了菲茨杰拉德。他没有菲茨杰拉德的天分，更承受不了菲茨杰拉德晚年落魄的苦难。\n\n他的成功是世俗意义上的成功，是一本书卖几百万册的成功。\n\n03\n\n黎波讲得很明白：“有些人是做事，郭敬明是做局。”郭敬明想走的路，是郭德纲的路，是赵本山的路，是做个大班主，给手下铺路。\n\n---\n\n`我开始跟你一样. 像你忘记我那样忘记你`\n\n“当我的生活步入正轨时，我开始跟你一样，像你忘记我那样忘记你，然后忘掉那些痛苦，开始变得平庸可耻。”');
INSERT INTO `archive_remarks`
VALUES (10512,
        '\n`千古文人侠客梦, 可文人最难挺直脊梁. 一百个前人, 一百个今人, 一百个理论, 警句. 都没法给文人找条路`\n\n`盛世. 但是一些我们曾珍视的, 已经不合时宜了.`\n\n“中国的文人，对于人生，至少是对于社会现象，向来就多没有正视的勇气。中国的文人也一样，万事闭眼睛，聊以自欺，而且欺人，那方法是：瞒和骗。在事实上，亡国一次，即添加几个殉难的忠臣，后来每不想光复旧物，而只去赞美那几个忠臣”。\n\n一个时代，唱挽歌的只有一个就够了。孔融死而士气灰，嵇康死而清议绝。剩下的人，该干啥干啥，戏精才给自己加戏。\n\n就算是嵇康，灵魂站在云端，看他的朋友都好好活着，升官的升官，发财的发财，隐居的隐居，他也会觉得现世安稳，岁月静好，不会分大家一个三六九等，不必为谁痛心疾首，更没有当谁是敌人。');
INSERT INTO `archive_remarks`
VALUES (10514, '\n`吃千家饭的滴滴`\n');
INSERT INTO `archive_remarks`
VALUES (10516,
        '\n`这篇文章也一样!`\n\n但是最后能不能拍出来，你们还是要有清醒的认识。除了光荣伟大正确的党，谁也别觉得自己身经百战。\n\n\n余华当年和张艺谋拍《活着》，张艺谋对余华说，这些敏感镜头应该这样这样这样拍才不会被删除。余华听了觉得很佩服张艺谋，真是和广电总局身经百战。但是到审片意见下来之后，余华发现这些敏感镜头还是一个一个被删掉了。\n\n\n\n余华说，我从此再也不佩服张艺谋了，我只佩服共产党。\n\n\n\n也许昨天横空出世的雄安新区又让有些导演蠢蠢欲动，准备在二十四史中找出几个迁过都，建过新城的朝代拍一拍。\n');
INSERT INTO `archive_remarks`
VALUES (10518,
        '\n`这一篇死得也很快. 要想明白统治阶级和被统治阶级的屁股坐在哪里. 要想明白. 还有想明白实际排春晚的人他们有多理解自己, 有多同仇敌忾. \"我们很满意, 评价看观众\"`\n\n还好梁左死了，要不然梁左还要写新版的《我爱我家》之一带一路，《我爱我家》之老虎与苍蝇。\n\n\n\n到时候像本届春晚一样，新版的《我爱我家》“为屏幕前的中年男子量身打造：老婆想生二胎，母亲老年痴呆，父亲电信诈骗，女儿舔屏鹿晗，想想明天，要给维族人赔钱”\n\n\n\n其实我们觉得春晚尴尬太正常了，毕竟本来就不是给我们看的，导演杨东升表态：“我们很满意，评价看观众。”\n\n\n\n观众到底是谁啊？我们配做观众吗？\n\n\n\n昨天到今天又有很多人在朋友圈里转发1990年春晚，那一次领导突然地出现在舞台上，可是现在转发这些有什么用呢？现在领导自己在家就能研究声乐的几种唱法，看什么春晚啊？\n\n---\n\n\n一对小夫妻上来腻腻歪歪，想展现甜蜜日常，结果用力过猛，就差当众甩舌头了（最后果然没忍住甩了舌头），完全放飞自我，而我们观众的感觉就像坐了一趟地铁旁边站着一对不停舌吻的情侣，全程长达十五分钟，并且不能假装看手机，尴尬氛围可想而知。\n\n\n\n傅园慧倒是如大家期待地讲出了那句“洪荒之力”，但场面却没那么好看了，这位以独具个性著称的运动员，好像在一群人的簇拥下走进了装疯卖傻的死胡同。\n\n \n\n最令人心疼的还是各位赶着“年末大考”的段子手们，这题型，眼看就要交白卷啊，只能悠悠挤出一句：这个节目好尴尬啊……\n\n\n\n只有梁欢还能坚持发微博：“看这假的让人心碎的形式，我就说谁真唱吧。”\n\n \n\n然而一个小品之后，梁欢的这条微博不见了，直到春晚结束，他也再没说过话。不知道梁欢被禁言的人还以为梁欢一直不说话是因为没听到真唱的，多影响春晚形象啊，广电总局就不管一管吗？\n\n但这届春晚还是很有突破的。\n\n\n\n如今春晚上可以不仅可以大胆热吻，更可以大谈繁殖和生育。\n\n\n\n今年孙涛、闫学晶的《真情永驻》就勇于给大家添堵，大过年的，当着一家老小的面说出了“小姐”、“接盘”、“流产”这些低劣的笑点，不知道是不是真的有人看了这个小品就能立即燃起造人的冲动。\n\n \n\n一个做体力活不小心流产还不敢告诉丈夫的妻子，由于自己失去了生育能力选择主动离婚，破镜重圆之时还心心念念着用试管婴儿要孩子，我觉得结尾主持人没为两人抱上来一个热乎乎的孩子都对不起他们对繁殖的执念。\n\n\n\n生二胎，生二胎！这才是今年考研政治的重点，papi酱你划错了，明年一定要改进。\n\n\n\n这就是为什么papi酱虽然提前给我们预报了今年春晚的所有套路，但是我们依然没有答对春晚的中心思想。\n\n \n\n我忍不住要同情一下微博上做性科普的@女王C-cup，她在年前发微博说：\n\n \n\n“性科普做不了，所有表达都已成为敏感词。还记得我说我的课程不让出现性器官、性行为吗？无数的阻力在你们看不到的地方。因为不允许表达。不要问我为什么不能单纯的谈性说爱，我说的每一个字都是敏感词。每一天我都有可能不再出现。”\n\n \n\n如今繁殖是政治正确，性却是敏感词了。\n\n\n\n就好比昨天人人都在看春晚，评价春晚歌手的唱法却成了敏感词。\n');
INSERT INTO `archive_remarks`
VALUES (10520,
        '\n`杭州与阿里同呼吸共命运`\n\n在阿里巴巴内部的视频文件里，可以找到王国平和马云最初的交集。王国平陪同浙江当时的老书记视察民营企业，老书记问马云：“你希望这个公司将来做到多大？” \n\n\n那时候阿里巴巴是个毛线也没有的公司，别说淘宝支付宝，连中国供应商这个祖师爷级别的产品，也是在两年后才诞生的。但是马云很敢说，\n\n\n\n“我希望它会是一家市值五亿到五十亿美元的公司。” \n\n\n\n一向是敢想敢干的王国平也没想到马云放这么大一个卫星，赶紧出来打圆场：“张书记，小马可能说的是他要把公司做成五亿到五十亿人民币的公司。” \n\n\n\n马云是个情商很高的人，他犹豫了一下，但是还是忍不住纠正了王国平，“不是人民币，我说的是五亿到五十亿美元的公司。” \n\n\n\n之后的十年，阿里巴巴和杭州可谓是同呼吸共命运。\n');
INSERT INTO `archive_remarks`
VALUES (10522, '\n`也提到了联机, 提到了可伸缩服务器. 分手厨房, 糖豆人, 我们之间, 动物派对, 恐鬼症`\n\n');
INSERT INTO `archive_remarks`
VALUES (10524, '\n`打吧! 懂车帝, 电商, 教育, 希望字节手上满点`\n');
INSERT INTO `archive_remarks`
VALUES (10526, '\n中国的企业家既像陈清扬，证明清白是很难的。而且经过一次漫长的“民诉官”，就像这头牛被骟过了一样，一腔热血与骄傲早就付诸光阴。\n');
INSERT INTO `archive_remarks`
VALUES (10528, '\n`国家队和江湖人合力割韭菜的旧事`\n');
INSERT INTO `archive_remarks`
VALUES (10530,
        '\n`焦虑 约等于 我还想要更好的但是我能力还不足够社会也还没到那一步提供不了`\n\n但是他们不知道，三年一闰，好歹照轮。莆田人讲，无钱人惊无米，有钱人惊死，我有时候想，不如把这些年攒的这些家产败光算了，也似如今天天煎熬。\n\n');
INSERT INTO `archive_remarks`
VALUES (10532,
        '\n欧阳靖的说唱事业得以开展，某程度上确实受惠于他的肤色，但他非常痛恨外界把关注点放在他的肤色上。然而，当他需要把做变成产品投放到市场上的时候，他又选择突出自己的华裔标签。这种对自己身份认同的矛盾和摇摆，在他成名后持续了很长一段时间。\n\n那次在香港，演出前，他和朋友去迪士尼玩，回来的时候大家坐地铁，朋友感叹了两句，“现在香港都有迪士尼了！欧阳靖你什么时候出张粤语 rap 专辑啊？”\n\n朋友说完就下了车，留下欧阳靖在地铁车厢里，拿起了笔。\n\n---\n\n30 年前欧阳靖的爸妈从香港出发去追逐美国梦，是为了生活，给后代更好的未来。30 年后他们那个在迈阿密长大的儿子为了生活，却必须回到香港。\n\n香港人有段时间误会了，以为他很有情怀，“在美国混得好好的，放下一切回来振兴粤语嘻哈”。但他最近接受香港杂志的采访说，“哪里有混得好还回来的道理，我当时在美国，差点去宜家家具找份工打了”。\n\n他刚到香港的时候，并不像后来那么受港人喜欢，很多人觉得他“根本不是中国人，连中文都看不懂”。跟人吃饭，同桌的人会叫服务员给他拿好刀叉，因为觉得他肯定不会用筷子。\n\n---\n\n他出了碟，还演了戏，在《潜行狙击》里演了那个热血警察的杨立青，主持访谈节目《兄弟帮》广受好评，深得本地师奶喜爱。他后来甚至出了首歌，就叫《师奶杀手》。香港人逐渐开始喜欢他了，那种感觉大概就像长辈喜欢一个聪慧的远房侄子。\n\n这座城市用一种他未曾想到过的亲切接纳着他。\n\n他回美国接受采访，说自己在香港简直就是 Justin Bieber 在北美的地位。他甚至都搞不清这些东西是从哪儿来的。他觉得自己演技一般，粤语 rap 的技巧比英语差得多，好像配不上这一切。\n\n如果一定要解释，他只能认为是上帝给他的。\n\n在香港那些年，他成为一名虔诚的基督教徒，有了常规的教会生活。他相信上帝当初“夺走”属于他的一切，是一种帮助，避免他被自我吞噬，深陷于名利虚化之中。\n\n---\n\n`Pragmatism - for the downtrodden, beleaguered, wide choice, hardened, self-made`\n\n前几周陈冠希在直播节目里痛骂主持人不懂嘻哈，直言看不起中国有嘻哈这档节目，说了很多理由，过度商业化、娱乐化什么的。但聊到最后的底线问题，归根结底还是因为这档节目涉嫌抄袭韩国的《Show Me The Money》。在嘻哈世界里的价值体系里，可以凶可以狠可以拽，就是不能抄。\n\n这个这几年一直高喊“HipHop 是我爸”的家伙，确实已经把自己全部价值观衔接到了 HipHop 那一套精神体系里面，他无法理解一个赝品是怎么流行起来的。\n\n但欧阳靖可以。某程度上也因为他在里面获得了收益，不管是名利还是感受中国的机会。更重要的是，从 2008 之后，欧阳靖感受到了中国文化体系对自己的善意，加上虔诚的信仰，他趋向于尽量包容两种体系。');
INSERT INTO `archive_remarks`
VALUES (10534, '\n“经济上相互独立，身体上相互吸引，思想上可以做对手，事业上可以做队友”\n\n要么是经济思想自由的新女性, 要么是宜室宜家可以共同奋斗的好伴侣\n');
INSERT INTO `archive_remarks`
VALUES (10536,
        '\n`first world problem`\n\n今年是拼多多的五周年，面对着流量成本上升，以及寻找新的增长点的压力。黄铮再发内部讲话，号召员工「开启硬核奋斗模式」，all in多多买菜，杀入社区团购战场。\n\n');
INSERT INTO `archive_remarks`
VALUES (10538, '\n`8116 + 8. 当时我就感叹, 刘强东发的感叹号好多啊. 可能就是做老板的殊途同归`\n');
INSERT INTO `archive_remarks`
VALUES (10540, '\n`这广告写到一定程度了`\n');
INSERT INTO `archive_remarks`
VALUES (10542,
        '\n当时我们内部有三个团队报名来做这个叫“微信”的产品，互相之间不告诉对方研发的进展。这里面包括当时无线事业群的团队，还有张小龙的团队。张小龙他们此前负责做QQ邮箱。当时公司高管用黑莓手机来收手机邮件，这个团队负责开发过一个手机邮箱，初衷是让每个员工都能很方便地使用手机邮件。因为他们有这个经验，后来也加入去做微信这个新项目。这个团队很快研发出来了新产品，今天的微信，其实就是以快速短邮件为原型的。\n\n\n\n\n创新机制：鼓励“兄弟爬山”\n\n陈晓萍：看来腾讯鼓励企业内部团队之间的竞争和创新，您认为这是腾讯企业文化中的一个核心理念么?\n\n马化腾：其实这也是我们慢慢摸索和总结出来的经验，内部一些良性的竞争是很有必要的，往往自己“打”自己，才会更努力，才会不丢失一些大的战略机会。因为你如果不做，这个行业里总有人站出来，做一个抓住机会的产品。正因为微信是从内部竞争的打拼中脱颖而出，这让它足够强壮，能够在外部竞争中站立得住。\n\n在公司内部往往需要一些冗余度，容忍失败，允许适度浪费，鼓励内部竞争和试错。对于大企业来说，适度浪费、试错，获取在战略大盘的稳定，是必要的。但“赛马机制”也有一定的缺陷。\n\n\n\n\n我们也走过弯路，我们过去搞了一个研发中心，还真的说你们就干创新，结果发现干的都是重复性的产品工作，并没有做到真正的创新。我们事后回头看，很多创新点，并不是我们搞一个创新部门，你们只干创新，就能做出创新来。别的部门就不做创新吗?现实不是这样的，很多创新往往是自下而上的，总是在不经意的边缘地方出现。比如微信，不在成熟无线业务里面诞生，反而是在以前做邮箱的广州研发中心诞生。今年我们有款很受用户青睐的游戏叫“王者荣耀”，它是由不太受人关注的成都团队做出来。如果企业完全自上而下，说看好了往哪边走，这样往往企业没有活力，很僵化，尤其在互联网变化特别快的产业非常危险。\n\n\n\n\n陈晓萍：有趣的是,腾讯又特别强调合作分享,不仅是内部的合作，也强调外部的。您曾经向合作伙伴致公开信, 表示孤木难成林;只有赋予开放分享的基因，生态才可能长成一片森林。而且您认为腾讯的开放精神是源自其社交基因——社交网络天然呈网状，鼓励朋友间开放分享。请问公司是如何平衡管理团队之间既竞争又合作的关系的?\n\n马化腾：我很喜欢一个比喻叫“兄弟爬山”，大家努力看谁先跑到山顶。因为这有点像我们内部竞争的方式。在试错阶段，原则上鼓励大家都可以来试，正如前面提到的自下而上的方式。评判试错结果是有个客观标准的，也就是用户和市场说了算。当然在腾讯往往是自下而上与自上而下两种方式的结合。对成熟的业务，我们采取比较稳健的管理方式，但对于新兴的模糊地带则需要鼓励自下而上的试错。一旦新兴业务成熟时，就不能完全失控，我们会通过成熟业务来帮助未成熟业务。比如一旦微信成形，腾讯会以全公司力量支持微信，包括核心的QQ关系链，也包括各种营销资源，以及与公司其他产品和业务的联动。\n\n\n\n\n“赛马机制”往往会使得所有资源朝优马倾斜，优马很可能进一步成长为“现象级”的好马。劣马则是会逐渐淡出甚至自生自灭。微信、《王者荣耀》作为胜出的优马，均是如此。\n');
INSERT INTO `archive_remarks`
VALUES (10544, '\n`总之, 说媒体人要反头条, 要不然就成了外卖骑手, 滴滴司机`\n');
INSERT INTO `archive_remarks`
VALUES (10546, '\n`劣迹斑斑的九城. 空手套白狼<奇迹MU>, 然后一口答应一尺多厚的暴雪代理合同条件拿下魔兽世界. 做不做得到再说`\n');
INSERT INTO `archive_remarks`
VALUES (10548,
        '\n于是，“赛马”这个概念被提出来了，第一季老陆亲自吆喝，主打“内部创业”。项目的产生有两种方式：第一，纯民间，自由选题，自由组队，通过评审就开干；第二，公司提供命题，竞标，民间自由组队，投标，获胜队开干。\n\n一时间，热火朝天，近千位普通员工（要知道，2010年的淘宝员工总数，也才4、5千）对赛马倾注了极大的热情，每天下班、每个周末都聚在一起讨论，整个淘宝提出了350个项目，经过多轮评审，通过了10个。\n\n公司对这10个项目寄予厚望，给他们单独辟出了一块办公区，给他们在外部和内部任意团队自主招人的权利（这个也导致了一些冲突），给他们半年内交上答卷的时间……\n\n \n\n看似活力四射，却潜藏着危机。\n\n我要寄快递，几位客满的同学，从个人用户寄快递的痛点出发，提出的项目，最终被物流事业部采纳，选手也顺利转岗，做了自己更想做的事情；\n\n聚无霸，一位技术的同学提出的内部员工自动化工作的工具，节省了数百人天的人力，最终我们让这位同学调整了自己的KPI，全职为这个工具工作；\n\n淘宝产品史，一位产品经理（就是我，呵呵）提出要书写淘宝的产品历史，公司同意让他用20%的工作时间来做这件事情；\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10550,
        '\n`听起来有点耳熟! 总之, ohayoo也很动荡. 引用: 自研不够行, 改做发行; 重度游戏不够行, 改做休闲; 国内不够行, 打国外. 认为没吃到鱼肚子`\n\n\n以前没想清楚方向的时候是焦虑，不知道该做啥，掉头发，容易误判和行为走形；现在的感觉是焦躁，方向很明确，但效率还不够高，干着急。相比之下，焦躁还是比焦虑好一点儿。\n\n葡萄君：所以你们的研发能力有哪些提升？我记得年初你说想完善中台。\n\n周巍：之前对中台的理解不够深，以为能提高效率的组织就是中台。比如让美术全力全速去支援某个项目，就以为这就是美术中台。\n\n但后来我们发现效率有长线和短线的区别。提高单位时间内的产能密度只能提高短线效率，它的本质其实是透支未来给现在买单。真正的中台应该追求长线价值，中台里每个人的付出，都能持续提升整个公司的长线效率。\n\n想清楚了这件事，我们准备重新梳理业务需求，搭建新的支持体系，更偏向制定技术框架和规范。明年这个时候再来看看会有啥样的结果。\n');
INSERT INTO `archive_remarks`
VALUES (10552, '\n`卓越邢山虎, 我是MT抄刀塔传奇. 文章是在说游戏路子最野, 大家都抄袭`\n');
INSERT INTO `archive_remarks`
VALUES (10554, '\n`工业化和现代化可以扩散. 但是我认为中国的故事没机会复制, 或者说直接简单地复刻. 国际环境不允许`\n');
INSERT INTO `archive_remarks`
VALUES (10556, '\n`少儿编程教育这条赛道的战斗似乎快要终局了. 烽火少为人知`\n');
INSERT INTO `archive_remarks`
VALUES (10558,
        '\n`\"创业经验主义\"`\n\n`敲钟现场放的徐小平的视频, 是真高兴真投入. 也是他\"VC职业生涯的代表作\"`\n\n在锦峰率领完美日记团队取得更大成功的未来，人们自然会读到很多完美日记如何成功的故事。但我觉得锦峰能够取得如此成就的根本要素，在于他能够在躁动的时代沉下心来，遮起哈佛 MBA 喧嚣的光芒，忽略宝洁御泥坊已有的资历，而以一个学徒的身份安坐在创业流水线上，完成了从新手到高徒、从士兵到将军的实战磨练，完美验证了我意识到我越来越钟情、越来越笃信的“创业经验主义”。\n');
INSERT INTO `archive_remarks`
VALUES (10560,
        '\n`内容非常丰富. 一个很好的总结: 工业化, 差异化, 品质化`\n\n流量红利变少了，用户对套路的抱怨变多了，《原神》全球收入第一了……暗流涌动，大船们纷纷朝「工业化」和「差异化」的方向转换航道，只为扛住风吹浪打，依旧挺立潮头。\n\n\n\n在这场转型大潮中，谁会掉队？谁有机会？潮水之下，隐藏着这一代游戏公司最深沉，也最迫切的希冀与担忧。\n\n\n工业化有多重要？腾讯高级副总裁马晓轶举过一个例子：他们曾拿某款3A游戏的一个场景，找最好的外包公司估价，发现它的成本是20万-25万美元；但一个成熟3A团队却可能只需要2-3万美元——这意味着巨大的成本差距。\n\n而在今年，成本超过1亿美元的《原神》又加深了行业对这个问题的认识。心动网络CEO黄一孟认为，《神仙道》、《刀塔传奇》等产品曾让行业吞下毒丸，让大家觉得低成本的项目也能成功；复制《原神》这种高成本的模式才有利于行业的发展。顺着他的逻辑推演，工业化正是高成本的前提。\n\n之前他们1个多月就能做一张地图，但现在从原画到模型，再到场景物件和灯光调优，恨不得要花上4-6个月。\n\n\n\n黄一孟则说，心动联合创始人戴云杰的企业微信签名是「2D游戏的策划用Excel做游戏，3D游戏的策划用引擎做游戏。」因为这几年他们才发现，公司过去一直在用Excel做游戏，现在才开始学会用引擎。\n\n---\n\n`看了SYN的demo, 非常酷`\n\n受此影响，引擎能力成了不少公司的追求。资深猎头Vivi说，现在需求最旺盛的程序岗位分别是引擎、UE4、TA和中台。新晋的头部公司，如莉莉丝、叠纸、米哈游和心动都有UE4的项目，甚至像《全民奇迹2》这样的IP也用上了UE4，行业热度可想而知。\n\n\n\n即便是在很多人眼中已经足够工业化的腾讯网易，也在通过投资交流和自建团队，打造更复杂的生产管线，追赶海外主机厂商的脚步。比如网易成立了专注于主机游戏开发的樱花工作室，它的负责人是前任万代南梦宫工作室开发本部长；而腾讯的光子则在用UE4研发一款开放世界射击游戏《代号：SYN》，它的目标是全球PC和主机。\n\n---\n\n为了保证工业化的效率，游戏公司需要面对层出不穷的细节。郭炜炜介绍，西山居需要在不减产的情况下，保证生产管线的有序迭代。为此他们中台里的引擎组和美术组都有专门的团队，不负责生产，专门去跑新的流程。「所以说研发投入大嘛。」\n\n\n\n更麻烦的是，实现工业化的周期也很难确定。叠纸网络CEO姚润昊说，《闪耀暖暖》的3D效果调了整整一年：「本来团队说1个月可以把这个东西研究出来，结果1个月到了，他们告诉你：人生已经陷入绝望，但感觉好像还能试一试……如果你是一个特别考虑性价比的人，你会说这要试到啥时候？每试一天都是钱！但我们总会竭尽所能地再试一试。」\n\n为了追求工业化，游戏公司势必要付出巨大的代价。一名头部公司CEO说，他们解散过成本5000多万的团队，新项目的预算也翻了倍，最终才换来了「研发实力没有掉队」的成果。不少项目还引入了曾在《荒野大镖客》、《战神》等主机游戏团队工作的人才，他们的薪酬不难想象。\n\n但砸钱就能解决问题吗？这可不好说。用紫龙游戏CEO王一的话讲，「钱只是保障，它还要涉及到创作者的审美，专业技术，项目管理能力和相关中台的建设。基础不够，再多的钱也转化不成品质，因为你对钱的消化能力不够。」\n\n\n\n成本高，效果难以保证，周期难以确定……然而友商的生产管线已经日新月异，不只一名从业者告诉我，《原神》给他们老板造成了很大的冲击。无论过程有多艰辛，游戏公司都要咬牙追上时代的浪潮。这就是工业化时代的宿命。\n\n---\n\n正如椰岛游戏CEO鲍嵬伟所说，现在「中产玩家」正在掌握话语权，「他们有不错的收入和文化水平，不喜欢特别low的游戏，追求一定的审美品味……你从TapTap的榜单上的产品就能看出这个趋势。」于是在每一个方面，游戏公司都在思考如何做出差异。\n\n\n\n一开始，二次元+高投入代表了绝大多数传统公司对差异化美术的理解——去看看《山海镜花》、《解神者》和《三国志幻想大陆》的原画品质吧。甚至有传言称北京一家老牌研发，为旗下二次元项目的美术负责人开出了千万年薪。\n\n腾讯内部一直在积累「World Building」，即构建真实可感世界的能力。为此他们汇聚了国内外大学教授、历史学家和机械专家等资源，建立了一个知识库，还找了导师做相关的培训。\n\n\n\n网易《一梦江湖》的文案组长李雪则在分享中表示，他们会用影视剧的标准来要求剧情创作，比如故事必须有情绪节奏的起承转合，有明确的高潮设计，还要有引发共情或思考的立意与主题。\n\n\n\n不过对于中型公司来说，资源和方法论倒还在其次，人才的缺失才是最大的难题，因为积累深厚的设计师实在太少。一名资深从业者就告诉我，在和《明日方舟》制作人海猫交流的时候，他几乎晕眩在各种各样的作品与专有名词里：「这个知识量，感觉自己要补的作品太多了。」\n\n\n而在所有制度中，奖金分配又是差异化项目最大的痛点。按照某公司CEO的说法，如果差异化项目分得多，那营收支柱团队的成员肯定有意见；如果差异化项目分得少，又没人愿意冒这个风险。\n\n\n\n说实话，即便做了这么多努力，目前绝大多数公司还都没有拿出成绩特别好的差异化产品。但电魂网络CEO余晓亮的想法应该是行业的共识：「市场上有太多10分钟就能摸清套路的产品，而用户已经开始厌恶这些东西……3-5年后会是创意游戏的天下，如果现在才开始布局，那就完蛋了。」\n\n---\n\n对于老牌大厂来说，认知和速度是转型最大的门槛。盛趣游戏副总裁谭雁峰曾告诉葡萄君，从个人角度他担心盛趣跟不上行业的变化。「未来几年，用户的主力是00后，我最担忧的第一是对这种变化视而不见，第二是看到了没有能力改变。」这可能也是他们做了好几款二次元，并收购了《小森生活》开发商睿逻的原因。\n\n对于流量型公司而言，想实现工业化和差异化，他们必须拿出更大的决心摆脱惯性。像某华南公司CEO就认为买量型公司不具备研发的基因，就算拿出几个亿也很难快速转型：「研发是我今天投1000万，3年之后收获几千万；但买量是短平快，我今天投100万，明天就要回款50万，后天回款都等不了。」\n\n有的时候我会有一种感觉：这栋楼我们当然建得很高也很成功，但再往上建会越来越难。这时你让我去新建一栋楼，我又需要花更多的时间。\n\n\n所有人都知道行业正处在一个变化的节点，可是在这个混沌的时代，《黑神话：悟空》能受到万众追捧，大翅膀传奇也在凶狠捞钱。红尘浊水，浪奔浪流，一时也看不出谁能借势扶摇直上，谁又外表体面，实际却在拼命扑腾。\n\n');
INSERT INTO `archive_remarks`
VALUES (10562,
        '\nAGI，Metaverse元宇宙以及Robotic Revolution机器人革命是三个非常宏大的概念，它们的发展将对未来世界产生革命性的影响，因此非常有必要对这三者的革命性意义，技术实现道路进行思考。\n\n在这篇文章中，我们将分成以下几个方面来谈谈AGI，Metaverse与机器人革命以及当前游戏发展对三者产生的影响。\n\n- 什么是AGI，Metaverse元宇宙以及Robotic Revolution机器人革命？\n- AGI，Metaverse元宇宙以及Robotic Revolution机器人革命将对未来世界产生怎样的变革？\n- 人类文明发展的哲学：Greatness cannot be planned.\n- AGI，Metaverse元宇宙以及Robotic Revolution机器人革命的技术实现道路会是什么？\n- 游戏将扮演怎样的角色？\n\n而在AGI的加持下，将会有很多AI-based NPC出现在Metaverse中，我们不一定能确定和我们交流的是人类还是AI。这个和现实世界实现机器人革命之后是一样的。\n\n---\n\n第一行是人类加热食物技术的发展。\n\n在远古时代，我们学会使用火来加热食物，而现今，我们可以使用微波炉来加热食物。这两者的差异是巨大的。人类是怎么发展出微波炉的技术呢？是从雷达研究开始的。\n\n第二行是人类计算技术的发展\n\n古代我们发明了算盘来加快计算，现在怎么能想到计算机的速度比算盘快万亿倍。人类怎么从算盘发展到计算机呢？得先研究一下晶体管，实现电气革命。\n\n第三行则是人类能源技术的发展\n\n这个就更绝了。一开始我们还是使用火，用蒸汽机实现第一次工业革命已经很不得了，怎么想到后来发展出了核能发电，无穷无尽的能量。从火炉发展到核电站靠什么？靠爱因斯坦发现的质能方程\n\n---\n\n6.3 机器人革命依赖于AGI，依赖于游戏\n\n这可能是以前没有意识到的一点，也很难想象的一点。一般，想研究机器人往往从机械电子控制系统角度去研究，但是这条路只能做出机器人的形体，却无法做出机器人的脑子。要让机器人能够做家务，送外卖，照顾小孩，机器人需要一个AGI的大脑。而正如我们前面提到的，AGI的实现依赖于游戏模拟器，这使得机器人革命也依赖于游戏。\n\n因为直接在现实世界通过深度强化学习训练机器人是不现实的，既没有成千上万的机器人，也无法加速，更无法承受机器人受损导致的结果，因此，只有开发机器人模拟器，让机器人在模拟器中进行万亿次的模拟训练，才有可能产生适应于机器人的智能。\n\n\n发展大规模分布式计算Large Scale Computing去满足所需的算力。在量子计算到来前，这一块还会发展很久。\n发展更强的3D建模与渲染技术。Metaverse，机器人模拟器都太需要这个了。什么时候能大规模并行的模拟一个3A大作呢？或许那个时候AI会有绝对的飞跃。\n进一步发展深度强化学习技术，不断匹配算力极限。算力越强，AI越强。\n');
INSERT INTO `archive_remarks`
VALUES (10564, '\n`非常有价值, 非常坦诚的沟通. 金融市场上真正创造真的机构`\n');
INSERT INTO `archive_remarks`
VALUES (10566, '\n`我觉得不坏. 沉迷科研, 沉迷健身, 就好吗? 如何定义?`\n');
INSERT INTO `archive_remarks`
VALUES (10568, '\n`出行我们看过. 共享单车我们看过. 无人货架我们看过. 在线教育也到了转合的时候. 相信最后, 剩下的人会赚钱`\n');
INSERT INTO `archive_remarks`
VALUES (10570,
        '\n`这本是一个司空见惯的故事. 阿里投豁了的案子, M-Daq都算. 但是, 邵亦波让这个故事有少许的不同`\n\n阿里的投资，又巨幅亏损了。\n\n\n\n2018年5月28日，阿里巴巴战略投资宝宝树，以2.14亿美元获得9.9%股权，对应宝宝树集团估值为21.4亿美元。上市后，阿里巴巴追加投资约2500万美元，总持股在稀释后为9.78%，总成本约2.39亿美元。\n\n没想到，“双方联手”一年后，宝宝树用户腰斩、营收腰斩，阿里的战略投资，最终变成了战略接盘。\n\n\n\n截止2019年10月4日，宝宝树的股价较开盘价6.8港元已跌去68%，市值仅为36.8亿港元，约4.7亿美元，阿里巴巴的投资已浮亏80%。\n\n\n\n不过，投资亏损2亿美元，对家大业大的阿里来说，只是毛毛雨了\n\n\n\n但是，母婴第一股、拥有1.5亿用户的宝宝树，到底经历了什么？\n\n---\n\n2002年，当马云的淘宝在为投资而焦头烂额，邵亦波的易趣却出道即巅峰，国内外的资本纷纷倒贴，挤破脑袋想要往里面投钱。资本的助推加上邵亦波天才般的能力，易趣一路高歌猛进，行业占有率一度达到80%。\n\n\n\n2003年，邵亦波为美人放弃江山，远赴美国，易趣被卖给初入中国市场的eBay。马云曾公开如此表示：\n\n如果2003年邵亦波没有卖掉易趣网，我也肯定不会成功创立淘宝。\n\n---\n\n\n\n\n期间正逢马云向杨致远求援，作为雅虎从美国派来中国的大将，王怀南顺道参与了投资阿里的过程。但没想到，一个月后，投资方案变成阿里用40%股权换取了雅虎中国和10亿美元现金，雅虎总部的人打电话给王怀南，让他回家，王怀南直接对着电话吼道：“回家？房子都卖了，还回什么家！”\n\n\n\n回家是不可能回的，加入前途未明的阿里在当时也不是一个好选择。几个月后，王怀南加入当时的行业领袖Google，出任亚洲区CMO，负责东南亚市场。\n\n\n\n2017年，在阿里决定投资宝宝树的前一年，王怀南又加入了马云创办的湖畔大学，成为第三期学员。\n\n\n\n\n\n阿里能有今天，一定程度上邵亦波和王怀南都在关键时刻助推了一把。十多年后，市值4千多亿美金的阿里，花2亿多美金投资宝宝树，也算是一种回报了。\n\n\n\n江湖虽大，大佬们总会相逢。\n\n\n\n宝宝树的这场奇幻之旅，并不是毫无逻辑的蒙眼狂奔，陪伴宝宝树成长的，是天才邵亦波、曾获得宝洁全球最高营销奖的王怀南、张颖的经纬中国、好未来、复星、阿里，每一个都是名震业界的大咖。');
INSERT INTO `archive_remarks`
VALUES (10572,
        '\n谁是企业服务第一创业黑帮，左林大叔的答案是 WebEx 创业黑帮。\n\n如之前《雷军王峰和旧金山创业帮》一文里提到的，一个公司要当得起创业黑帮这个称号，需要有精神领袖，需要人才辈出，需要当下有明星公司，还需要有源远流长的文化作派这些形而上的东东，这几点 WebEx 都有，特别是企业服务这个领域，他们是当之无愧的第一创业黑帮。\n\nWebEx 创业黑帮的精神领袖当之无愧是朱敏。\n\n1948 年生的朱敏已经年届 70 有余，文革中下过乡，当过厂长，改革开放后老三届，1984 年成为最早公派出国的那批人去了斯坦福，斯坦福还木有毕业，1986 年就在硅谷参与过创业，第一个公司 Future lab 历经 N年折腾卖掉后又开始做第二家公司，也就是后来的 WebEx ，并在 2000 年在美国上市，直到快 60 岁，才被人广泛认知。这很大程度上是因为 2007 年，朱敏作为主要创始人的 WebEx 以 32 亿美元卖给 Cisco。\n\n---\n\n`赵斌YY CTO离职后做了agora`\n\n之后李学凌做 YY ，基于网易泡泡的技术体系做语音 IM ，怎么做都过不了 40 万日活，李学凌得找个能搞定这个问题的大牛入场。刘芹又把赵斌介绍给李学凌，并推动了泥巴网与 YY 的合并，赵斌也在 2008 年成了YY 的 CTO。\n\n赵斌于 2013 年离开 YY ，创办声网并担任 CEO ，一家为有音频视频等多媒体服务需求的 2C 客户提供 SDK 和更多开发者服务的技术公司，股东阵容里有顺为、晨兴、GGV 等，最新一轮融资 7000 万美金，已步入独角兽行列。\n\n');
INSERT INTO `archive_remarks`
VALUES (10574, '\n`标题押韵, 内容尚可. 可能因为不懂技术的人写安全难免荒腔走板`\n');
INSERT INTO `archive_remarks`
VALUES (10576,
        '\n`确实, 看国企工人好让孩子在92年进国企而不是下海; 看外企白领好让孩子学英语留学进500强; 现在轮到互联网了?`\n\n中国的中产阶级以及他们的后代，不想通过参与社会议题与改善社会治理，不想通过创新和冒险获得财富增值，而是把保住社会地位的希望都寄托在砸锅卖铁买一套学区房上。\n\n那你说丧钟应该为谁而鸣呢？\n\n');
INSERT INTO `archive_remarks`
VALUES (10578,
        '\n`旧时王谢堂前燕飞入寻常百姓家这个事`\n\n于是到此为止，我觉得我终于配读一读红楼梦了。\n\n\n\n同时到此为止，有人觉得读红楼梦的门槛不能再降低了。\n\n\n\n最近新世相出了一套粉红色封面的青春版《红楼梦》，定价100多块钱一套，一万本还没卖完，就有人跳出来说红楼梦何其伟大，青春版红楼梦太low，陈粒你唱红楼梦主题的歌曲竟敢夹带“婊子”二字，新世相才是个婊子，伪中产拿到书就自拍发微博也配读红楼梦?\n\n\n\n我仔细翻了一下这个号的文章，原来一向是写给北京人看的。有一句“北京是始终属于北京人的北京，属于那个祖上三代人都是北京人的北京”。\n\n\n\n我明白了，人家的意思是，\n\n\n\n“红楼梦始终是属于我们文艺青年的红楼梦，属于那个祖上从前清就开始看红楼梦的文艺青年的红楼梦，你们也配读红楼梦？”\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10580,
        '\n`和政权谈恋爱不结婚`\n\n直到两会前一晚，人民日报官方微信推送了赵雷自己翻唱的两会版《成都》，\n\n\n\n“和我在春天的街头走一走，春天布满了神州和心头。”\n\n\n\n大家恍然大悟，原来你是这样的赵小雷。\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10582,
        '\n\n是该按照行政级别卡一卡，只让德艺双馨副军级以上的老一辈艺术家出去为国争光。\n\n \n\n虽然我们早就知道花两万块钱就能让大爷大妈体验个12天走进金色大厅+游玩奥地利行程，但是对金色大厅开演唱会还是抱有崇高敬意的，直到北京交响乐团团长谭利华揭开盖子，\n\n \n\n“那些去金色大厅的团里，有中央级写条子的，有军旅写条子的，也有各省市领导写条子的，使馆压力太大，搭上钱也没人看”，\n\n\n\n我们才知道有这么一回事儿。\n\n \n\n还有些更高级的招呼，是会有“观众必须爆满”的需求的，有的甚至连“大鼻子比例是多少”也会有要求。所以对于生活在维也纳的人来说，也许几十年内都不会忘记曾被中国演出赠票所支配的恐惧。\n\n \n\n好在2014年这件事得到了领导的重视，真的管了一管，中国驻奥地利大使馆的文化参赞终于能好好休息了。\n\n---\n\n娱乐小编也可以把“这衣服真是丑到有趣”翻译为“她的服饰在世界获得赞赏”。\n\n\n---\n\n在为国争光这件事情上，文艺界目前主要还得向中国足球学习。我们的年轻球员去欧洲踢球看不上，但是我们可以把人家俱乐部买下来啊！\n\n\n\n在纽约42街和百老汇交汇处的各大屏幕上。2011年国家形象片在纽约时代广场大屏播放之后，有人看到了宣传新思路，除了像阿里那样的大企业通过IPO积极“上屏”，中小企业也开始在时代大屏上动心思。结果不少全中文的广告内容，长时间出现在纽约的街头，甚至还有中文招聘启事，也是帮助S.H.E实现了“全世界都在说中国话”。\n\n\n\n至于某某小鲜肉应援一言不合就包下时代广场，巴黎环城公里或者泰晤士河上邮轮，这就叫少年强则中国强。\n\n\n2015年国庆登上时代大屏的思乐得保温杯董事长就说，是因为品牌长期宣传跟不上，才吃了不少哑巴亏。所以用董事长的逻辑，上大屏并不是为了炫耀什么，只是把吃了的亏补回来，而或者是因为这样吃哑巴亏的人不少，让一家国内户外媒体狠心拿下时代广场1号一块近百平米面积LED屏幕的5年运营权。\n\n \n\n那我们关心的外国友人到底是怎么看的？\n\n\n\n他们大抵是揣着人民币装明白，然后心里补上已经：“incredible China”。');
INSERT INTO `archive_remarks`
VALUES (10584, '\n`巨头做死的业务还少吗? 失败从来不能定义历史的走向. 成功能`\n\n`成功与失败从来不成比例. 这不是老虎机`');
INSERT INTO `archive_remarks`
VALUES (10586,
        '\n`参见, \"巨头做死的业务还少吗\". 成功定义历史, 失败不能`\n\n`更值得意识到的是, 若干年前百度是中国市值最高技术最好的公司, 业界一片学习传唱. 若干年前腾讯是抄袭专业户, 不是互联网白莲花. Max话说, \"算法! 人才! 延迟满足感! Build company as a product!\"`');
INSERT INTO `archive_remarks`
VALUES (10588, '\n`日本泡沫经济的事. 规劝少负债少买房. 但是你知道吗, 经历泡沫破裂的人, 就算不买房也很惨. 只有塔勒布能挣钱`\n');
INSERT INTO `archive_remarks`
VALUES (10590,
        '\n`恶臭的第一代抖机灵知乎大V`\n\n事情是这样的，悟空问答上线伊始就开始砸钱从知乎挖人。然而，去年8月底，一位名为“恶魔奶爸Sam”的知乎作者的爆料成了导火索，“今日头条今年一口气签约了300多个知乎大V，而且还是给钱的，年收入比普通白领还高。\n\n月活从121万降至67.9万，“流量、算法和补贴”的打法在悟空问答失效\n高补贴让悟空很容易的获得了大批早期用户，但是补贴退坡以及平台调性跟不上，瞬间又让其回到了原形。\n\n');
INSERT INTO `archive_remarks`
VALUES (10592, '\n`中穆网估值起码2亿起, 2016年关掉了. 团结了知乎左中右, 不清真表情包作者和穆斯林测不准笑话作者都在狂欢`\n\n`然而, 我们不该狂欢. 丧钟为你而鸣`\n');
INSERT INTO `archive_remarks`
VALUES (10594, '\n`内容审查. 一大段王朔, 冯小刚, 张和平, 叶京, 王中军的故事. 被写在别的地方了`\n\n`与冯裤子有关的日子`\n');
INSERT INTO `archive_remarks`
VALUES (10596, '\n`谁不恨, 谁又不同情, 委曲求全钻营成功的人`\n');
INSERT INTO `archive_remarks`
VALUES (10598, '\n`A soft spot in my heart`\n\n`我是你爸爸 人莫予毒 枉然不供 各执一词 我是\"狼\"`\n');
INSERT INTO `archive_remarks`
VALUES (10600,
        '\n如今难道高房价、城乡差距、贫富差距，现在也要我们互联网行业背锅了吗？\n\n\n这个填空题每个人都可以填，但是我如果填上了“一带一路”，“从严治党”、“中国梦”，“大众创业、万众创新”，“北上广楼市限购”，也一样是难以回答的问题，但是就看你白岩松敢不敢问？问谁去了？\n\n\n\n当然这个问题不能细说了。不过像我这样身经百战的人，还是可以给你们提供一点人生经验的。\n\n\n\n这些想搞大新闻的媒体人，在我党的新闻发言人面前都是渣渣。下次再遇到白岩松这样的问题，大家可以学习足智多谋的国台办发言人马晓光，\n\n\n\n“一切以《中华人民共和国国民经济和社会发展第十三个五年规划纲要》为准”。\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10602,
        '\n\n上一次李彦宏如此痛失爱将，还是在九年前。时任百度CFO的王湛生在海南游泳时溺水身亡。还有传闻当时李彦宏马东敏夫妇和王湛生是搭同一条船出游的，因此李彦宏亲眼见到救援失败，王湛生的尸体被找到，痛彻心扉。还有传闻老对手周鸿祎也下榻海南同一家酒店，第一时间得知了王湛生去世的消息。那时候李彦宏和周鸿祎的关系还没有像今天这样剑拔弩张，或许还前去慰问过。\n\n\n应该选择进腾讯\n\n\n至今百度财务部门仍然有老人怀念 Shawn （王湛生英文名），认为如果 Shawn 没有去世，百度的战略投资部门将大不一样，“既能得到李彦宏的充分放权，也会有清晰的战略步调，不会像今天这样让人看不懂。”王湛生生前最后一年提到过的三件大事，百度要进入电商领域直接介入交易、百度要提早准备回归A股市场，百度要和Google展开全球化竞争，在他身后的短短一两年时间内纷纷中断。出师未捷身先死，长使英雄泪满襟。和阿里巴巴CFO蔡崇信一样，王湛生是一个价值观和工作方法很 Global 的人。举个例子，昨天 Uber 中国版的 App 更新了。变成了一个披着 Uber 外壳的滴滴。新版 App 不再支持 VoiceOver，很多盲人表示他们唯一能用的打车软件没了。早在10年前，在王湛生的要求下，百度就上线了百度盲道，成为全球top100站点中仅有的三个无障碍访问的网站之一。但是等到2008年的一次更新后，百度盲道的语音验证码就不能用了。\n\n\n腾讯进腾讯进腾讯进腾讯\n');
INSERT INTO `archive_remarks`
VALUES (10604,
        '\n`古已有之. 爱情上甘岭, 奇迹之海, 千年等一回. tdgsgl`\n\n`另外, 这不是能拿名人开涮可以上报的时代了. 改革开放四十年, 全面小康, 消灭贫困, 形势一片大好, 你以为还和八十年代中九十年代末一样? 思想解放宽松的潮流, 和经济蓬勃发展的大势纠葛缠绵, 通常先于经济大发展来临而来临, 然后先于经济衰退而衰退`\n\n`我们将见证`\n\n马云从来是不缺创作能力的，从1995年出道以来，每一年他都以自己敏锐的洞察能力和强烈的表达欲望，配合天下第一的阿里公关部，不断制造热词和金句。\n\n\n\n现在高晓松携手老友宋柯一起来到了阿里音乐，马云抱着音乐圈的两大金山怎么不知道用呢，一个谈笑风生写过同桌的你，一个是音乐界炽手可热的王牌制作人，你跟他们商量一下，搞不好整出新一代神曲《睡在我上铺的雷军》或者《同桌的腾讯》。\n\n\n\n如果马云把每一年新熬的新鸡汤唱出来，他的声光影就不会仅仅出现在机场，而是从此登上音乐的殿堂，成为诗词赋，比肩风雅颂。\n\n\n\n不信你听，\n\n\n\n《微商》\n\n\n\n“你现在还不去做微商，到时候什么都晚了，你看看你身边的人，都赚了钱，赚了钱，还买上房，他们都做微商”。\n\n\n\n《委屈》\n\n\n\n“来到阿里巴巴你不会升官发财，来到阿里巴巴你会很委屈。容易进来，很难出去，那是监狱。容易出去，很难进来，这才是阿里”。\n\n\n\n《黑暗》\n\n\n\n“今天很黑暗，明天更黑暗，后天是天亮，但是你会，死在明天晚上” \n\n\n\n如果马云真的唱出来了，我保证再也不黑他了，而是像阿里巴巴员工一样，为他在台下挥舞荧光棒。\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10606, '\n`锤子总算列传吧!`\n\n最不希望锤子科技倒闭的是？\n\n\n罗辑思维，最美应用和一条视频\n\n\n锤子科技为什么永远无法倒闭？\n\n\n因为锤粉会以为是最后一部，买来做纪念');
INSERT INTO `archive_remarks`
VALUES (10608, '\n`老板不懂, 还不看众人转发的刷量黑稿. 这很黑了`\n');
INSERT INTO `archive_remarks`
VALUES (10610,
        '\n`雷军之难. 雷军之迂腐. 我们每个人注定都会被时代抛下, 要放权, 新人年轻人, 基业长青`\n\n\n而雷军发布会上的另外一款产品，红米Pro更是没出现在热搜榜上。亏小米市场同学想出来的这个“十核双茎头”的奇葩名称，本来前天微博风平浪静的时候还上了热搜榜呢。\n\n\n还有小米今天买下的微博开机广告，肯定也被无数急于打听陈冠希骂林志玲事件的网友点了跳过。\n\n\n新品发布后的百度指数和微博搜索指数一向是手机厂商考核的重点，我真是心疼雷军啊！\n\n\n而且雷军在台上，在我这样的人看来是加分，但是对那些第一次在公交车站看到小米国民手机广告的人来说，可能就是减分了。六年时间没能改变雷军的口音，但是过去两年小米的自信心却被改变了。\n\n\n\n台上雷军重复说台词的情况多了，反复解释的情况多了，碉堡了这样的金句少了。当看到小米笔记本比杂志还轻薄的PPT时，雷军自己忍不住说这个杂志确实比较厚。更别提“记者拿着小米笔记本去参加发布会就不会难堪了”这句，实在是让记者太难堪了。\n\n\n\n实话说，这也不是雷军的问题，几乎所有的手机厂商发布会都让人尴尬症频频发作，除了锤子老罗的。\n\n\n\n至少这一次，雷军在发布会后没有再来一个直播。如果直播的话，无人机没电停飞、“陈年太爱我了”这样的尴尬会更多。用一些奇奇怪怪的软件跑个分，“开机速度击败全国99%的用户”，还有打开一些lowlow的网游证明940MX这种低端独显的性能。\n\n\n\n让我这样的卡吧基佬实在装不下去米粉了。\n\n');
INSERT INTO `archive_remarks`
VALUES (10612,
        '\n`可能太痛了, 收起了戏谑, 平铺直叙苦楚`\n\n莎士比亚的时代，写字的人是很有社会地位的。贵族为文人长期提供赞助和庇护，成为他们的“保护人”。文人认个干爹，这不丢人。郭德纲常说，\n\n\n\n没有君子不养艺人。\n\n\n\n从前在中国，作家整体也是受尊重的，“豢养数千门客而闻达于诸侯”太远不提。就说上个世纪 80年代，北岛、海子、顾城、汪国真，那时候有多红今天不敢想。说papi酱第一网红的，你能想象二十年后大家还记得，“胸不平何以平天下，人不穷怎么当网红”？\n\n\n\n但是现在街上随便拉一个成年人，大概都能背出来“面朝大海，春暖花开”，“卑鄙是卑鄙者的通行证，高尚是高尚者的墓志铭”。\n\n\n幸亏韩寒最后当了作家，没去当记者。对于文字爱好者来说，在这么多不划算的文字职业里，记者可能是最“不划算”的一种。\n\n\n2014 年底，曾叱咤业界的“中青报”特别调查部宣布解散，业界一片哗然，开始讨论这个世界到底还需不需要脚步缓慢的深度报道。还没得出结论，《京华时报》、《华商报》等多家媒体又接连取消深度部、特稿部。\n\n\n\n\n在新闻类媒体里，特稿的没落非常明显。反倒是时尚媒体，在过去两三年成为国内优质特稿最主力的生产地。\n\n但是特稿的问题，其实是整个媒体行业的问题，时尚媒体很难一己之力力挽狂澜。\n\n\n\n依托于互联网的“新媒体”也不会有。互联网从来不是让人安心写字的地方。你很难想象一个为了运营微信公众号而配置的内容团队，可以容下许多一年只写十篇文章的人。\n\n\n\n\n翻看时尚先生的公众号，上一次他们推送原创特稿还是 2 月份，几天内连着推了 Uber 和刘国梁两篇特稿。但这两篇都没有做到李海鹏所说的“轰动效应”，前者阅读 5 万多，后者只有 1 万多。\n\n\n\n费这么大事，阅读量还不如那些把知乎问答改头换面加几个表情包的公众号。\n\n\n几年前去一些精英商业、财经媒体面试，前后排队的都是刚毕业的名校高材生。现在的新媒体记者，刚入行写了一年半载文章，就眼睛直勾勾盯着基金和土豪创业公司的岗位。为什么，有情怀的科技媒体开的都是5K左右的月薪，横七竖八加上些车马费，也比不上一个应届毕业的码农来钱多。\n\n\n---\n\n`这tm是人傻钱多乐视`\n\n上个月时尚先生的那篇《太平洋大逃杀亲历者自述》，被乐视买了电影改编版权，据李海鹏所说，价格在“百万级”。这也许是第一次有一篇报道被当成 IP 买下——是的，乐视说这篇报道已经是 IP，覆盖人群堪比《盗墓笔记》。李海鹏还说这篇报道的交易收益 80%，将给到文章作者杜强。\n');
INSERT INTO `archive_remarks`
VALUES (10614,
        '\n`乐视也总是列传吧. 公司不好, 可以坑一切 - 明星股东, 员工股东, 经销商股东, 散户股东`\n\n\n最后，散户投资人才堪称是“翻船”风险最高的合伙人。\n\n\n\n华兴资本的包凡在《警惕风投散户化》采访里就指出过， \n\n\n\n一级创投市场没有流动性，没有风险释放的过程，散户可能血本无归。\n');
INSERT INTO `archive_remarks`
VALUES (10616,
        '\n\n\n俞军（前百度产品构架师）说得对，百度现在的问题要靠Google解决。\n\n搜索业务在百度内部被称为“大搜”，是公司不可撼动的核心业务。铁板一块，油盐不进。其他部门的人又敬又怕。\n\n而李明远在百度内部被称为太子，是搜索业务之外李彦宏的希望所在。过去几年媒体老湿和百度的公关打交道，常常被要求对李明远要“特殊关照”。所以常常有“父爱如山”的调侃。\n\n\n现在百度全家桶吃完了，李明远从和向海龙平级的三驾马车之一，变成了向海龙的下级。所以今天有“太子被废”的说法，父爱的小船还真是说翻就翻啊。不过李彦宏在公开信里还是安慰了李明远：\n\n\n\n明远是百度自己培养起来的年轻管理者，带领MSG在移动转型路上做出了很大的贡献。希望明远在未来能够与海龙紧密合作，在更具挑战的战场上敢拼敢打，做出更大的成绩。\n\n\n\n然而百度今年要发展的核心业务，O2O和移动医疗，以及未来更多可能拆分回来单独上市的新业务，都从他手中拿走了。新成立的百度搜索公司明显定位于守成，哪里有什么“更具挑战的战场”。\n\n\n李彦宏终于要烧钱做O2O了，有过做电商经验的李明远只能袖手旁观。\n\n\n\n但是贵为太子，李彦宏给他的机会真的是不少了。用百度搜索的流量支持，折腾了轻应用和直达号，要和微信叫板，无功而返。');
INSERT INTO `archive_remarks`
VALUES (10618,
        '\n`庄辰超讲话\"我创办便利蜂就是觉得我们这些百亿公司怎么都吃不上不用地沟油的菜\"`\n\n作为一个在上海工作过好几个月的互联网屌丝，我一直以为上海最好吃的是小杨生煎，环境最好的是小南国。\n\n\n\n所以我一来到中关村就无缝融合，从来没有传说中上海精神阿拉到北京之后的不适应。皮糙肉厚（且穷）的创业大街居民从来不吃精致奢华这一套。\n\n\n\n什么叫高端？就是百度外卖上单价超过30元的品牌专送。\n\n什么叫大气？就是煎饼果子里敢加里脊和第二个鸡蛋。\n\n什么叫上档次？就是纸质包装袋上印上投资人的头像和名言。\n\n\n\n在中关村，每天喂饱你的不是食物，是梦想。\n\n---\n\n\n年轻的行政或前台姑娘本能地偏爱吉野家。\n\n\n\n倒不是她们自己爱吃。\n\n\n\n当老板和产品团队开整整一天的会，午饭让你“帮忙给大家定个饭”，你总不能给会议室里送去十碗加麻加辣加蒜的麻辣烫吧？\n\n\n\n当老板和他的两个合伙人在小隔间里因为开人的事情吵得脸红耳赤，准备吃个饭休息一下，你送进去三套麦当劳开心乐园餐试试？\n\n\n\n当公司签约的午餐提供商今天送来的饭里有虫子，搞得同事都不敢吃时，你需要重新给 50 个同事订饭，每个人头只有 20 块预算......\n\n\n\n你会选外卖 App 上那些黑作坊外卖，还是给每个人来一份吉野家小份儿招牌牛肉饭？\n\n---\n\n\n只有那个运营碧池。缓缓抬头，往后靠到椅背，假装拉伸了一下肩颈，蛮不在意地说了一句“吃什么呀？真烦还得吃饭。” 但你分明能看到她脸上透着胜利的喜悦，连鼻尖的黑头都笑开了花儿。\n\n\n\nNaive.\n\n\n\n“那太好了，你们去吧我就不去了，还有几件事情得忙。一会儿上来的时候帮我带个肉夹馍加西食堂小豆花吧。”说完你拔掉 MacBook 的电源线，拿起电脑扭过头看向老板，“老板我有个 idea，我们碰一下呗？”\n\n---\n\n\n能在白家大院吃饭，您至少得是副处级吧？\n\n\n\n白家大院原是“礼亲王花园”，是第四代礼王杰书——清太祖爱新觉罗 · 努尔哈赤之次子、八大铁帽子王之首、正红旗旗主、首任礼亲王代善第八子祜塞第三子世袭王爵后于康熙年间建造的，后来被同仁堂购入，成为《大宅门》中白家大院的原型，因此得名。\n\n\n\n这座王府林苑几乎被完美地保存至今，又加上了精心准备的宫廷礼仪。\n\n\n\n两个星期前默克尔访问沈阳故宫，按照前清礼仪被接待，有网友说表演是二人转级别的。而来到白家大院，保证您看到的穿戴至少是德云社级别的，比德国总理有面子。\n\n\n\n还没等迈进大门，就有奴才提着灯笼说，“您吉祥”。傍晚时分，移步换景，通过包间窗口望见玉兰堂、银安殿和待月轩里，坐着的都是来中关村参观学习如何“大众创业、万众创新”的某省会城市副区长、某县委书记或者某市发改委主任。\n\n\n\n三百年去来，白家大院唯一的变化是，伙计们依然身着旗袍马褂，老爷却已经换上西装。\n\n---\n\n\n港式的丝袜奶茶喝得不少，台湾的珍珠奶茶也经常喝。但这种南京奶茶还是比较少见的，可以做到既没有茶味，也没有奶味，甚至没有什么奶精味。浑然天成，自成一派。\n\n\n\n落选原因：宁付马云整容费，不给东哥打炮钱。\n\n---\n\n4. 雕爷牛腩\n\n难吃，同上。\n\n落选原因：因为我们没有打开味蕾。');
INSERT INTO `archive_remarks`
VALUES (10620,
        '\n`写得荒腔走板. 此中有真意, 欲辨已忘言`\n\n川普，一个民粹的幽灵，在美国上空游荡了两年。为了对这个幽灵进行围剿，华尔街、硅谷以及美国的大学都联合起来了。\n\n在微博、知乎、Twitter上，有哪个批评希拉里、看奥巴马政府笑话的用户不会被公知们骂做“嘲笑别人性生活不和谐的太监”呢？有哪一个媒体不会拿“法国川普”、“意大利川普”这样的帽子去扣在各国政治家头上呢？\n\n从这些事实中可以得到两个结论：\n\n在互联网上支持川普已经是一个全球都承认的思潮、运动；\n\n\n\n美国大选结果出炉之后，我们这些普通的Twitter、微博、知乎用户，是时候公开说明自己的观点、自己的目的、自己的意图并且反驳关于“民粹主义”、“反智主义”的污名化了。\n\n\n\n搞互联网的不屑于隐瞒自己的观点和意图。他们公开宣布：他们的目的只有用互联网改造全部现存的社会才能达到。\n\n程序员、产品经理、设计师，在这个革命中失去的只是键盘。他们获得的将是整个世界。\n\n全世界的键盘党联合起来。\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10622,
        '\n`盲人摸象, 各取一瓢. 然而尔曹身与神俱灭, 不废江河万古流`\n\n`更值得注意的是, 这篇文章还是上一代的思潮 - 官员腐败无能, 企业家不容易心惊胆战. 2020, 早已不是如此, 舆论逆潮了.`\n\n在Space X这件事上，Musk占了天大的便宜。如果换做在中国，大概会被说成国有资产流失，官商勾结，利益输送。儒林冠盖们一人一张嘴，NASA和国防部的负责人恐怕要被口水喷死。顾雏军和郎咸平的事情记得吗？');
INSERT INTO `archive_remarks`
VALUES (10624, '\n`四年, 又四年`\n\n`中国川粉和美国川粉组成结构不同. 这太正常了. 你家阔了, 叫好的人, 和你家邻居阔了, 叫好的人, 能是一群人吗?`\n');
INSERT INTO `archive_remarks`
VALUES (10626, '\n`现在, 你是万恶的资本家`\n\n走上坡路的时候，连空气都是甜的，一旦走下坡路，空气里全是土。\n');
INSERT INTO `archive_remarks`
VALUES (10628,
        '\n`Well, it didn\'t happen. 说到这, 谢国忠也预言过房价3年跌50%, 现在也粉墨登场. 预言失败根本无所谓, 成功才有所谓. 创业也如此`\n\n在微信朋友圈一个很火的段子里面，乔布斯死前留给库克三个锦囊，第一个锦囊在设计不出新产品时打开，上面写着“屏幕可大可小”。第二个锦囊在市值滑坡时打开，上面写着“投资中国的Uber”。第三个要被董事会开掉时打开，上面写着“和雅虎现在的CEO聊一聊”。\n\n\n虽然花了雅虎十几亿美元现金储备购买各种创业公司，也完全没有提振公司的业绩，玛丽莎·梅耶尔还是依靠阿里巴巴的股份增值拿到了5500万美元的离职补偿，她告诉库克，\n\n\n\n“我现在很开心，虽然不会有任何一家公司雇佣我做CEO了。但是我把补偿金都给了尤里·米尔纳，做他的LP。我现在自己也成了红杉的GP，投资一些Copy from China的项目，我和Jack Ma关系很好，他给我很多建议”。\n\n\n\n库克很快就会过上和玛丽莎·梅耶尔一样的好生活。');
INSERT INTO `archive_remarks`
VALUES (10630, '\n`只爆颇有名, 但无力的人的料. 然后等着不要命的后生小子崛起, 爆中一个貌似有力, 其实墙倒众人推的人`\n');
INSERT INTO `archive_remarks`
VALUES (10632,
        '\n程序员是保持阅读习惯最好的互联网人群。他们在如今日薄西山的图书市场中养了一只类似教辅图书的现金奶牛。\n\n没有一个程序员不想过上冯大辉那种不写代码但是有时间天天更新博客的CTO，即使是那个在知乎上举报冯大辉不做Code Review的匿名者，说不定昨天就接洽了杭州本地一个阿里系创业者。\n\n\n\n比如说这星期因为写脚本、抢月饼被阿里巴巴首先开掉的四位程序员同志，HR同学找你们谈话，你们第一反应是自己价值观出了问题。这是对的，但是怎么办呢？这就要现场在书中寻找答案。\n\n\n\n比如马云主席的语录。\n\n\n\n如果此时即将被开除的四位程序员有人反应快，开口就是，”马云主席经常说，人生就是在不断犯错，只要认识到错误，坏事也能变成好事。他自己说自己犯的最大的错误，就是创办了阿里巴巴。今天为中国的电子商务，为中国经济的转型做出了多大的贡献”。\n\n\n\n\n接下来他的上司就好出来帮腔，说2011年8月27日，马云主席在飞机上写下了《我想和还没有成三年阿里人的同事们谈谈看法》，里面有一句话：\n\n\n\n“我们（阿里巴巴的）平均年龄只有26岁。这是个犯错误的年龄。今天年轻人的态度我们也有部分责任，因为我们自己没有明确告诉他们，我们阿里做事的方法和态度。”\n\n\n\n你看，这样一来，HR同学能发飙吗？事情会捅到马云主席那里去吗？注定要升P10的技术大牛叶敏会受到牵连吗？\n\n\n\n1967年陈毅同志在外交部被批斗，他被骂急了说，“等等，让我先背诵一段毛主席语录”。革命小将哪里有不让人被语录的道理，只好让他背。陈毅同志摇头晃脑的说，“大家翻到毛主席语录272页，上面说陈毅是个好同志”。\n\n\n\n于是就过关了。');
INSERT INTO `archive_remarks`
VALUES (10634,
        '\n`Almost there. 把吹过的牛实现, 了不起. 刘德也了不起`\n\n`老编辑是米粉. 我也是`\n\n在上个月莫博士的中国之行，传奇的科技记者在和小米总裁林斌的对话中纠缠着三星和苹果不放，小米电商目前的负责人看起来有点不耐烦。让外国人看懂中国互联网公司怎么赚钱确实需要一点时间。\n');
INSERT INTO `archive_remarks`
VALUES (10636,
        '\n谁来推动的这笔交易？\n\n“当然投资人会比我们更着急的推动。最后是100%的整合，所以每个投资人都要同意在最终的协议上签字”，姚劲波的表态很容易让人联想到快的的车CEO吕传伟在滴滴快的宣布合并之后发出的公开信，“恶性的大规模持续烧钱的竞争不可持续，合并是双方的所有投资人共同的强烈期望。”\n\n合并之后姚劲波和杨浩涌作为联席CEO，两个人都是公司的创始人，能否和谐共处？姚劲波表示，“合并后的公司，市值很高，100亿美金，我一个人来管，也管不住。而且Mark也是非常热爱这个行业的，很有经验，并且过去我们都没有做过很出格的事情，没有伤了合气，所以是可以合作的。”\n\n（咳咳，所以现在互为竞争对手互联网公司们们注意了，以后评论对手要有分寸。）');
INSERT INTO `archive_remarks`
VALUES (10638, '\n`2015-05, 还真是那时候`\n\n所以，预测一个事件会发生是容易的，预测它何时发生是困难的。\n');
INSERT INTO `archive_remarks`
VALUES (10640,
        '\n`很好的一段历史. 原来还有易信, 原来老门户还挣扎过. `\n\n搜狐新闻客户端总经理蔡明军同意这一点，“大家看新闻本来就是要看外面发生了什么？”这个世界是嘈杂的，怎么能够想像一个安静的新闻客户端。');
INSERT INTO `archive_remarks`
VALUES (10642, '\n`成长轮次成功率当然高一些`\n');
INSERT INTO `archive_remarks`
VALUES (10644,
        '\n`一些久远的令人怀念但却遭遗忘的名字`\n\n天涯社区今天公布了《股权公开转让说明书》和《财务报表及审计报告》，宣布将在新三板挂牌。发行9000万股，票面价格每股1元。照此计算，天涯估值大约在10亿人民币左右。\n\n这家已经成立了16年的网络社区终于要上市了。\n\n和天涯几乎同时出现的四通利方已经孕育了两家纳斯达克上市公司，新浪和微博，市值合计超过60亿美元。比天涯出现更早的西祠胡同刚刚被艺龙网以8500万元的价格出售。另外一家齐名的网络社区猫扑，2004年就被出售。根据人人网2011年的招股书，猫扑被剥离给千橡控股，作价1810万美元。\n\n\n天涯解释说，公司目前正在根据用户需求调整战略方向，持续加大研发、人员等方面投入，从以网络广告收入为主转向以社区游戏化所形成的个人增值服务作为公司重要的收入方向。\n\n建设移动兴趣社交平台建设，围绕“社区游戏化”、“社区型电子商务”进行转型升级布局，推出了奖励性众筹——打赏、“天涯客”旅游电子商务平台、“涯叔农场”农产品电子商务服务等。\n\n天涯目前注册用户仍然超过1亿，移动端流量占比超过60%（以UV计算），类微博产品“微论”装机量1000万。平均日发帖回帖量大约45万。据此可以判断，天涯的月活跃用户应该以百万计算。\n\n目前天涯的实际控制人是创始人邢明，其直接和间接控制了天涯48%的股权，但是去年5月5日，邢明将其持有公司的全部股份质押给海口农村商业银行股份有限公司。\n\n');
INSERT INTO `archive_remarks`
VALUES (10646,
        '\n`不错的一篇总结`\n\n\n马云是个讲究的人，2013年5月10日，淘宝上线十周年的时候他正式宣布卸任阿里巴巴CEO。比他小5岁的陆兆禧接班了。在接班之前，花名是“铁木真”的陆兆禧已经在阿里巴巴所有业务的一把手职位上轮岗一遍，阿里B2B、支付宝、淘宝、阿里云。\n\n扶上马，再送一程。马云当时说，“希望同事们像信任我一样信任陆兆禧……接马云的位置是非常困难的”。\n\n两年后，同样是5月10日，陆兆禧将向张勇交出CEO的帅印。\n\n“我非常感谢陆兆禧这两年作为CEO的贡献，我很期待他未来为培养下一代领导层做出贡献”，马云说。\n\n---\n\n\n陆兆禧上任时的见面礼是战略收购高德地图，一年之后高德完成私有化，成为阿里巴巴的全资子公司，陆兆禧兼任高德CEO。在他接过CEO职位前10天，4月30日，阿里巴巴宣布战略投资新浪微博。\n\n5月16日，阿里巴巴联合银泰、复星、顺丰和四通一达宣布联合成立菜鸟网络，提供物流基础设施。\n\n6月13日，余额宝上线。一年时间获得1亿用户和6000亿资金规模。\n\n9月25日，阿里旗下的IM应用来往上线，陆兆禧迎来第一场大考。“All In 无线”，这个口号不知道最初是陆兆禧还是马云提出来的。陆兆禧的发言充满危机感，\n\n“将来是没有电话、没有短信，只有数据，我们看到了，我想同行也已经看到了。危机在于我们只有那么一点点的空间和机会……阿里巴巴是泰坦尼克号，不知道这个冰山是不是已经撞到了”。\n\n阿里强推来往以马云的一封公开信达到高潮，\n\n“我们家领导和我已经把家里所有有手机的人，包括七十岁以上的老人全强迫安装上来往。每个阿里人11月底前必须有外部来往用户100个用户，没有100个是肯定没有红包”。\n这个“我们家领导”指的是马云的夫人张瑛。这场运动丝毫没有撼动微信的地位。到了2013年年底，丁磊在一封网易内部邮件中评价几个IM，“微信5分，易信0分，来往负分”。这埋下了陆兆禧和马云之间第一次信任危机的种子。\n\n2014年春节前，微信红包上线并大获成功。马云形容这是“偷袭珍珠港，计划和执行完美，让我们教训深刻”。有人因此猜测，陆兆禧和马云因此发生了分歧，传闻称陆兆禧掌管无线业务的权限改由阿里COO张勇负责。\n\n---\n\n5月6日阿里巴巴向SEC提交IPO申请之后，整个公司的工作重点旋即转向IPO。在阿里巴巴美股史上最大的IPO上，陆兆禧和蔡崇信、马云作为三巨头一起亮相。陆兆禧的发言在三个人中最为简短：\n\n“今天特别特别感动，因为看到那么多的客户、那么多的同事在一起，能够见证这一时刻，希望我们能够牢记我们的使命和我们身上的责任，继续前行，我们还有87年继续往前完成我们的使命，请我们一起共同见证和牢记这一时刻”。\n\n就在阿里IPO之前一个月，阿里巴巴新任命金建杭为集团总裁，无论是金建杭还是总裁这个职位，都沉寂已久了。\n\n2014年双11，是阿里巴巴IPO之后的首个双11。陆兆禧接受了36氪的采访，他说几个月以来最开心的事情是自己瘦了。双11的成交量又超过了他的预期，他自己买了一条很贵的围巾，“最大的体会是思想永远赶不上互联网。”\n\n在这次采访中他宣布，农村、国际化、大数据和云计算是阿里巴巴集团未来的三大战略。这个表态随后在多次公开场合中被重申。\n\n春节前，微信红包再次展现威力，支付宝红包被压制。不过这一次外界和马云都没有太多指责。\n\n2015年年初，阿里和工商总局就假货白皮书一事公开争论，阿里的股价在两个交易日内跌掉一个京东。春节前后，WSJ长篇跟踪报道淘宝商家刷信誉一事，最近多地税务近期开始“请电商喝茶”，电商征税靴子即将落地。昨天阿里巴巴市值首次跌破2000亿美元大关。\n\n---\n\n在宣布离任阿里巴巴CEO的消息之前，陆兆禧最后一次公开露面是在4月23日的阿里巴巴北京员工大会上。马云现场宣布北京成为阿里的第二主场，电子商务之外的大本营，\n\n“我们必须为未来十年以后，各种基于数据的服务做好准备。这几年是电商唱戏，五年十年以后，是靠UC、高德、健康、影业，形成梯队作战”。\n陆兆禧没有发言，两周后他发出了离职的公开信：\n\n“前几天我跟马总一起参加了北京公司年会，看着台下那么年轻的团队和同事，台上的我想起2009年集团的第一次搬迁。我们是用接力跑的形式，完成了集团自己园区的第一次搬迁。轮到我跑的时候，天还未亮，城市一片安静，大多数人还在睡梦之中。但就在整个城市重新开始忙碌，又一次进入工作状态的时候，我们的接力棒已经越过钱塘江，到达滨江。\n\n这不是一次接力棒的传递。这是支撑我们一路走来，并支撑我们一路走下去102年的信念和理念的传递。\n\n……\n\n我十分感恩这份坚持与努力，这种始终贯穿我们的一次次交接，一次次默契，一次次的鼓励和信任，最终让我们跑得更快， 更好，更性感！\n\n……\n\n但是每个阶段，都必须有每个阶段的领导风格，只有我们70后，80后的伙伴们接过管理这一棒，才能让我们走得更自信和踏实！\n\n……\n\n一起奔跑吧， 兄弟姐妹们！”\n');
INSERT INTO `archive_remarks`
VALUES (10648,
        '\n`怎么不列一下?`\n\n两个月前，这三家投资机构的创始人，李开复、徐小平和蔡文胜第一次坐到一起，宣布创业2.0时代开始了。或许投资的2.0时代也来了。从108个筛选到40个，三位大佬在一起花了五个小时，蔡文胜是通过电话接进来的。今天出现在这个“群英会”上的40个项目，有20个是三家机构的共识，其余20家大家的意见并不一致。\n\n“但是最后我们决定，今天的项目如果有一方要领投，另外两家会自动跟投，Allocation（份额）是分配好的”，李开复想让投资变得像游戏一样简单，加快融资的进度。');
INSERT INTO `archive_remarks`
VALUES (10650, '\n`工具时代的余晖. 那时候, 互联网上A股真好`\n');
INSERT INTO `archive_remarks`
VALUES (10652, '\n`结果是36氪广告. 软文能写成这样, 此子不可留`\n');
INSERT INTO `archive_remarks`
VALUES (10654, '\n`社区团购有什么power吗? 滴滴做社区团购有什么synergy吗?`\n');
INSERT INTO `archive_remarks`
VALUES (10656, '\n`且看风起`\n');
INSERT INTO `archive_remarks`
VALUES (10658,
        '\n如今，它们还要面对更加凶猛的新势力，以抖音、快手为首的短视频已经超过长视频与即时通讯，成为中国人均单日使用时间最长的应用。\n\n\n\n我们采访了这个行业数十位从业者、投资人、合作伙伴与用户，几乎没有人能够总结出这场战争的意义，唯一得到的一个结论是：它们砸了超过 1000 亿人民币。\n\n \n\n没有人期待这场战争的终点。“终点也不会改变什么。” 易凯资本创始人兼 CEO 王冉说。易凯曾经是优酷土豆合并时，土豆网的财务顾问。\n\n \n\n回溯这场战争，它更多的意义是一场警示：在金钱是唯一壁垒的竞争里，没有什么游戏是只有单一玩家的。如果等了十年还没有人来，那么第十一年它一定会出现。\n\n \n\n“以前我们觉得电视台很无聊，但是现在发现自己也变成电视台了。” 一位爱奇艺的资深制片人说。\n\n\n\n截止发稿，芒果超媒市值 1222 亿人民币（185 亿美元），超过爱奇艺的 164 亿美元。中国互联网三大巨头，十年烧掉 1000 亿人民币打造的三大视频网站，竞争力和一家国资电视台相当。\n\n\n2013 年初，就在百度和 PPS 接触之际，消息在媒体上被曝光。始作俑者是 PPTV，这个排名靠前的视频平台正意图出售却不顺利。它的成败在此一举，为扰乱 PPS 和百度的谈判，更为了刺激其它玩家们的神经。\n\n \n\n阿里巴巴在此时入局，一位接近交易的投资人告诉记者，阿里提出以接近 5 亿美元的估值和全股票的方式收购公司。但 PPTV 非常犹豫，因为它被要求进入阿里体系并重组团队，“好像从平台变成了一个导流入口”。上述人士说。\n\n \n\n他们更青睐苏宁的方案，虽然价格更低且只收购 70% 的股份，但苏宁对团队承诺：“你们是苏宁互联网的一面旗帜，我们不懂，以后靠你们了。” 这直接打动了 PPTV。最终，PPTV 卖身苏宁。\n\n\n\n这场交易并未改变行业的格局，但促使阿里把视线转向了此时已有退意的古永锵，间接促成了今天三强格局确立。\n\n\n“没有任何一个股东会允许一个业务赔 10 年甚至更长的时间，但因为有了 BAT 的存在这个事情就这么坚持下来了。” 王冉说。\n\n \n\n视频网站有两层意义，一是重要的流量入口；二是内容经济、影响力经济。一位阿里巴巴高层人士说，文娱是慢活儿，要有定力和坚持，所以只有巨头能玩。\n\n \n\n没有人想往后退一步，即便是离娱乐业最远的阿里巴巴。\n\n \n\n“毕竟如果哪天娱乐变现的环节大爆发，而这块阵地完全没有布局，谁来担责任？” 一位优酷的中层员工说告诉《晚点 LatePost》，优酷现在更多在卡位，等有一天卡到爱奇艺的钱和故事都讲不下去了，自然就变成老二了。\n\n\n爱优腾缠斗 10 年，鼎盛的时候，它们将创业公司几乎完全挤出了这场游戏。这些都是用无边际的投入换来的，也大大牵制住了他们的创新。\n\n\n\n2018 年以后，抖音、快手和 B 站快速崛起。根据 Quest mobile 数据，2018 年短视频月总使用时长同比上涨 1.7 倍，全面超越了在线视频，成为仅次于即时通讯的第二大行业。这些新势力不仅抢走了他们的用户，更逐渐深入了他们的腹地。\n\n \n\n“长视频平台是那么努力，打碎牙往肚子里咽也必须得把平台上内容的盘子给撑住，但没想到一夜之间就变天了。” 易凯资本创始人兼首席执行官王冉说。\n\n \n\n认知的转变是最难的。\n\n \n\n直到 2020 年初，一位腾讯视频的核心高管仍有质疑，“我们的用户真的喜欢看抖音、快手那些搞笑的内容吗？” 此前这位高管一直负责着腾讯视频一款独立的短视频产品。\n\n\n\n一位腾讯视频产品技术线人士告诉《晚点 LatePost》。“Thirty （孙忠怀）就在内部表达过，‘这个（产品技术）我不太懂，你们能给我实现我的需求就可以了’。”\n\n \n\n“在长视频平台的眼里，短视频就不是一个决定生死的东西。” 一位优酷来疯的原中层对记者说。\n\n \n\n来疯是优酷的直播团队，它们很早就看到了短视频产品 Musical.ly，认为这是一个大机会。当时的负责人一狠心，决定停下手中的直播综艺工作，带着团队用半年的时间将资源投入短视频的开发。但最后团队将研究报告上交后，项目直接被俞永福和杨伟东否决。\n\n\n八年前，百度创立爱奇艺的时候希望它可以成为一家独立创业公司：自己租办公室、自己成立业务团队、网站的独立域名，即便在早期也少有员工是从百度而来。时任百度副总裁任旭阳为爱奇艺寻觅创始人时，标准也是 “创业型”CEO。\n\n \n\n这并不意味着百度完全放手。“百度的模式是所有分拆的业务自己都要占 40% 以上的股份，团队只占 10%-20%。” 一位接近百度人士说。\n\n \n\n李彦宏在多数情况下都能与龚宇保持一致，但龚宇只有爱奇艺 5.4% 的股份。\n\n\n\n“阿里希望用更有效率的方法来改造在线视频业，但同时又无法回避来自竞争对手的威胁，这些裹挟着优酷走向了一条拧巴的道路。”一位原优酷中层人士说。\n\n \n\n在优酷被阿里收购后，因为强压而不断引发的人员离职被部分人理解为阿里的换血行动。很快，一批来自电商业务的阿里人被安排进入了优酷的技术团队、数据团队、会员团队。\n\n \n\n老优酷更注重用户的停留时长，新优酷强调会员售卖的 GMV。“大家被教育要思考怎么去提高付费人数和提高每个会员的客单价。” 他说。但即便是对于流量的考核，也变得比过去更加严格。比如综艺《这！就是街舞》，团队被要求按一期节目每小时达到多少流量来衡量是否达标。\n\n\n\n阿里巴巴集团副总裁庄卓然（南天）在 2017 年被调至优酷 COO 与阿里大文娱 CTO。\n\n\n\n“优酷甚至大文娱的所有业务和动作，南天先砍第一刀。” 一位阿里巴巴人士向《晚点 LatePost》透露。\n\n\n\n南天在大文娱的时候是三线汇报，除了杨伟东，他还要直接向张勇和张建锋（时任阿里 CTO ）汇报。“杭州北京两边跑，一周就要开三个周会。”\n\n \n\n他的第一把火烧向了优酷的技术，主导优酷技术架构与阿里中台的强行融合。漫长且复杂的底层技术升级严重影响了优酷的用户体验，最突出的表现是起播速度慢、拖拉进度条的卡顿。\n\n \n\n一位优酷产品线的中干对《晚点 LatePost》回忆，当时团队强烈申请要增加服务器以解决这些问题，不然用户体验会受到极大的影响。提议被一一驳回，因为这会导致成本大幅上升。 \n\n\n\n时任优酷总裁的杨伟东是优酷被阿里收购后，极少数进入阿里体系并担任要职的高管。“阿里的意志是不大烧钱，用互联网的模式改造大文娱。” 一位阿里大文娱人士说，“改造” 这个词很模糊，“不烧钱” 执行起来就很清晰多了。\n\n\n巨头大量虹吸行业内最优秀的人才，仅是央视就有知名的制片人和导演如马东、郑蔚、葛亚、王险峰、姜滨，以及如今的爱奇艺首席内容官王晓晖加入。后来还有 “央视最年轻总导演” 牟頔加入，她带来了自己的团队和一个全新的节目概念，后来这个节目被命名为《奇葩说》。\n\n \n\n“爱奇艺大量剧播放量惨淡，其实成本都在亿级水平，但高层觉得没有太大问题。” 一位爱奇艺负责版权业务的员工说，“在他们眼里只要剧的品质达标就可以。”\n\n \n\n爱奇艺是三个平台最早重点发力做自制综艺和自制剧的平台，最早定的战略是购买综艺版权模式，然后进行本土化改造。一位原爱奇艺执行制作人告诉记者，广告主一开始对于互联网平台根本不买账。\n\n \n\n一个例子是达尔文工作室做的第一档节目《流行之王》，在所有的录制环节准备就绪后，无论如何也没有广告投放。“节目敲定了六个艺人，总成本就接近八千万。”');
INSERT INTO `archive_remarks`
VALUES (10660, '\n`资源错配无处不在. 在我的角度, 我总是去觉得积极上进的难得. 实际上这是过了一条基准线之后的视角. 从广阔社会的角度来看, 才华难得, 努力易得`\n');
INSERT INTO `archive_remarks`
VALUES (10662, '\n`腾讯香港帮又一位. 类似的角色, 和曾鸣, 关明生又很不一样`\n');
INSERT INTO `archive_remarks`
VALUES (10664,
        '\n`Max讲话, under the gun`\n\n\n到了2001年，岳立华不再满足只做批发商，干脆开起了超市，也就是兴盛优选的前身——芙蓉兴盛。当然，这个过程中走了不少弯路。“当时，我们店面规模最小的是100多平方米，最大的有800多平方米。但在经营过程中，我深感精力不足，管理很难跟上去，一系列问题接踵而来，如果继续发展下去难掌控。”岳立华后来向媒体回忆道。\n\n随后岳立华关闭了100平米以上的店铺，专注于30-80平米的小店，芙蓉兴盛也于2009年转型为社区便利店。这一步，岳立华走对了，踩上了中国零售业从小卖部向便利店转型的红利。\n\n2010年前后，岳立华的芙蓉兴盛成长为湖南长沙覆盖率最高的便利店品牌之一，红底白字的招牌在大街小巷随处可见。至2020年，芙蓉兴盛在线下拥有超过1.5万家门店，其中超过90%的门店处于盈利状态。\n\n然而，从传统批发起家的岳立华并未因此止步，不安分的他有着深深的忧患意识。伴随着移动互联网的兴起以及基础支付、物流、数据等基础设施的完善，岳立华深深感知到互联网大潮对传统零售行业的冲击。\n\n“未来将有70%的订单来自于线上”， 岳立华判断。2013年7月，岳立华开始着手孵化电商平台兴盛优选，2014年初，前期团队搭建和准备工作就绪，兴盛优选正式启动。\n\n但对于这个新的项目，岳立华也是一直在摸索中前进。此前芙蓉兴盛曾试水O2O电商——用户线上下单、周边便利店送货上门，这些模式不仅配送成本较高，且流量基本全部导向线上APP，最终都以失败告终。\n\n直到2016年8月，兴盛优选开始采用预售+自提模式。具体来说就是以手抄单进行提货登记的模式运营，便利店店主建立微信群，吸引周边邻里入群，然后在群里发布团购商品信息。社区居民在群里下单，店主统计汇总后，将订单信息录入平台，平台每日凌晨采购，一早将商品送到门店，居民自己到门店提货。这很好地撬动了芙蓉兴盛多年搭建的供应链，如“共享仓—B2C仓—配送站点—门店”的仓储物流体系，这令其成本低于行业其他玩家。\n\n---\n\n“做生意跟打仗一样，也得讲究灵活度。在湖南，我是从小城镇起步;而在省外，就须先选择省会城市，扎稳中心市场，再通过省会城市辐射发展到地县级城市。能在省会城市立足了、有影响力了，往下发展就相对容易了。其实这套‘农村-城市-农村’的发展思路，是跟毛主席学的。”岳立华对兴盛优选目前的扩张态势也颇为得意。\n');
INSERT INTO `archive_remarks`
VALUES (10666, '  \n`豆瓣, 一息尚存到几时?`\n\n`猫扑, 天涯, 漫游, 贪婪大陆, 等等...`\n');
INSERT INTO `archive_remarks`
VALUES (10668, '\n`祛魅, 各种意义上`\n');
INSERT INTO `archive_remarks`
VALUES (10670,
        '\n“集体的智慧”是符合人性的，这个词听着就顺耳，对吧。但是在XVC我们特别害怕这个东西。我们觉得，相比较之下，最低效的是集体思考，次之是一个人的独立思考，最高效的，是“一群人的独立思考”。\n\n我们有些做法，外人来看是觉得很奇怪的。\n\n比如，我们不鼓励集体讨论。我们的周会只是分享知识的，讨论项目一般都线下进行。因为我们发现，一群人的环境下讨论问题，常常会演变成辩论。要辩论，就得立场鲜明，有了立场，你的本能会替你戴上一副有色眼镜，挑选有利的事实来证明你的观点，最后你自己就信了。只有在线下一对一的讨论，才能真正“坐下来把事情搞明白”。\n\n又比如，我们看项目可能会好几个人一起上，但是都是分别各看各的，不会分工协作。自己做自己的客户调研，做自己的分析，最后的投资备忘录也都是每个人自己单独写一份，结论也未必一样。\n\n这些做法，说老实话挺累人，挺反人性的。不过没办法啊，做VC就像创业一样，是一个反人性的职业。我们觉得我们自己其实是创业者，只是恰巧选择了VC这个行业。我们希望能通过实践这些看上反人性的尝试，来创造长期价值。要是能成功，就算累一点，也值了。\n');
INSERT INTO `archive_remarks`
VALUES (10674,
        '\n毫无疑问的是，每日优鲜要做的是零售新物种。如果把已有的不同零售业态比作一张张“桌子”，创造新物种意味着不是“在旧桌子旁加一把椅子分一杯羹”，而是要开一张“新桌子”。而至今为止，每日优鲜已先后开发了三张“新桌子”，分别是主打生鲜即时配送的生鲜电商、聚焦建筑物级零售的无人货架，以及今年新探索的社交电商。由此也引出话题，如何创新新物种并保持进化力？\n\n---\n\n1、“战略上all  in新物种，组织上all  in年轻人”\n\n当然所有的事情都是人做的，除了战略上是all  in新物种，我们组织上其实有一条all  in年轻人。我们公司内高管基本都85后，我们另外三个合伙人，一个是88年，一个88年，一个89年。我们现在说再加合伙人，必须是90后。\n\n核心是什么？我们觉得重仓这些年轻人，我们是有收获的。我当时听过一句话，这个世界有伟大成就的科学家，爱因斯坦、牛顿等等，重要思想形成基本在25岁左右。就这个哥们儿如果30岁以前没有什么思想，到后头也不见得有特别多的思想再出来。\n\n \n\n因为我们原来学数学的，经常老师跟我们说，你搞数学研究，30岁没有成就什么，后面你就好好当教授，不要在科研的道路上再去奋斗了，这是很有意思的一句话。但隐隐约约，我觉得在我们来看，“30岁你都不能把一件事情做好，等你40岁做好，意义也不大了。”\n\n \n\n所以，我们重仓年轻人。因为抢那些什么功成名就的，抬头一大排的，我们也抢不过BAT，我就抢BAT看不到的下一代人。我们凭什么能在BAT下面活？我们看到了下一波的事和下一波的人，这是我们的思考。\n\n---\n\n徐正：我觉得找人这件事情，古时候找一个会写诗作画的诸葛亮还得三顾茅庐，你找现代战争的大将，三顾都不止。我觉得核心是你自己想没想清楚，要什么人。\n\n比如2017年我们的算法要再升级。我们把中国看得到的，做这件事情的三家公司列出来，并且每家公司找到这个领域的3个人，一定要面对面深聊。\n\n聊到这9、10个人，八八九九你对这个领域才知道怎么回事。不然就算请的大将来了，不会用，也就废掉了。你首先要进到这个领域，不见得每件事情是专家，你要会和专家一起沟通。\n\n---\n\n我觉得物质的走不远，物质是保障，核心是精神上的连接。说白了很多人在那儿属于二把手到我这儿是一把手，毫无疑问这是肯定的。\n\n \n\n这一点来讲，你找到了那个高人，他就可以释放出来，老板大他5岁，不见得水平高到哪儿，这个看清楚就OK了。精神的连接一定要有，你要讲清楚你是什么样的使命、愿景、价值观。\n\n \n\n说白了，如果你的梦想支撑不了人家的才华，你就挖不动嘛，刘备再怎么着，人家说我要匡扶汉室，这个梦想还是挺大的，我觉得这点很重要。\n\n我们刚刚讲了，全世界零售革命史不算百货公司那一波，不算乡村集市那一波，一共就这6张桌子，我占了3张，你确实得讲明白。\n\n---\n\n比如今天我们投了一个项目很有意思，原来回家吃饭的团队，现在做一个叮叮鲜食，这个项目的想法是我们两个团队交流过程中出来的，他原来想做一件A的事情，我们聊出了一个B的事情，就开始这么做了。\n\n \n\n我觉得现在跑得挺好的，我们在尝试做，完全是刚开始的尝试，现在谈不上在这个事情上有什么样的思考，边做边想。\n');
INSERT INTO `archive_remarks`
VALUES (10676,
        '\n`阶级流动, 就像和平, 是三明治中间夹的那层薄薄的火腿`\n\n虽然趋势如此，张一鸣毕竟是从BAT的“打头办”夹缝中跑了出来，北京深圳杭州毕竟还有完整的创投生态系统，在2018年这个时间点看，门还没关死，还有一线机会。但是在互联网这扇仅存的窄门极速关闭的时候，如果还没有意识到，那么阶级固化很快将完成，我们将永远沦为资本的苦工。\n\n办公室里之前有两本书，《投行人生》和《创业维艰》，读了一下之后，我们一致同意把《投行人生》打成禁书，藏起来一定不能毒害大家。\n\n让我们不被巨头们光鲜的职位所蒙蔽，埋头赶路，在末世中最后努力奔跑。\n');
INSERT INTO `archive_remarks`
VALUES (10678,
        '\n`人类是偏科生一文`\n\n如果某需求没有科学基础，很难研发技术，最后可能会用成熟技术来“间接”解决。\n\n1970年的时候，技术爆炸，人类刚刚成功登月，科幻小说大卖，一代作者们描绘了一个很光明的未来：人类可以登上火星（Star Trek）、城市内有飞行车（回到未来）、两栖汽车可以海地旅行、彻底治愈癌症（里根政府的计划）、基因技术克隆和新生儿无疾病、吃一粒胶囊就当一顿饭、超音速飞机（协和当年已经做出来了）、各种新材料（磁悬浮、超导、太空天梯）、超级计算机和互联网。\n\n2018年回看，预言家们集体大错特错了！47年过去了，我们可以说距离治愈癌症更近了47年，但是并不知道未来还需要多少年真正铲除癌症。除了计算机和互联网超额完成任务，其他所有项目里，人类一败涂地。\n\n何以悲惨如斯？真正的科技演化路线是什么模样的呢？\n\n偏科的人类\n原来，技术爆炸是偶然，不是必然。回到引理3，没有科学基础，技术进步犹如无根之木，巧妇难为无米之炊啊。实际上，人类不是一个德智体美全面发展的好学生，是个只懂电子的偏科生！对生物、化学、材料、能源的理解，并没有到一个很深刻的层面上，尤其是北美生物千老的科研，可以说是鸟枪法乱试，进展缓慢本是必然。\n\nBenchmark Capital的大合伙人Bill Gurley经常讲Bits and Atoms的概念（电子和原子/互联网和实体），说自己早年投资电子太多、原子太少，庆幸投出Uber这一单，为原子的社会做了点贡献，以后要多投实体的项目。嘴上这么说，我想他也很清楚，哪敢大力投实体啊，发展都在电子上，Uber是一个再清楚不过的人类偏科的实例了。本来解决城市交通应该靠的是新的交通工具，飞行车、多层地铁，超级大厦，结果偏科生实体解决方案拿不出来，只好用互联网来改变传统出租车的派单方式，增加点效率罢了。\n\n实际上，不出意外的话，人类会一路继续偏科下去，甚至于要到用计算机科学解决所有问题的地步。\n\n---\n\n最近有一篇刷屏的文章叫《移动互联网十年》，作者炒冷饭把我们熟知的移动互联网赢家TMDPKQ（头条滴滴美团拼多多快手趣头条）的故事再讲了一遍。“程维雪夜机场拦司机、张一鸣离职王兴饭否、王兴无限战争、黄铮巴菲特慈善宴”，我想大家耳朵都听出茧子了。这篇文章刷屏，标志着移动互联网浪潮的终结，这盘棋大局已定，未来机会不多了。2018年，很多朋友都很焦虑的问我，后面还有什么可以做的吗？悔恨生的太晚，入行太晚了啊！\n\n其实，不止我们一代人这么焦虑；大公司不给创业者活路的故事一直都在上演。\n\n1995年，Marc Andreessen来到硅谷，环顾四周，发现软件开发的机会都被前人做完了，微软已经彻底垄断，不禁哀叹一声：“I came too late. It’s all over”。他那时不曾想到的是，整个互联网浪潮才刚刚开始，Marc后面会带领网景公司成为最成功的浏览器公司，在纳斯达克顶点，骑着独角兽，登上时代杂志封面。\n\n更早一代，乔布斯那张在IBM Logo下竖中指的著名的照片，其实也是一样的焦虑略带犬儒的嬉皮士情绪。事后回看，乔布斯并没有在IBM的传统业务上打赢，而个人电脑自动把IBM拍在了沙滩上：阳光底下本无新鲜事。\n\n');
INSERT INTO `archive_remarks`
VALUES (10680, '\n`补贴的故事和终局`\n');
INSERT INTO `archive_remarks`
VALUES (10682,
        '\n`真需求, 但商业模式呢. 是不是所有题答完就完了`\n\n`也羡慕`\n\n发力免费答题，题拍拍显然经过了深思熟虑——虽然拍搜产品众多，但需求痛点仍在，这是其一；通过整合、调用现有的资源储备和技术能力，题拍拍对自己能够做到何种程度是有信心的，这是其二；业务联动有益于集团生态，这是其三。如此，题拍拍成为了一件可做、能做，也值得做的产品。\n\n\n\n在寸土必争的K12在线教育领域，当题拍拍的“爆款”潜质逐渐显露，这一细分赛道波澜涌动，“硝烟”渐起。\n\n\n');
INSERT INTO `archive_remarks`
VALUES (10684, '\n`且看历史如何展开`\n\n`不及共享单车疯狂, 也就和共享充电宝差不多. 只是换了玩家 - 不是创业者, 是巨头上场, 或者巨头派总监上场`');
INSERT INTO `archive_remarks`
VALUES (10686,
        '\n　　低消人群这件事情，今天拼多多一呈现，可以想象无数人都在拍大腿，无数人简直是悔死了。首先第一个，凡客的陈年肯定会第一个拍大腿。陈年最早是跟雷军一起做卓越，后来把卓越卖掉以后，他又做过其他的，最后决定做凡客。\n\n　　当时我就问他，我说为什么要叫凡客？他说因为我最讨厌的名字就是卓越，然后我就问那凡客打算做什么东西呢？卓越那肯定是卖书，提供精神消费，书、音乐什么的。凡客您干吗呢？陈年就跟我讲说，我要卖地摊货。然后他就跟我讲说，最真实的消费改变地摊货。地摊货有几个特点，第一是没有品牌，你没有任何品牌议价，看上的就是东西本身。\n\n　　那个时候，凡客真的是去品牌化的，包括衣服上的logo都是极其低调，陈年当时希望的说用户要的东西就是这个货。\n\n---\n\n`无限游戏`\n\n　　④ 实物团购这个模式明明有效，明明验证过，明明当年很牛逼，为什么再也没人做了？只能有一个理由，就是所有的创业者都被VC带偏了。\n\n　　为什么2016年，中国的媒体跟着VC跑，因为VC一投钱，谁能融到资，媒体就报道。所以VC那一年的风口投资加上媒体报道，形成了大家对于这个市场的认知，就说2016年消费升级。\n\n　　但实际上消费升级应该是一个持续十年以上的事情。接着2016年VC搞一个概念叫人工智能，2017年又搞一个概念叫区块链，如果你真的跟着VC跑，那真的是一个猪。其实团购千团大战之后，一批VC死得很惨，你想想千团都死了，所以基本上之后的这些VC再对团购都不感兴趣了，就这么简单。\n\n　　⑤ 我们在讲产品经理的时候，还是要回归市场本质，不是为了VC为了媒体才做。\n\n　　当年淘宝一秒删掉了24万商家，这些人到哪去？\n');
INSERT INTO `archive_remarks`
VALUES (10688,
        '\n`搏当下的趣头条`\n\n虎嗅注：被称为内容资讯界拼多多的趣头条，无疑是2017年互联网界的一匹黑马。作为内容资讯产品，趣头条崛起靠的不是特别的、优质的内容，而是它的营销套路和简单粗暴的获客方式。而更让人注目的是，腾讯领投了趣头条的2亿美元B轮融资，在此之前还有消息称趣头条在接受腾讯的Pre-IPO轮融资之后，会在2018年年内赴美上市。\n\n\n公司发展方向不明确，市场花销巨大但增长乏力，项目说变就变，一年下来团队士气不断溃败，原来的模式跑不下去，这是绝大部分创业公司都面临的问题。我把各家VC官网上挂的TMT项目都扫了一眼，感觉大部分项目不转型都很难以当前的故事和数据走到下一轮。\n\n\n\n而在市场竞争最激烈的信息流市场上，当趣头条这种通过玩法创新的产品突然能够低成本爆量，新创团队一年时间就能干出千万日活，很自然就吸引了所有人的注意力，“卧槽，一个用户成本才三块钱，原来增长还有这么高效的方式”。\n\n\n头条、快手那种算法赋权的产品势能要做好，投入太大门槛太高，我们学不来，像这种收徒进贡给用户发钱的打法如此简单粗暴我肯定能抄一个。甚至已经有好几个团队开始用区块链改造趣头条的尝试了，即“内容生产者会获得系统的代币奖励，点赞和转发优质内容的参与者也会获得一定数额的代币奖励”。\n\n\n\n除了将红包设计成跟微信一样的金币传播系统之外，趣头条的产品设计跟今日头条等信息流产品实在太像，以至于目前市场对趣头条的认知好像也仅到“发红包和收徒是一种高效的增长策略”为止了。\n\n\n\n腾讯领投趣头条的这轮算是Pre-IPO轮，即趣头条在未来一年内，一方面还要不断高速获客，一方面还需要不断强化自己在内容和算法领域的积累，哪个环节都不能停下来，必须要赶在头条上市之前先行IPO，才有可能实现利益最大化。\n\n\n\n这逼得趣头条只能考虑短期，必须快速增长、快速变现，必须要行为和路径很“短期”。\n\n\n\n内容产品说到底是四件事：用户获取、内容生态、推荐算法、商业变现。如果把这四块工作比作一辆车的四个轮子，那将在年底IPO的趣头条，目前只有用户获取和商业变现两个车轮着地，现在时速两百码，趣头条的状态就好比要在高速侧行中换车轮。\n\n\n\n而对驾驶员更有挑战的是，这着地的轮子它其实也有点歪。\n\n---\n\n不过大家心里最没底的是，这套金币系统的天花板到底在哪，一旦金钱刺激停止，用户会不会急剧下降？通过新手任务、日常任务、定期运营活动获取金币，是用户活跃的核心驱动力，在小日活规模下跑通单个用户成本是比推广买来的便宜，但少有人知道在真正大日活下他是否依然能够work，这套核心经济系统的算法能否一直有效？\n\n\n\n在QM后台查看，趣头条在完成融资后，日活已经横在那有一段时间没动了。\n\n---\n\n我特别想知道，(曾)有中国最优秀互联网人才的腾讯，怎么也做不好的信息流，怎么也做不好的电商，突然间被趣头条做了，被拼多多做了，投资部门怒刷存在感的同时，业务部门心中到底是什么感受？\n\n\n\n我相信腾讯的开放平台实际上不包括这样的关键领域，否则也不会有拍拍和易迅的陈年旧事，也不会有OMG管理体系大洗牌。努力了还是没有做好，到底是什么原因？唯一可以确定的是，公司越大包袱越大，Always Day1极其可贵。#高铁上看腾讯领投趣头条B轮有感\n\n上面是一位网友对于腾讯这家公司的疑问，其实她还漏掉了短视频，这个2017年最核心的主战场，腾讯也是毫无作为颗粒无收的。腾讯的组织发生了什么问题吗？毕竟短视频最核心拼的还是产品，而腾讯这家公司向来以产品能力著称，在最重要的市场，腾讯最出彩的业绩就是投资了快手。\n\n');
INSERT INTO `archive_remarks`
VALUES (10690,
        '\n`嗯, 乐纯还行`\n\n`人和人非常非常不一样. 我并不相信这样的方法论适合所有人. 很多人不该 - 也不需要 - 实现自我. 有些人的自我实现意味着社会的灾难`\n\n`可惜, 你们也无力阻止`\n\n`从这个角度看, 我仍然是Super Villain`');
INSERT INTO `archive_remarks`
VALUES (10692, '\n`Forrest 李小东. From one bedroom in a three-room HDB flat in Braddell`\n');
INSERT INTO `archive_remarks`
VALUES (10694,
        '\n`做了好多事情跟你说. 每一份招股书都是一段传奇岁月. 每个厂都犯过无数错误, 无数个夭折的项目`\n\n|  产品   |                                           定位                                            |            竞品            |\n|-------|-----------------------------------------------------------------------------------------|--------------------------|\n|  快手   |                                     快手主站、快手极速版及快手概念版                                    |            抖音            |\n| Kwai  |                                          海外版快手                                          |          TikTok          |\n| 一甜相机  | ·       主打高甜日韩系滤镜和元气萌力贴纸让美成为日常  ·       快手用户中年轻女性比例很高，短视频本身对美颜和特效也有较高需求  ·       日活100万 | B612咔叽（滤镜和贴纸数量多）、Faceu激萌 |\n| AcFun |                                         二次元视频平台                                         |          B站、西瓜           |\n|  快影   |                        视频编辑工具,用于创作游戏、美食和段子等视频；智能配音 + 字幕制作+ 乐音效库                         |            剪映            |\n|  喜翻   |                喜翻支持快手和微信号登录，主打年轻人脱单，功能上和探探类似，用户可左右滑动，左划翻页，右滑心动；扩展快手社交赛道                 |         陌陌、soul          |\n\n其他业务-教育\n\n·      商业模式：知识付费，平台提成5%\n\n·      付费转化率高：95%  \n\n·      累计学员160万，但客单较低\n\n·      驱动因素：疫情加快线上化，内容的生产和供给更丰富；家长的接受度提升\n\n·      快手的优势：\n\n        1.     学生群体覆盖全：24岁以下年轻用户占比高，学生群体为主，74%学生来自3 4 5线城市，与众多希望拓展新市场的教育机构需求吻合；65%的老师来自一二线城市，供需实现匹配。很多用户都没有被教培机构服务过，对于教育产品的要求不高（部分课程沉淀 & 转化率高于通过抖音的转化）\n\n        2.     比起Python、SPSS等在B站上常见的教学内容，快手用户会更关注excel、ppt比较基础的、普及化大众化内容，内容更贴近现实\n\n        3.     快手+教育是个可以走通的商业闭环。快手的小店、直播、录播的视频都是可以在微信中用小程序直接打开的，在快手里去做微信群一些转化和客户服务是会更方便的，能降低转化中的损耗\n\n        4.     产品层面上提供多个入口：侧栏、搜索、在家学习、知识中心等\n\n\n\n其他新产品\n\n·      高线青年的兴趣爱好社区“避风”，用户量超过100万，大量邀请MCN入驻避风产品研究 。强调个体独特的审美与偏好，通过视频分类，兴趣小组的搭建等来强化平台的用户爱好属性，未来有望前期发展成为一个小众的潮流社区\n\n·      播客产品《皮艇》\n\n·      办公产品“轻雀协作”\n\n·      内测一款全新的办公产品“轻雀协作”，这是快手的第三款办公产品，主打协同办公，此前的两款分别为文档协作产品“一起写”和IM 产品“KIM”轻雀协作的特色更多是在于项目管理方面，可以为用户提供海量的定制项目模板\n\n·      影视：快手国庆将推10部精品短剧，未来1年计划引入超200部短剧。快手短剧主要采取流量分账和联合出品两类，以分账模式为主。目前，快手短剧以女性用户为主，甜宠类短剧占比六到七成');
INSERT INTO `archive_remarks`
VALUES (10696, '\n`平庸的总结, 烂熟的故事`\n\n`我们还会有好故事吗? 是什么走向?`');
INSERT INTO `archive_remarks`
VALUES (10698, '\n`散了散了`\n');
INSERT INTO `archive_remarks`
VALUES (10700, '\n`test`\n');
INSERT INTO `archive_remarks`
VALUES (10702, '\n`人工受孕，人造子宫，AI伴侣，婚姻制度的崩溃 - 这些都在一条线上`\n');
INSERT INTO `archive_remarks`
VALUES (10704, '\n`CF, 就像DNF, 梦幻西游, 摩尔庄园等等一样, 确实成了一代人的青春, \"三亿鼠标的枪战梦想\". 调操控UI都这么不容易, 怎么能轻视研发工作量?`\n');
INSERT INTO `archive_remarks`
VALUES (10706, '\n`收获的季节。首日开盘飞了。`\n');
INSERT INTO `archive_remarks`
VALUES (10708, '\n`想玩. 换以前一定会去玩的, 特别是成人内容. 等等二刺猿mod吧`\n');
INSERT INTO `archive_remarks`
VALUES (10710,
        '\n`Getting there`\n\n\"来自大脑的信号非常微弱，想象一下，你在一个拥挤的足球场上方放置了几个麦克风，你正试图收听一个对话。你可能会意识到进球得分，但是很难区分一次对话。\"\n\n\n\n解决办法是进入体育场，离比赛更近的地方。或者对于BCIs，在颅骨上钻孔，将传感器直接连接到大脑上。这为研究人员提供了更好的信号。自20世纪70年代末以来，侵入性BCIs就已经在人类身上安装，在一些实验案例中，它们恢复了失明患者的部分视力，并允许瘫痪患者控制假肢。但它们也必须考虑一系列医疗方面的问题。\n\n\n\n首先，医生需要说服病人和监管机构让他们在人的脑袋里安装装置。除此之外，还可能有医学并发症。患者的身体可能会在传感器周围生长出免疫组织，甚至排斥它。这可能会给设备带来更差的信号，或者对患者的健康造成负面影响。\"颅骨内有异物，\"Schurger博士说：\"身体往往会排斥它。\"\n\n\n\n基于这些原因，人类和机器融合以增强认知能力的未来应用可能还需要一段时间。\n');
INSERT INTO `archive_remarks`
VALUES (10712, '\n`颇有内容. 但是都是过程`\n');
INSERT INTO `archive_remarks`
VALUES (10714,
        '\n`高管一共6%, 员工一共9.5%`\n\n据快手招股书显示，快手将所有已发行及未发行股份重新分类为每股面值0.0000053美元及0.0000053美元的A类股份及B类股份。所有已发行优先股将重新分类及重新指定为B类股份，合计共发行86.68亿B类股份和7.66亿A类股份。\n\n招股书显示，截至2020年9月30日，根据快手前雇员持股计划，4551名快手公司员工认购5.24亿B类股份，人均持股11.5万，此外还有4546名非快手在职员工认购3.21亿相关股份。据搜狐财经估算，快手员工持股比例约在9.7%。\n\n11月1日，有市场传闻称快手正在进行Pre-IPO轮融资，投前估值420亿美元，而快手的上市估值将达500亿美元。\n\n招股书显示，最后一次快手的融资总额8.4亿美元，融资后整体估值达到640亿美元。以招股书中2020年融资的每股估值计算，快手每股约在5.7-6.8美元。\n\n按此估值计算，快手员工人均获利近414万元-494万元人民币。\n\n此外，招股书显示，IPO前，宿华、程一笑、银鑫、杨远熙等管理层合计持股达27.16%，腾讯持股21.567%，5Y Capital持股16.66%；晨兴资本持股16.65%为最大外部股东。\n\n在快手的A类股份中，快手CEO宿华持股比例55.79%，联合创始人程一笑持股比例44.21%。\n\n根据招股书披露，宿华持有的A+B类股股份总计为4.84亿股，程一笑为3.85亿股，按快手IPO前融资每股约在5.7-6.8美元计算，宿华持股市值约为27.59亿美元至32.91亿美元（182亿至217亿人民币），程一笑持股市值则在144.84亿元至172.79亿元间。\n\n---\n\n「我们以薪金、津贴、实物福利、退休金计划供款及以股份为基础的付款形式支付董事的薪酬。\n\n\n\n截至2017年、2018年及2019年12月31日止年度与截至2020年6月30日止六个月，\n\n\n\n我们向董事支付的薪酬(包括工资、薪金、奖金、退休金成本、其他雇员福利及以 股份为基础的薪酬开支)总额分别约为人民币15,305,000元、人民币8,997,000元、人民币 7,621,000元及人民币3,745,000元。\n\n\n\n根据目前生效的安排，预期截至2020年12月31日止年度的董事薪酬总额(包括工资、 薪金、奖金、退休金成本、其他雇员福利及以股份为基础的薪酬开支)约为人民币7.5百万元(不包括酌情花红)。」\n\n\n\n\n\n得出结论，非常非常低，特别是和下面的高管薪酬相比，这也太低了。\n\n\n\n创始人赚的果然是！！！！股权的资产价值，而不是现金，\n\n\n\n他们 2017 年发 1530 万元，2018 年发了 899.7 万元，2019 年发了 762.1 万，而 2020 年预期，750 万元人。\n\n\n\n只想说一句，快手人民公仆宿华程一笑！！这特么还是董事加起来的 package 啊。\n\n\n\n而且，注意，这是包括股权奖励的，下面的高管薪酬也是！！！\n\n\n\n\n\n8，\n\n\n\n快手作为一个 500 亿美金，他给出的最高工资，是多高。\n\n\n\n看原文：\n\n\n\n「截至2017年、2018年及2019年12月31日止年度与截至2020年6月30日止六个月，\n\n\n\n应付五位最高薪酬人士的薪酬(包括工资、薪金、奖金、退休金成本、其他雇员福利及以股份为基础的薪酬开支) 总额分别为人民币153,488,000元、人民币182,081,000元、人民币103,814,000元及人民币 94,070,000元。」\n\n\n\n\n\n最高工资 Top 5 的总额从 1.5348 亿到 1.82081 亿，再到 1.03814 亿，再到 9407 万元，\n\n\n\n前五名包括薪酬股权的 package 的平均值，3000 - 4000 万的 package。\n\n\n\n还是很可观，最高的 package 可以给到 3000 - 4000 万，那向下兼容，1000 万 package 的应该也会比较多啊！！！\n\n\n\n我仿佛看到了职业经理人的巅峰。\n');
INSERT INTO `archive_remarks`
VALUES (10716,
        '\n`实诚, 但是也有成功者的傲慢. 大抵都如此`\n\n\n《晚点》：我们先来回顾一下过往。你的第一期和第二期基金分别创造了 50 倍和 30 倍的投资回报率。放在今天来看，这是否是一个奇迹？\n\n\n\n刘芹：一家基金的回报如果在 3 到 5 倍，就已经不错，如果能超过十倍，是行业里顶尖。而连续两期有几十倍回报基金，全世界也不多见。\n\n\n\n《晚点》： 50 倍和 30 倍之间，差距来自什么？ \n\n \n\n刘芹：回报倍数经常波动，第一期基金能见度最高，二期基金今天是 30 倍，可能还是被低估了，很多项目还在跑的路上。\n\n\n\n过去全世界最高 ROI（投资回报率）的经济体是中国，中国最高 ROI 的行业是 TMT。一个基金合伙人曾问我，“过去十几年里，有哪一个我们知道的基金不挣钱？”\n\n\n\n所以回报好不是我们的能力，我们只是恰好在这样一个周期里做对了。反过来这么想，你买过房子吗？\n\n\n\n《晚点》：买过。\n\n\n\n刘芹：所以你成功做了一次投资。这就是我们这一代的 lucky，你在那个时机买了房子，我在那个时机做了投资，没什么本质不同。\n\n---\n\n\n《晚点》：雷军创立小米时是一位明星创业者，不仅主流，还是很多程序员的偶像。\n\n\n\n刘芹：我们 2010 年投小米的时候，你觉得没争议吗？\n\n\n\n小米当时提出互联网硬件按成本定价，没有人理解。我们连续三轮投资，小米 2000 万美元估值时投了 500 万，2 亿估值时投了 1000 万，10 亿美元时，公司还没赚钱，我们决定领投。\n\n\n\n小米是一期的项目，我们为此开了二期 LP 的会议，说服 LP 用二期的钱来领投，拿新基金的钱来养老基金的项目，这是非常忌讳的。但我们还是做到了。\n\n\n\n2015 年，余凯从百度出来，一天芯片没做过，他说要做芯片。因为他说下一代做 AI 芯片的应该是懂算法和软件的人。当时公司都没成立，我就投了他。投传统芯片的人是不会投地平线的，他们只会投有 20 年芯片经验的人。\n\n---\n\n《晚点》：五源看上去系统性错过了整个电商赛道。\n\n\n\n刘芹：我们对用户型、产品型、工具型、流量型的公司，投得都还不错。但一到交易型公司，我们投得不好。\n\n\n\n早期和我们资金结构有关系，最初在家族基金，我们本能会去寻找确定性高的项目。当时内部有一个原始准则——“这是你的钱你投吗？” 电商这种资本密集型的投资，我们在策略上避免。\n\n\n\n后来是我们对这个领域的认知不如别人。我们曾经有机会投给京东 1000 万美元，没投是因为我们判断这家公司可能要融几亿美金，投第一笔 1000 万不难，但我们坚持长期持续投资，后面京东来找我融钱，给不给？本质还是对电商的认知不够，才不敢做疯狂的事。\n\n\n\n《晚点》：为什么不先投进去 1000 万美元，下一轮投不投再说。\n\n\n\n刘芹：这是一个非常坏的投资心态。你只要在一个项目上投机，你在每个项目都会投机，决策就乱了。 \n\n\n\n如果你没有做好持续下注的准备，说明你不是坚定地看好，那你连这 1000 万都不应该投。\n\n\n\n《晚点》：你们也是最早看过拼多多但没投的基金之一。\n\n\n\n刘芹：这是我挺大的一个遗憾。当时我支持投，五源所有人都反对，我屈服了。因为我们在另外一个电商公司上刚刚输掉了几千万美金。而拼多多又刚好在从拼好货（自营）向拼多多（平台）转型的过程中。\n\n---\n\n`太凶狠了, 毕竟晚点`\n\n《晚点》：大的商业机会是非常少的，过去十年全世界诞生的所有新公司里，最值钱的大概率是字节和美团两家。五源投中了小米、快手，但 BAT、TMD 加拼多多都没有投中，为什么？ \n\n\n\n刘芹：我第一次见王兴是在饭否时期，他基本不怎么说话，那可能是他状态最差的时候，后来我们又系统性 pass 了团购。黄峥更像一个咨询公司的人，我对讲得特别清晰、结构化的东西有很大的警觉。 \n\n\n\n另外我们在某些项目上持仓相对较重，我们先投资了快手，字节原来和快手没有竞争，后来出现了抖音，反过来成为了我们投资的障碍。 \n\n\n\n《晚点》：在字节只有头条的时候，你们也没有投。而 2016 年你们还请了张一鸣参加五源的 CEO 年会。\n\n \n\n刘芹：恰恰因为我做过媒体，我深知内容产业监管是非常大的挑战，字节早期大量出现过跟传统媒体之间的冲突，我们评估过，把它 pass 了。 \n\n---\n\n《晚点》：大的商业机会是非常少的，过去十年全世界诞生的所有新公司里，最值钱的大概率是字节和美团两家。五源投中了小米、快手，但 BAT、TMD 加拼多多都没有投中，为什么？ \n\n\n\n刘芹：我第一次见王兴是在饭否时期，他基本不怎么说话，那可能是他状态最差的时候，后来我们又系统性 pass 了团购。黄峥更像一个咨询公司的人，我对讲得特别清晰、结构化的东西有很大的警觉。 \n\n\n\n另外我们在某些项目上持仓相对较重，我们先投资了快手，字节原来和快手没有竞争，后来出现了抖音，反过来成为了我们投资的障碍。 \n\n\n\n《晚点》：在字节只有头条的时候，你们也没有投。而 2016 年你们还请了张一鸣参加五源的 CEO 年会。\n\n \n\n刘芹：恰恰因为我做过媒体，我深知内容产业监管是非常大的挑战，字节早期大量出现过跟传统媒体之间的冲突，我们评估过，把它 pass 了。 \n\n---\n\n`查查祖坟`\n\n 《晚点》：从事投资这么多年，肯定见过很多残酷和荒谬之事。可否分享一个你所见的最残酷之事？\n\n\n\n刘芹：我刚入行没多久，一个投资项目创始人生病去世。以及一些公司最后关门，这些过程都挺残酷的。\n\n\n\n《晚点》：会投资连续失败的创业者吗？\n\n\n\n刘芹：我们愿意连投三把。失败一次再投一次，再失败再投一次，当然不是什么人失败都投。对于真正优秀的人，失败是他最大的财富。\n\n\n\n《晚点》：三次是一个界限。\n\n\n\n刘芹：三次是一个人最黄金的创业时间和试错能力。三次再不成功，回家查查祖坟，查查家谱，运气太差了。\n\n---\n\n`新技术, 不变的人性`\n\n《晚点》：你所看到的不变的逻辑有什么？ \n\n \n\n刘芹：比如说电商的 “多快好省”。人性也是，人的贪婪、爱恨情仇、马斯洛需求从来没有变过，只不过原来爱恨情仇在电影里，今天在短视频里。\n\n\n\n《晚点》：哪位 CEO 的世界观让你觉得最不可思议？ \n\n \n\n刘芹：总体上都挺自洽的，在历史大逻辑下，一切都挺合理。\n\n \n\n《晚点》：你这种对时间的持续的渴望是从何而来？\n\n\n\n刘芹：其实最成功的创业者是释迦牟尼，他的创业项目存在了几千年。我对所有能够超越时间的东西感兴趣，我也对能够解释这个世界的东西感兴趣，我只是恰巧不小心掉到了商业和 VC 这个行业。\n');
INSERT INTO `archive_remarks`
VALUES (10718, '\n`腾讯有40% Epic, 有Riot, 有Supercell, Ubisoft. 强无敌`\n');
INSERT INTO `archive_remarks`
VALUES (10720, '\n`九年磨一剑`\n');
INSERT INTO `archive_remarks`
VALUES (10722, '\n`媒体 - 社区 - 社交. 从内容到人. 要想好你要做什么?`\n');
INSERT INTO `archive_remarks`
VALUES (10724, '\n`听起来真的很像洋葱新闻`\n');
INSERT INTO `archive_remarks`
VALUES (10726, '\n`逆风起跳啊. 总要有个靶子让人民打吧`\n');
INSERT INTO `archive_remarks`
VALUES (10728,
        '\n`下半场, 趋势没错, 细节有很多反复. 一切都是如此: 庙算可以对, 执行谬以千里`\n\n不知道为什么前一段时间，大概断断续续有一些企业的主要经营者找我聊天，跟我讨论一个问题，就是如何做新业务。常规看法认为美团点评做新业务上，还是有一点点思路和门道的。我基本上给他们的反馈都是不要做新业务，我也懒得问他们的业务情况和团队情况，我反馈特别直接，不要做新业务。\n\n我从来不认为我是一个激进的人，我一直认为自己是个客观的人。今天所面临的情况跟上半场一个很重要的差别，上半场你默认做一个新业务的成功率会很高，错了也不要紧，反正主营业务很好，也能融到钱，所以试错的成本很容易被主营业务的增长承担掉。但是到了下半场，事情发生了根本性的变化。\n\n　　我们要有一个基本的世界观，就是纵观人类历史，在任何一个时间片段看待当时的商业机会，默认没有商业机会才是常态，默认有商业机会是变态。而中国互联网在过去上半场，就是整个人类商业史上的变态。大家觉得做什么都容易成，什么钱都该花，什么都该试。今天进入到下半场，这个事情发生了根本性的变化。如果轻轻松松想让一个新业务出现奇迹，不要抱这个指望。\n\n　　第三个话题，可能在座很多人跟这个话题没有关系，但是第三个话题意义巨大。当企业用非常严格挑剔的心态看待组织的话，对应的就是员工该以什么样的心态看待自己的就业和工作。昨天还是前天有一篇文章有小小的传播，就是一个猎头公司的人写的一篇文章，叫《形势》。因为他做猎头，他认识不少人，里面举了很多例子，例如某个在BAT工作多长时间，200万年薪的产品经理六七个月没有找到下家了。这是过去互联网行业里面不可能出现的情况，今天的互联网行业里面，我认为跟过去就业状况会发生很大的变化。过去你跳一次槽涨50%，现在我建议大家不要轻易跳槽。过去你很愿意跳槽到一个非常早期的初创公司，现在我建议你不要这么干。过去你可以对老板稍微不爽一点就骂他，现在对老板仍然不爽，仍然要骂，但是对工作要严肃。');
INSERT INTO `archive_remarks`
VALUES (10732, '\n`斗鱼案子一战成名`\n');
INSERT INTO `archive_remarks`
VALUES (10734,
        '\n`They walked in the flesh on this earth`\n\n李一凡与一些杀马特青年访谈时，对方提出要收费。很多人不能接受，但他能理解。“对于工人来说，他们是以小时计工钱的，他们是以时间来换钱和换生活的。你用了他们的时间，你得理解他。”\n\n过去乌鸦曾看到工厂的新闻，但是当这些比她年纪更小的人坐在她的面前，风轻云淡讲起因工死去的工厂同事、被砸断手的朋友、干了几个月工作只拿到几十块时，工人们的情绪里没掺杂着悲喜，只有麻木。\n\n乌鸦第一次在深圳见到杀马特白飞飞时，她留着正常的发型，整个人特别乖。随后他们聊到工厂日常生活的压抑，白飞飞在网上想要买药自杀，最后因为买到假药没有自杀成功。乌鸦直接崩溃：“同一个时代，同样年纪的人，我们生活的差异可以这么巨大。我们上初中的时候，白飞飞在工厂一天贴两万个标签。”\n\n纪录片里，十四岁出来打工的杀马特伟哈哈工作效率高，被安排“裹”百洁布，每天加班到晚上十一点，一天下来，指甲都被磨掉了。在五金厂打工的杀马特，每天用手转动着零件打孔，六分一个，稍不注意手指就会被打掉——“有很多找钱都是断手断脚的，有什么稀奇，想开了就好了。”\n\n“不待在工厂区你是绝对体会不到工人那种疲劳和贫乏的。很多人都以为我能拍一个特别精彩的杀马特故事，可是没有精彩的杀马特，只有生命极其贫乏的杀马特。”李一凡来到杀马特的老家，听到了他们的留守儿童经历，受到委屈和内心的孤独，总是忍不住落泪。\n\n---\n\n影儿13岁出来打工，玩杀马特之后，有人开始注意并关心她，告诫她玩这个没前途的。她却产生了一种获取城里人关注和关怀的私心，“如果你是一个正常人，谁会去安慰你啊，你不正常的样子，别人就会关心你，是不是经历了一些不开心的事情才会变成这样的?”\n\n---\n\n当时，李雪松的QQ空间涌入很多侮辱性的评论，这导致他大量删除杀马特的照片。一次去吃烧烤，周围的人突然过来开始摔桌子和凳子，同伴的头发被按住后拿着打火机烧掉了。“社会打压得太重，实在坚持不住了。你要在这个城市立足生活，就必须把头发剪了，回归到平凡的状态。”2014年中旬，李雪松所在的原本五六十人的杀马特QQ群只剩下两三个人。\n\n\n安晓惠辞职后，没有钱，肚子饿得只能喝自来水。进工厂打工可以，但是得被迫剪掉头发。后来，她染黑了头发，进工厂吃了第一顿饱饭。“以前是那么夸张的一个人，然后一下子就变成了一个普通的人，好比一个明星变成了一个过气明星的过程”。\n\n2015年，李雪松来到女朋友家，她妈妈告诉李雪松，必须把头发剪掉。回来后，琢磨了三四天的时间，李雪松跑到理发店，跟自己的师傅说剪一个寸头，师傅调侃“是不是菌中毒”，两人纠结了半天，最后是师兄拿起推子一把剃了下去。\n\n一位顾客过来点名让“长毛”李雪松剪发，见到剃了寸头的李雪松，对方一拍大腿，气得说：“你干吗剪了自己的头发？”\n\n李雪松讨厌三和大神这个群体。他告诉南方周末记者，杀马特再怎么底层，都会靠自己的方式赚钱，过自己的生活，“三和的那些人，你不觉得他们是在自暴自弃吗？”\n\n影儿直播最火的时候，有人评论“来看猴了来看猴了”。“有时候是小丑，但我们心里是开心的就好。”影儿说。\n\n按照罗福兴的定义，1985年到1995年之间出生的是老杀马特，而1995年之后出生的则是新一批杀马特。新老杀马特群体有很多不同，比如老杀马特对“家族”的幻想和归属感更强烈，新杀马特大多只是出于“好玩”。\n\n---\n\n白飞飞一直有一个愿望，结婚时可以办一个杀马特的婚礼，两套婚纱照必须要有一个杀马特的造型。她对乌鸦说，自己对那些攻击玩头发的人、不承认自己玩过头发的人感到生气，“为什么不承认这是你曾经最美好的事情？为什么要抹杀或忘掉曾经热爱过这件事情？”Image\n');
INSERT INTO `archive_remarks`
VALUES (10736, '\n`充分证明了, 即使是在村里开个超市也有很多行业内部, 很多业务细节, 很多认知升级. 只是不赚钱罢了. 庙小妖风大. 芯片现在站在风口上, 一般人才熟知了这些事`\n');
INSERT INTO `archive_remarks`
VALUES (10738, '\n`换了一辆新宝来!`\n');
INSERT INTO `archive_remarks`
VALUES (10740,
        '\n`事情往往是这样 - 一地鸡毛, 过了热点之后, 大众和媒体 (因与果) 连总结的热情都没了. 靡不有初, 鲜克有终`\n\n`所以我们才看起来觉得创业全成功了!`\n\n当“欲与天公试比高”的野心终成笑柄与叹息，寄予美好愿景的钢筋水泥沦落为飞沙与灰烬，天空之城的得与失、成与败，也尽数被葬在这脚下泥土身处，无人问津。\n');
INSERT INTO `archive_remarks`
VALUES (10742,
        '\n`Aha, 他们在做一样的事情. BVP说: 从错误中学习是容易的, 我们Venture Capitalist天天都在做了. 如何从成功中学?`\n\n| Company | Anti-portfolio | Notes |\n| - | - | - |\n| Airbnb | Jeremy Levine met Brian Chesky in January 2010, the first $100K revenue month. Brian’s $40M valuation ask was “crazy,\" but Jeremy was impressed and made a plan to reconnect in May. Unbeknownst to Jeremy, $100K in January became 200 in February and 300 in March. In April, Airbnb raised money at 1.5X the “crazy” price. Their last fundraising was completed at ~500X that valuation. | 月营收100K的时候估值40M, 也就是40x市销率. 300K的时候就已经只剩10多倍了. 实际那一轮close在60M. 现在是100B USD, 100x |\n| Apple | Bessemer had the opportunity to invest in pre-IPO secondary stock in Apple at a $60M valuation. Neill Brownstein called it \"outrageously expensive.\" | 我们其实都不明白数字, 我们都不明白钱. 我们永远觉得贵. 没错, 在上一个时代贵. 时代变了, 加速地变着 |\n| Atlassian | Byron Deeter flew straight to Atlassian in 2006 when he caught wind of a developer tool from Australia (of all places!). Notes from the meeting included “totally self-financed, started with a credit card” and “great business, but Scott & Mike don’t ever want to be a public company.” Years and countless meetings later, the first opportunity to invest emerged in 2010, but the $400m company valuation was thought to be a tad “rich.\" In 2015, Atlassian became the largest tech IPO in Australian history, and the shares we passed on are worth more than a billion dollars today. | 06年的时候永远不想上市, 15年终于上市. 唯一不变的是变化, 还是阿里鸡贼, 也开脱了阿里游戏 |\n| Ebay | \"Stamps? Coins? Comic books? You\'ve GOT to be kidding,\" thought David Cowan. \"No-brainer pass.\" | \"什么? 二次元啥玩意? ACG? 谁看视屏想要会飞的字幕? 我到现在都关掉\". VC也是一个自找苦吃的工种. 我们每个人都会被时代抛下, 但是VC要亲身体验, 被时代抛下的同时还被case抛下, 心灵打击还破财 |\n| Facebook | Jeremy Levine spent a weekend at a corporate retreat in the summer of 2004 dodging persistent Harvard undergrad Eduardo Saverin\'s rabid pitch. Finally, cornered in a lunch line, Jeremy delivered some sage advice, \"Kid, haven\'t you heard of Friendster? Move on. It\'s over!\" | 所以呢? 我们觉得是STP里面的S? 一个没成不能证伪, 一个成了可以证实吗? 美团外卖是一个双边市场, 它有power吗? 或许是process power? 现实世界是一个混沌系统, 比下定性判断的商业理论更复杂 |\n| FedEx | Incredibly, Bessemer passed on Federal Express seven times. | Pass on BTC十次的人应该成山成海 |\n| Google | David Cowan’s college friend rented her garage to Sergey and Larry for their first year. In 1999 and 2000 she tried to introduce Cowan to “these two really smart Stanford students writing a search engine.” Students? A new search engine? In the most important moment ever for Bessemer’s anti-portfolio, Cowan asked her, “How can I get out of this house without going anywhere near your garage?”| |\n| Intel | Pete Bancroft never quite settled on terms with Bob Noyce, who instead took venture financing from a guy named Arthur Rock. | 我们总是去聊细则, 去讨价还价, 丢西瓜捡芝麻. A公司给你好吃的食堂, 独立健身房, 报销打车, Herman-Miller外加4K显示器, 你就忘了, B公司会100x |\n| PayPal | David Cowan passed on the Series A round. Rookie team, regulatory nightmare, and, 4 years later, a $1.5 billion acquisition by eBay. | VC们多少也明白了, 不能苛责. 永远都是against all odds. 所以庄明浩说, \"看命\" |\n| Snapchat | In 2011 Jeremy Levine arrived at LAX three hours late, thanks to flight delays, with enough time for only one of the two meetings on his calendar. He literally tossed a quarter and phoned Evan Spiegel with his regrets. SNAP was the largest IPO in 2017. | 还是小事. 一张机票, 或是一点麻烦 |\n| Tesla | In 2006 Byron Deeter met the team and test-drove a roadster. He put a deposit on the car, but passed on the negative margin company telling his partners, \"It\'s a win-win. I get a great car and some other VC pays for it!\" The company passed $30B in market cap in 2014. Byron paid full price for his Model X. | 太难了. 认知不到就是不到 |\n| Zoom | After trying several next-gen video conferencing products, it was clear to Alex Ferrara that Zoom was a winner. Most importantly, he was impressed by its engineer-turned-founder, Eric Yuan. But video conferencing was crowded with entrenched incumbents and multiple startups in the market, so Alex passed on Zoom’s series B in 2014. Better late than never, we invested in Zoom’s IPO at a $9 billion valuation. | |');
INSERT INTO `archive_remarks`
VALUES (10744, '\n`几乎被忘了`\n\n`How ridiculous`\n');
INSERT INTO `archive_remarks`
VALUES (10746, '\n`尘埃落定`\n');
INSERT INTO `archive_remarks`
VALUES (10748, '\n`2020-12, 这两天有新消息`\n');
INSERT INTO `archive_remarks`
VALUES (10750,
        '\n`来自沙场老兵的很好的总结`\n\n---\n\n\n前面讲的是 B 面的分类，A 面的分类是老王给腾讯分享的时候讲的。线上是根据信息的可见度分成A1（微信、WhatsApp、iMessenger）、A2（Facebook）、 A3（Twitter、微博、抖音、快手、Ins）、A4（今日头条、Google、百度、腾讯视 频）四个类别。\n\n微信里互发消息，有没有特定的好友，别人是看不到的；Facebook 里的好友别人是看得到的，Facebook 的留言板也也可以留言；Twitter 发一条消 息，所有人都能看到，但只有关注的人才会优先看到；而 Google 和今日头条里的信息所有人都能看到。\n\n如果一个产品集成了不同信息可见度的功能的话，消费者的区分难度是很大的，比如说微博刚出现的时候有人在微博的公域里和其年轻女性朋友聊天，所以如果我们把微信和微博的功能做到同一个产品里，就会有用 户出现混淆，这对用户的体验是非常致命的。\n\n这件事上做得最好的是 Facebook，他家的Facebook、Whatsapp、Ins 是分开的，只有最后一个没搞定，最后一个都在 Google 手里。所以微信无论如何也搞不死微博，双方的信息可见度不一样，微博有 2 亿 DAU，市面上以单 DAU 市值 来计算的话，微博的市值是最低的。\n\n不同信息可见度的产品的核心方法有区别。张小龙做产品的方法和今日头条 的方法差别巨大，张小龙说做产品要用心，字节跳动是全数据驱动的，谁数据好谁跑出来。所以时至今日腾讯依然做不好信息流和短视频，因为核心产品方法有根本差异，用最简单的方法描述他们的差异在于 A1A2 主要靠用心，A3A4 主要靠机器学习，腾讯长期靠人脑而不是靠机器导致他们在机器学习上的算法不够强，尤其是把搜索业务卖给搜狗之后，但不是他们算法不行，而是他们应用算法的能力不够强。\n\n这就涉及到哪些产品能做到一个 APP 上，哪些不能。阿里曾经一直不理解为什么淘宝和支付宝流量这么大，把饿了么放上去就不行；腾讯也一直不理解为什么微信和朋友圈有这么大的流量，微博还能蓬勃发展，短视频也干不过快手和抖音。\n\n这也是为什么美团可以在一个 APP 上集成那么多东西，因为都在 B2。抖音和今日头条是分开的APP，他们并没有因为今日头条的流量很大而把抖音集成到今日头条里去。这些和分类有关，这些分类涉及到了核心能力、资源配置、 消费者心智、组织能力。\n\n---\n\n\n准确地来说，美团当前的这些业务中，除了团购是中国第一家，其他的很多都是后发的。后发优势之一就是，你不需要去说服很多人了，先发者要去说服很多人的痛苦是很多人完全不能想象的。\n\n老王和王兴最开始做社交网站的时候是 2003 年，校内网是 2005 年出的，中间那 2 年做了一个叫多多友的网站。美国当时已经有Friendster、Myspace 已经 大红大紫了，但在中国仍然面临说服用户的问题。\n\n老王和王兴花了两年时间终于放弃了用一句话描述这个产品，而做校内网的时候实现了，校内网就是给学生用的网站，看起来人群变窄了，但学生会觉得和自己有相关性，当时校内网上有课程表，有校内活动，有清华的学生。\n\n2005 年春天的时候讨论是不是多多友的市场选得太泛了，2005 年底开始选择了细分市场上线了校内网，这就产生了很爆炸的影响，做多多友的时候很泛，而做校内网的时候产品会做得非常切合学生的需求，2006 年秋天新生入学的时候，校内网的推广人员会直接在迎新的时候仍一个传单，告诉学生说这是我们的官方网站，名字也像；\n\n而且为了强化这个效应，校内网的注册只有是 IP 在大学里或者邮箱后缀是学校邮箱才能注册，把课表也上传了，并且把生源地、高中之类的信息做了一个聚合和推送，又请了几个（低成本的）校园大使做推广，反过来如果要在全国做推广那只能在央视打广告了，这对于创业公司来说是不现实的。\n\n所以一开 始的时候不要怕把市场做小了，有个说法叫“一根针扎破天”，所以 segment 这件事对产品、设计、推广有很大的影响。再比如小米最开始的口号“为发烧友而生”，把安卓最早的用户集中到了 MI UI 论坛里。创新产品基本上都是为了一小波人而设计的，几乎没有一开始就做所有人群的产品的。\n\n但他们依然坚持做，为了让用户使用真实身份，校内网的做法包括：\n\n和电子系合作，在校内网上卖电子系的学生节票，这样把电子系的同学实名拉上了校内网；\n当时的交通没那么方便，过年回家的时候从清华到火车站打车很贵，于是校内网搞了一个覆盖清北人 3 个学校的活动，实名报名凑够 50 人校内网就 可以包一辆大巴送站，这样把实名用户的范围扩大到了清北人 3 个学校；\n\n\n比如说做校内网的时候上一次做社交网站的经验教训就用到了，犯的错误比别人少，做对的事情比别人多，比如说做真人社区粘性更高这个认知，这个认知是因为老王和王兴参与过第一波创业才积累了这样的认知，而不是一开始就有的； 第二个（错误的）认知是要把社交产品搞到用户体验很好才能让用户指数级增长，这个认知很反常识，所以在做校内网的时候就不去死磕产品功能了，而是把精力 花在市场推广上。\n\n这两个判断用于校内网的建设就胜出了，第一波创业潮里有人有了第一个认知但没有第二个，有人有第二个认知没有第一个，也就是说没人把 足够多正确和错误的认知聚合到一起去。还有早年有个理论叫六度社交理论，所以大家做6度好友关系，这个以当时的服务器计算量根本承受不了，所以当时做校内网的时候老王说只能做一度半，兴哥说一度半也行。\n\n---\n\n\n再比如说美国有个公司叫 Craiglist，类似 58 同城，页面里有好多块，比如二手房、租房、搬家、宠物护理等，这个生意和报纸时代，报纸里的分类信息栏目一样。这个公司人不多，利润十几亿美金，所以生存得也挺好，但这段时间环境 发生了变化，有些人搞了一张图，把 Craig list 里每一个板块换成了另一个公司 的名字，也就是其实 Craig list 里的每一个领域都在被其他人肢解掉。\n\n再比如说百度也面临类似的情况。百度是一个通用的搜索引擎，但你不会去里面搜衣服，你也不太会去里面搜游戏，所以用户的行为已经逐渐被迁移走了。\n\nTargeting 这件事看起来很简单，但其应用却千变万化，要考虑的要素非常复 杂。所以选择 T 的时候脑子里要存在着产品设计，想着组织能力。为什么 Craig list 不去做细分，因为深入每个板块要上千人上万人。\n\n---\n\n`哦! 原来大家都经历过. 有些人还在抑郁着`\n\n\n在人类的需求中，能满足的需求远远少于不能满足的需求。长生不老是一个非常正当的需求（但不可能被满足），老王第一次认识到这个事情的时候抑郁了半年。\n\n一类培训机构是考不上退学费的，这看着是培训产品其实是保险产品；另一类如果是给考不上的同学设计的，他会想方设法让你感觉好。所以在培训行业里有走脑和走心两个流派，给考得上的同学提供走脑的产品，给考不上的同学提供走心的产品，前者在讲课的时候还是要给一个清晰的定义的，后者则是浪费时间。\n\n---\n\n`技术极客做个人站 -> 正襟危坐写博客 -> 随手感想发文字 -> 图片 -> 短视频 -> 直播`\n\n---\n\n`解答了我一个疑问`\n\n美国的Youtube是很牛的，中国的Youtube不是优酷，优酷是Hulu，B站多多少少有点类似Youtube，而B站今天在中国的体量和Youtube在美国的体量是完全不可比的，B站现在的DAU3000万左右，Youtube的DAU是几亿十几亿，为什么Youtube比B站大这么多，Youtube是2004年左右发展起来的，那个时间点中国人有摄像机的人比美国少很多，而且当时中国的创业者比如优酷尝试做了一下发现内容供给太少了，所以被迫转型成为像Netflix和Hulu这样的长视频公司了。\n\n---\n\n再比如工作中客户也不会说出自己的需求，就像没有汽车的时候人们想要更快的马而非福特汽车；比如产品经理要搞用研，用户调研是很麻烦的，用研里说的霍桑效应指的是在Talyor的管理学时代里，如何提高流水线工人的效率，做了很多测试，看流水线的灯光亮度来看工人的效率，亮度调高或调低工人的效率都会提高，这并不是因为现在的灯光亮度是工作效率的最低点，而是工人知道工厂在做实验，这是调研里很麻烦的事也是广泛存在的现象。\n\n人的心理活动是非常复杂微妙的系统，最后的反应只是一个结果，中间转了多少次弯你根本没法知道，甚至真话假话你根本没法知道，用户自己有时候也没法知道。\n\n如果两个人面对面坐着，如果你沉默，对面的人就会胡说八道，很多人为了打破沉默的局面，会愿意说任何话。\n\n如果产品的体验不好，做用研可能没什么结果，很少有用户能真正反馈自己的产品体验，部分原因是有人能用自己不能用会让自己显得蠢，所以反馈的时候不会把自己操作的流程完整地反馈出来，用户在极力回避讲真实情况。\n\n在工作中或生活中如果遭遇挫折，把这个经历讲出来的时候人是很脆弱的，人就会不好意思把事情原原本本地讲出来，只会变成一种情绪。\n\n---\n\n\n有时候难以识别，就业市场上公司招人和大家找工作，企业岗位过稀缺还是求职者稀缺是很难判断的，这就要在时间和空间上去分层看，比如说老王为什么花这么大力气讲课，还不就是为了招人嘛。\n\n美团平台上商家的服务员是岗位更稀缺还是人更稀缺，总体上来说是服务员稀缺，美团内部做过一个招聘产品，团队汇报的时候说商家都有招聘的需求，这就把供需关系找反了，劳动力是因为服务员这个岗位工资低且辛苦才不做的，所以调研商家的需求没有，只有解决了劳动力不愿意去做服务员这个问题才为商家和社会做出了贡献。\n\n沿着企业招工说，如果劳动力是稀缺的，记住供需是受价格影响的，所以那些劳动力稀缺的国家里，他们通常有两种解决方案，一个是移民，一个是为员工提供培训和薪水增长的职业通道，比如不同水平的服务员拿到不同的评级证书，做得好的服务员可以去做五星级酒店的服务员，所以提供培训方案和评级体系是比做个招工网站更有效的解决方法。\n\n---\n\n第二是当你的店里有很多品类的时候，其实你的经营会变得非常复杂，外卖要是一样，当你的区域内有很多商家和消费者和配送员，你的经营会变得非常复杂，那如何让这个经营变得更好，那应该去搞一帮人专门去分析经营状况，当时美团还没有成规模的团队，老王就去看哪个公司有这样的团队准备挖一个团队过来，先看互联网公司发现里面都没有令人满意的人才供给，然后让HR找了解线下零售的组织节点上的类似岗位，发现也没有人才供给，于是老王就去问了线下零售公司的老大们为什么没有这样的重要岗位，老大们说如果有这样的需求就找MBB这样的咨询公司，于是老王从咨询公司挖了几个人过来建立了美团的商分团队。\n\n---\n\n分层上经常会出现一种状况就是在高端领域里供大于求，低端供不应求，或者反过来。举个例子，《创新者的窘境》最后作者克里斯滕森对自己的理论非常自信，而解释过去的事情是不能显示自己的理论的正确性的，还得预测未来，于是作者就预测了电动车这个行业会大发展，会取代现在的燃油车，电动车这个行业要从什么Nichemarket切入，应该是低端颠覆高端且电动车这个行业符合低端颠覆高端的重要特征；\n\n首先由于零件更少电动车理论上的生产成本是只有燃油车的一半，其次电的成本比油的成本低，加在一起电动车的理论成本是很低的，是符合低端颠覆的行业特征，所以电动车未来如果取得突破的话应该从低端入手，可能从幼儿园的校车或老年代步车做起，今天来看克里斯滕森预测错了(也已经去世了)。\n\n---\n\n这涉及到了另外一个例子，外卖业务刚起步的时候，线下的业务团队原来是做团购出身的，美团做团购的时候有一个口号叫“狂拜访，狂上单”，就是多拜访商家多上线商家，这其实就是不断地增加供给的过程，但当时做外卖的时候在校园里做，老王觉得“狂拜访，狂上单”这个事从团购到了校园之后有了问题，所以老王就和团队讲你们要打破路径依赖，“狂拜访，狂上单”这个做法在校园里是行不通的，但讲完是没用的，路径依赖的力量很大。\n\n这涉及到了认知学的规律，人类在认知上只能听到符合自己认知的话，不符合的完全听不到，人们在网上看到一篇文章叫好不是因为有了新认知，而是符合了原来的认知才叫好。于是老王让一个城市经理只开一个城市，一个城市只开一个学校，每个学校只招6个人开始做这个校园，于是销售人员开始“狂拜访，狂上单”上线了很多商家，结果发现订单根本不涨，然后销售人员汇报说单量不涨是因为补贴不够。\n\n---\n\n\n所以当时有个成都的城市经理在成都开了一个学校，只上了8个商家，然后在学校里猛搞推广，发传单+搞促销，并且和商家说好明天会有很多订单，最好多招几个人，因为猛搞推广，所以订单数量上来了，因为只有8个商家，所以平均订单多，商家认识到了外卖的需求很旺盛。一天结束之后，看哪些商家配送不够好，然后对他们说如果明天继续这样就下线处理，因为8个商家就可以满足需求，所以下线了一个立刻可以补上另一个，然后商家立刻就把配送员补上来并改善了配送体验，接下来美团会在C端降一波补贴，降补贴固然会让一部分消费者流失掉了，但留存下来的消费者会因为服务体验而留下来。\n\n再往前迭代一步，随着单量和消费者体验的上升，再补充几个商家，但速度不能过快，让商家数量增长、订单增长、消费者体验提升、配送效率形成有机循环，这个业务就转起来了，所以认清这个业务阶段里是需求不足还是供给不足，以及需求不足的时候怎么搞需求，供给不足的时候怎么搞供给，这件事是非常重要的，如果搞反了，就搞砸了。\n\n后来到了2015年要从校园里出来做白领市场，美团的销售团队已经形成了非常强大的能力了。最核心的能力是做地推，已经做到了一个学校里有多少栋漏，每栋楼里有多少人，把作战地图都画出来，做一波促销和地推，第二天去盘一下，每个楼增加了多少用户，根据每个楼新增的用户数跟地推人员结算，管理颗粒度很精准。\n\n做白领市场的时候就掉坑里去了，写字楼里做地推的问题是根本进不去，于是早高峰的时候在地铁边上搞一个小喇叭，然后被城管抓了。从校园里出来之后很长一段时间就在做这个事，但发现业务总是不涨，最后发现最大的问题白领的需求和学生的需求不太一样，总体来说相对高端一点，所以白领市场对商家的要求变高了。\n\n---\n\n`为招聘!`\n\n美团能在千团大战能胜出的一个原因是，美团和同行比起来技术比较强。团购的商家通常要求随时能结款，如果团购平台拿了消费者的钱后跑路或破产了，商家的现金流会很紧甚至可能会倒闭，美团提供了能随时结款且算账算得清楚的系统，这让商家在和美团合作的时候非常有安全感，这让美团在商家供给上获得了优势。美团能在那次竞争中胜出和这个有关系。\n\n外卖是一个高峰低谷很突出的业务，导致服务器要支持峰谷差值且成本可控，需要比较强的技术能力，如果只为峰值堆服务器的话会导致服务器的利用率不够高，如果不按照这个堆的话会导致峰值时间处理不了，这让服务器的调度利用成了一个重要挑战。美团让服务器在高峰期处理消费者的服务，低谷期处理大数据计算。\n\n技术也影响到公司的精细化运营能力。\n\n还有如何给业务团队定指标也涉及到了精细化运营。比如一个业务如果整体要增长10%，那么怎么把10%合理地拆解到地区上就需要对不同地区的业务经营很清楚，这还只是单一目标。再比如外卖哪些城市应该亏损，哪些城市应该盈利，亏损多少盈利多少，接下来又涉及到一个城市的业务目标如何进一步拆解到各个商圈内。所以美团的绩效系统是千人千面的，不同的人的绩效的结构可能都是千人千面的，只有系统如此强大后才有可能实现千人千面的绩效考核。\n\n技术对打击灰产和黑产有帮助。\n\n在打车的补贴大战中，Uber中国没做好其中一个原因是补贴没做到用户身上，被黑产刷走了。打车平均客单价是16元，消费者补贴15，司机补10元，补贴比客单价还高，这时候就会出现司机找几个人刷单，还倒赚平台几块钱。\n\n黑产是产业化经营的，也有非常优秀的工程师。所以要有很强的系统去和黑产作战，做黑产的行为通常会有些特征，比如说行踪比较离散，一个正常人的行踪不会这样，而要识别这种情况就需要把用户的行踪识别出来并和正常用户群体做比较，而且用户和用户之间的行为特征是有群体性的，这些常常就需要大数据技术。\n\n\n总之，美团是一家高科技公司。\n');
INSERT INTO `archive_remarks`
VALUES (10752,
        '\n`:) 镇有道理, 可惜没买美团股票`\n\n　　1、整个互联网可以分成两类：A类是供给和履约在线上，B类是供给和履约在线下。B类又可以分为：以SKU为中心的供给B1和以Location为中心的服务B2。B2是2012年到现在为止中国互联网竞争最激烈的领域。\n\n　　2、在LBS的方向上，中国和美国的企业这样的差距是怎么样发生的？大概有四个因素决定：人力成本、人口密度、人口规模、代际竞争。\n\n　　3、有一个非常简单的判断，在LBS领域，中国是一个比美国更好的市场。\n\n　　同时，它的APP里面定位这个功能的重要性，就是你这个APP是要把定位的功能做的相应速度多快、精准度有多高，是B2重要的特征。淘宝是一个很好的产品，对淘宝来说消费者的位置没有那么重要，所以对这个准确度以及精确度不一定很高。这是核心能力上来看。\n\n　　时间窗上来看，A是互联网最早出现的产品，互联网最早出现是邮箱、门户网站，他们的属性都是偏A类的，在整个互联网出现的时候就率先出来了。B1在之后出现了，比如电商网站。对于B2的企业一般来说都是在2010年左右或者2010年之后出现的，时间窗上可以看出来，三波。\n\n腾讯跟美国的A领军企业是谁？是脸书。谷歌跟百度对标。我们今天看到腾讯跟脸书市值基本相当。我们看B1这个领军企业是阿里，阿里对应是亚马逊，这两家企业市场值基本相当。我们看B2这个领军企业跟美国企业的对标关系？美团点评在发展的过程中，一个最大的困扰就是所有的投资人尤其是来自于美国投资人发现美团点评在美国很难找到一个比较像样的对标企业。\n\n　　我们也花了时间理解，在LBS的方向上，中国和美国的企业这样的差距是怎么样发生的？大概有四个因素决定：\n\n　　1、人力成本。大规模履约团队，外卖配送团队每天大概有50万人送单。我们跟韩国同行交流过，他们说他们最大的困扰是什么？是他们的配送员月流失率30%，这是他们最大的困扰。所以在社会基础上，中国跟美国这样的国家差距是巨大的。\n\n　　2、人口密度。我们看美国的社会城市人口密度可以看到，他们人口密度实在太稀疏了，人口密度稀疏对应供应商也是稀疏。这两个稀疏对于以Location为业务影响力是巨大的，且不说这个影响正面还是负面，反正对外卖这个业务影响绝对是负面的，影响这个配送时长，影响取餐时长。\n\n　　3、人口规模。\n\n　　4、代际竞争。所有产业拉到历史时间窗来看，不同时间段里面，或者每隔一段时间这个产业会有一次升级，这个升级假设我们叫做一代的话，美国零售业从最开始到现在，应该已经有4、5代了，现在美国市场上存在的主流零售业态应该基本上是在第五代的，这个时候出现了互联网的零售，我们把它如果称之为第六代的话，代际竞争就是第六代跟第五代企业的竞争关系。\n\n　　一个产业里第一竞争要素是什么？是替代企业的竞争，不是跟直接竞争对手的竞争，是替代整个方案的竞争关系。美国因为整个商业史比较长，商业非常发达，导致了他们之前的一些代的发展非常充分，如果把上一代称之为保守和反动势力，美国反动势力是非常强大的，而中国的上一代保守和反动势力非常的弱小。\n\n　　比如说我做外卖的时候，我做市场调研时发现了一个让我非常惊叹的地方。比如说美国当时最大的外卖网站叫做Grubhub，一天只有几十万单，但是美国的达美乐比那个外卖平台单量要大，麦当劳、肯德基这样的连锁巨头也不跟他们合作，他们已经形成了大的连锁，自己提供配送服务。这个提供服务非常标准化，而且美国人吃饭很枯燥，不像中国人那么多样。导致了上一代解决方案已经很好了，因为上一代解决方案很好，就极大压制了下一代的生存空间。\n\n\n　　我当时调研国内外卖市场情况，国内当时只有三家公司在相对认真的做外卖，而且加起来只有10万单，没有得到整个广泛的消费者的心智认知，整个财务也做的一般。如果把他们看成我们上一代的时候，我们起步的时候他们是非常弱小的。对应的是什么？我们起步的时候不仅仅在做外卖行业的互联网化，我们事实上在做外卖行业。因为我们事实上在做外卖行业，我们对于这个行业的贡献就比单纯的只做互联网化的贡献大很多，我们的商业价值会大很多。这是中美在这件事情上非常关键核心差别能力，这些特征到一起，我们也非常理解美国人看不懂我们。\n');
INSERT INTO `archive_remarks`
VALUES (10754,
        '\n这场峰会又名“币圈吐槽大会”。在很多人看来，马佳佳的出现，像是沉寂已久之后的回归。马佳佳则调侃自己是“过气网红”。\n\n然而，很多事情都变了。从马佳佳火起来的2012年到现在，时代风口换了一波又一波：团购大战、O2O、人工智能、共享经济、区块链……她自己在泡否停业后，也尝试了多个创业项目：High社区、少女实验室、少女首富天团等。但整体看马佳佳做的事情，似乎与时代风口关联不大。“我就是喜欢就做一个，觉得好玩就做一个，没有逻辑。”她说。\n\n---\n\n`泡否的历史`\n\n\n马威记得，泡否所在的街道堵得水泄不通。街道办事处禁止民众燃放鞭炮，他们大概吹了上千个安全套。在安全套的爆破声和“有缘千里来交配”的口号声中，他们的学生时代划上了一个句号，也开始了在创业江湖上的闯荡之旅。\n\n\n\n2013年夏天，泡否获得乐搏资本数百万人民币天使投资。在公开报道中，乐搏资本创始人杨宁把马佳佳定义为一个“内心非常强大的人”，“学术修为很深”。\n\n\n---\n\n`后来的故事`\n\n事实上，社区类APP的变现是公认的难题。像号称国内最大的情趣文化社区嗨音，就因苦于变现难而卖身了。\n\n\n那时，马佳佳还在三里屯开店，某天一老哥给马佳佳打电话说自己有一个橘子汁提取的洗液配方（秘方）。“天哪太酷啦，用了岂不是一个tasty女孩？”马佳佳很快约他见面聊聊。为了证明自己的洗液是橘子做的，老哥冲到店里来，哗哗把一管洗液倒嘴里喝了。“那场面……非常震撼，记忆犹新。”马佳佳写道。\n\n`额`\n\n\n除了新启动的“少女首富天团”，马佳佳在7月中旬还宣布出任音乐区块链项目Musiclife的首席增长官（CGO）。在Musiclife联合创始人刘莙怡看来，太多创业者连马佳佳名气的1%都不到，说明她至少在营销上很成功。未来，马佳佳会在区块链用户增长上协助Musiclife。\n\n\n\n这不难理解。马佳佳公认的前男友孙宇晨在2017年7月创建的“波场TRON”是Twitter第一大区块链社群，马佳佳对区块链早有耳濡目染。而且自今年年初“三点钟社群”风靡，区块链近乎全民狂欢，马佳佳的早期投资人杨宁、徐小平等人也纷纷呼吁All in区块链。');
INSERT INTO `archive_remarks`
VALUES (10756,
        '\n`下半场, 开始显现. 人总低估未来十年的变化`\n\n比如暴风影音等估值高的一塌糊涂。\n\n再比如乐视，乐视上市时，整个互联网圈说绝对是一个骗局。因为在它上市之前，整个互联网圈都不知道它的存在。\n\n况且，乐视上市的市值竟然比优酷、土豆、爱奇艺还高。\n\n\n你可以解释为A股股民中国股民不会炒股，不知道该值多少钱，所以乱定价乱炒股。美股是比较理性的，但仍然出现了互联网公司上市后估值高于我们认为的客观估值。\n\n整个传统行业出现的情况，大家都不涨。当整个传统行业走到头的时候，还有很多人手上有钱没地方投。尤其是中国4万亿，这就导致资本市场的钱非常多。\n\n可是传统行业又不涨，等于钱没有地方可去了，怎么办呢？\n\n---\n\n经营水平太差, 帐算不清。我认为在餐饮行业里能够把帐算清楚的商家不超过1%，很多看起来很牛逼的商家莫名其妙就倒闭了。你跟他聊聊，会发现他连帐都算不清，经营水平真的太差了。\n\n美国的传统企业技术实力是非常强的。\n\n大家现在公认亚马逊是一个科技企业。\n\n亚马逊的第一个CTO（首席技术官）是沃尔玛的CIO（首席信息官），也就是贝佐斯作为一个横跨科技业与互联网的人。沃尔玛这家公司是有自己的卫星的。可见沃尔玛的技术有多强。\n\n\n\n大家不要格局太低，把我们做的事情理解为我们这个公司要怎样，我们要从产业角度出发来看我们这个产业要向哪里去。');
INSERT INTO `archive_remarks`
VALUES (10758,
        '\n我觉得这个趋势是会继续变大的. 基于:\n\n- 直播是继短视频后下一个一般性内容承载媒介\n  - 内容的轨迹是信息密度越来越大, 文字 - 图片 - 短视频 - 直播, 即带互动的视频\n  - 能发短视频的人既然很多 (朋友圈的也算上), 能直播的人也该不少, 不限于主播. 技术上基本成熟了\n- 更多人看直播, 需要更多不同的personality, 更多人直播. 但是脸好看的人没那么多. 所以需要虚拟形象\n  - 在虚拟3D形象基础上, Vtuber还会给自己人设. 比如桐生可可人设是1500岁的龙族, 绊爱是天才少女智能AI. 直播受众需要这样现实中不存在的形象和内容. 也需要这些丰富的personality\n  - 符合之前的判断: 人们最终不care到底是运动员, 还是演员歌星, 还是电竞, 还是相声脱口秀嘻哈. 最终让人们分泌多巴胺的内容都是关于人基本的爱恨情仇. 所以粉Vtuber非常OK\n    - 比如追星追演员, 发现每个人的生活都是赶通告剧组拍戏录歌护肤整容, 三观认知都有点类似, 大多都是艺考出身. 观众总会觉得代表不了自己\n- 未来更多主播/艺人都用虚拟3D形象直播, 还可以连麦联机, 在同一个频道互动. 再加上Genvid的互动. 这 → 就是梦幻派对, 就是Metaverse\n- 如果UE5再给力点, 渲染出的虚拟形象再真实帅气一点, 我还需要真人拍的电影吗? 能用UE5开足马力设计出1万个艺人, 总有一款是你的菜\n');
INSERT INTO `archive_remarks`
VALUES (10762,
        '\n同时，这个赛道的马太效应越来越显著。我们观察到，过去两年内从零到一千万量级左右的 APP 数量寥寥无几，而且大多数是由巨头把持或孵化的业务，有少量的几个例外，一个是我们的客户“SOUL”，还有一个同样是我们的客户“得物”，他们也是从消费领域切入、以电商平台 + 社区的形态去突围，确实这两年很难再看到一个过了一千万日活用户的新平台火起来。\n\n比如像B站为什么能成为过去几年唯一一个在几千万 DAU 的量体上成倍增长的平台，是因为他们在内容供给上有非常强的稀缺性；比如说像电竞，S10 的直播权是所有人都认为是一个非常非常重要的战略资源，最后被 B 站买下了，这个直播权不管是放在任何一个平台上，那段时间那个平台肯定会爆火，所以这个爆款是可以击穿平台的。\n');
INSERT INTO `archive_remarks`
VALUES (10764, '\n`十个, 有点焦虑`\n\n`微视们也做了十个`\n');
INSERT INTO `archive_remarks`
VALUES (10766, '\n`拼多多一个案子上天. 千亿美元公司`\n');
INSERT INTO `archive_remarks`
VALUES (10768, '\n`一家满足的公司, 酒足饭饱的两个人. 这也是很常见的, 在这个级别`\n');
INSERT INTO `archive_remarks`
VALUES (10770, '\n`小说商战：收购，抢股权，设商业陷阱 真实商战：投毒，抢文件，找几个大汉`\n\n`人生五十年, 岂有长生不灭者`\n');
INSERT INTO `archive_remarks`
VALUES (10774, '\n`Slack也是`\n');
INSERT INTO `archive_remarks`
VALUES (10776,
        '\n`70亿GPT-3 NPC，就对了`\n\n今年年初，科比离世，很多人的朋友圈里的篮球迷都表达了自己的哀思，然后转向NBA 2k；年中居家隔离，欧美区的聚会游戏《Heads UP!》和《Monopoly》重回付费榜前列，甚至一度超过常年第一的《Minecraft》；而《Outside》这个社区自从2009年就已经存在了，但仅就2020年，这个社区的用户数猛增10万名，达到了64万。\n');
INSERT INTO `archive_remarks`
VALUES (10778, '\n`蚊蝇无法想象英雄的人生，觉得他们私底下一定也鸡鸣狗盗，一百分肯定是抄同桌的`\n\n`等待着Qi重新回到舞台中央的一天`\n');
INSERT INTO `archive_remarks`
VALUES (10780,
        '\n`Shopify is a 140B company. Tobi is a StarCraft player and donated prize pool money for it. 虫族玩家`\n\n`Amazon is trying to build an empire and Shopify is trying to arm the rebels`\n\nMy attention is the most liquid and valuable resource that I have.\n\nA day in my life really depends on what\'s happening. That said, usually I have themes. For instance, I have a priority list, and I have decision logs that chronicle all the things I am trying to figure out.\n\nThese cover different questions. For example, if I had just taken the company over, how would I change it? How would I build a company to potentially disrupt Shopify? I try to make my calendar match these bigger topics and other urgent priorities. In a way, the calendar is nothing more than a strategy. Although it\'s incredibly easy—and it has happened to me quite a lot—to have circumstances dictate the calendar. Because of this, there’s this constant tug of war between the actual priorities of the company and the kind of things that have to be done.\n\n---\n\n`Ditto`\n\nI have a complex set of thoughts on this. It is really my core value. I believe that the job we all have in life is to acquire knowledge and wisdom and then share it. I just don’t know what else there is. This is the bedrock of my belief system.\n\nWhen I get close to any field, I think about how far I want to go. I\'m probably further along with programming. I don’t know if I want to get from 90 to 91% in programming when, with the same amount of work, I could figure out the first 60 to 70% of UX or even something like drawing. There’s a recent book about this called Range, which I really like. The book pushes in this direction and explores this topic a bit more than I do. But I just found myself nodding throughout reading it, because it turns out that very often—really, every field has fundamental wisdom that you discover when you\'re learning and talking to the people who have mastered it. I find that going wide and learning the best lessons from the people who have dedicated their entire lives to a certain pursuit gets you really, really close to mastery.\n\n---\n\n`可能我还是参谋长. 最好不过`\n\nI really, really want as many people as possible to have the ability to engage in entrepreneurship, because there\'s a certain group of people who cannot work for other people, and they should have options, even in the digital world. And frankly, the internet has significantly pushed everything towards centralization and we know who owns most of it.\n\n---\n\nWe ended up labeling my product-related things red, investor/Board of Director-related things some kind of teal color, et cetera. And the thing I’m looking for is a balanced week; a week where, ideally, I manage to devote about 30% of the time—at least—to the product and then as much as possible to things like recruiting, bigger picture projects, and one-on-ones.\n\n..when I have my own ideas, the first thing I tend to do is just try to falsify them, to figure out why what I\'m thinking about is probably incorrect...\n\nI find that the first 80% of every field is pretty quick to learn—it’s equivalent to the Pareto principle—and I think that creativity generally is people using lessons from one field in another field in different ways. Because of this, I find learning fascinating.\n\n---\n\nYou wrote a script to delete every recurring meeting at Shopify. Talk about why you did that, and what you ended up learning from it.\n\nyou know what, I should talk about books. One thing that is interesting is how people have accused Shopify of being a book club thinly veiled as a public company.\n\nWe tend to read a lot and talk about a lot of books. We read Nassim Taleb’s books and one person on my team began talking about Antifragile and gave an outline. He said, “I think Nassim is putting a word to the thing that you keep talking about…”\n\n`过分了兄弟`\n\nBefore this, I would just log in and shut down various servers to teach the team what’s now called chaos engineering.\n\nEffectively, we looked for the business equivalent of just turning off servers to see if the system has resiliency. For instance, we used to ask people to use their mouse on their non-dominant hand for a day. We introduced these little nudges to ensure that people didn’t become complacent.\n\n---\n\nour unique problem: namely, Shopify was a company initially for American customers, built by German founders, in Canada.\n\n`Oh you know well`\n\nFor instance, if we had built the company in Israel, this would not have been a challenge.\n\n`I wouldn\'t dare`\n\nThat was a tangent, but to get back to the question you asked, we found that standing meetings were a real issue. They were extremely easy to create, and no one wanted to cancel them because someone was responsible for its creation. The person requesting to cancel would rather stick it out than have a very tough conversation saying, “Hey, this thing that you started is no longer valuable.” It’s just really difficult. So, we ran some analysis and we found out that half of all standing meetings were viewed as not valuable. It was an enormous amount of time being wasted. So we asked, “Why don\'t we just delete all meetings?” And so we did. It was pretty rough, but we now operate on a schedule.\n\n---\n\nIt was such a profound moment. Even to just communicate with people in other places. It made this enormous impression on me as this force of democratization. I found that the internet’s presence gave something to people that they just couldn\'t imagine. I was thinking about this the other day: as a twelve-year-old, the only way I could partake in end-to-end communication was maybe ham radio. That was it! That was all. And then the internet comes around and you are able to see anyone and just talk.\n\nLater, I had a little bit of a crisis with my craft. I had done tons of fun programming, especially open source and demos, these kinds of things. Then I was briefly paid by Siemens to write code in a sort of constricted way. It resembled the opposite of jazz: when everyone had a song sheet and you had to reproduce a dead person\'s music poorly. But that was how you get rewarded and promoted. And so again, the misaligned incentive system reinforced this kind of thing.\n\n---\n\nBut the major reason why video games are valuable is because of this concept of transfer learning. For instance, people who are good at chess understand when it\'s time to perform tactics, and when it\'s time to focus on positional development. Not just in chess, but also in life.\n\n---\n\nA coach is probably one of the highest returns on investment anyone can do with their attention. An hour spent with a coach has a 10x, 50x, 100x potential return on time spent.\n\n');
INSERT INTO `archive_remarks`
VALUES (10782, '\n`With all my heart`\n');
INSERT INTO `archive_remarks`
VALUES (10784, '\n`比想象得有内容. 都是打出来的, 思考差不多都到了`\n');
INSERT INTO `archive_remarks`
VALUES (10786, '\n`黄章退居二线, 三剑客 白永祥、李楠、杨颜`\n');
INSERT INTO `archive_remarks`
VALUES (10788,
        '\n\n老北京大都知道一个冷知识，始建于50年代的三环路，得名要比二环路更早，只是早期三环的“三”，并不是第三环的三，而是只有东南北“三”段路的“三”。读法上，一个是三——环路，一个是三环——路。\n\n\n《新京报》在2014年曾经专门蹲点双井桥数数，早上7时45分至7时50分，5分钟内，有31辆车等着挤过双井桥入口进三环主路，然后这些车进了主路还是走不动，因为该入口旁是双井桥北公交车站，每天有10多条公交线路的车辆停靠，极易造成拥堵。再往北50米是三环出口。进三环和出三环的车辆，同公交车交叉在一起，喇叭声此起彼伏。\n\n\n\n《新京报》最后给出一个双井桥通行秘籍：“每天一定要在7点40分左右在双井桥下掉过头。\n\n---\n\n金融危机之前，城市衰落的代表是美国的底特律，这一类彻底衰落的工业城市似乎离北京很远。但是最近几年，关于纽约衰落的讨论，已经远高于呼吁恢复锈带经济的热度。根据美国统计局的数据，即使有10万国际居民的流入做对冲，纽约这两年仍然成为所有大城市中的人口净迁出数量排名第一的城市。\n\n\n\n而另一个大城市东京，在刚刚缓解了地面拥堵后，现在又面临车厢内拥堵的困境。前年，为了缓解首都压力，日本出了一个“重金求搬离”的政策：愿意迁出东京的人，政府将提供最高300万日元的“好处费”。\n\n\n\n北京按照市场化规律建设的时间不过四十年，东三环CBD周边区域不过三十年，按照人的寿命，算是步入了中年。但是跟纽约、东京这些已经发展了一百年，两百年的城市相比，北京才刚刚成年。所谓“焦虑”，更准确的也许应该叫成长的烦恼。');
INSERT INTO `archive_remarks`
VALUES (10790, '\n`我总认为视频能向下兼容音频，也许我是错的，但也许音频会做不大`\n');
INSERT INTO `archive_remarks`
VALUES (10792, '\n`告别了世家百度. 我们不会也要告别阿里吧`\n\n`迎来了世家字节, 我们不会也要有世家美团吧`\n');
INSERT INTO `archive_remarks`
VALUES (10794, '\n`我们还需要等多久`\n');
INSERT INTO `archive_remarks`
VALUES (10796,
        '\n`非常好的稿子. 猎豹也是一家和我们有缘分的公司, 如今市值的惨状也可比趣头条`\n\n`但是公司活着, 好着, 资本市场懂什么`\n\n傅盛说，游戏业务几乎没有得到谷歌任何警告，每年还受到谷歌的推荐，也被集体下架。不仅如此，海外直播公司LiveMe既不是猎豹控股，也没有广告，连广告SDK都没有，不符合谷歌通知邮件中说的关联账号和广告违规两个条件，也一同被下架。 对于谷歌的下架理由——存在破坏性广告和无效流量的行为——猎豹移动表示，在整改之后，他们的所有产品都并不存在上述行为。一位熟悉出海业务的人士称，谷歌更多是在打击透支用户体验的变现方式，猎豹全线下架或许和开发商整体信用级别较低有关。 傅盛自己总结，被谷歌下架，战术上，是公司不够符合谷歌的广告流量价值；战略上，谷歌作为一家操作系统厂家，希望系统可控，和工具厂商的矛盾越来越不可调和。\n\n从2009创办可牛影像起，傅盛创业已十余载。他的创业之路异常艰苦，与金山安全合并、和360血战，在没有前路可借鉴的时候开始国际化。YY（欢聚时代）李学凌和他喝酒时曾调侃，猎豹之后，以后出海的公司都得挂上傅盛的头像。 傅盛总说，自己创业遇到的是一块贫瘠之地，要在夹缝中求生。“你每次都在修船，修好了，来一个洞，再修，周而复始。” \n\n---\n\n`最好是现在. 有钱有心气的时候`\n\n至于News Republic这一款海外个性化推荐新闻平台，公司内部认知不统一，冲突不断，后来冲突的核心演变成了“在海外做头条的模式做不成”。他说自己很难去面对公司发展与团队摩擦之间的矛盾，大家一起从创业的苦日子走过来，他不想团队再承受一次最初创业时的压力和风险。 “现在看来，一家公司应该是在上升阶段去迎来第二曲线的。如果下滑的时候再去搞，不管是内部的士气，能聚集的资源等等都是极其困难的。”加上当时也开始做AI，傅盛觉得在内容上“花不起那个时间了”，“所以那时候卖掉一了百了，有这个心态在。” \n\n---\n\n在工具业务成长飞速时，猎豹内部曾发生过这样一件小事：傅盛当时强烈反对在某一个位置贴广告，但团队一定要试，因为一天有十亿次的流量，结果试完效果很好，收入很快到了一天30万美元。“我就在想，我是不是不如他们懂移动广告？” 彼时傅盛接受《晚点LatePost》采访时称，工具业务一年给公司带来四五十亿元收入，10亿的利润，“你说是优化好？还是破釜沉舟好？” 记者问，“当时没想到钱来这么容易，有可能是不持续的？”傅盛反问，“要是你，你会这么想吗？”\n\n---\n\n在多数AI从业者眼里，AI公司是技术驱动的，一位AI领域资深从业者告诉《晚点LatePost》，\"目前AI仍然有很多尚未被攻破的技术点，反映到商业化落地上，就是一个产品的功能能否实现，典型AI公司的打法是先把业内最优秀的技术人才聚集到我这里，寻找某个阶段最适合落地的方向和场景，再进行商业化。\"但傅盛觉得技术先进与否其实是个伪命题，他把机器人定义为AI+硬件+软件+服务，这四者各占25%。 “所谓这些底层技术，大部分是用谷歌、斯坦福、或者各种学术论文的开源代码改的。大家比拼的其实不是底层技术，而是工程化产品化的能力。”傅盛说，有公司说自己视觉识别技术最好，但如果巨头投入做，他们做的视觉识别同样不会差。“我们团队几个人做的智能门禁系统，央视来采访说比一些巨头开发的产品速度都快，他们的还经常刷不开门，是不是你们的技术比巨头还好？其实不是的。一个技术的基础能力在那儿以后，只是看怎么更好地匹配具体场景。”\n\n---\n\n从山东省烟台市一所二本学校毕业后，傅盛拿着400块钱就来了北京，住过地下室，想考一个研究生，换一个好的文凭，想找到一份好工作。他从没想过自己能做一家公司，猎豹移动在纽交所上市当天，傅盛在台上敲钟，他看着底下忙忙碌碌的交易人，除了兴奋，更多的是自我怀疑，“为什么会是我？为什么会有今天？” 多位熟悉他的人评价，这么多年，傅盛没变，他依然性格冲动，意志坚强、永远打不死。傅盛曾向《晚点LatePost》记者描述，他在机场看到人插队，会大声喝止；他在温泉浴场遇到一对夫妇在温泉里搓澡，他看不下去，和夫妻俩吵了起来。\n\n2017年腾讯在厦门举行CEO大会，所有腾讯的被投公司CEO参加，开会之前，按照惯例，他们会集体参加一个体育竞技项目。那一年是皮划艇比赛，傅盛、王小川，和另外两名CEO共4人组成一队，他们赛前琢磨方法，比赛中奋勇向前，最后夺得第一。其他CEO很震惊，为了赢得这场比赛，他们比赛中太过拼命，双手都磨破皮出血了。 傅盛爱反思，这一点和他的老师雷军很像。2020年2月20号，公司产品被谷歌下架，傅盛一宿没睡。第二天深夜，独自一人在办公室写下了一篇1700字的反思。在这种时刻，反思更像是他自我排解的一种方式。 他写到，公司过去过于关注股价、财报，认为这些都是不可承受的压力，现在发现也不过如此，世界没塌下来。\n');
INSERT INTO `archive_remarks`
VALUES (10798,
        '\n和王可乐的交谈从下午一直聊到晚上，接近尾声的时候，他突然想起一个故事：几年前在广州时，他曾在一本书中读到平民教育家晏阳初的故事，这位学识渊博的大师把一生都献给了平民教育这件事。“这个世上有两种意义，一种是从1000个人里选一个上清华，另外一种是让剩下的999个也活得有尊严，”他觉得晏阳初做的事情很了不起。2017年，他在北京第一次见到宿华，听对方聊起为什么做快手时，他想到了晏阳初。 这可能就是“破圈”真正的意义。不是去反驳，而是告诉世界它真实的样子。就像王可乐告诉我的，他们没有改造世界的企图心，“我就是想告诉他们，有这么一股力量存在，这就够了。”\n');
INSERT INTO `archive_remarks`
VALUES (10800,
        '\n`很好的稿子, 在其他候选人倒下之后, 决赛圈的李学凌如何`\n\n“2016年如果去赌印尼、印度小视频是有机会的，但我当时是有点怂的。”昆仑万维创始人周亚辉说，他也是Musical.ly最后一轮领投方。“我们肯定打不过张一鸣，不如直接一步退到非洲。”他还想说服映客CEO奉佑生做Musical.ly中文版，但当时小咖秀遭受挫折，奉佑生犹犹豫豫不敢做。直到同一时间，字节跳动推出抖音。\n\n欢聚集团创始人、董事长兼CEO李学凌同样在2016年认识到短视频是个巨大的机会，但他不知道这样的产品如何从0到1起步，所以退一步做了主攻东南亚市场的直播产品Bigo Live，然后一步步做到直播领域的全球第一。 BIGO是李学凌的二次创业，从Bigo Live起家，目前已逐步拓展到全球，并推出了短视频应用Likee和视频社交应用imo。到2019年底，BIGO三款产品相加在全球150多个国家和地区有近4亿月活用户(MAU)，同年TikTok的MAU是5亿。\n\n---\n\n`国内剩下宿华, 海外剩下李学凌, 决赛圈. 浪花淘尽英雄`\n\n“他是唯一一个敢于拿出20亿美元以上的人说，我今天就要跟头条争一争，我觉得快手都没这个气魄。”周亚辉说。李学凌想干大事，他要做海外的快手，而全球市场，BIGO可能是唯一能与TikTok一较高下的创业公司。 看到未来和把握未来是两种能力。一位投资人说，当年一批有远见、有内容创业经验的CEO都看到了短视频有未来，但他们各自不同的处境、心态和自我认知，让他们共同错失了这个机会，并成就了字节跳动的今天。最终，国内剩下宿华，海外剩下了李学凌。\n\n---\n\n`好! 欢迎`\n\n“微会”不得不剥离欢聚集团。同一时间，李学凌从集团调出一个100人左右的团队，和当时的BIGO高管一起自掏1500万美元成立了BIGO。那一年，李学凌40岁，他决定亲自担任CEO，胡建强为联合创始人兼CTO，并在第一天就把总部设在了新加坡——这算一个颇有远见的决定，虽然如今做国际化就应成立海外公司已经成为业内共识，但当时的中国出海创业者，几乎没人想到这一点。\n\n高榕资本创始合伙人高翔是李学凌老友，也是BIGO、虎牙的早期投资人。他接受《晚点LatePost》采访时称，当时李学凌找他融资，虽然方向还有很多不确定，但他不愿意错失投李学凌的机会。“即使他本身思考的方向没成功，他也总能发现一个更大的方向做成。”高翔说。\n\n---\n\n李学凌说，他深刻知道，只有先忘却再学习，企业才能有成长。但看到未来和把握未来是两种能力，它无法一步到位，而是需要一个积累实力与认知的过程。欢聚集团的基因，长于理解用户、迎合用户，而弱于技术和商业化。所以做BIGO时，李学凌刻意补足短板，表现之一是他重用了胡建强——一位技术专家。胡建强在YY时曾被评价“技术很棒，但是沟通不行”，李学凌并不在意这些，他说“我要一个情商很高的人干嘛？”胡建强自己说，他擅长执行，李学凌擅长思考，两人很互补。李学凌思维活跃、想法很多，每几天就要和胡建强说说新想法，“但他给过来十个想法，我会challenge，最后可能只有一个能去执行。”胡建强说。一个例子是，李学凌曾经有一个想法让Bigo Live直接借用映客秀场直播的模式来做。被胡建强否决，他说，海外人们对社交直播的需求更为强烈，国内的东西不能照搬过去。\n\n---\n\n`呸, 哈哈哈`\n\n胡建强决定亲自写一个技术系统，并搭建了底层架构。“我们公司的要求是，管理层必须能做下面两级的活。”他说。紧张感开始在整个公司弥漫开，海外直播再做不好，公司就要完了。2016年3月，历经40多天，从产品、技术从头搭建，第一款面向海外的产品Bigo Live正式发布。胡建强后来复盘，Bigo Live在这一阶段能活下来，主要原因是自己搭建的技术系统。其次，从第一天起，这个产品就是基于全球市场逻辑。对于一些使用外包技术的直播对手，做全球意味着更高昂的成本，他们往往止步区域市场。而Bigo Live 果断地把“微会”剩下的3000万美元全都砸向市场，量起得很快。胡建强说，主要是钱和技术砸下来的。\n\n---\n\n`本地化漫漫征程, 换来4亿MAU`\n\n以泰国市场为例，何泓洁向《晚点LatePost》描述，他们进入泰国是靠一个有高校资源的合作伙伴，在曼谷国际化学校做了几场宣讲，做到了几万日活；在越南，因为知道“这里的年轻人对外面世界很好奇”，找了一家面向年轻人的媒体对BIGO进行报道，意外引爆了这个市场。\n\n按照对地缘政治的理解，BIGO将全球市场分为东南亚、南亚、独联体、中东、美洲、西太平洋地区（日本、韩国、中国台湾、澳大利亚、新加坡）六大区。以南亚为例，印度、孟加拉国、巴基斯坦、这三个国家虽然宗教不同，但因为深层次历史文化的原因，BIGO将其划分在一个大区域。例如独联体区域，是因为独联体国家基本共享一个相对统一的文化和历史背景，更容易形成一个区域生态循环。\n\n比如在中东区，内容生产主要在北非（埃及），但内容消费主要是海湾六国（阿联酋、阿曼、巴林、卡塔尔、科威特和沙特阿拉伯）。\n\n`LOL, 光棍五千年`\n\n分区还意味着，从线下争吵到线上的印巴两国被分开运营。他们还对印度的男性做了分区运营，“印度男性的荷尔蒙特别足，对澳洲等其他区域的用户可能会形成一些冲击。”James非常委婉地描述。而分层则意味着，比如在印度，他们会尽量给用户匹配相同种姓和阶层的人。这还不算全部。很多人常会忽视，印度官方承认的语言有23种，英语只是其中一种。团队刚进入印度市场时，以为印度人都看得懂英语，最早找的主播都是聚集在北部德里附近的高阶层人群，但他们很快发现，这些主播产出的内容与用户是脱节的。印度民众受教育的水平不高，能用英语交流的人更多是较高阶层的人。所以，满足印度小语种使用者的需求开始成为Bigo Live本土化的一个重要命题。他们开始尝试将小语种内容和小语种用户相匹配，产品的留存和活跃时间都得到显著提高。\n\n所以，满足印度小语种使用者的需求开始成为Bigo Live本土化的一个重要命题。他们开始尝试将小语种内容和小语种用户相匹配，产品的留存和活跃时间都得到显著提高。每个人都倾向于和文化背景形同的人交往，在自己的社群里面找到身份认同，也更喜欢去消费属于“自己圈层”的内容。BIGO用了很大精力去尝试识别并匹配不同的种姓人群。方法包括，通过用户登录或注册的地理位置、在平台的消费水平、使用的手机品牌进行一个粗略划分。同时对用户产出的内容打标签，经过一段时间的数据积累才能做基础的种姓区分。在区域内提供本地内容给本地人消费，这不仅“合乎人性”，更是现实和业务之间的最优解。\n\nJames描述，Bigo Live构建了一个类似中国封建社会的结构，天子下面是诸侯，诸侯下面是大夫，大夫下面是士人。在这个「封建社会」里，顶层是全球30多个offices近1500名员工；第二层是8000到1万家经纪公司；第三层是接近30万签约主播；第四层是家族体系，有的围绕VIP，有的围绕大主播，相互之间有PK，也有线下联谊活动；第五层是分布在近百万个直播间的用户，每个月在线人数有3000多万。在这个体系里，内容生产的最大作用是给它们提供了一个互动、社交的渠道。「坚持科技专业主义，尊重普世人文价值」是Bigo Live团队在本土化经验中的总结。公司还有一支研究团队，专门做重点区域市场的制度研究和人文分析。这个团队的20多位研究员，均拥有政治哲学、经济学、社会学、历史学等学术背景，硕士以上学历。\n\n---\n\n`非常非常对. Before I Get Old`\n\n2018年12月，李学凌出席了BIGO办公楼乔迁剪彩的仪式。因为办公楼离广州市区很远，李学凌后来在BIGO年会上致辞：“这回我们离广州越来越远了，但是我们离世界越来越近了。”2019年3月，欢聚集团斥资14.5亿美元将独立发展五年后的BIGO收回集团体内，此时BIGO估值22亿美元。\n\n胡建强说，他接下来最重要的精力是提高BIGO的组织能力。BIGO要同时学习阿里的价值观，和头条的组织公开透明、系统性的管理，如OKR的管理，内部OA系统等。“我们要把这两个都学好，能在夹缝中，在这么少的资源的情况下，活下来。”胡建强说。\n\n“像喝啤酒一样，美国人已经把最上层带泡沫的全都喝光了。”所以今天中国企业全球化，已经无法再像Facebook、Google一样只做最薄、最轻松的一层，他们只能同时进行全球化和本土化，两者齐头并进。李学凌接受《晚点LatePost》采访时说，他喜欢海钓，即使是一条小鱼，他也可以忍受暴晒和漫长的等待。但做企业不能只钓一条小鱼。从自身来说，李学凌需要弥补广告系统效率这个短板，张一鸣也要学习如何与各个国家的人文、宗教、政治和监管环境相处。站在今天，看向未来十年，现在是最适合全球化的时刻。因为中美关系充满变数，全球化积累的阻力会越来越大。但如果回望，可能最好的时间窗口已经失去，过去十年中，任意一年全球化的时机或许都比今天都要好。大时代如此，这是所有中国公司都要面临的挑战，无论你是巨头还是初出茅庐的创业者，无人可以避免。不过正如「BIGO」的含义一样——Before I Get Old（在我变老之前）——在机会面前，也许永远没有最合适的一天；但今天，一定是你余下人生中最年轻的一天。\n');
INSERT INTO `archive_remarks`
VALUES (10802, '\n`完全没有撤退. 至少今年没有`\n\n`FUD, FOMO, Fear & Greed`\n');
INSERT INTO `archive_remarks`
VALUES (10804,
        '\n`热泪盈眶`\n\nEternime、HereAfter、Nectome、Intellitar、Hereafter Institute等公司与MIT媒体实验室都致力于虚拟永生技术的研究探索\n\n　　Hereafter公司是由James Vlahos 和 Sonia Talati共同创办的科技公司。Hereafter创始人James Vlahos的父亲死于癌症，在其父亲因癌症去世之前，Vlahos为了永远保持父亲的声音和微笑，他希望用人工智能的手段让父亲永远生活在互联网上。在他父亲生命的最后三个月里，James Vlahos记录了其父亲生命中的各种对话和场景。最后，James Vlahos录制了91970个单词，并创建了一个对话人工智能Dadbot。通过Dadbot，James Vlahos可以和他已故父亲的电脑化身交换文本和音频信息，谈论彼此的生活，一起听歌曲，聊天和互相开玩笑。为了纪念父亲，James Vlahos还将人工智能软件上传到社交媒体。令James Vlahos大吃一惊的是，他收到了很多人的要求，希望Vlahos能帮助他们创建自己亲人的虚拟人，于是他决定开辟一个尚未开发的“虚拟永生”市场，因此创办了Hereafter公司。');
INSERT INTO `archive_remarks`
VALUES (10808, '\n`有这样一笔账：一万亿美元公司里，有一百个和一百亿美元创始人CEO一样的人，plus or minus`\n');
INSERT INTO `archive_remarks`
VALUES (10810, '\n`我找遍了信息, 没有找到60M人观看, 6000个主播的ref`\n\n`因为相信, 所以看见`\n');
INSERT INTO `archive_remarks`
VALUES (10812,
        '\n2013年，Alex 在 SAP 做教育的未来学家（或者说未来主义者）。尝试着做了一些关于教育行业如何利用新技术进行转型的研究。这促使 Alex 成立了一家教育领域的公司。Alex 和他的联合创始人提出了一个 \"10亿美元 \"的创业想法，将 Coursera + Twitter 结合成一个新的产品来改变教育。当时的愿景是让教育内容成为优先针对移动端设备设计的、碎片化消费的内容，结果是 \"彻底失败\"。\n\n1.如果你想建立一个新的用户生成的内容平台或社交网络，那么内容必须是轻量级的。内容的创造和消费需要在几秒钟内发生，而不是几分钟内发生。\n2.教育有点违背人性。如果你看看人们是如何使用手机的，大多数人都是用手机来交流和娱乐（玩游戏、使用社交媒体或发信息）。\n3.对于一个新的创业者来说，想改变人性是相当困难的。顺应人性比对抗人性要好。\n4.一个新的社交平台要想飞速增长，你的早期采用者必须是年轻人。特别是美国的青少年--为什么？他们有很多时间，他们有创造力。他们已经是数字化的原住民。如果你的产品能吸引一小批这样的用户，他们就会在学校和社交媒体上谈论它--你就不需要花那么多钱去做推广。推广成本为零。\n\n我们用一个比喻。Musical.ly 是美国，而 YouTube/Instagram 则是欧洲。你如何说服来自欧洲的创作者？你如何说服其他地区(社交平台)的创作者迁移到美国(Musical.ly)？\n\n•欧洲（YouTube & Instagram）的问题是，社会阶层已经很成熟。欧洲的普通公民在社会阶层中向上发展的机会几乎为零。我们看到了利用这点的一个机会。我们将为欧洲的普通公民打造一些东西。\n•在这片新的土地上，你必须在早期建立一个集中经济。这意味着在你的土地上，财富分配是累积在一小部分人身上的。你要确保他们成功地建立起观众和财富。这使得他们成为国家（和平台）的榜样。你有效地创造了美国梦。欧洲（Instagram）的人将开始意识到这个 \"正常 \"的人去了美国（Musical.ly）并成为超级富翁。也许我也可以这样做？这将导致很多人移民到你的国家（平台）。\n\n•然而，你必须同时下放经济。有一个美国梦是好的，但如果它只是一个梦--人们终究会醒来。你需要给普通人机会。你必须下放你的流量模式。给所有用户创造内容的满足感，创造一个中产阶级。\n\n这个比喻非常精彩。发现一个特点，许多社区应用做得比较成功的应用，都会把社区比喻成国家、城市治理。并且很多社区产品设计者，都提到了一本书，就是《美国大城市的死与生》。\n');
INSERT INTO `archive_remarks`
VALUES (10814,
        '\n据记者了解，未来这两个产品将分开运营。“国内加海外。” 阳陆育说道。这意味着，刚刚进入中国半年的Musical.ly将退出国内市场，会专注海外运营；而今日头条旗下的抖音在中国的发展将不再受到被指“抄袭”的束缚。\n\n今日头条10亿美元接盘也意味着Musical.ly的投资人找到了退出的途径。阳陆育告诉记者：“此前到C轮融资的所有投资方全部退出该公司。”\n\nMuscial.ly种子轮由华岩投资；A轮由猎豹投资；B轮由SIG、GGV（纪源资本）和Greylock Partners投资；C轮由启明、光信、君联、晨星、DCM Ventures、Goodwater投资。\n\n不过，纪源资本（GGV）管理合伙人童士豪对一财科技记者表示：“交割尚未完成，我们只是签了字，不会全部退出，还会继续成为今日头条的股东。”对于童士豪的表态，阳陆育未作出回应。\n\n');
INSERT INTO `archive_remarks`
VALUES (10816, '\n`直至见证璀璨星河`\n');
INSERT INTO `archive_remarks`
VALUES (10818, '\n`再也没有, 也查不到了`\n');
INSERT INTO `archive_remarks`
VALUES (10820, '\n`这些声音会被历史记住吗，值得记住吗？历史会记住996.icu吗？`\n');
INSERT INTO `archive_remarks`
VALUES (10822,
        '\n《志象网》：上次我们聊的时候，你也提到，你和五道口的那一拨创业者会有差距，但其实你创业比他们更早，你觉得是机缘的因素，还是其他的？\n\n\n\n周亚辉：都有吧。各占50%。挣钱太早，你反而错过了一些大的机会。\n\n\n\n06年和07年那会儿，我们做海外软件站点，我们那么小的公司，就20个人，一年能有1000万，2000万美元的利润的，国内很少。你挣钱太早，你就光盯着你这个领域了，但这个又不是未来的领域，机缘不对。\n\n\n\n\n\n\n\n《志象网》：我看你之前写得文章，里面提到，这种自我进化能力，主要来自你获取的信息的质量。\n\n\n\n周亚辉：这是很明确的，你get到了。这就牵扯到机缘，我一上来，2000年的时候，学生创业，我走的是偏门，因为我不是计算机系的，不是科班，科班和非科班，遇到的信息是完全不一样的。非科班的，我就去搞动漫网站，那是小众的东西，你接触的是一些另类，一帮搞艺术的，所以我现在对新事物的审美和接受能力很强。\n\n\n\n但我接触不到最牛的技术人员，也没有接触到代表未来主流科技的信息，没有接触到IM（及时通讯），得不到这些信息。\n\n《志象网》：2018年，还是2019年，你在创业邦的会上，你说，中国创业者唯一有机会的地方，就是非洲了。这个说法，到底有多少是在PR讲故事，还有多少是对在非洲做业务，真正的认同。\n\n\n\n周亚辉：这里面没有什么PR的成分。但是，我当时讲的，要到非洲去，自己要反省下。我当时的认知是这样的：你要做大的互联网平台的机会，南亚、东南亚，长期来讲，其实是没戏的。大的平台，比如说社交平台、电商平台、视频平台，你绝对不是本地精英的对手。因为印度和雅加达，都有很强的本地精英，他们一定会把中国公司beat（打）回来的。\n\n\n\n能搞大市场的，只有非洲了，很分散，政府也没有那么强势。印度和印尼不一定认中国是老大，但非洲肯定认中国是老大，美国也是老大。所以，只有在非洲，你才能做出大平台级别的互联网产品的。\n\n\n\n这个角度是没错的。但是，我后来反省，另外一个角度错了。是因为我没有发现大平台之后的第二波机会：品牌（电商）的机会。随着电商在这些国家的崛起，导致这些区域的所有品牌都在发生变更，不单单是中国消费升级，带来新品牌的出现。\n');
INSERT INTO `archive_remarks`
VALUES (10824, '\n`蒸汽平台来了`\n');
INSERT INTO `archive_remarks`
VALUES (10826, '\n`或是长不大，或是bilibili做了。也许吧！`\n');
INSERT INTO `archive_remarks`
VALUES (10828, '\n`人人是草台, Flash恒久远, 重启降级药到病除`\n');
INSERT INTO `archive_remarks`
VALUES (10830, '\n`Posthuman is coming`\n');
INSERT INTO `archive_remarks`
VALUES (10832,
        '\n`我甚至红了眼眶`\n\n`我还看过一篇很好的漫画. 讲菲律宾幼女岛, 获得好的生活条件, 接受教育, 改变人生的故事. 但是她们也可能会恨他们吧`\n\n---\n\n她是个敏感又早慧的女孩，见过什么是好的，那种教育方式的对比尖锐地刺痛着她——江苏那所高中，一年只有十几个学生能考上一本。老师们对学生的要求也低，所有时间都在讲语数英，副科只要求学生们听听，一样的题老师能来回讲两三遍。漫长的时间无法打发，她就透过班上一扇大窗户，盯着窗外的云和蓝天发呆。\n\n---\n\n2020年11月，在犹豫了几天之后，李小溪终于同意和我见面。因为复读过两年，21岁的她刚刚在北京的一所211大学开始大学生活。在她学校附近的一家咖啡馆里，我们聊起关于公平的话题，免不了要与别人的命运对照，李小溪的成绩在当时是最被看好的，她的求学却要曲折得多。但她并不怀着自怨自艾的心情，反而认为自己享受了另一种「特权」——虽然没有很好的经济能力，但她有一对上过大学的父母，她从他们身上继承了一些读书的天分。\n\n很小她就有过那种感受：就算跟着父母四处漂泊，不被关注，但学习对她来说没那么难，把一张卷子做到全对，不是难事。有的孩子在父母无微不至的关照下成长，才能勉强考上一个本科，而她在四处迁徙中还是考上了不错的大学。从这个角度来想，她不认为命运对她是绝对的不公。\n');
INSERT INTO `archive_remarks`
VALUES (10834, '\n`\"我们不懂游戏, 我也不明白那帮人有什么好玩游戏的. 但我忍着恶心逼着自己玩, 这块业务也要做\"`\n');
INSERT INTO `archive_remarks`
VALUES (10836, '\n`什么是社区氛围，调性。它从何而来？`\n');
INSERT INTO `archive_remarks`
VALUES (10838, '\n`饱和攻击`\n');
INSERT INTO `archive_remarks`
VALUES (10840, '\n`对investment thesis的最高礼赞：知行合一，赚到了钱`\n');
INSERT INTO `archive_remarks`
VALUES (10844, '\n`刘强东亲手写的管培生章程, 感叹号还是那么多`\n');
INSERT INTO `archive_remarks`
VALUES (10846, '\n`历史很难有笔墨去记得`\n');
INSERT INTO `archive_remarks`
VALUES (10848, '\n`也是同一天，ETH历史新高1660`\n');
INSERT INTO `archive_remarks`
VALUES (10850, '\n`倒要看看，游戏之于字节会不会成为腾讯之于电商，阿里之于社交`\n');
INSERT INTO `archive_remarks`
VALUES (10852, '\n`好想玩`\n');
INSERT INTO `archive_remarks`
VALUES (10854, '\n`好想玩`\n');
INSERT INTO `archive_remarks`
VALUES (10860,
        '\n03采取3+2引导人才培养，可以开后门\n优秀的人才不是韭菜，割了一茬马上就有，而是需要大量的时间培养的高成本低概率物种。\n这点毋庸置疑。\n在字节跳动，对人才的培养，采取的是3+2的模型。\n所谓3，就是操作原则：\n1、面试要三轮；\n2、人才选择要三思；\n3、人才培养要三生三世。\n\n所谓2，就是用人哲学：\n\n1、我吃下了，别人就吃不到了；2、招进来以后，哪怕暂时用不上，也起码杜绝了竞争对手用上的可能性。\n在字节内部，不管是人力资源部，还是业务或者技术部门，都有一个共识就是：储备人才就像储备冬粮，不管现在有没有需要，缺不缺人，都可以招人。\n\n因为和一个可能用得上的人才可以创造出的价值，以及防止他去竞争对手产生的价值相比，开工资的成本是更加可控的。招对手想招的人才，跑对手想跑的赛道，削弱对手，其实也就是在增强自己。\n人才本质上是不可复制的稀缺资源。所以在3+2模型的倡导下，人才培养算是有了一个战略型的大方向。\n');
INSERT INTO `archive_remarks`
VALUES (10862, '\n`有人造神, 有人急眼`\n');
INSERT INTO `archive_remarks`
VALUES (10864,
        '\n`有人造神, 有人急眼`\n\n`坦白说, 骆老师这篇文章让人不大佩服`\n\n「我没用过，但是我知道一切...世道浇漓...哎呀，众人皆醉我独醒」\n\n「作为一个老互联网人，西方哪个国家我没去过，西方哪个热点我没参与过？你们呀，too young too simple！」\n\n「凡是我接受的就是人间的正道，历史的大潮，凡是我不接受的，就是通通会进入历史垃圾桶的」\n\n无比熟练地使用「贴标签」「直接下结论调动读者情绪」的过气科技媒体主编闻讯赶来蹭热点，心中暗暗想道，「这群年轻人啊...中国的互联网的未来还是得靠我」。\n\n贴标签谁不会呢？\n');
INSERT INTO `archive_remarks`
VALUES (10866,
        '\n`健身环, 好就好在不仅玩的时候愉快, 玩完之后也感觉充实, 完全不是guilty pleasure`\n\n`想象未来十几年, 限于伦理因素网约车的形态很可能都是一个司机, 坐在完善的自动驾驶车辆的驾驶座上发呆, 不许离开不许走神. 这些司机面对的应当是游戏. 其他很多种侥幸没有被automate away的工种应当也是如此`\n\n`游戏和社会主义监管共存, 办法一定不是戒网瘾防沉迷, 而是为Metaverse赋予意义`\n');
COMMIT;

-- ----------------------------
-- Table structure for archive_tags
-- ----------------------------
DROP TABLE IF EXISTS `archive_tags`;
CREATE TABLE `archive_tags`
(
    `archive_id` bigint(20)  NOT NULL,
    `tag`        varchar(60) NOT NULL DEFAULT '',
    PRIMARY KEY (`archive_id`, `tag`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Records of archive_tags
-- ----------------------------
BEGIN;
INSERT INTO `archive_tags`
VALUES (100, '互联网');
INSERT INTO `archive_tags`
VALUES (100, '创投');
INSERT INTO `archive_tags`
VALUES (100, '历史');
INSERT INTO `archive_tags`
VALUES (101, '互联网');
INSERT INTO `archive_tags`
VALUES (101, '创投');
INSERT INTO `archive_tags`
VALUES (101, '历史');
INSERT INTO `archive_tags`
VALUES (102, '互联网');
INSERT INTO `archive_tags`
VALUES (102, '创投');
INSERT INTO `archive_tags`
VALUES (102, '历史');
INSERT INTO `archive_tags`
VALUES (103, '创投');
INSERT INTO `archive_tags`
VALUES (103, '历史');
INSERT INTO `archive_tags`
VALUES (103, '商业史');
INSERT INTO `archive_tags`
VALUES (104, '创投');
INSERT INTO `archive_tags`
VALUES (104, '历史');
INSERT INTO `archive_tags`
VALUES (104, '商业史');
INSERT INTO `archive_tags`
VALUES (10004, '公司史');
INSERT INTO `archive_tags`
VALUES (10004, '阿里');
INSERT INTO `archive_tags`
VALUES (10005, '中供');
INSERT INTO `archive_tags`
VALUES (10005, '公司史');
INSERT INTO `archive_tags`
VALUES (10005, '地推');
INSERT INTO `archive_tags`
VALUES (10005, '阿里');
INSERT INTO `archive_tags`
VALUES (10006, '方法论');
INSERT INTO `archive_tags`
VALUES (10006, '流量');
INSERT INTO `archive_tags`
VALUES (10006, '腾讯');
INSERT INTO `archive_tags`
VALUES (10006, '资本');
INSERT INTO `archive_tags`
VALUES (10007, '360');
INSERT INTO `archive_tags`
VALUES (10007, '抄袭');
INSERT INTO `archive_tags`
VALUES (10007, '腾讯');
INSERT INTO `archive_tags`
VALUES (10008, '百度');
INSERT INTO `archive_tags`
VALUES (10008, '败局');
INSERT INTO `archive_tags`
VALUES (10009, '人事');
INSERT INTO `archive_tags`
VALUES (10009, '百度');
INSERT INTO `archive_tags`
VALUES (10010, '医疗');
INSERT INTO `archive_tags`
VALUES (10010, '百度');
INSERT INTO `archive_tags`
VALUES (10010, '贴吧');
INSERT INTO `archive_tags`
VALUES (10010, '陆奇');
INSERT INTO `archive_tags`
VALUES (10011, 'AI');
INSERT INTO `archive_tags`
VALUES (10011, '并购');
INSERT INTO `archive_tags`
VALUES (10011, '百度');
INSERT INTO `archive_tags`
VALUES (10012, '信息流');
INSERT INTO `archive_tags`
VALUES (10012, '并购');
INSERT INTO `archive_tags`
VALUES (10012, '百度');
INSERT INTO `archive_tags`
VALUES (10013, '字节');
INSERT INTO `archive_tags`
VALUES (10013, '方法论');
INSERT INTO `archive_tags`
VALUES (10014, 'TikTok');
INSERT INTO `archive_tags`
VALUES (10014, '北美');
INSERT INTO `archive_tags`
VALUES (10014, '字节');
INSERT INTO `archive_tags`
VALUES (10015, '拼多多');
INSERT INTO `archive_tags`
VALUES (10015, '电商');
INSERT INTO `archive_tags`
VALUES (10016, '生鲜电商');
INSERT INTO `archive_tags`
VALUES (10017, '360');
INSERT INTO `archive_tags`
VALUES (10018, '在线教育');
INSERT INTO `archive_tags`
VALUES (10018, '游戏');
INSERT INTO `archive_tags`
VALUES (10018, '网易');
INSERT INTO `archive_tags`
VALUES (10018, '音乐');
INSERT INTO `archive_tags`
VALUES (10019, '并购');
INSERT INTO `archive_tags`
VALUES (10019, '方法论');
INSERT INTO `archive_tags`
VALUES (10019, '美团');
INSERT INTO `archive_tags`
VALUES (10020, '美团');
INSERT INTO `archive_tags`
VALUES (10021, '短视频');
INSERT INTO `archive_tags`
VALUES (10022, '大文娱');
INSERT INTO `archive_tags`
VALUES (10022, '直播');
INSERT INTO `archive_tags`
VALUES (10023, '大文娱');
INSERT INTO `archive_tags`
VALUES (10023, '音乐');
INSERT INTO `archive_tags`
VALUES (10024, '两轮');
INSERT INTO `archive_tags`
VALUES (10024, '新能源');
INSERT INTO `archive_tags`
VALUES (10025, '出行');
INSERT INTO `archive_tags`
VALUES (10026, '出行');
INSERT INTO `archive_tags`
VALUES (10026, '滴滴');
INSERT INTO `archive_tags`
VALUES (10027, '外卖');
INSERT INTO `archive_tags`
VALUES (10027, '美团');
INSERT INTO `archive_tags`
VALUES (10027, '饿了么');
INSERT INTO `archive_tags`
VALUES (10028, '共享单车');
INSERT INTO `archive_tags`
VALUES (10028, '出行');
INSERT INTO `archive_tags`
VALUES (10029, '共享单车');
INSERT INTO `archive_tags`
VALUES (10029, '出行');
INSERT INTO `archive_tags`
VALUES (10030, '乐视');
INSERT INTO `archive_tags`
VALUES (10031, '出行');
INSERT INTO `archive_tags`
VALUES (10032, 'VC');
INSERT INTO `archive_tags`
VALUES (10032, '真格');
INSERT INTO `archive_tags`
VALUES (10033, '新零售');
INSERT INTO `archive_tags`
VALUES (10033, '无人货架');
INSERT INTO `archive_tags`
VALUES (10033, '消费');
INSERT INTO `archive_tags`
VALUES (10034, '消费');
INSERT INTO `archive_tags`
VALUES (10035, '互联网金融');
INSERT INTO `archive_tags`
VALUES (10036, '智能手机');
INSERT INTO `archive_tags`
VALUES (10037, '智能手机');
INSERT INTO `archive_tags`
VALUES (10038, '智能手机');
INSERT INTO `archive_tags`
VALUES (10039, '新媒体');
INSERT INTO `archive_tags`
VALUES (10040, '新媒体');
INSERT INTO `archive_tags`
VALUES (10041, '新媒体');
INSERT INTO `archive_tags`
VALUES (10042, '新媒体');
INSERT INTO `archive_tags`
VALUES (10043, '医疗');
INSERT INTO `archive_tags`
VALUES (10044, '互联网');
INSERT INTO `archive_tags`
VALUES (10044, '创投');
INSERT INTO `archive_tags`
VALUES (10045, '互联网');
INSERT INTO `archive_tags`
VALUES (10045, '创投');
INSERT INTO `archive_tags`
VALUES (10046, '下沉市场');
INSERT INTO `archive_tags`
VALUES (10046, '短视频');
INSERT INTO `archive_tags`
VALUES (10047, '地推');
INSERT INTO `archive_tags`
VALUES (10047, '无人货架');
INSERT INTO `archive_tags`
VALUES (10047, '本地生活');
INSERT INTO `archive_tags`
VALUES (10048, '来往');
INSERT INTO `archive_tags`
VALUES (10048, '社交');
INSERT INTO `archive_tags`
VALUES (10048, '钉钉');
INSERT INTO `archive_tags`
VALUES (10048, '阿里');
INSERT INTO `archive_tags`
VALUES (10049, '京东');
INSERT INTO `archive_tags`
VALUES (10049, '电商');
INSERT INTO `archive_tags`
VALUES (10049, '阿里');
INSERT INTO `archive_tags`
VALUES (10050, '腾讯');
INSERT INTO `archive_tags`
VALUES (10051, '游戏');
INSERT INTO `archive_tags`
VALUES (10051, '腾讯');
INSERT INTO `archive_tags`
VALUES (10052, '战投');
INSERT INTO `archive_tags`
VALUES (10052, '百度');
INSERT INTO `archive_tags`
VALUES (10053, '方法论');
INSERT INTO `archive_tags`
VALUES (10053, '百度');
INSERT INTO `archive_tags`
VALUES (10054, '并购');
INSERT INTO `archive_tags`
VALUES (10054, '百度');
INSERT INTO `archive_tags`
VALUES (10055, '并购');
INSERT INTO `archive_tags`
VALUES (10055, '百度');
INSERT INTO `archive_tags`
VALUES (10056, '字节');
INSERT INTO `archive_tags`
VALUES (10056, '抖音');
INSERT INTO `archive_tags`
VALUES (10057, '字节');
INSERT INTO `archive_tags`
VALUES (10057, '方法论');
INSERT INTO `archive_tags`
VALUES (10058, '万达');
INSERT INTO `archive_tags`
VALUES (10058, '电商');
INSERT INTO `archive_tags`
VALUES (10059, '生鲜电商');
INSERT INTO `archive_tags`
VALUES (10060, '网易');
INSERT INTO `archive_tags`
VALUES (10061, '方法论');
INSERT INTO `archive_tags`
VALUES (10061, '美团');
INSERT INTO `archive_tags`
VALUES (10062, '美团');
INSERT INTO `archive_tags`
VALUES (10063, '饿了么');
INSERT INTO `archive_tags`
VALUES (10064, '下沉市场');
INSERT INTO `archive_tags`
VALUES (10064, '广告');
INSERT INTO `archive_tags`
VALUES (10065, '大文娱');
INSERT INTO `archive_tags`
VALUES (10065, '视频');
INSERT INTO `archive_tags`
VALUES (10066, '大文娱');
INSERT INTO `archive_tags`
VALUES (10066, '音乐');
INSERT INTO `archive_tags`
VALUES (10067, 'DeepTech');
INSERT INTO `archive_tags`
VALUES (10067, '无人机');
INSERT INTO `archive_tags`
VALUES (10067, '硬件');
INSERT INTO `archive_tags`
VALUES (10068, '出行');
INSERT INTO `archive_tags`
VALUES (10069, '出行');
INSERT INTO `archive_tags`
VALUES (10070, '共享单车');
INSERT INTO `archive_tags`
VALUES (10070, '并购');
INSERT INTO `archive_tags`
VALUES (10070, '战投');
INSERT INTO `archive_tags`
VALUES (10071, '共享单车');
INSERT INTO `archive_tags`
VALUES (10071, '败局');
INSERT INTO `archive_tags`
VALUES (10072, '共享经济');
INSERT INTO `archive_tags`
VALUES (10073, '共享汽车');
INSERT INTO `archive_tags`
VALUES (10073, '出行');
INSERT INTO `archive_tags`
VALUES (10074, '二手车');
INSERT INTO `archive_tags`
VALUES (10074, '汽车');
INSERT INTO `archive_tags`
VALUES (10075, 'VC');
INSERT INTO `archive_tags`
VALUES (10075, '创投');
INSERT INTO `archive_tags`
VALUES (10076, '新零售');
INSERT INTO `archive_tags`
VALUES (10076, '无人货架');
INSERT INTO `archive_tags`
VALUES (10076, '消费');
INSERT INTO `archive_tags`
VALUES (10077, '物流');
INSERT INTO `archive_tags`
VALUES (10078, '智能手机');
INSERT INTO `archive_tags`
VALUES (10079, '智能手机');
INSERT INTO `archive_tags`
VALUES (10080, '智能手机');
INSERT INTO `archive_tags`
VALUES (10081, 'AI');
INSERT INTO `archive_tags`
VALUES (10082, '新媒体');
INSERT INTO `archive_tags`
VALUES (10083, '新媒体');
INSERT INTO `archive_tags`
VALUES (10084, '新媒体');
INSERT INTO `archive_tags`
VALUES (10085, '医疗');
INSERT INTO `archive_tags`
VALUES (10086, '凯鹏华盈');
INSERT INTO `archive_tags`
VALUES (10086, '华兴');
INSERT INTO `archive_tags`
VALUES (10086, '并购');
INSERT INTO `archive_tags`
VALUES (10086, '红杉');
INSERT INTO `archive_tags`
VALUES (10086, '金沙江');
INSERT INTO `archive_tags`
VALUES (10087, '创投');
INSERT INTO `archive_tags`
VALUES (10088, '创投');
INSERT INTO `archive_tags`
VALUES (10089, '阿里');
INSERT INTO `archive_tags`
VALUES (10090, '阿里');
INSERT INTO `archive_tags`
VALUES (10091, 'ohayoo');
INSERT INTO `archive_tags`
VALUES (10091, '字节');
INSERT INTO `archive_tags`
VALUES (10091, '游戏');
INSERT INTO `archive_tags`
VALUES (10093, 'VC');
INSERT INTO `archive_tags`
VALUES (10093, '创投');
INSERT INTO `archive_tags`
VALUES (10094, '钉钉');
INSERT INTO `archive_tags`
VALUES (10094, '阿里');
INSERT INTO `archive_tags`
VALUES (10096, '拼多多');
INSERT INTO `archive_tags`
VALUES (10096, '滴滴');
INSERT INTO `archive_tags`
VALUES (10096, '电商');
INSERT INTO `archive_tags`
VALUES (10096, '社区团购');
INSERT INTO `archive_tags`
VALUES (10096, '美团');
INSERT INTO `archive_tags`
VALUES (10096, '阿里');
INSERT INTO `archive_tags`
VALUES (10098, '游戏');
INSERT INTO `archive_tags`
VALUES (10098, '迷你世界');
INSERT INTO `archive_tags`
VALUES (10100, '半导体芯片');
INSERT INTO `archive_tags`
VALUES (10100, '招聘');
INSERT INTO `archive_tags`
VALUES (10102, 'DeFi');
INSERT INTO `archive_tags`
VALUES (10102, '以太坊');
INSERT INTO `archive_tags`
VALUES (10102, '区块链');
INSERT INTO `archive_tags`
VALUES (10102, '安全');
INSERT INTO `archive_tags`
VALUES (10104, 'VC');
INSERT INTO `archive_tags`
VALUES (10106, '以太坊');
INSERT INTO `archive_tags`
VALUES (10106, '区块链');
INSERT INTO `archive_tags`
VALUES (10106, '安全');
INSERT INTO `archive_tags`
VALUES (10108, 'Twitch');
INSERT INTO `archive_tags`
VALUES (10108, 'YCombinator');
INSERT INTO `archive_tags`
VALUES (10108, '直播');
INSERT INTO `archive_tags`
VALUES (10110, 'Google');
INSERT INTO `archive_tags`
VALUES (10110, 'Grab');
INSERT INTO `archive_tags`
VALUES (10112, 'Google');
INSERT INTO `archive_tags`
VALUES (10112, 'Grab');
INSERT INTO `archive_tags`
VALUES (10114, 'Google');
INSERT INTO `archive_tags`
VALUES (10114, 'Grab');
INSERT INTO `archive_tags`
VALUES (10116, '光伏');
INSERT INTO `archive_tags`
VALUES (10116, '尚德电力');
INSERT INTO `archive_tags`
VALUES (10116, '施正荣');
INSERT INTO `archive_tags`
VALUES (10118, '新媒体');
INSERT INTO `archive_tags`
VALUES (10120, '渠道');
INSERT INTO `archive_tags`
VALUES (10120, '游戏');
INSERT INTO `archive_tags`
VALUES (10120, '米哈游');
INSERT INTO `archive_tags`
VALUES (10120, '莉莉丝');
INSERT INTO `archive_tags`
VALUES (10122, '创投');
INSERT INTO `archive_tags`
VALUES (10122, '区块链');
INSERT INTO `archive_tags`
VALUES (10124, 'ohayoo');
INSERT INTO `archive_tags`
VALUES (10124, '休闲游戏');
INSERT INTO `archive_tags`
VALUES (10124, '游戏');
INSERT INTO `archive_tags`
VALUES (10126, 'NewsBreak');
INSERT INTO `archive_tags`
VALUES (10126, '一点资讯');
INSERT INTO `archive_tags`
VALUES (10126, '出海');
INSERT INTO `archive_tags`
VALUES (10128, 'VC');
INSERT INTO `archive_tags`
VALUES (10128, '创投');
INSERT INTO `archive_tags`
VALUES (10128, '方法论');
INSERT INTO `archive_tags`
VALUES (10130, 'VC');
INSERT INTO `archive_tags`
VALUES (10130, '创投');
INSERT INTO `archive_tags`
VALUES (10130, '方法论');
INSERT INTO `archive_tags`
VALUES (10132, 'AI');
INSERT INTO `archive_tags`
VALUES (10132, 'GPT-3');
INSERT INTO `archive_tags`
VALUES (10156, '公关');
INSERT INTO `archive_tags`
VALUES (10156, '数据');
INSERT INTO `archive_tags`
VALUES (10156, '旅游');
INSERT INTO `archive_tags`
VALUES (10158, 'KTV');
INSERT INTO `archive_tags`
VALUES (10158, '实体');
INSERT INTO `archive_tags`
VALUES (10158, '线下');
INSERT INTO `archive_tags`
VALUES (10160, '东南亚');
INSERT INTO `archive_tags`
VALUES (10160, '出海');
INSERT INTO `archive_tags`
VALUES (10160, '大文娱');
INSERT INTO `archive_tags`
VALUES (10162, '字节');
INSERT INTO `archive_tags`
VALUES (10162, '网文');
INSERT INTO `archive_tags`
VALUES (10164, '出海');
INSERT INTO `archive_tags`
VALUES (10164, '字节');
INSERT INTO `archive_tags`
VALUES (10166, '比特大陆');
INSERT INTO `archive_tags`
VALUES (10166, '芯片');
INSERT INTO `archive_tags`
VALUES (10166, '裁员');
INSERT INTO `archive_tags`
VALUES (10170, '下沉市场');
INSERT INTO `archive_tags`
VALUES (10170, '房地产');
INSERT INTO `archive_tags`
VALUES (10172, '失败学');
INSERT INTO `archive_tags`
VALUES (10172, '曾博');
INSERT INTO `archive_tags`
VALUES (10172, '立党');
INSERT INTO `archive_tags`
VALUES (10174, '大文娱');
INSERT INTO `archive_tags`
VALUES (10176, '游戏');
INSERT INTO `archive_tags`
VALUES (10176, '黄赌毒');
INSERT INTO `archive_tags`
VALUES (10178, '游戏');
INSERT INTO `archive_tags`
VALUES (10180, '58同城');
INSERT INTO `archive_tags`
VALUES (10180, '本地生活');
INSERT INTO `archive_tags`
VALUES (10182, 'VC');
INSERT INTO `archive_tags`
VALUES (10182, '高瓴');
INSERT INTO `archive_tags`
VALUES (10184, '沙盒');
INSERT INTO `archive_tags`
VALUES (10184, '游戏');
INSERT INTO `archive_tags`
VALUES (10186, '出海');
INSERT INTO `archive_tags`
VALUES (10186, '游戏');
INSERT INTO `archive_tags`
VALUES (10188, 'VC');
INSERT INTO `archive_tags`
VALUES (10188, '创投');
INSERT INTO `archive_tags`
VALUES (10188, '方法论');
INSERT INTO `archive_tags`
VALUES (10190, 'VC');
INSERT INTO `archive_tags`
VALUES (10190, '创投');
INSERT INTO `archive_tags`
VALUES (10190, '方法论');
INSERT INTO `archive_tags`
VALUES (10192, '光伏');
INSERT INTO `archive_tags`
VALUES (10194, 'VC');
INSERT INTO `archive_tags`
VALUES (10194, '红杉');
INSERT INTO `archive_tags`
VALUES (10194, '高瓴');
INSERT INTO `archive_tags`
VALUES (10196, '经济');
INSERT INTO `archive_tags`
VALUES (10198, 'DeFi');
INSERT INTO `archive_tags`
VALUES (10198, '区块链');
INSERT INTO `archive_tags`
VALUES (10200, 'ISP');
INSERT INTO `archive_tags`
VALUES (10200, '互联网史');
INSERT INTO `archive_tags`
VALUES (10202, '外卖');
INSERT INTO `archive_tags`
VALUES (10204, '在线教育');
INSERT INTO `archive_tags`
VALUES (10206, '安全');
INSERT INTO `archive_tags`
VALUES (10208, '互联网史');
INSERT INTO `archive_tags`
VALUES (10210, 'VC');
INSERT INTO `archive_tags`
VALUES (10210, '外卖');
INSERT INTO `archive_tags`
VALUES (10212, '游戏');
INSERT INTO `archive_tags`
VALUES (10214, '网文');
INSERT INTO `archive_tags`
VALUES (10216, '创投');
INSERT INTO `archive_tags`
VALUES (10218, '人事');
INSERT INTO `archive_tags`
VALUES (10218, '管理');
INSERT INTO `archive_tags`
VALUES (10220, '字节');
INSERT INTO `archive_tags`
VALUES (10220, '视频');
INSERT INTO `archive_tags`
VALUES (10222, '字节');
INSERT INTO `archive_tags`
VALUES (10222, '生产力工具');
INSERT INTO `archive_tags`
VALUES (10224, '东南亚');
INSERT INTO `archive_tags`
VALUES (10224, '出海');
INSERT INTO `archive_tags`
VALUES (10224, '电商');
INSERT INTO `archive_tags`
VALUES (10226, '百度');
INSERT INTO `archive_tags`
VALUES (10226, '自动驾驶');
INSERT INTO `archive_tags`
VALUES (10228, '汽车');
INSERT INTO `archive_tags`
VALUES (10228, '特斯拉');
INSERT INTO `archive_tags`
VALUES (10228, '自动驾驶');
INSERT INTO `archive_tags`
VALUES (10230, '短视频');
INSERT INTO `archive_tags`
VALUES (10230, '社会');
INSERT INTO `archive_tags`
VALUES (10232, '出行');
INSERT INTO `archive_tags`
VALUES (10232, '滴滴');
INSERT INTO `archive_tags`
VALUES (10234, '拼多多');
INSERT INTO `archive_tags`
VALUES (10234, '电商');
INSERT INTO `archive_tags`
VALUES (10234, '社区团购');
INSERT INTO `archive_tags`
VALUES (10238, 'metaverse');
INSERT INTO `archive_tags`
VALUES (10238, '游戏');
INSERT INTO `archive_tags`
VALUES (10240, 'SaaS');
INSERT INTO `archive_tags`
VALUES (10240, 'toB');
INSERT INTO `archive_tags`
VALUES (10240, '创投');
INSERT INTO `archive_tags`
VALUES (10242, 'VC');
INSERT INTO `archive_tags`
VALUES (10242, '创投');
INSERT INTO `archive_tags`
VALUES (10244, '社会');
INSERT INTO `archive_tags`
VALUES (10246, '区块链');
INSERT INTO `archive_tags`
VALUES (10246, '社会');
INSERT INTO `archive_tags`
VALUES (10248, '区块链');
INSERT INTO `archive_tags`
VALUES (10248, '社会');
INSERT INTO `archive_tags`
VALUES (10250, 'OKEx');
INSERT INTO `archive_tags`
VALUES (10250, '区块链');
INSERT INTO `archive_tags`
VALUES (10250, '社会');
INSERT INTO `archive_tags`
VALUES (10252, '社会');
INSERT INTO `archive_tags`
VALUES (10252, '职业培训');
INSERT INTO `archive_tags`
VALUES (10254, '清华');
INSERT INTO `archive_tags`
VALUES (10254, '芯片');
INSERT INTO `archive_tags`
VALUES (10256, 'Google');
INSERT INTO `archive_tags`
VALUES (10256, 'Waymo');
INSERT INTO `archive_tags`
VALUES (10256, '自动驾驶');
INSERT INTO `archive_tags`
VALUES (10258, 'Discord');
INSERT INTO `archive_tags`
VALUES (10258, 'IM');
INSERT INTO `archive_tags`
VALUES (10260, '并购');
INSERT INTO `archive_tags`
VALUES (10260, '社区团购');
INSERT INTO `archive_tags`
VALUES (10262, '科创板');
INSERT INTO `archive_tags`
VALUES (10262, '蚂蚁金服');
INSERT INTO `archive_tags`
VALUES (10262, '阿里');
INSERT INTO `archive_tags`
VALUES (10264, '华为');
INSERT INTO `archive_tags`
VALUES (10264, '社会');
INSERT INTO `archive_tags`
VALUES (10264, '管理');
INSERT INTO `archive_tags`
VALUES (10266, '快手');
INSERT INTO `archive_tags`
VALUES (10266, '管理');
INSERT INTO `archive_tags`
VALUES (10268, '安全');
INSERT INTO `archive_tags`
VALUES (10270, 'Metaverse');
INSERT INTO `archive_tags`
VALUES (10270, '游戏');
INSERT INTO `archive_tags`
VALUES (10272, '上市');
INSERT INTO `archive_tags`
VALUES (10272, '港股');
INSERT INTO `archive_tags`
VALUES (10272, '科创板');
INSERT INTO `archive_tags`
VALUES (10272, '蚂蚁');
INSERT INTO `archive_tags`
VALUES (10272, '阿里');
INSERT INTO `archive_tags`
VALUES (10274, '上市');
INSERT INTO `archive_tags`
VALUES (10274, '管理');
INSERT INTO `archive_tags`
VALUES (10274, '蚂蚁');
INSERT INTO `archive_tags`
VALUES (10274, '阿里');
INSERT INTO `archive_tags`
VALUES (10276, '字节');
INSERT INTO `archive_tags`
VALUES (10276, '抖音');
INSERT INTO `archive_tags`
VALUES (10276, '短视频');
INSERT INTO `archive_tags`
VALUES (10278, '8848');
INSERT INTO `archive_tags`
VALUES (10278, '电商');
INSERT INTO `archive_tags`
VALUES (10280, 'VC');
INSERT INTO `archive_tags`
VALUES (10280, '创投');
INSERT INTO `archive_tags`
VALUES (10280, '硬科技');
INSERT INTO `archive_tags`
VALUES (10282, 'Quant');
INSERT INTO `archive_tags`
VALUES (10284, '大文娱');
INSERT INTO `archive_tags`
VALUES (10284, '脱口秀');
INSERT INTO `archive_tags`
VALUES (10286, '大文娱');
INSERT INTO `archive_tags`
VALUES (10290, '大文娱');
INSERT INTO `archive_tags`
VALUES (10292, '创投');
INSERT INTO `archive_tags`
VALUES (10292, '社会');
INSERT INTO `archive_tags`
VALUES (10292, '管理');
INSERT INTO `archive_tags`
VALUES (10294, '大文娱');
INSERT INTO `archive_tags`
VALUES (10294, '文化');
INSERT INTO `archive_tags`
VALUES (10296, '创投');
INSERT INTO `archive_tags`
VALUES (10296, '并购');
INSERT INTO `archive_tags`
VALUES (10296, '腾讯');
INSERT INTO `archive_tags`
VALUES (10296, '阿里');
INSERT INTO `archive_tags`
VALUES (10298, '大文娱');
INSERT INTO `archive_tags`
VALUES (10300, '大文娱');
INSERT INTO `archive_tags`
VALUES (10300, '社会');
INSERT INTO `archive_tags`
VALUES (10302, '小米');
INSERT INTO `archive_tags`
VALUES (10302, '股权治理');
INSERT INTO `archive_tags`
VALUES (10304, '二级市场');
INSERT INTO `archive_tags`
VALUES (10304, '亚马逊');
INSERT INTO `archive_tags`
VALUES (10304, '小米');
INSERT INTO `archive_tags`
VALUES (10306, '大文娱');
INSERT INTO `archive_tags`
VALUES (10306, '央视');
INSERT INTO `archive_tags`
VALUES (10308, '二级市场');
INSERT INTO `archive_tags`
VALUES (10308, '大文娱');
INSERT INTO `archive_tags`
VALUES (10310, 'ofo');
INSERT INTO `archive_tags`
VALUES (10310, '社会');
INSERT INTO `archive_tags`
VALUES (10312, '杭州');
INSERT INTO `archive_tags`
VALUES (10312, '社会');
INSERT INTO `archive_tags`
VALUES (10312, '阿里');
INSERT INTO `archive_tags`
VALUES (10314, '体制内');
INSERT INTO `archive_tags`
VALUES (10314, '体育');
INSERT INTO `archive_tags`
VALUES (10316, '美国');
INSERT INTO `archive_tags`
VALUES (10318, '历史');
INSERT INTO `archive_tags`
VALUES (10318, '经济');
INSERT INTO `archive_tags`
VALUES (10320, '乐视');
INSERT INTO `archive_tags`
VALUES (10322, '百度');
INSERT INTO `archive_tags`
VALUES (10324, '手机');
INSERT INTO `archive_tags`
VALUES (10326, '大文娱');
INSERT INTO `archive_tags`
VALUES (10326, '电影');
INSERT INTO `archive_tags`
VALUES (10328, '媒体');
INSERT INTO `archive_tags`
VALUES (10330, '腾讯');
INSERT INTO `archive_tags`
VALUES (10332, '二级市场');
INSERT INTO `archive_tags`
VALUES (10332, '创投');
INSERT INTO `archive_tags`
VALUES (10334, '支付宝');
INSERT INTO `archive_tags`
VALUES (10336, 'VC');
INSERT INTO `archive_tags`
VALUES (10336, '自媒体');
INSERT INTO `archive_tags`
VALUES (10338, '小米');
INSERT INTO `archive_tags`
VALUES (10338, '工程师');
INSERT INTO `archive_tags`
VALUES (10338, '雷军');
INSERT INTO `archive_tags`
VALUES (10340, 'Metaverse');
INSERT INTO `archive_tags`
VALUES (10340, '游戏');
INSERT INTO `archive_tags`
VALUES (10342, 'Metaverse');
INSERT INTO `archive_tags`
VALUES (10342, '游戏');
INSERT INTO `archive_tags`
VALUES (10344, 'Twitter');
INSERT INTO `archive_tags`
VALUES (10344, '软件工程');
INSERT INTO `archive_tags`
VALUES (10346, '创投');
INSERT INTO `archive_tags`
VALUES (10348, '乐视');
INSERT INTO `archive_tags`
VALUES (10348, '金山');
INSERT INTO `archive_tags`
VALUES (10348, '雷军');
INSERT INTO `archive_tags`
VALUES (10350, '91助手');
INSERT INTO `archive_tags`
VALUES (10350, 'hao123');
INSERT INTO `archive_tags`
VALUES (10350, '个人站');
INSERT INTO `archive_tags`
VALUES (10350, '百度');
INSERT INTO `archive_tags`
VALUES (10352, '政治');
INSERT INTO `archive_tags`
VALUES (10352, '腾讯');
INSERT INTO `archive_tags`
VALUES (10354, '管理');
INSERT INTO `archive_tags`
VALUES (10356, '字节');
INSERT INTO `archive_tags`
VALUES (10356, '张一鸣');
INSERT INTO `archive_tags`
VALUES (10356, '方三文');
INSERT INTO `archive_tags`
VALUES (10356, '王兴');
INSERT INTO `archive_tags`
VALUES (10356, '美团');
INSERT INTO `archive_tags`
VALUES (10356, '雪球');
INSERT INTO `archive_tags`
VALUES (10358, 'VC');
INSERT INTO `archive_tags`
VALUES (10358, '创投');
INSERT INTO `archive_tags`
VALUES (10360, 'VC');
INSERT INTO `archive_tags`
VALUES (10360, '创投');
INSERT INTO `archive_tags`
VALUES (10362, '大文娱');
INSERT INTO `archive_tags`
VALUES (10362, '文学');
INSERT INTO `archive_tags`
VALUES (10364, '工程师');
INSERT INTO `archive_tags`
VALUES (10364, '视频');
INSERT INTO `archive_tags`
VALUES (10366, '创投');
INSERT INTO `archive_tags`
VALUES (10368, '大文娱');
INSERT INTO `archive_tags`
VALUES (10370, '创投');
INSERT INTO `archive_tags`
VALUES (10370, '大文娱');
INSERT INTO `archive_tags`
VALUES (10370, '音乐');
INSERT INTO `archive_tags`
VALUES (10372, '社会');
INSERT INTO `archive_tags`
VALUES (10374, '网络殡葬');
INSERT INTO `archive_tags`
VALUES (10376, '李彦宏');
INSERT INTO `archive_tags`
VALUES (10376, '百度');
INSERT INTO `archive_tags`
VALUES (10378, '丁香园');
INSERT INTO `archive_tags`
VALUES (10378, '阿里');
INSERT INTO `archive_tags`
VALUES (10380, '丁香园');
INSERT INTO `archive_tags`
VALUES (10380, '冯大辉');
INSERT INTO `archive_tags`
VALUES (10382, '丁香园');
INSERT INTO `archive_tags`
VALUES (10382, '冯大辉');
INSERT INTO `archive_tags`
VALUES (10384, '社会');
INSERT INTO `archive_tags`
VALUES (10386, 'VC');
INSERT INTO `archive_tags`
VALUES (10386, '创投');
INSERT INTO `archive_tags`
VALUES (10386, '孵化器');
INSERT INTO `archive_tags`
VALUES (10388, '新媒体');
INSERT INTO `archive_tags`
VALUES (10390, '360');
INSERT INTO `archive_tags`
VALUES (10390, 'Google');
INSERT INTO `archive_tags`
VALUES (10390, '腾讯');
INSERT INTO `archive_tags`
VALUES (10390, '阿里');
INSERT INTO `archive_tags`
VALUES (10392, '创投');
INSERT INTO `archive_tags`
VALUES (10392, '历史');
INSERT INTO `archive_tags`
VALUES (10392, '社会');
INSERT INTO `archive_tags`
VALUES (10392, '陌陌');
INSERT INTO `archive_tags`
VALUES (10394, '社会');
INSERT INTO `archive_tags`
VALUES (10394, '黄赌毒');
INSERT INTO `archive_tags`
VALUES (10396, 'Uber');
INSERT INTO `archive_tags`
VALUES (10396, '入华');
INSERT INTO `archive_tags`
VALUES (10396, '出行');
INSERT INTO `archive_tags`
VALUES (10396, '滴滴');
INSERT INTO `archive_tags`
VALUES (10398, 'Uber');
INSERT INTO `archive_tags`
VALUES (10398, '入华');
INSERT INTO `archive_tags`
VALUES (10398, '出行');
INSERT INTO `archive_tags`
VALUES (10398, '滴滴');
INSERT INTO `archive_tags`
VALUES (10398, '社会');
INSERT INTO `archive_tags`
VALUES (10400, '社会');
INSERT INTO `archive_tags`
VALUES (10400, '黄赌毒');
INSERT INTO `archive_tags`
VALUES (10402, '支付宝');
INSERT INTO `archive_tags`
VALUES (10402, '社交');
INSERT INTO `archive_tags`
VALUES (10402, '阿里');
INSERT INTO `archive_tags`
VALUES (10404, 'Uber');
INSERT INTO `archive_tags`
VALUES (10404, '入华');
INSERT INTO `archive_tags`
VALUES (10404, '出行');
INSERT INTO `archive_tags`
VALUES (10404, '滴滴');
INSERT INTO `archive_tags`
VALUES (10404, '社会');
INSERT INTO `archive_tags`
VALUES (10406, '百度');
INSERT INTO `archive_tags`
VALUES (10408, '内容分发');
INSERT INTO `archive_tags`
VALUES (10408, '应用商店');
INSERT INTO `archive_tags`
VALUES (10408, '豌豆荚');
INSERT INTO `archive_tags`
VALUES (10410, '阿里');
INSERT INTO `archive_tags`
VALUES (10412, '');
INSERT INTO `archive_tags`
VALUES (10412, '张旭豪');
INSERT INTO `archive_tags`
VALUES (10412, '饿了么');
INSERT INTO `archive_tags`
VALUES (10414, 'VC');
INSERT INTO `archive_tags`
VALUES (10414, '创投');
INSERT INTO `archive_tags`
VALUES (10416, '公关');
INSERT INTO `archive_tags`
VALUES (10416, '创投');
INSERT INTO `archive_tags`
VALUES (10418, '公关');
INSERT INTO `archive_tags`
VALUES (10418, '创投');
INSERT INTO `archive_tags`
VALUES (10420, '下沉市场');
INSERT INTO `archive_tags`
VALUES (10420, '快手');
INSERT INTO `archive_tags`
VALUES (10420, '短视频');
INSERT INTO `archive_tags`
VALUES (10422, '新媒体');
INSERT INTO `archive_tags`
VALUES (10422, '王凯歆');
INSERT INTO `archive_tags`
VALUES (10424, '微博');
INSERT INTO `archive_tags`
VALUES (10426, '创投');
INSERT INTO `archive_tags`
VALUES (10426, '招聘');
INSERT INTO `archive_tags`
VALUES (10428, '快手');
INSERT INTO `archive_tags`
VALUES (10428, '短视频');
INSERT INTO `archive_tags`
VALUES (10430, '京东');
INSERT INTO `archive_tags`
VALUES (10430, '人事');
INSERT INTO `archive_tags`
VALUES (10430, '管理');
INSERT INTO `archive_tags`
VALUES (10432, '外挂');
INSERT INTO `archive_tags`
VALUES (10432, '巨人');
INSERT INTO `archive_tags`
VALUES (10432, '游戏');
INSERT INTO `archive_tags`
VALUES (10432, '盛大');
INSERT INTO `archive_tags`
VALUES (10432, '网龙');
INSERT INTO `archive_tags`
VALUES (10434, '游戏');
INSERT INTO `archive_tags`
VALUES (10434, '王者荣耀');
INSERT INTO `archive_tags`
VALUES (10434, '腾讯');
INSERT INTO `archive_tags`
VALUES (10436, 'AI');
INSERT INTO `archive_tags`
VALUES (10436, 'AlphaGo');
INSERT INTO `archive_tags`
VALUES (10436, 'Google');
INSERT INTO `archive_tags`
VALUES (10438, '创投');
INSERT INTO `archive_tags`
VALUES (10438, '搜狗');
INSERT INTO `archive_tags`
VALUES (10438, '清华');
INSERT INTO `archive_tags`
VALUES (10438, '王小川');
INSERT INTO `archive_tags`
VALUES (10440, '字节');
INSERT INTO `archive_tags`
VALUES (10440, '张一鸣');
INSERT INTO `archive_tags`
VALUES (10440, '政治');
INSERT INTO `archive_tags`
VALUES (10440, '新媒体');
INSERT INTO `archive_tags`
VALUES (10442, '人事');
INSERT INTO `archive_tags`
VALUES (10442, '无线');
INSERT INTO `archive_tags`
VALUES (10442, '管理');
INSERT INTO `archive_tags`
VALUES (10442, '阿里');
INSERT INTO `archive_tags`
VALUES (10444, '创投');
INSERT INTO `archive_tags`
VALUES (10444, '政治');
INSERT INTO `archive_tags`
VALUES (10446, '大文娱');
INSERT INTO `archive_tags`
VALUES (10446, '政治');
INSERT INTO `archive_tags`
VALUES (10446, '阿里');
INSERT INTO `archive_tags`
VALUES (10446, '马云');
INSERT INTO `archive_tags`
VALUES (10448, '创投');
INSERT INTO `archive_tags`
VALUES (10450, '大文娱');
INSERT INTO `archive_tags`
VALUES (10450, '游戏');
INSERT INTO `archive_tags`
VALUES (10450, '电竞');
INSERT INTO `archive_tags`
VALUES (10450, '直播');
INSERT INTO `archive_tags`
VALUES (10452, '大文娱');
INSERT INTO `archive_tags`
VALUES (10452, '音乐');
INSERT INTO `archive_tags`
VALUES (10454, '并购');
INSERT INTO `archive_tags`
VALUES (10454, '美团');
INSERT INTO `archive_tags`
VALUES (10454, '阿里');
INSERT INTO `archive_tags`
VALUES (10456, '张朝阳');
INSERT INTO `archive_tags`
VALUES (10456, '搜狐');
INSERT INTO `archive_tags`
VALUES (10458, '生物');
INSERT INTO `archive_tags`
VALUES (10458, '盛大');
INSERT INTO `archive_tags`
VALUES (10458, '脑科学');
INSERT INTO `archive_tags`
VALUES (10458, '陈天桥');
INSERT INTO `archive_tags`
VALUES (10460, '二手');
INSERT INTO `archive_tags`
VALUES (10460, '周亚辉');
INSERT INTO `archive_tags`
VALUES (10460, '电商');
INSERT INTO `archive_tags`
VALUES (10462, '万达');
INSERT INTO `archive_tags`
VALUES (10462, '王思聪');
INSERT INTO `archive_tags`
VALUES (10464, 'VC');
INSERT INTO `archive_tags`
VALUES (10464, '创投');
INSERT INTO `archive_tags`
VALUES (10464, '朱啸虎');
INSERT INTO `archive_tags`
VALUES (10464, '金沙江');
INSERT INTO `archive_tags`
VALUES (10466, 'VC');
INSERT INTO `archive_tags`
VALUES (10466, '创投');
INSERT INTO `archive_tags`
VALUES (10466, '朱啸虎');
INSERT INTO `archive_tags`
VALUES (10466, '金沙江');
INSERT INTO `archive_tags`
VALUES (10468, '大文娱');
INSERT INTO `archive_tags`
VALUES (10468, '新媒体');
INSERT INTO `archive_tags`
VALUES (10470, '文学');
INSERT INTO `archive_tags`
VALUES (10470, '新媒体');
INSERT INTO `archive_tags`
VALUES (10472, '社会');
INSERT INTO `archive_tags`
VALUES (10472, '第一时间删稿');
INSERT INTO `archive_tags`
VALUES (10474, '入华');
INSERT INTO `archive_tags`
VALUES (10474, '外企');
INSERT INTO `archive_tags`
VALUES (10474, '广告');
INSERT INTO `archive_tags`
VALUES (10474, '新媒体');
INSERT INTO `archive_tags`
VALUES (10476, '历史');
INSERT INTO `archive_tags`
VALUES (10476, '大文娱');
INSERT INTO `archive_tags`
VALUES (10476, '电影');
INSERT INTO `archive_tags`
VALUES (10478, '360');
INSERT INTO `archive_tags`
VALUES (10478, '周鸿祎');
INSERT INTO `archive_tags`
VALUES (10480, '360');
INSERT INTO `archive_tags`
VALUES (10480, '傅盛');
INSERT INTO `archive_tags`
VALUES (10480, '周鸿祎');
INSERT INTO `archive_tags`
VALUES (10480, '猎豹');
INSERT INTO `archive_tags`
VALUES (10482, '区块链');
INSERT INTO `archive_tags`
VALUES (10484, '腾讯');
INSERT INTO `archive_tags`
VALUES (10484, '香港');
INSERT INTO `archive_tags`
VALUES (10486, '大文娱');
INSERT INTO `archive_tags`
VALUES (10486, '音乐');
INSERT INTO `archive_tags`
VALUES (10488, '大文娱');
INSERT INTO `archive_tags`
VALUES (10488, '综艺');
INSERT INTO `archive_tags`
VALUES (10490, '房地产');
INSERT INTO `archive_tags`
VALUES (10490, '社会');
INSERT INTO `archive_tags`
VALUES (10492, '历史');
INSERT INTO `archive_tags`
VALUES (10492, '新媒体');
INSERT INTO `archive_tags`
VALUES (10492, '社会');
INSERT INTO `archive_tags`
VALUES (10494, '中年');
INSERT INTO `archive_tags`
VALUES (10494, '社会');
INSERT INTO `archive_tags`
VALUES (10496, '创投');
INSERT INTO `archive_tags`
VALUES (10496, '地方政府');
INSERT INTO `archive_tags`
VALUES (10496, '社会');
INSERT INTO `archive_tags`
VALUES (10498, '三体');
INSERT INTO `archive_tags`
VALUES (10498, '大文娱');
INSERT INTO `archive_tags`
VALUES (10498, '游戏');
INSERT INTO `archive_tags`
VALUES (10498, '游族');
INSERT INTO `archive_tags`
VALUES (10498, '电影');
INSERT INTO `archive_tags`
VALUES (10500, '大文娱');
INSERT INTO `archive_tags`
VALUES (10500, '电视');
INSERT INTO `archive_tags`
VALUES (10502, '电竞');
INSERT INTO `archive_tags`
VALUES (10504, '国企');
INSERT INTO `archive_tags`
VALUES (10504, '格力');
INSERT INTO `archive_tags`
VALUES (10504, '董明珠');
INSERT INTO `archive_tags`
VALUES (10506, '产品经理');
INSERT INTO `archive_tags`
VALUES (10506, '张小龙');
INSERT INTO `archive_tags`
VALUES (10506, '微信');
INSERT INTO `archive_tags`
VALUES (10506, '腾讯');
INSERT INTO `archive_tags`
VALUES (10508, '社会');
INSERT INTO `archive_tags`
VALUES (10510, '大文娱');
INSERT INTO `archive_tags`
VALUES (10510, '文学');
INSERT INTO `archive_tags`
VALUES (10510, '电影');
INSERT INTO `archive_tags`
VALUES (10512, '历史');
INSERT INTO `archive_tags`
VALUES (10512, '文学');
INSERT INTO `archive_tags`
VALUES (10512, '社会');
INSERT INTO `archive_tags`
VALUES (10514, '出行');
INSERT INTO `archive_tags`
VALUES (10514, '滴滴');
INSERT INTO `archive_tags`
VALUES (10516, '内容审查');
INSERT INTO `archive_tags`
VALUES (10516, '大文娱');
INSERT INTO `archive_tags`
VALUES (10516, '政治');
INSERT INTO `archive_tags`
VALUES (10518, '大文娱');
INSERT INTO `archive_tags`
VALUES (10518, '春晚');
INSERT INTO `archive_tags`
VALUES (10520, '历史');
INSERT INTO `archive_tags`
VALUES (10520, '杭州');
INSERT INTO `archive_tags`
VALUES (10520, '阿里');
INSERT INTO `archive_tags`
VALUES (10522, '游戏');
INSERT INTO `archive_tags`
VALUES (10522, '独立游戏');
INSERT INTO `archive_tags`
VALUES (10524, '字节');
INSERT INTO `archive_tags`
VALUES (10524, '电商');
INSERT INTO `archive_tags`
VALUES (10526, '历史');
INSERT INTO `archive_tags`
VALUES (10526, '社会');
INSERT INTO `archive_tags`
VALUES (10528, 'A股');
INSERT INTO `archive_tags`
VALUES (10528, '金融');
INSERT INTO `archive_tags`
VALUES (10530, '社会');
INSERT INTO `archive_tags`
VALUES (10532, '大文娱');
INSERT INTO `archive_tags`
VALUES (10532, '说唱');
INSERT INTO `archive_tags`
VALUES (10534, '社会');
INSERT INTO `archive_tags`
VALUES (10536, '创投');
INSERT INTO `archive_tags`
VALUES (10536, '社会');
INSERT INTO `archive_tags`
VALUES (10538, '京东');
INSERT INTO `archive_tags`
VALUES (10538, '刘强东');
INSERT INTO `archive_tags`
VALUES (10538, '社会');
INSERT INTO `archive_tags`
VALUES (10540, '历史');
INSERT INTO `archive_tags`
VALUES (10540, '大文娱');
INSERT INTO `archive_tags`
VALUES (10540, '社会');
INSERT INTO `archive_tags`
VALUES (10542, '方法论');
INSERT INTO `archive_tags`
VALUES (10542, '腾讯');
INSERT INTO `archive_tags`
VALUES (10542, '马化腾');
INSERT INTO `archive_tags`
VALUES (10544, '新媒体');
INSERT INTO `archive_tags`
VALUES (10546, '九城');
INSERT INTO `archive_tags`
VALUES (10546, '游戏');
INSERT INTO `archive_tags`
VALUES (10548, 'AB组');
INSERT INTO `archive_tags`
VALUES (10548, '阿里');
INSERT INTO `archive_tags`
VALUES (10550, 'ohayoo');
INSERT INTO `archive_tags`
VALUES (10550, '字节');
INSERT INTO `archive_tags`
VALUES (10550, '游戏');
INSERT INTO `archive_tags`
VALUES (10552, '游戏');
INSERT INTO `archive_tags`
VALUES (10554, '出海');
INSERT INTO `archive_tags`
VALUES (10554, '社会');
INSERT INTO `archive_tags`
VALUES (10554, '非洲');
INSERT INTO `archive_tags`
VALUES (10556, '少儿编程');
INSERT INTO `archive_tags`
VALUES (10556, '教育');
INSERT INTO `archive_tags`
VALUES (10558, 'VC');
INSERT INTO `archive_tags`
VALUES (10558, '完美日记');
INSERT INTO `archive_tags`
VALUES (10558, '电商');
INSERT INTO `archive_tags`
VALUES (10558, '真格');
INSERT INTO `archive_tags`
VALUES (10558, '美妆');
INSERT INTO `archive_tags`
VALUES (10560, '游戏');
INSERT INTO `archive_tags`
VALUES (10562, 'AI');
INSERT INTO `archive_tags`
VALUES (10562, 'Metaverse');
INSERT INTO `archive_tags`
VALUES (10562, '游戏');
INSERT INTO `archive_tags`
VALUES (10564, 'YY');
INSERT INTO `archive_tags`
VALUES (10564, '基金');
INSERT INTO `archive_tags`
VALUES (10564, '浑水');
INSERT INTO `archive_tags`
VALUES (10564, '瑞幸');
INSERT INTO `archive_tags`
VALUES (10564, '跟谁学');
INSERT INTO `archive_tags`
VALUES (10566, '游戏');
INSERT INTO `archive_tags`
VALUES (10566, '社会');
INSERT INTO `archive_tags`
VALUES (10568, '创投');
INSERT INTO `archive_tags`
VALUES (10568, '教育');
INSERT INTO `archive_tags`
VALUES (10568, '跟谁学');
INSERT INTO `archive_tags`
VALUES (10570, '宝宝树');
INSERT INTO `archive_tags`
VALUES (10570, '战投');
INSERT INTO `archive_tags`
VALUES (10570, '母婴');
INSERT INTO `archive_tags`
VALUES (10570, '阿里');
INSERT INTO `archive_tags`
VALUES (10572, 'SaaS');
INSERT INTO `archive_tags`
VALUES (10572, 'toB');
INSERT INTO `archive_tags`
VALUES (10572, '创投');
INSERT INTO `archive_tags`
VALUES (10574, '安全');
INSERT INTO `archive_tags`
VALUES (10576, '社会');
INSERT INTO `archive_tags`
VALUES (10576, '第一时间删稿');
INSERT INTO `archive_tags`
VALUES (10578, '第一时间删稿');
INSERT INTO `archive_tags`
VALUES (10578, '鄙视链');
INSERT INTO `archive_tags`
VALUES (10580, '大文娱');
INSERT INTO `archive_tags`
VALUES (10580, '政治');
INSERT INTO `archive_tags`
VALUES (10582, '大文娱');
INSERT INTO `archive_tags`
VALUES (10584, '大文娱');
INSERT INTO `archive_tags`
VALUES (10584, '管理');
INSERT INTO `archive_tags`
VALUES (10584, '长视频');
INSERT INTO `archive_tags`
VALUES (10586, '字节');
INSERT INTO `archive_tags`
VALUES (10588, '房地产');
INSERT INTO `archive_tags`
VALUES (10588, '社会');
INSERT INTO `archive_tags`
VALUES (10588, '经济');
INSERT INTO `archive_tags`
VALUES (10590, '悟空问答');
INSERT INTO `archive_tags`
VALUES (10590, '知乎');
INSERT INTO `archive_tags`
VALUES (10590, '社区');
INSERT INTO `archive_tags`
VALUES (10592, '宗教');
INSERT INTO `archive_tags`
VALUES (10592, '社会');
INSERT INTO `archive_tags`
VALUES (10592, '社区');
INSERT INTO `archive_tags`
VALUES (10592, '穆斯林');
INSERT INTO `archive_tags`
VALUES (10592, '第一时间删稿');
INSERT INTO `archive_tags`
VALUES (10594, '冯小刚');
INSERT INTO `archive_tags`
VALUES (10594, '大文娱');
INSERT INTO `archive_tags`
VALUES (10594, '王朔');
INSERT INTO `archive_tags`
VALUES (10594, '电影');
INSERT INTO `archive_tags`
VALUES (10594, '第一时间删稿');
INSERT INTO `archive_tags`
VALUES (10596, '冯小刚');
INSERT INTO `archive_tags`
VALUES (10596, '大文娱');
INSERT INTO `archive_tags`
VALUES (10596, '电影');
INSERT INTO `archive_tags`
VALUES (10598, '文学');
INSERT INTO `archive_tags`
VALUES (10598, '王朔');
INSERT INTO `archive_tags`
VALUES (10600, '社会');
INSERT INTO `archive_tags`
VALUES (10600, '第一时间删稿');
INSERT INTO `archive_tags`
VALUES (10602, '百度');
INSERT INTO `archive_tags`
VALUES (10602, '第一时间删稿');
INSERT INTO `archive_tags`
VALUES (10602, '腾讯');
INSERT INTO `archive_tags`
VALUES (10604, '社会');
INSERT INTO `archive_tags`
VALUES (10604, '第一时间删稿');
INSERT INTO `archive_tags`
VALUES (10604, '阿里');
INSERT INTO `archive_tags`
VALUES (10604, '马云');
INSERT INTO `archive_tags`
VALUES (10606, '罗永浩');
INSERT INTO `archive_tags`
VALUES (10606, '锤子M1');
INSERT INTO `archive_tags`
VALUES (10608, '自媒体');
INSERT INTO `archive_tags`
VALUES (10610, '小米');
INSERT INTO `archive_tags`
VALUES (10610, '雷军');
INSERT INTO `archive_tags`
VALUES (10612, '新媒体');
INSERT INTO `archive_tags`
VALUES (10612, '社会');
INSERT INTO `archive_tags`
VALUES (10612, '记者');
INSERT INTO `archive_tags`
VALUES (10614, '乐视');
INSERT INTO `archive_tags`
VALUES (10614, '股权治理');
INSERT INTO `archive_tags`
VALUES (10614, '金融');
INSERT INTO `archive_tags`
VALUES (10616, '百度');
INSERT INTO `archive_tags`
VALUES (10618, '创投');
INSERT INTO `archive_tags`
VALUES (10620, '政治');
INSERT INTO `archive_tags`
VALUES (10622, 'Elon Musk');
INSERT INTO `archive_tags`
VALUES (10622, '火星殖民');
INSERT INTO `archive_tags`
VALUES (10624, '川普');
INSERT INTO `archive_tags`
VALUES (10624, '政治');
INSERT INTO `archive_tags`
VALUES (10626, '政治');
INSERT INTO `archive_tags`
VALUES (10626, '蚂蚁');
INSERT INTO `archive_tags`
VALUES (10626, '阿里');
INSERT INTO `archive_tags`
VALUES (10628, '苹果');
INSERT INTO `archive_tags`
VALUES (10630, '大文娱');
INSERT INTO `archive_tags`
VALUES (10630, '新媒体');
INSERT INTO `archive_tags`
VALUES (10632, '社会');
INSERT INTO `archive_tags`
VALUES (10632, '程序员');
INSERT INTO `archive_tags`
VALUES (10632, '鄙视链');
INSERT INTO `archive_tags`
VALUES (10634, '小米');
INSERT INTO `archive_tags`
VALUES (10634, '智能手机');
INSERT INTO `archive_tags`
VALUES (10634, '电商');
INSERT INTO `archive_tags`
VALUES (10634, '硬件');
INSERT INTO `archive_tags`
VALUES (10636, '58同城');
INSERT INTO `archive_tags`
VALUES (10636, '并购');
INSERT INTO `archive_tags`
VALUES (10636, '本地生活');
INSERT INTO `archive_tags`
VALUES (10636, '赶集');
INSERT INTO `archive_tags`
VALUES (10638, 'VC');
INSERT INTO `archive_tags`
VALUES (10638, '创投');
INSERT INTO `archive_tags`
VALUES (10638, '经济');
INSERT INTO `archive_tags`
VALUES (10640, '广告');
INSERT INTO `archive_tags`
VALUES (10640, '搜狐');
INSERT INTO `archive_tags`
VALUES (10640, '新闻');
INSERT INTO `archive_tags`
VALUES (10640, '网易');
INSERT INTO `archive_tags`
VALUES (10642, 'DST');
INSERT INTO `archive_tags`
VALUES (10642, 'VC');
INSERT INTO `archive_tags`
VALUES (10642, '京东');
INSERT INTO `archive_tags`
VALUES (10644, '天涯');
INSERT INTO `archive_tags`
VALUES (10644, '猫扑');
INSERT INTO `archive_tags`
VALUES (10644, '社区');
INSERT INTO `archive_tags`
VALUES (10644, '西祠胡同');
INSERT INTO `archive_tags`
VALUES (10646, '阿里');
INSERT INTO `archive_tags`
VALUES (10648, 'VC');
INSERT INTO `archive_tags`
VALUES (10648, '创投');
INSERT INTO `archive_tags`
VALUES (10650, '工具');
INSERT INTO `archive_tags`
VALUES (10650, '暴风影音');
INSERT INTO `archive_tags`
VALUES (10650, '迅雷');
INSERT INTO `archive_tags`
VALUES (10652, 'VC');
INSERT INTO `archive_tags`
VALUES (10652, '创投');
INSERT INTO `archive_tags`
VALUES (10654, '社区团购');
INSERT INTO `archive_tags`
VALUES (10656, '中局');
INSERT INTO `archive_tags`
VALUES (10656, '京东');
INSERT INTO `archive_tags`
VALUES (10656, '字节');
INSERT INTO `archive_tags`
VALUES (10656, '滴滴');
INSERT INTO `archive_tags`
VALUES (10656, '社区团购');
INSERT INTO `archive_tags`
VALUES (10658, '优酷');
INSERT INTO `archive_tags`
VALUES (10658, '大文娱');
INSERT INTO `archive_tags`
VALUES (10658, '并购');
INSERT INTO `archive_tags`
VALUES (10658, '爱奇艺');
INSERT INTO `archive_tags`
VALUES (10658, '百度');
INSERT INTO `archive_tags`
VALUES (10658, '腾讯');
INSERT INTO `archive_tags`
VALUES (10658, '长视频');
INSERT INTO `archive_tags`
VALUES (10658, '阿里');
INSERT INTO `archive_tags`
VALUES (10660, '校招');
INSERT INTO `archive_tags`
VALUES (10660, '社会');
INSERT INTO `archive_tags`
VALUES (10662, '管理z');
INSERT INTO `archive_tags`
VALUES (10664, '社区团购');
INSERT INTO `archive_tags`
VALUES (10666, '大文娱');
INSERT INTO `archive_tags`
VALUES (10666, '文学');
INSERT INTO `archive_tags`
VALUES (10668, 'VC');
INSERT INTO `archive_tags`
VALUES (10668, '创投');
INSERT INTO `archive_tags`
VALUES (10670, 'VC');
INSERT INTO `archive_tags`
VALUES (10674, '生鲜电商');
INSERT INTO `archive_tags`
VALUES (10676, '创投');
INSERT INTO `archive_tags`
VALUES (10676, '社会');
INSERT INTO `archive_tags`
VALUES (10678, '创投');
INSERT INTO `archive_tags`
VALUES (10680, '下沉市场');
INSERT INTO `archive_tags`
VALUES (10680, '补贴');
INSERT INTO `archive_tags`
VALUES (10682, '教育');
INSERT INTO `archive_tags`
VALUES (10684, '社区团购');
INSERT INTO `archive_tags`
VALUES (10686, '下沉市场');
INSERT INTO `archive_tags`
VALUES (10686, '拼多多');
INSERT INTO `archive_tags`
VALUES (10688, '下沉市场');
INSERT INTO `archive_tags`
VALUES (10688, '补贴');
INSERT INTO `archive_tags`
VALUES (10688, '趣头条');
INSERT INTO `archive_tags`
VALUES (10690, '人生');
INSERT INTO `archive_tags`
VALUES (10690, '方法论');
INSERT INTO `archive_tags`
VALUES (10692, '出海');
INSERT INTO `archive_tags`
VALUES (10692, '新加坡');
INSERT INTO `archive_tags`
VALUES (10694, '快手');
INSERT INTO `archive_tags`
VALUES (10694, '战投');
INSERT INTO `archive_tags`
VALUES (10696, '创投');
INSERT INTO `archive_tags`
VALUES (10696, '移动互联网');
INSERT INTO `archive_tags`
VALUES (10698, '创投');
INSERT INTO `archive_tags`
VALUES (10700, '短视频');
INSERT INTO `archive_tags`
VALUES (10702, '成人');
INSERT INTO `archive_tags`
VALUES (10704, '游戏');
INSERT INTO `archive_tags`
VALUES (10706, 'O2O');
INSERT INTO `archive_tags`
VALUES (10708, '游戏');
INSERT INTO `archive_tags`
VALUES (10710, '脑机接口');
INSERT INTO `archive_tags`
VALUES (10712, '中局');
INSERT INTO `archive_tags`
VALUES (10714, '快手');
INSERT INTO `archive_tags`
VALUES (10714, '短视频');
INSERT INTO `archive_tags`
VALUES (10716, 'VC');
INSERT INTO `archive_tags`
VALUES (10716, '五源');
INSERT INTO `archive_tags`
VALUES (10716, '晨兴');
INSERT INTO `archive_tags`
VALUES (10718, '游戏');
INSERT INTO `archive_tags`
VALUES (10718, '腾讯');
INSERT INTO `archive_tags`
VALUES (10720, 'CDPR');
INSERT INTO `archive_tags`
VALUES (10720, '游戏');
INSERT INTO `archive_tags`
VALUES (10722, '社交');
INSERT INTO `archive_tags`
VALUES (10724, '主机');
INSERT INTO `archive_tags`
VALUES (10724, '游戏');
INSERT INTO `archive_tags`
VALUES (10726, '社会');
INSERT INTO `archive_tags`
VALUES (10726, '经济');
INSERT INTO `archive_tags`
VALUES (10726, '资本主义');
INSERT INTO `archive_tags`
VALUES (10728, '方法论');
INSERT INTO `archive_tags`
VALUES (10728, '管理');
INSERT INTO `archive_tags`
VALUES (10728, '美团');
INSERT INTO `archive_tags`
VALUES (10732, 'VC');
INSERT INTO `archive_tags`
VALUES (10732, '红杉');
INSERT INTO `archive_tags`
VALUES (10734, '社会');
INSERT INTO `archive_tags`
VALUES (10736, '芯片');
INSERT INTO `archive_tags`
VALUES (10738, '腾讯');
INSERT INTO `archive_tags`
VALUES (10740, '城市');
INSERT INTO `archive_tags`
VALUES (10740, '房地产');
INSERT INTO `archive_tags`
VALUES (10740, '社会');
INSERT INTO `archive_tags`
VALUES (10742, 'VC');
INSERT INTO `archive_tags`
VALUES (10742, '创投');
INSERT INTO `archive_tags`
VALUES (10744, '公有制');
INSERT INTO `archive_tags`
VALUES (10744, '国企');
INSERT INTO `archive_tags`
VALUES (10744, '搜索');
INSERT INTO `archive_tags`
VALUES (10746, '区块链');
INSERT INTO `archive_tags`
VALUES (10746, '比特大陆');
INSERT INTO `archive_tags`
VALUES (10746, '股权');
INSERT INTO `archive_tags`
VALUES (10748, '区块链');
INSERT INTO `archive_tags`
VALUES (10748, '比特大陆');
INSERT INTO `archive_tags`
VALUES (10750, '战略');
INSERT INTO `archive_tags`
VALUES (10750, '方法论');
INSERT INTO `archive_tags`
VALUES (10750, '美团');
INSERT INTO `archive_tags`
VALUES (10752, '方法论');
INSERT INTO `archive_tags`
VALUES (10752, '美团');
INSERT INTO `archive_tags`
VALUES (10754, '创投');
INSERT INTO `archive_tags`
VALUES (10756, '创投');
INSERT INTO `archive_tags`
VALUES (10756, '方法论');
INSERT INTO `archive_tags`
VALUES (10756, '美团');
INSERT INTO `archive_tags`
VALUES (10758, '二次元');
INSERT INTO `archive_tags`
VALUES (10758, '大文娱');
INSERT INTO `archive_tags`
VALUES (10758, '直播');
INSERT INTO `archive_tags`
VALUES (10762, 'Soul');
INSERT INTO `archive_tags`
VALUES (10762, 'VC');
INSERT INTO `archive_tags`
VALUES (10762, '创投');
INSERT INTO `archive_tags`
VALUES (10762, '得物');
INSERT INTO `archive_tags`
VALUES (10764, '社交');
INSERT INTO `archive_tags`
VALUES (10764, '腾讯');
INSERT INTO `archive_tags`
VALUES (10766, 'VC');
INSERT INTO `archive_tags`
VALUES (10766, '创投');
INSERT INTO `archive_tags`
VALUES (10766, '拼多多');
INSERT INTO `archive_tags`
VALUES (10766, '高榕');
INSERT INTO `archive_tags`
VALUES (10768, '社交');
INSERT INTO `archive_tags`
VALUES (10768, '陌陌');
INSERT INTO `archive_tags`
VALUES (10770, '游戏');
INSERT INTO `archive_tags`
VALUES (10770, '游族');
INSERT INTO `archive_tags`
VALUES (10770, '社会');
INSERT INTO `archive_tags`
VALUES (10774, 'IM');
INSERT INTO `archive_tags`
VALUES (10774, '游戏');
INSERT INTO `archive_tags`
VALUES (10776, 'Reddit');
INSERT INTO `archive_tags`
VALUES (10776, '游戏');
INSERT INTO `archive_tags`
VALUES (10776, '社区');
INSERT INTO `archive_tags`
VALUES (10778, '职业生涯');
INSERT INTO `archive_tags`
VALUES (10780, '方法论');
INSERT INTO `archive_tags`
VALUES (10780, '管理');
INSERT INTO `archive_tags`
VALUES (10782, '星际殖民');
INSERT INTO `archive_tags`
VALUES (10784, 'bilibili');
INSERT INTO `archive_tags`
VALUES (10784, '大文娱');
INSERT INTO `archive_tags`
VALUES (10786, '智能手机');
INSERT INTO `archive_tags`
VALUES (10786, '魅族');
INSERT INTO `archive_tags`
VALUES (10788, '历史');
INSERT INTO `archive_tags`
VALUES (10788, '城市');
INSERT INTO `archive_tags`
VALUES (10788, '社会');
INSERT INTO `archive_tags`
VALUES (10790, 'Podcast');
INSERT INTO `archive_tags`
VALUES (10790, '大文娱');
INSERT INTO `archive_tags`
VALUES (10790, '社交');
INSERT INTO `archive_tags`
VALUES (10792, '阿里');
INSERT INTO `archive_tags`
VALUES (10794, 'AI');
INSERT INTO `archive_tags`
VALUES (10794, 'OpenAI');
INSERT INTO `archive_tags`
VALUES (10796, '傅盛');
INSERT INTO `archive_tags`
VALUES (10796, '出海');
INSERT INTO `archive_tags`
VALUES (10796, '猎豹');
INSERT INTO `archive_tags`
VALUES (10798, '大文娱');
INSERT INTO `archive_tags`
VALUES (10798, '快手');
INSERT INTO `archive_tags`
VALUES (10800, 'BigoLive');
INSERT INTO `archive_tags`
VALUES (10800, 'Musical.ly');
INSERT INTO `archive_tags`
VALUES (10802, '二级市场');
INSERT INTO `archive_tags`
VALUES (10802, '创投');
INSERT INTO `archive_tags`
VALUES (10804, '永生');
INSERT INTO `archive_tags`
VALUES (10804, '社会');
INSERT INTO `archive_tags`
VALUES (10804, '脑科学');
INSERT INTO `archive_tags`
VALUES (10808, '字节');
INSERT INTO `archive_tags`
VALUES (10808, '管理');
INSERT INTO `archive_tags`
VALUES (10810, 'bilibili');
INSERT INTO `archive_tags`
VALUES (10810, 'Metaverse');
INSERT INTO `archive_tags`
VALUES (10810, '直播');
INSERT INTO `archive_tags`
VALUES (10812, 'Musical.ly');
INSERT INTO `archive_tags`
VALUES (10812, '短视频');
INSERT INTO `archive_tags`
VALUES (10814, 'Musical.ly');
INSERT INTO `archive_tags`
VALUES (10814, '短视频');
INSERT INTO `archive_tags`
VALUES (10816, 'Elon Musk');
INSERT INTO `archive_tags`
VALUES (10816, '火星殖民');
INSERT INTO `archive_tags`
VALUES (10818, '媒体');
INSERT INTO `archive_tags`
VALUES (10818, '报纸');
INSERT INTO `archive_tags`
VALUES (10820, '拼多多');
INSERT INTO `archive_tags`
VALUES (10820, '管理');
INSERT INTO `archive_tags`
VALUES (10822, '出海');
INSERT INTO `archive_tags`
VALUES (10822, '昆仑万维');
INSERT INTO `archive_tags`
VALUES (10824, 'Valve');
INSERT INTO `archive_tags`
VALUES (10824, '完美世界');
INSERT INTO `archive_tags`
VALUES (10824, '游戏');
INSERT INTO `archive_tags`
VALUES (10826, 'Metaverse');
INSERT INTO `archive_tags`
VALUES (10826, 'vtuber');
INSERT INTO `archive_tags`
VALUES (10826, '虚拟偶像');
INSERT INTO `archive_tags`
VALUES (10828, '社会');
INSERT INTO `archive_tags`
VALUES (10830, 'Biohacking');
INSERT INTO `archive_tags`
VALUES (10830, '社会');
INSERT INTO `archive_tags`
VALUES (10832, '教育');
INSERT INTO `archive_tags`
VALUES (10832, '社会');
INSERT INTO `archive_tags`
VALUES (10834, '字节');
INSERT INTO `archive_tags`
VALUES (10834, '游戏');
INSERT INTO `archive_tags`
VALUES (10836, '游戏');
INSERT INTO `archive_tags`
VALUES (10836, '社区');
INSERT INTO `archive_tags`
VALUES (10838, '字节');
INSERT INTO `archive_tags`
VALUES (10838, '游戏');
INSERT INTO `archive_tags`
VALUES (10840, 'VC');
INSERT INTO `archive_tags`
VALUES (10840, '二级市场');
INSERT INTO `archive_tags`
VALUES (10840, '投资');
INSERT INTO `archive_tags`
VALUES (10844, '京东');
INSERT INTO `archive_tags`
VALUES (10844, '人事');
INSERT INTO `archive_tags`
VALUES (10844, '管培生');
INSERT INTO `archive_tags`
VALUES (10844, '管理');
INSERT INTO `archive_tags`
VALUES (10846, '美团');
INSERT INTO `archive_tags`
VALUES (10846, '阿里');
INSERT INTO `archive_tags`
VALUES (10846, '饿了么');
INSERT INTO `archive_tags`
VALUES (10848, 'DeFi');
INSERT INTO `archive_tags`
VALUES (10848, '声音');
INSERT INTO `archive_tags`
VALUES (10848, '社交');
INSERT INTO `archive_tags`
VALUES (10850, '字节');
INSERT INTO `archive_tags`
VALUES (10850, '游戏');
INSERT INTO `archive_tags`
VALUES (10852, '国产游戏');
INSERT INTO `archive_tags`
VALUES (10852, '游戏');
INSERT INTO `archive_tags`
VALUES (10852, '独立游戏');
INSERT INTO `archive_tags`
VALUES (10854, '国产游戏');
INSERT INTO `archive_tags`
VALUES (10854, '游戏');
INSERT INTO `archive_tags`
VALUES (10854, '独立游戏');
INSERT INTO `archive_tags`
VALUES (10860, '人事');
INSERT INTO `archive_tags`
VALUES (10860, '字节');
INSERT INTO `archive_tags`
VALUES (10860, '招聘');
INSERT INTO `archive_tags`
VALUES (10860, '管理');
INSERT INTO `archive_tags`
VALUES (10862, 'Clubhouse');
INSERT INTO `archive_tags`
VALUES (10864, 'Clubhouse');
INSERT INTO `archive_tags`
VALUES (10866, '任天堂');
INSERT INTO `archive_tags`
VALUES (10866, '健身环');
COMMIT;

-- ----------------------------
-- Table structure for archives
-- ----------------------------
DROP TABLE IF EXISTS `archives`;
CREATE TABLE `archives`
(
    `id`            bigint(20)           NOT NULL,
    `created_at`    bigint(20)           NOT NULL,
    `updated_at`    bigint(20)           NOT NULL,
    `title`         varchar(255)         NOT NULL DEFAULT '',
    `publish_year`  smallint(4) unsigned NOT NULL,
    `publish_month` tinyint(2)           NOT NULL,
    `chapter`       varchar(4)           NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Records of archives
-- ----------------------------
BEGIN;
INSERT INTO `archives`
VALUES (100, 1613413504722, 1613413504722, '知识英雄', 1998, 0, '本纪');
INSERT INTO `archives`
VALUES (101, 1613413504723, 1613413504723, '知识英雄2.0', 2002, 0, '本纪');
INSERT INTO `archives`
VALUES (102, 1613413504723, 1613413504723, '中国.COM', 2000, 0, '本纪');
INSERT INTO `archives`
VALUES (103, 1613413504723, 1613413504723, '激荡三十年: 中国企业1978-2008', 2008, 0, '本纪');
INSERT INTO `archives`
VALUES (104, 1613413504723, 1613413504723, '激荡十年, 水大鱼大: 中国企业2008-2018', 2017, 0, '本纪');
INSERT INTO `archives`
VALUES (10004, 1613413504724, 1613413504724, '马云的湖畔花园16幢1单元202室', 2017, 9, '世家');
INSERT INTO `archives`
VALUES (10005, 1613413504724, 1613413504724, '阿里“中供系”前世今生：马云麾下最神秘的子弟兵', 2017, 4, '世家');
INSERT INTO `archives`
VALUES (10006, 1613413504724, 1613413504724, '腾讯没有梦想', 2018, 5, '世家');
INSERT INTO `archives`
VALUES (10007, 1613413504724, 1613413504724, '狗日的腾讯', 2010, 7, '世家');
INSERT INTO `archives`
VALUES (10008, 1613413504724, 1613413504724, '百度的冬天', 2016, 6, '世家');
INSERT INTO `archives`
VALUES (10009, 1613413504724, 1613413504724, '百度最难捱的一夜：五名高管闪电辞职内幕', 2019, 5, '世家');
INSERT INTO `archives`
VALUES (10010, 1613413504724, 1613413504724, '陆奇先生和他的百度新千亿美金计划', 2017, 6, '世家');
INSERT INTO `archives`
VALUES (10011, 1613413504724, 1613413504724, '尽快地走上被百度收购之路', 2017, 2, '世家');
INSERT INTO `archives`
VALUES (10012, 1613413504724, 1613413504724, '李叫兽沉浮录：百度信息流价值亿元的失败尝试', 2018, 4, '世家');
INSERT INTO `archives`
VALUES (10013, 1613413504725, 1613413504725, '微信已经老了, 头条永远年轻', 2017, 12, '世家');
INSERT INTO `archives`
VALUES (10014, 1613413504725, 1613413504725, 'TikTok爆红记：“一夜成名”听起来都太慢了', 2020, 6, '世家');
INSERT INTO `archives`
VALUES (10015, 1613413504725, 1613413504725, '堵截千亿拼多多，阿里与腾讯的电商新战役', 2018, 3, '列传');
INSERT INTO `archives`
VALUES (10016, 1613413504725, 1613413504725, '呆萝卜们的教训', 2019, 12, '游侠');
INSERT INTO `archives`
VALUES (10017, 1613413504725, 1613413504725, '复盘360六年历程：周鸿祎的困局与筹码', 2016, 11, '列传');
INSERT INTO `archives`
VALUES (10018, 1613413504725, 1613413504725, '网易三浪', 2020, 6, '列传');
INSERT INTO `archives`
VALUES (10019, 1613413504725, 1613413504725, '对话王兴：太多人关注边界，而不关注核心', 2017, 6, '列传');
INSERT INTO `archives`
VALUES (10020, 1613413504725, 1613413504725, '王兴清华大学演讲：别不把自己当回事，别太把自己当回事', 2017, 11, '列传');
INSERT INTO `archives`
VALUES (10021, 1613413504725, 1613413504725, '短视频：争夺注意力', 2017, 8, '列传');
INSERT INTO `archives`
VALUES (10022, 1613413504725, 1613413504725, '喊麦之王', 2016, 9, '游侠');
INSERT INTO `archives`
VALUES (10023, 1613413504725, 1613413504725, '惊惶庞麦郎', 2015, 12, '游侠');
INSERT INTO `archives`
VALUES (10024, 1613413504726, 1613413504726, '小牛上市，李一男的江湖路', 2018, 10, '列传');
INSERT INTO `archives`
VALUES (10025, 1613413504726, 1613413504726, '关键先生李斌的最后一百米', 2019, 5, '列传');
INSERT INTO `archives`
VALUES (10026, 1613413504726, 1613413504726, '深圳“滴滴村”', 2016, 7, '列传');
INSERT INTO `archives`
VALUES (10027, 1613413504726, 1613413504726, '方寸外卖盒里的隐匿江湖', 2019, 7, '列传');
INSERT INTO `archives`
VALUES (10028, 1613413504726, 1613413504726, '共享单车：资本局中局', 2017, 4, '列传');
INSERT INTO `archives`
VALUES (10029, 1613413504726, 1613413504726, '“出局者”王晓峰', 2018, 11, '列传');
INSERT INTO `archives`
VALUES (10030, 1613413504726, 1613413504726, '乐视危机虚实', 2016, 11, '列传');
INSERT INTO `archives`
VALUES (10031, 1613413504726, 1613413504726, '「共享汽车」的风口还没来', 2018, 1, '列传');
INSERT INTO `archives`
VALUES (10032, 1613413504726, 1613413504726, '我如何在亿万估值迷梦中保持镇定', 2016, 3, '游侠');
INSERT INTO `archives`
VALUES (10033, 1613413504726, 1613413504726, '一桩「风口谋杀案」：无人货架200天生死时速', 2018, 2, '世家');
INSERT INTO `archives`
VALUES (10034, 1613413504726, 1613413504726, '谁给了奢侈品疫情期间涨价的底气？', 2020, 6, '列传');
INSERT INTO `archives`
VALUES (10035, 1613413504726, 1613413504726, '互金十年，九死一生', 2017, 12, '列传');
INSERT INTO `archives`
VALUES (10036, 1613413504726, 1613413504726, '小米八年：聚光灯外「小人物们」的风云往事', 2018, 7, '列传');
INSERT INTO `archives`
VALUES (10037, 1613413504727, 1613413504727, '谁来组成小米的下一个十年', 2020, 6, '列传');
INSERT INTO `archives`
VALUES (10038, 1613413504727, 1613413504727, 'OPPO血战东南亚', 2017, 5, '列传');
INSERT INTO `archives`
VALUES (10039, 1613413504727, 1613413504727, '商人罗振宇：随风而变', 2017, 7, '列传');
INSERT INTO `archives`
VALUES (10040, 1613413504727, 1613413504727, '老道消息：精致利己的坏分子，还是打破藩篱的冒险家？', 2017, 11, '游侠');
INSERT INTO `archives`
VALUES (10041, 1613413504727, 1613413504727, '咪蒙：网红，病人，潮水的一种方向', 2017, 3, '列传');
INSERT INTO `archives`
VALUES (10042, 1613413504727, 1613413504727, '那些耶鲁没有教会我的事', 2019, 6, '游侠');
INSERT INTO `archives`
VALUES (10043, 1613413504727, 1613413504727, '名医主刀CEO苏舒：医疗，以生命为本，服务为核心，技术为驱动', 2019, 7, '列传');
INSERT INTO `archives`
VALUES (10044, 1613413504727, 1613413504727, '微店、豌豆荚、春雨医生……为什么它们没能成为伟大的公司？', 2016, 7, '列传');
INSERT INTO `archives`
VALUES (10045, 1613413504727, 1613413504727, '彷徨90后：当新生代撞上移动互联网末班车', 2019, 8, '群像');
INSERT INTO `archives`
VALUES (10046, 1613413504727, 1613413504727, '残酷底层物语：一个视频软件的中国农村', 2016, 6, '群像');
INSERT INTO `archives`
VALUES (10047, 1613413504727, 1613413504727, '从O2O到无人货架：十万铁军随“风”迁徙，残酷长存', 2018, 1, '群像');
INSERT INTO `archives`
VALUES (10048, 1613413504727, 1613413504727, '复活“来往”，阿里的社交心结', 2019, 9, '世家');
INSERT INTO `archives`
VALUES (10049, 1613413504727, 1613413504727, '京东阿里残酷攻防战', 2017, 7, '世家');
INSERT INTO `archives`
VALUES (10050, 1613413504728, 1613413504728, '腾讯传 1998-2016', 2017, 1, '世家');
INSERT INTO `archives`
VALUES (10051, 1613413504728, 1613413504728, '腾讯养蛊：赢了市场，苦了项目', 2018, 3, '世家');
INSERT INTO `archives`
VALUES (10052, 1613413504728, 1613413504728, '看不懂的百度投资，与它失去的一个时代', 2016, 8, '世家');
INSERT INTO `archives`
VALUES (10053, 1613413504728, 1613413504728, '百度没有文化', 2018, 7, '世家');
INSERT INTO `archives`
VALUES (10054, 1613413504728, 1613413504728, '姑娘和投资人喜欢的是同一种创业者', 2017, 2, '世家');
INSERT INTO `archives`
VALUES (10055, 1613413504728, 1613413504728, '揭秘：90后渡鸦创始人吕骋离职百度真相', 2018, 7, '世家');
INSERT INTO `archives`
VALUES (10056, 1613413504728, 1613413504728, '抖音的前世今生', 2017, 5, '世家');
INSERT INTO `archives`
VALUES (10057, 1613413504728, 1613413504728, '对话张一鸣: 世界不是只有你和你的对手', 2016, 12, '世家');
INSERT INTO `archives`
VALUES (10058, 1613413504728, 1613413504728, '五年时间、四任高管、上百亿投资，万达为何没有砸出一个电商？', 2017, 4, '列传');
INSERT INTO `archives`
VALUES (10059, 1613413504728, 1613413504728, '向死而生：生鲜电商是疫情最大赢家吗？', 2020, 6, '列传');
INSERT INTO `archives`
VALUES (10060, 1613413504728, 1613413504728, '从被唱衰到手游崛起，吝啬、保守、任性的丁磊为何逆袭？', 2016, 8, '列传');
INSERT INTO `archives`
VALUES (10061, 1613413504728, 1613413504728, '王兴的无限游戏', 2018, 4, '列传');
INSERT INTO `archives`
VALUES (10062, 1613413504728, 1613413504728, '「专访王兴：多数人为了逃避思考愿意做任何事情」', 2016, 1, '列传');
INSERT INTO `archives`
VALUES (10063, 1613413504729, 1613413504729, '张旭豪放下枪杆', 2018, 9, '列传');
INSERT INTO `archives`
VALUES (10064, 1613413504729, 1613413504729, '流量战争：中国互联网的新一轮上山下乡运动', 2017, 8, '列传');
INSERT INTO `archives`
VALUES (10065, 1613413504729, 1613413504729, '出优酷土豆记：揭秘古永锵经历的行业剧变与权力游戏', 2016, 11, '列传');
INSERT INTO `archives`
VALUES (10066, 1613413504729, 1613413504729, '民谣歌手崛起背后的音乐新秩序：天时、金钱与重建', 2017, 2, '游侠');
INSERT INTO `archives`
VALUES (10067, 1613413504729, 1613413504729, '大疆的“融资奇景”', 2018, 4, '列传');
INSERT INTO `archives`
VALUES (10068, 1613413504729, 1613413504729, 'Uber中国30个月：这家最接近成功的美国互联网公司，做了些什么？', 2016, 8, '列传');
INSERT INTO `archives`
VALUES (10069, 1613413504729, 1613413504729, '滴滴的战争与和平 | 《财经》封面故事', 2018, 2, '列传');
INSERT INTO `archives`
VALUES (10070, 1613413504729, 1613413504729, '美团收购摩拜的真实故事', 2018, 4, '列传');
INSERT INTO `archives`
VALUES (10071, 1613413504729, 1613413504729, 'ofo剧中人：我不愿谢幕', 2018, 12, '列传');
INSERT INTO `archives`
VALUES (10072, 1613413504729, 1613413504729, '600天生死场：资本逃离共享经济', 2018, 6, '列传');
INSERT INTO `archives`
VALUES (10073, 1613413504729, 1613413504729, '为何共享汽车沦为了伪命题', 2019, 11, '列传');
INSERT INTO `archives`
VALUES (10074, 1613413504729, 1613413504729, '人人车: 小白创始人搏击大行业的正确姿势', 2018, 7, '列传');
INSERT INTO `archives`
VALUES (10075, 1613413504729, 1613413504729, '为了活下去，我把估值砍掉80%', 2020, 6, '群像');
INSERT INTO `archives`
VALUES (10076, 1613413504730, 1613413504730, '无人货架大败退：行业大洗牌，集体转型求生存', 2018, 6, '世家');
INSERT INTO `archives`
VALUES (10077, 1613413504730, 1613413504730, '得商超者得天下，所以达达集团上市了', 2020, 6, '列传');
INSERT INTO `archives`
VALUES (10078, 1613413504730, 1613413504730, '中国手机往事', 2018, 7, '列传');
INSERT INTO `archives`
VALUES (10079, 1613413504730, 1613413504730, '小米重生故事', 2017, 9, '列传');
INSERT INTO `archives`
VALUES (10080, 1613413504730, 1613413504730, 'OPPO、vivo和小米们如何夺取印度半壁江山？｜中国手机决战印度', 2017, 4, '列传');
INSERT INTO `archives`
VALUES (10081, 1613413504730, 1613413504730, '人机大战疯狂一周，首尔四季酒店究竟发生了什么？', 2016, 4, '列传');
INSERT INTO `archives`
VALUES (10082, 1613413504730, 1613413504730, '浅析「老道消息」写作方法论', 2017, 3, '游侠');
INSERT INTO `archives`
VALUES (10083, 1613413504730, 1613413504730, '老道消息老编辑', 2017, 7, '游侠');
INSERT INTO `archives`
VALUES (10084, 1613413504730, 1613413504730, '那些不是Papi酱、罗振宇、吴晓波的自媒体，它们如何在“众媒时代”生存？', 2016, 5, '群像');
INSERT INTO `archives`
VALUES (10085, 1613413504730, 1613413504730, '【独家】逝者与未亡人', 2017, 10, '列传');
INSERT INTO `archives`
VALUES (10086, 1613413504730, 1613413504730, '大并购幕后故事', 2016, 8, '群像');
INSERT INTO `archives`
VALUES (10087, 1613413504730, 1613413504730, '从红极一时到昙花一现，90后明星创业者们为何纷纷沉沦？', 2016, 7, '群像');
INSERT INTO `archives`
VALUES (10088, 1613413504730, 1613413504730, '裁员！裁员！创业者们的2016“寒冬大逃杀”', 2016, 8, '群像');
INSERT INTO `archives`
VALUES (10089, 1613413504731, 1613413504731, '《阿里巴巴正传》', 2015, 1, '世家');
INSERT INTO `archives`
VALUES (10090, 1613413504731, 1613413504731, '这些年，马云犯过的错误', 2014, 7, '世家');
INSERT INTO `archives`
VALUES (10091, 1613413504731, 1613413504731, '休闲游戏的机会', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10093, 1613413504731, 1613413504731, '中国VC流派的前浪、后浪和破浪', 2020, 9, '群像');
INSERT INTO `archives`
VALUES (10094, 1613413504731, 1613413504731, '晚点独家 _ 阿里钉钉换帅：副总裁叶军负责，陈航转任 CEO 助理', 2020, 9, '世家');
INSERT INTO `archives`
VALUES (10096, 1613413504731, 1613413504731, '晚点独家 _ 阿里、拼多多、美团、滴滴社区团购开战 其中的关键人物与头号对手', 2020, 9, '世家');
INSERT INTO `archives`
VALUES (10098, 1613413504731, 1613413504731, '迷你玩复盘：月活破1亿的《迷你世界》，是如何赢得“Z世代”的', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10100, 1613413504731, 1613413504731, '芯片业抢人大战：猎头爆单，有公司被挖空｜反光镜', 2020, 9, '群像');
INSERT INTO `archives`
VALUES (10102, 1613413504731, 1613413504731, '这次我们杀出了以太坊 DeFi 黑暗森林，完美拯救 960 万美元 - 链闻 ChainNews', 2020, 9, '游侠');
INSERT INTO `archives`
VALUES (10104, 1613413504731, 1613413504731, 'VC钱可以集中 但判断无法垄断', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10106, 1613413504731, 1613413504731, '真实存在的以太坊 DeFi「黑暗森林」：mempool 套利机器人吞噬了我的交易 - 链闻 ChainNews', 2020, 8, '游侠');
INSERT INTO `archives`
VALUES (10108, 1613413504732, 1613413504732,
        'How Twitch\'s Founders Turned an Aimless Reality Show Into a Video Juggernaut', 2014, 7, '列传');
INSERT INTO `archives`
VALUES (10110, 1613413504732, 1613413504732, 'Why I left Google to join Grab', 2018, 1, '搜神');
INSERT INTO `archives`
VALUES (10112, 1613413504732, 1613413504732, 'Google to Grab_ One year later', 2019, 5, '搜神');
INSERT INTO `archives`
VALUES (10114, 1613413504732, 1613413504732, 'Saying Goodbye to the Best Gig I Ever Had', 2020, 5, '搜神');
INSERT INTO `archives`
VALUES (10116, 1613413504732, 1613413504732, '这个进过地狱的男人 回来了！', 2019, 11, '列传');
INSERT INTO `archives`
VALUES (10118, 1613413504732, 1613413504732, '8周年之际，“PingWest”品玩消失了', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10120, 1613413504732, 1613413504732, '今天是个好日子：“渠道为王”的邪恶理论，终于迎来了总破产', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10122, 1613413504732, 1613413504732, '极链金明：除了钱，我们还能给90后员工什么？', 2020, 8, '游侠');
INSERT INTO `archives`
VALUES (10124, 1613413504732, 1613413504732, '专访Ohayoo总经理徐培翔：经历半年阵痛期，我们想清楚休闲游戏生态要怎么做了', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10126, 1613413504732, 1613413504732, '独家：News Break获B轮投资，丁磊领投', 2017, 5, '列传');
INSERT INTO `archives`
VALUES (10128, 1613413504732, 1613413504732, '坐上火箭的人', 2017, 11, '列传');
INSERT INTO `archives`
VALUES (10130, 1613413504732, 1613413504732, '怎样的创业公司才能突破重围？', 2016, 8, '游侠');
INSERT INTO `archives`
VALUES (10132, 1613413504732, 1613413504732, '可怕，GPT-3论坛跟帖灌水一周无人发现！专挑热搜，秒秒钟长文', 2020, 10, '游侠');
INSERT INTO `archives`
VALUES (10156, 1613413504732, 1613413504732, '我承认，多数企业的危机公关，只能假装遭遇了黑公关', 2018, 10, '列传');
INSERT INTO `archives`
VALUES (10158, 1613413504733, 1613413504733, '中国式KTV的求生之路', 2020, 10, '列传');
INSERT INTO `archives`
VALUES (10160, 1613413504733, 1613413504733, '打开越南互联网，我觉得自己是个假中国人', 2020, 10, '群像');
INSERT INTO `archives`
VALUES (10162, 1613413504733, 1613413504733, '故事大王张一鸣', 2020, 10, '世家');
INSERT INTO `archives`
VALUES (10164, 1613413504733, 1613413504733, '张一鸣选错了对手', 2020, 9, '世家');
INSERT INTO `archives`
VALUES (10166, 1613413504733, 1613413504733, '比特大陆裁员始末：AI团队260人被裁，员工举条幅拉群维权', 2020, 1, '列传');
INSERT INTO `archives`
VALUES (10170, 1613413504733, 1613413504733, '2020，县城接轨北上广', 2020, 10, '群像');
INSERT INTO `archives`
VALUES (10172, 1613413504733, 1613413504733, '社会人科技评论 Episode 3_ 失败学旗手：生而失败，我不在乎', 2019, 1, '游侠');
INSERT INTO `archives`
VALUES (10174, 1613413504733, 1613413504733, '王不见王：赵本山&范伟恩怨始末', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10176, 1613413504733, 1613413504733, '起底隐秘的陪玩江湖', 2020, 9, '群像');
INSERT INTO `archives`
VALUES (10178, 1613413504733, 1613413504733, '《街头篮球》，在特定时代下流行', 2020, 9, '游侠');
INSERT INTO `archives`
VALUES (10180, 1613413504733, 1613413504733, '“神奇网站”的神操作：拆出7家公司，4家成了独角兽', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10182, 1613413504733, 1613413504733, '高瓴张磊对话张勇等企业家：穿越周期的秘密就是不要同时蠢和贪', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10184, 1613413504733, 1613413504733, '那个“究极缝合怪游戏”为何变成了“特别好评”？', 2020, 9, '游侠');
INSERT INTO `archives`
VALUES (10186, 1613413504734, 1613413504734, '盘点北京38家出海游戏公司', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10188, 1613413504734, 1613413504734, '曹毅：源码资本的“三横九纵”投资地图', 2016, 9, '列传');
INSERT INTO `archives`
VALUES (10190, 1613413504734, 1613413504734, 'IDG资本李骁军：《读人研究报告》', 2018, 7, '列传');
INSERT INTO `archives`
VALUES (10192, 1613413504734, 1613413504734, '杀不死的中国光伏，真的要骗遍全中国吗？', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10194, 1613413504734, 1613413504734, '抱歉，两个幕后资本⼤大佬的事只能说这么多', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10196, 1613413504734, 1613413504734, '全球超级大通胀马上要来，无人可置身事外', 2020, 9, '群像');
INSERT INTO `archives`
VALUES (10198, 1613413504734, 1613413504734, 'What Is Yield Farming? The Rocket Fuel of DeFi, Explained', 2020, 9,
        '列传');
INSERT INTO `archives`
VALUES (10200, 1613413504734, 1613413504734, '互联网先烈传－瀛海威', 2004, 10, '列传');
INSERT INTO `archives`
VALUES (10202, 1613413504734, 1613413504734, '骑手的“原子化”，美团的定时炸弹', 2020, 9, '群像');
INSERT INTO `archives`
VALUES (10204, 1613413504734, 1613413504734, '亏损7年，找对CTO，VIPKID终于赚钱了', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10206, 1613413504734, 1613413504734, '一部手机失窃而揭露的窃取个人信息实现资金盗取的黑色产业链', 2020, 9, '游侠');
INSERT INTO `archives`
VALUES (10208, 1613413504734, 1613413504734, '20余年互联网沉浮史：剩者为王', 2020, 9, '群像');
INSERT INTO `archives`
VALUES (10210, 1613413504734, 1613413504734, '20余年互联网沉浮史：剩者为王', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10212, 1613413504734, 1613413504734, '莉莉丝CEO王信文：创业6年，我犯的那些错', 2020, 8, '列传');
INSERT INTO `archives`
VALUES (10214, 1613413504735, 1613413504735, '米读，闪击之后', 2019, 11, '列传');
INSERT INTO `archives`
VALUES (10216, 1613413504735, 1613413504735, '\"后浪们\"的而立之年：近300人出任上市公司董监高', 2020, 5, '群像');
INSERT INTO `archives`
VALUES (10218, 1613413504735, 1613413504735, '互联网辈分学：没了“哥姐爷总”，你领导还是你领导', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10220, 1613413504735, 1613413504735, '张一鸣该约龚宇聊聊了', 2020, 9, '世家');
INSERT INTO `archives`
VALUES (10222, 1613413504735, 1613413504735, '飞书的前世今生', 2020, 2, '世家');
INSERT INTO `archives`
VALUES (10224, 1613413504735, 1613413504735, '继东南亚“闲鱼”成准独角兽后，回看新加坡电商的机会', 2020, 10, '列传');
INSERT INTO `archives`
VALUES (10226, 1613413504735, 1613413504735, '百度自动驾驶初体验：就这？', 2020, 10, '世家');
INSERT INTO `archives`
VALUES (10228, 1613413504735, 1613413504735, '30亿英里自动驾驶里程，能否筑起特斯拉的数据护城河？_36氪', 2020, 4, '列传');
INSERT INTO `archives`
VALUES (10230, 1613413504735, 1613413504735, '从抖音到B站，塔罗短视频会是新的财富密码吗？', 2020, 10, '游侠');
INSERT INTO `archives`
VALUES (10232, 1613413504736, 1613413504736, '滴滴没忘掉快的，也没忘掉出租车司机', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10234, 1613413504736, 1613413504736, '拼多多在下沉市场遇到了新敌人', 2020, 10, '列传');
INSERT INTO `archives`
VALUES (10238, 1613413504736, 1613413504736, '青少年创造平台重启世界完成约3亿元B轮融资 愉悦资本参投_B轮融资_重启世界_愉悦资本_新浪科技_新浪网', 2020, 5, '列传');
INSERT INTO `archives`
VALUES (10240, 1613413504736, 1613413504736, '对话出门问问 CTO：在中国做个技术公司，你要面对哪些现实', 2020, 7, '列传');
INSERT INTO `archives`
VALUES (10242, 1613413504736, 1613413504736, '2020，那些硅谷返乡的创业者们丨深氪Lite', 2020, 10, '群像');
INSERT INTO `archives`
VALUES (10244, 1613413504736, 1613413504736, '当代职场胜利属于没家的人', 2020, 10, '群像');
INSERT INTO `archives`
VALUES (10246, 1613413504736, 1613413504736, 'RenrenBit创始人赵东疑被抓，OTC交易监管趋严——谁是下个被抓的大佬？-搜狐新闻', 2020, 7, '列传');
INSERT INTO `archives`
VALUES (10248, 1613413504736, 1613413504736, 'RenrenBit联合创始人就赵东协助调查一事发表公开信_新闻_鸵鸟区块链', 2020, 7, '列传');
INSERT INTO `archives`
VALUES (10250, 1613413504736, 1613413504736, '独家_OKEx暂停提币 创始人徐明星已被警方带走_金融频道_财新网', 2020, 10, '列传');
INSERT INTO `archives`
VALUES (10252, 1613413504737, 1613413504737, '底层程序员，出局', 2020, 10, '群像');
INSERT INTO `archives`
VALUES (10254, 1613413504737, 1613413504737, '这届清华都是首富', 2020, 10, '列传');
INSERT INTO `archives`
VALUES (10256, 1613413504737, 1613413504737, '谷歌无人车「成精」了：遇黄灯抢跑，淡定穿越人群', 2020, 10, '搜神');
INSERT INTO `archives`
VALUES (10258, 1613413504737, 1613413504737, 'How Discord Won – Ian Vanagas', 2020, 10, '搜神');
INSERT INTO `archives`
VALUES (10260, 1613413504737, 1613413504737, '独家 _ 松鼠拼拼食享会合并告吹，社区团购加速洗牌', 2019, 12, '列传');
INSERT INTO `archives`
VALUES (10262, 1613413504737, 1613413504737, '晚点早知道 _ 蚂蚁 IPO 最后一道障碍清除，阿里将参与认购', 2020, 10, '世家');
INSERT INTO `archives`
VALUES (10264, 1613413504737, 1613413504737, '华为的四大名著是什么,有多可怕？', 2018, 12, '世家');
INSERT INTO `archives`
VALUES (10266, 1613413504737, 1613413504737, '前50号员工内网开火，佛系宿华诊断狼性快手 _ 深网', 2020, 9, '列传');
INSERT INTO `archives`
VALUES (10268, 1613413504737, 1613413504737, '恢复试用IntelliJ IDEA', 2020, 10, '游侠');
INSERT INTO `archives`
VALUES (10270, 1613413504737, 1613413504737,
        'Manticore, A Roblox For Older Gamers, Raises $15 Million In New Funding Led By ‘Fortnite’-Maker Epic Games',
        2020, 9, '列传');
INSERT INTO `archives`
VALUES (10272, 1613413504737, 1613413504737, '蚂蚁集团上市前决战的6个月：代号、保密协议和加速度', 2020, 10, '世家');
INSERT INTO `archives`
VALUES (10274, 1613413504738, 1613413504738, '千亿“造富”盛宴B面：拆解蚂蚁上市背后的员工激励计划', 2020, 10, '世家');
INSERT INTO `archives`
VALUES (10276, 1613413504738, 1613413504738, '抖音内幕：时间熔炉的诞生', 2020, 10, '世家');
INSERT INTO `archives`
VALUES (10278, 1613413504738, 1613413504738, '8848王峻涛', 2020, 1, '游侠');
INSERT INTO `archives`
VALUES (10280, 1613413504738, 1613413504738, '做 VC 8年，33岁的我，要去拿张工科博士文凭', 2020, 10, '群像');
INSERT INTO `archives`
VALUES (10282, 1613413504738, 1613413504738, 'Quantopian’s Community Services are Closing', 2020, 10, '列传');
INSERT INTO `archives`
VALUES (10284, 1613413504738, 1613413504738, '脱口秀演员不够用了', 2017, 6, '游侠');
INSERT INTO `archives`
VALUES (10286, 1613413504738, 1613413504738, '音乐的黄金时代是说，MC天佑和朴树都值一套学区房', 2017, 5, '游侠');
INSERT INTO `archives`
VALUES (10290, 1613413504738, 1613413504738, '北上搵食顶硬上', 2017, 5, '游侠');
INSERT INTO `archives`
VALUES (10292, 1613413504743, 1613413504743, '要允许中国互联网适度腐败', 2017, 5, '游侠');
INSERT INTO `archives`
VALUES (10294, 1613413504743, 1613413504743, '侠之大者，和我们一起建设社会主义', 2017, 3, '游侠');
INSERT INTO `archives`
VALUES (10296, 1613413504743, 1613413504743, '卖给 BAT 要趁早', 2017, 4, '世家');
INSERT INTO `archives`
VALUES (10298, 1613413504743, 1613413504743, '做音乐是危险的，开淘宝店才是安全的', 2017, 4, '游侠');
INSERT INTO `archives`
VALUES (10300, 1613413504743, 1613413504743, '我们做不了徐静蕾，最多只能做咪蒙的助理', 2017, 3, '游侠');
INSERT INTO `archives`
VALUES (10302, 1613413504743, 1613413504743, '小米开始分房子了', 2017, 3, '列传');
INSERT INTO `archives`
VALUES (10304, 1613413504743, 1613413504743, '一位小米前员工的财务告白：期权如何处理让我纠结_小米_阿里_期权_新浪科技_新浪网', 2017, 3, '列传');
INSERT INTO `archives`
VALUES (10306, 1613413504743, 1613413504743, '央视一定会越办越好', 2017, 3, '游侠');
INSERT INTO `archives`
VALUES (10308, 1613413504744, 1613413504744, '刘涛的血汗钱', 2017, 3, '游侠');
INSERT INTO `archives`
VALUES (10310, 1613413504744, 1613413504744, '他们曾是共产主义接班人', 2017, 2, '列传');
INSERT INTO `archives`
VALUES (10312, 1613413504744, 1613413504744, '你们也配是农民的儿子？', 2017, 2, '世家');
INSERT INTO `archives`
VALUES (10314, 1613413504744, 1613413504744, '中国队长姚明', 2017, 3, '游侠');
INSERT INTO `archives`
VALUES (10316, 1613413504744, 1613413504744, '穷儿子，富儿子', 2017, 3, '搜神');
INSERT INTO `archives`
VALUES (10318, 1613413504744, 1613413504744, '我们欠麦当劳一张电影票', 2017, 1, '游侠');
INSERT INTO `archives`
VALUES (10320, 1613413504744, 1613413504744, '只有房地产才能拯救互联网', 2017, 1, '列传');
INSERT INTO `archives`
VALUES (10322, 1613413504744, 1613413504744, '走硅谷的路，让硅谷无路可走', 2017, 1, '世家');
INSERT INTO `archives`
VALUES (10324, 1613413504744, 1613413504744, '诺基亚有什么可怀念的？', 2017, 1, '列传');
INSERT INTO `archives`
VALUES (10326, 1613413504744, 1613413504744, '2016年过去了，没什么可怀念的', 2017, 1, '游侠');
INSERT INTO `archives`
VALUES (10328, 1613413504744, 1613413504744, '普罗米修斯消亡史', 2016, 12, '游侠');
INSERT INTO `archives`
VALUES (10330, 1613413504744, 1613413504744, '我们想要的不是微信小程序，是重新来过', 2016, 12, '世家');
INSERT INTO `archives`
VALUES (10332, 1613413504744, 1613413504744, '我们互联网这两年，消内普现，众自猪冬', 2016, 12, '群像');
INSERT INTO `archives`
VALUES (10334, 1613413504744, 1613413504744, '历史转折中的支付宝', 2016, 11, '世家');
INSERT INTO `archives`
VALUES (10336, 1613413504744, 1613413504744, '姑娘，我想要投资你', 2016, 11, '游侠');
INSERT INTO `archives`
VALUES (10338, 1613413504744, 1613413504744, '雷军的金锄头', 2016, 9, '列传');
INSERT INTO `archives`
VALUES (10340, 1613413504744, 1613413504744,
        'The Metaverse_ What It Is, Where to Find it, Who Will Build It, and Fortnite — MatthewBall.vc', 2020, 1, '群像');
INSERT INTO `archives`
VALUES (10342, 1613413504744, 1613413504744,
        'Invest Like the Best Podcast: The Metaverse, Future of Media + Movies, IP + Immersion', 2020, 1, '群像');
INSERT INTO `archives`
VALUES (10344, 1613413504745, 1613413504745, 'The Story of Twitter\'s Fail Whale', 2015, 1, '群像');
INSERT INTO `archives`
VALUES (10346, 1613413504745, 1613413504745, '这届世界互联网大会开得很好', 2016, 11, '群像');
INSERT INTO `archives`
VALUES (10348, 1613413504745, 1613413504745, '去不了腾讯，我们可以去乐视啊', 2016, 11, '列传');
INSERT INTO `archives`
VALUES (10350, 1613413504745, 1613413504745, '百度给李明远腐败的机会了吗？', 2016, 11, '世家');
INSERT INTO `archives`
VALUES (10352, 1613413504745, 1613413504745, '互联网公司都是什么行政级别的', 2016, 11, '世家');
INSERT INTO `archives`
VALUES (10354, 1613413504745, 1613413504745, '我喜欢鼓掌、喝酒、打篮球，我知道我能在大公司立足', 2016, 11, '群像');
INSERT INTO `archives`
VALUES (10356, 1613413504745, 1613413504745, '谁才是胡建之光', 2016, 9, '世家');
INSERT INTO `archives`
VALUES (10358, 1613413504745, 1613413504745, '你离开VC以后呢？', 2016, 10, '游侠');
INSERT INTO `archives`
VALUES (10360, 1613413504745, 1613413504745, '为什么我不做 VC 了？_详细解读_最新资讯_热点事件_36氪', 2016, 10, '游侠');
INSERT INTO `archives`
VALUES (10362, 1613413504745, 1613413504745, '这个世界上的投资人太多，文学奖太少', 2016, 10, '游侠');
INSERT INTO `archives`
VALUES (10364, 1613413504745, 1613413504745, '程序员的黄金时代', 2016, 9, '群像');
INSERT INTO `archives`
VALUES (10366, 1613413504745, 1613413504745, '这个村里应该有座庙的', 2016, 10, '群像');
INSERT INTO `archives`
VALUES (10368, 1613413504745, 1613413504745, '每个老板心里都住着一个郭德纲', 2016, 9, '列传');
INSERT INTO `archives`
VALUES (10370, 1613413504745, 1613413504745, '创业者变坏是从他们不听摇滚开始的', 2016, 9, '游侠');
INSERT INTO `archives`
VALUES (10372, 1613413504745, 1613413504745, '等你死了，他们好写10万_，好在朋友圈里转发', 2016, 9, '游侠');
INSERT INTO `archives`
VALUES (10374, 1613413504745, 1613413504745, '爸，我来给你充Q币了', 2016, 11, '游侠');
INSERT INTO `archives`
VALUES (10376, 1613413504745, 1613413504745, '百度的马博士要回来了', 2016, 10, '世家');
INSERT INTO `archives`
VALUES (10378, 1613413504746, 1613413504746, '反动技术权威冯大辉', 2016, 8, '游侠');
INSERT INTO `archives`
VALUES (10380, 1613413504746, 1613413504746, '冯大辉到底是不是技术大牛？ 一个程序员眼中的 Fenng - 今日鸡汤：你的心灵老鸭汤', 2016, 8, '游侠');
INSERT INTO `archives`
VALUES (10382, 1613413504746, 1613413504746, '一个不写代码不称职被扒皮的水货 CTO 的自白', 2016, 8, '游侠');
INSERT INTO `archives`
VALUES (10384, 1613413504746, 1613413504746, '北京早已折叠', 2016, 8, '游侠');
INSERT INTO `archives`
VALUES (10386, 1613413504746, 1613413504746, '不是针对YC，我是说在座的孵化器都是辣鸡', 2016, 8, '群像');
INSERT INTO `archives`
VALUES (10388, 1613413504746, 1613413504746, '这内容创业的盛世，如你所愿', 2016, 8, '游侠');
INSERT INTO `archives`
VALUES (10390, 1613413504746, 1613413504746, 'Google 离开那年，马化腾差点抓到了周鸿祎', 2017, 4, '群像');
INSERT INTO `archives`
VALUES (10392, 1613413504746, 1613413504746, '做产品经理前，户口应该先迁到湖南', 2017, 4, '游侠');
INSERT INTO `archives`
VALUES (10394, 1613413504746, 1613413504746, '娃娃是用来爱的', 2016, 12, '游侠');
INSERT INTO `archives`
VALUES (10396, 1613413504746, 1613413504746, 'Uber中国被合并后的48小时，以及他们拼搏过的900个日夜_详细解读_最新资讯_热点事件_36氪', 2016, 8, '列传');
INSERT INTO `archives`
VALUES (10398, 1613413504746, 1613413504746, '我用实习工资买了个Uber牌的包', 2016, 8, '列传');
INSERT INTO `archives`
VALUES (10400, 1613413504746, 1613413504746, '我开成人体验馆的二三事', 2020, 8, '游侠');
INSERT INTO `archives`
VALUES (10402, 1613413504747, 1613413504747, '说出来你们可能不信，从前支付宝是用来支付的', 2016, 8, '世家');
INSERT INTO `archives`
VALUES (10404, 1613413504747, 1613413504747, '生而骄傲：那些年轻人的Uber', 2016, 8, '列传');
INSERT INTO `archives`
VALUES (10406, 1613413504747, 1613413504747, '百度用户体验总监刘超下课，HR内部贴称其“给百度同学造成严重伤害”', 2016, 7, '世家');
INSERT INTO `archives`
VALUES (10408, 1613413504747, 1613413504747, '每一遍我都选择成为王俊煜', 2016, 7, '列传');
INSERT INTO `archives`
VALUES (10410, 1613413504747, 1613413504747, '副局座马云', 2016, 6, '世家');
INSERT INTO `archives`
VALUES (10412, 1613413504747, 1613413504747, '作为一个技术合伙人，如果碰到了这样的公司这样的事情，你该怎么办？', 2019, 3, '列传');
INSERT INTO `archives`
VALUES (10414, 1613413504748, 1613413504748, '纪念青云君：一只VC圈内的Animal', 2016, 6, '游侠');
INSERT INTO `archives`
VALUES (10416, 1613413504748, 1613413504748, '总有媒体想要害朕', 2016, 6, '群像');
INSERT INTO `archives`
VALUES (10418, 1613413504748, 1613413504748, '因报道明星衣橱负面，记者家人遭抹黑攻击！ ', 2016, 6, '游侠');
INSERT INTO `archives`
VALUES (10420, 1613413504748, 1613413504748, '铁岭的独角兽，天通苑的张小龙', 2016, 7, '列传');
INSERT INTO `archives`
VALUES (10422, 1613413504748, 1613413504748, '90后创业者遇到90后特稿记者', 2016, 5, '游侠');
INSERT INTO `archives`
VALUES (10424, 1613413504748, 1613413504748, '如果媒体说你的公司不行了', 2016, 8, '群像');
INSERT INTO `archives`
VALUES (10426, 1613413504748, 1613413504748, '错失1800万投资之后，他用900元挽救了公司', 2016, 7, '游侠');
INSERT INTO `archives`
VALUES (10428, 1613413504748, 1613413504748, '潘乱复盘快手', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10430, 1613413504748, 1613413504748, '京东的当权派已被打倒', 2016, 8, '列传');
INSERT INTO `archives`
VALUES (10432, 1613413504748, 1613413504748, '征途团队被挖后 陈天桥曾痛心疾首（图） _ 速途网', 2010, 4, '游侠');
INSERT INTO `archives`
VALUES (10434, 1613413504749, 1613413504749, '距离张小龙就差一个和菜头了', 2017, 3, '世家');
INSERT INTO `archives`
VALUES (10436, 1613413504749, 1613413504749, 'Master这么风光，我看就很危险', 2017, 1, '搜神');
INSERT INTO `archives`
VALUES (10438, 1613413504749, 1613413504749, '中国互联网公司里的“清华帮”', 2017, 8, '群像');
INSERT INTO `archives`
VALUES (10440, 1613413504749, 1613413504749, '成为李彦宏', 2016, 12, '世家');
INSERT INTO `archives`
VALUES (10442, 1613413504749, 1613413504749, '俞永福：我不是太子', 2016, 12, '世家');
INSERT INTO `archives`
VALUES (10444, 1613413504749, 1613413504749, '创业者开始担心政治空气了吗？', 2016, 6, '群像');
INSERT INTO `archives`
VALUES (10446, 1613413504749, 1613413504749, '马云是被阿里巴巴给耽误了', 2017, 4, '世家');
INSERT INTO `archives`
VALUES (10448, 1613413504749, 1613413504749, '80后会有下半场吗？', 2018, 2, '群像');
INSERT INTO `archives`
VALUES (10450, 1613413504749, 1613413504749, '我学历造假，我侵权违约，但我知道我是好主播', 2017, 9, '游侠');
INSERT INTO `archives`
VALUES (10452, 1613413504749, 1613413504749, '神曲之死', 2016, 12, '游侠');
INSERT INTO `archives`
VALUES (10454, 1613413504750, 1613413504750, '为什么不能和阿里巴巴好好说话呢？ _ 爱范儿', 2017, 7, '世家');
INSERT INTO `archives`
VALUES (10456, 1613413504750, 1613413504750, '专业陪跑的除了小李子，还有张朝阳', 2016, 3, '列传');
INSERT INTO `archives`
VALUES (10458, 1613413504750, 1613413504750, '陈天桥其实是买的长生不老药', 2016, 12, '列传');
INSERT INTO `archives`
VALUES (10460, 1613413504750, 1613413504750, '空空狐余小丹回应周亚辉', 2017, 5, '游侠');
INSERT INTO `archives`
VALUES (10462, 1613413504750, 1613413504750, '王思聪消失的100天', 2017, 8, '游侠');
INSERT INTO `archives`
VALUES (10464, 1613413504750, 1613413504750, '谁人不识朱啸虎', 2017, 6, '列传');
INSERT INTO `archives`
VALUES (10466, 1613413504750, 1613413504750, '朱啸虎：投资人不看那么远，我只看六个月-钛媒体官方网站', 2017, 5, '列传');
INSERT INTO `archives`
VALUES (10468, 1613413504750, 1613413504750, '像咪蒙一样红过', 2017, 6, '游侠');
INSERT INTO `archives`
VALUES (10470, 1613413504750, 1613413504750, '写微信公众号的都是下九流 / 媒体从本质上讲是一个皮肉生意', 2017, 5, '游侠');
INSERT INTO `archives`
VALUES (10472, 1613413504750, 1613413504750, '关于地震的回忆', 2017, 5, '游侠');
INSERT INTO `archives`
VALUES (10474, 1613413504750, 1613413504750, '广告狂人的时代过去了', 2017, 10, '群像');
INSERT INTO `archives`
VALUES (10476, 1613413504750, 1613413504750, '崔健也拍过一部《芳华》', 2017, 12, '游侠');
INSERT INTO `archives`
VALUES (10478, 1613413504750, 1613413504750, '周鸿祎自传里没讲的事情', 2017, 11, '列传');
INSERT INTO `archives`
VALUES (10480, 1613413504751, 1613413504751, '傅盛口述360安全卫士历史：我不是林彪_科技_腾讯网', 2011, 10, '列传');
INSERT INTO `archives`
VALUES (10482, 1613413504751, 1613413504751, '我觉得李笑来OK，我觉得不行', 2017, 8, '列传');
INSERT INTO `archives`
VALUES (10484, 1613413504751, 1613413504751, '马化腾讲话，香港人可能会听', 2017, 7, '列传');
INSERT INTO `archives`
VALUES (10486, 1613413504751, 1613413504751, '我们听的都是假民谣', 2017, 12, '游侠');
INSERT INTO `archives`
VALUES (10488, 1613413504751, 1613413504751, '网综还是电视台的人做的', 2018, 8, '游侠');
INSERT INTO `archives`
VALUES (10490, 1613413504751, 1613413504751, '老编辑要买房 _ 编辑部的故事S01E02', 2018, 2, '游侠');
INSERT INTO `archives`
VALUES (10492, 1613413504751, 1613413504751, '出四川记', 2018, 6, '游侠');
INSERT INTO `archives`
VALUES (10494, 1613413504751, 1613413504751, '中年人就应该买房、开店、炒股 _ 编辑部的故事', 2017, 11, '游侠');
INSERT INTO `archives`
VALUES (10496, 1613413504751, 1613413504751, '创始人离奇被捕，深圳赛龙突然死亡之谜｜钛媒体独家-钛媒体官方网站', 2017, 10, '游侠');
INSERT INTO `archives`
VALUES (10498, 1613413504752, 1613413504752, '《三体》后传：中国最伟大科幻 IP 十年的商业流浪', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10500, 1613413504752, 1613413504752, '将改革进行到底', 2017, 10, '列传');
INSERT INTO `archives`
VALUES (10502, 1613413504752, 1613413504752, '为什么电竞也会恐韩？', 2017, 11, '游侠');
INSERT INTO `archives`
VALUES (10504, 1613413504752, 1613413504752, '董明珠还想再干一届', 2017, 11, '列传');
INSERT INTO `archives`
VALUES (10506, 1613413504752, 1613413504752, '张小龙是我们的柯洁', 2018, 1, '世家');
INSERT INTO `archives`
VALUES (10508, 1613413504752, 1613413504752, '互联网公司一定要关心困难群众 _ 老编辑3分钟', 2017, 8, '游侠');
INSERT INTO `archives`
VALUES (10510, 1613413504752, 1613413504752, '了不起的郭茨比', 2017, 8, '列传');
INSERT INTO `archives`
VALUES (10512, 1613413504752, 1613413504752, '心照不宣', 2017, 9, '游侠');
INSERT INTO `archives`
VALUES (10514, 1613413504752, 1613413504752, '滴滴姓什么？ _ 爱范儿', 2016, 8, '列传');
INSERT INTO `archives`
VALUES (10516, 1613413504752, 1613413504752, '政治大年看张黎', 2017, 4, '游侠');
INSERT INTO `archives`
VALUES (10518, 1613413504752, 1613413504752, '都怪papi酱划错了春晚的重点', 2017, 1, '游侠');
INSERT INTO `archives`
VALUES (10520, 1613413504752, 1613413504752, '杭州往事', 2017, 7, '世家');
INSERT INTO `archives`
VALUES (10522, 1613413504752, 1613413504752, '四个月四个爆款，小作坊游戏正在接连攻占 Steam 热门榜头部', 2020, 11, '群像');
INSERT INTO `archives`
VALUES (10524, 1613413504753, 1613413504753, '晚点独家 _ 字节将电商列为明年头号孵化项目，将进一步整合', 2020, 11, '世家');
INSERT INTO `archives`
VALUES (10526, 1613413504753, 1613413504753, '黄金时代的中国企业家', 2018, 3, '群像');
INSERT INTO `archives`
VALUES (10528, 1613413504753, 1613413504753, '谁是带头大哥？', 2017, 10, '游侠');
INSERT INTO `archives`
VALUES (10530, 1613413504753, 1613413504753, '唯恐慌与雾霾不可避免', 2017, 9, '群像');
INSERT INTO `archives`
VALUES (10532, 1613413504753, 1613413504753, 'ABC係我係我', 2017, 9, '游侠');
INSERT INTO `archives`
VALUES (10534, 1613413504753, 1613413504753, '你得多成功才敢娶罗子君 _ 包小姐3分钟', 2017, 7, '游侠');
INSERT INTO `archives`
VALUES (10536, 1613413504753, 1613413504753, '互联网大厂的厕所难题', 2020, 11, '群像');
INSERT INTO `archives`
VALUES (10538, 1613413504753, 1613413504753, '刘强东朋友圈回应996：_混日子的人不是我的兄弟__创业_网易科技', 2019, 4, '列传');
INSERT INTO `archives`
VALUES (10540, 1613413504753, 1613413504753, 'A Better Tomorrow：英雄本色31年_界面新闻 · JMedia', 2017, 11, '群像');
INSERT INTO `archives`
VALUES (10542, 1613413504753, 1613413504753, '腾讯的成年焦虑——马化腾专访_腾讯_陈晓萍_马化腾_新浪财经_新浪网', 2017, 6, '世家');
INSERT INTO `archives`
VALUES (10544, 1613413504753, 1613413504753, '老沉的奋斗_界面新闻 · JMedia', 2016, 11, '游侠');
INSERT INTO `archives`
VALUES (10546, 1613413504754, 1613413504754, '对对对，你们都是业内 - 知乎', 2018, 4, '列传');
INSERT INTO `archives`
VALUES (10548, 1613413504754, 1613413504754, '聊聊阿里的内部创新机制——赛马 _ 人人都是产品经理——iamsujie', 2013, 11, '世家');
INSERT INTO `archives`
VALUES (10550, 1613413504754, 1613413504754, '单款广告流水超3.5亿，蓝飞COO周巍：希望不做广告平台的打工人', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10552, 1613413504754, 1613413504754, '邢山虎感受到丁磊发出的洪荒之力_界面新闻', 2016, 8, '列传');
INSERT INTO `archives`
VALUES (10554, 1613413504754, 1613413504754, '数字技术正在成为非洲经济的尖刀 _ 积遇非洲', 2020, 11, '群像');
INSERT INTO `archives`
VALUES (10556, 1613413504754, 1613413504754, '编程猫完成13亿元D轮融资', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10558, 1613413504754, 1613413504754, '徐小平：完美日记的“创业经验主义”', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10560, 1613413504754, 1613413504754, '2020游戏公司转型潮：谁会掉队？谁有机会？', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10562, 1613413504754, 1613413504754, '未来之路：从游戏到AGI，Metaverse与机器人革命 - 知乎', 2020, 10, '游侠');
INSERT INTO `archives`
VALUES (10564, 1613413504754, 1613413504754, '独家对话浑水创始人：调查欢聚持续一年，接下来百度有两个选择 _ 棱镜', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10566, 1613413504754, 1613413504754, '一名网瘾老头的游戏晚年', 2020, 11, '群像');
INSERT INTO `archives`
VALUES (10568, 1613413504754, 1613413504754, '跟谁学三季报，一场在线教育的退潮', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10570, 1613413504754, 1613413504754, '宝宝树，1.5亿用户的流量陷阱', 2019, 10, '列传');
INSERT INTO `archives`
VALUES (10572, 1613413504754, 1613413504754, '朱敏袁征赵斌和 WebEx 创业黑帮_手机搜狐网', 2019, 5, '列传');
INSERT INTO `archives`
VALUES (10574, 1613413504755, 1613413504755, '做得一手好病毒，不如给Wannacry当客服_界面新闻 · JMedia', 2017, 1, '游侠');
INSERT INTO `archives`
VALUES (10576, 1613413504755, 1613413504755, '中产阶级的身份是不能世袭的 _ 老编辑3分钟 - 老道消息 - 微信公众号文章', 2017, 4, '群像');
INSERT INTO `archives`
VALUES (10578, 1613413504755, 1613413504755, '我哪里配读红楼梦呢 - 老道消息 - 微信公众号文章', 2017, 3, '群像');
INSERT INTO `archives`
VALUES (10580, 1613413504755, 1613413504755, '中国的鲍勃·迪伦，赵红雷委员的故事 _ 周末漫画 - 老道消息 - 微信公众号文章', 2017, 3, '游侠');
INSERT INTO `archives`
VALUES (10582, 1613413504755, 1613413504755, '我推荐咪蒙和MC天佑进下一届政协 - 老道消息 - 微信公众号文章', 2017, 3, '游侠');
INSERT INTO `archives`
VALUES (10584, 1613413504755, 1613413504755, '阿里不懂优酷？', 2020, 11, '世家');
INSERT INTO `archives`
VALUES (10586, 1613413504755, 1613413504755, '字节跳动的失意版图', 2020, 11, '世家');
INSERT INTO `archives`
VALUES (10588, 1613413504755, 1613413504755, '年輕人，錢不是這麼花的', 2019, 4, '群像');
INSERT INTO `archives`
VALUES (10590, 1613413504755, 1613413504755, '张一鸣站台、投入超10亿补贴，悟空问答为何沦为第一款被“战略放弃”的产品？_详细解读_最新资讯_热点事件_36氪', 2018, 8, '世家');
INSERT INTO `archives`
VALUES (10592, 1613413504755, 1613413504755, '不要开穆斯林的玩笑 _ 自由微信 _ FreeWeChat', 2016, 10, '游侠');
INSERT INTO `archives`
VALUES (10594, 1613413504755, 1613413504755, '没人说不让我拍啊 - 老道消息 - 微信公众号文章', 2017, 10, '列传');
INSERT INTO `archives`
VALUES (10596, 1613413504755, 1613413504755, '与冯裤子有关的日子', 2016, 11, '列传');
INSERT INTO `archives`
VALUES (10598, 1613413504755, 1613413504755, '与王朔有关的日子', 2018, 5, '游侠');
INSERT INTO `archives`
VALUES (10600, 1613413504755, 1613413504755, '你们这些央视主持人啊，总想搞个大新闻', 2016, 10, '群像');
INSERT INTO `archives`
VALUES (10602, 1613413504755, 1613413504755, '应届毕业生进入互联网应该选择什么样的工作？ _ 自由微信 _ FreeWeChat', 2016, 11, '世家');
INSERT INTO `archives`
VALUES (10604, 1613413504755, 1613413504755, '马云，做你的灵魂歌手啊！', 2016, 10, '世家');
INSERT INTO `archives`
VALUES (10606, 1613413504756, 1613413504756, '锤子发布会看到一半我就准备好钱了 _ 自由微信 _ FreeWeChat', 2016, 10, '列传');
INSERT INTO `archives`
VALUES (10608, 1613413504756, 1613413504756, '史万佳老师，今天的10万+刷不出来了 | 不上班漫画', 2016, 9, '游侠');
INSERT INTO `archives`
VALUES (10610, 1613413504756, 1613413504756, '坏消息是陈冠希骂了林志玲，好消息是雷军不搞直播了 _ 自由微信 _ FreeWeChat', 2016, 5, '列传');
INSERT INTO `archives`
VALUES (10612, 1613413504756, 1613413504756, '把新闻当剧本写能拯救穷逼的记者吗？ _ 自由微信 _ FreeWeChat', 2016, 4, '游侠');
INSERT INTO `archives`
VALUES (10614, 1613413504756, 1613413504756, '乐视和“合伙人”的友谊小船会不会说翻就翻？ _ 自由微信 _ FreeWeChat', 2016, 4, '列传');
INSERT INTO `archives`
VALUES (10616, 1613413504756, 1613413504756, '李彦宏的父爱小船真是说翻就翻啊 _ 自由微信 _ FreeWeChat', 2016, 4, '世家');
INSERT INTO `archives`
VALUES (10618, 1613413504756, 1613413504756, '中关村米其淋美食指南正式发布 _ 自由微信 _ FreeWeChat', 2016, 9, '群像');
INSERT INTO `archives`
VALUES (10620, 1613413504756, 1613413504756, '全世界的键盘党联合起来 _ 自由微信 _ FreeWeChat', 2016, 11, '群像');
INSERT INTO `archives`
VALUES (10622, 1613413504756, 1613413504756, '中国没有Space X怪谁？ _ 自由微信 _ FreeWeChat', 2016, 4, '搜神');
INSERT INTO `archives`
VALUES (10624, 1613413504756, 1613413504756, '看不惯川普，也要和川普一起建设美国特色的资本主义 - 老道消息 - 微信公众号文章', 2016, 11, '群像');
INSERT INTO `archives`
VALUES (10626, 1613413504756, 1613413504756, '2万亿蚂蚁暂停上市、退钱的内幕，今天终于能说了，背后博弈的水太深', 2020, 11, '世家');
INSERT INTO `archives`
VALUES (10628, 1613413504756, 1613413504756, '库克船长的黄昏 _ 自由微信 _ FreeWeChat', 2016, 5, '搜神');
INSERT INTO `archives`
VALUES (10630, 1613413504756, 1613413504756, '卓伟怎么不行了？ - 老道消息 - 微信公众号文章', 2016, 11, '游侠');
INSERT INTO `archives`
VALUES (10632, 1613413504756, 1613413504756, '除了《颈椎病康复指南》，程序员床头还应该放一本毛选 - 老道消息 - 微信公众号文章', 2016, 9, '群像');
INSERT INTO `archives`
VALUES (10634, 1613413504756, 1613413504756, '雷军说，小米是电商_详细解读_最新资讯_热点事件_36氪', 2015, 4, '列传');
INSERT INTO `archives`
VALUES (10636, 1613413504757, 1613413504757, '58同城姚劲波：过去一年是我们在追求赶集_详细解读_最新资讯_热点事件_36氪', 2015, 4, '列传');
INSERT INTO `archives`
VALUES (10638, 1613413504757, 1613413504757, '十五年了，泡沫什么时候再来啊？_详细解读_最新资讯_热点事件_36氪', 2015, 5, '群像');
INSERT INTO `archives`
VALUES (10640, 1613413504757, 1613413504757, '张朝阳和丁磊的“微信”都是新闻客户端_详细解读_最新资讯_热点事件_36氪', 2015, 3, '列传');
INSERT INTO `archives`
VALUES (10642, 1613413504757, 1613413504757, 'DST从京东身上赚到了20亿美元，然后都花在哪了？_详细解读_最新资讯_热点事件_36氪', 2015, 4, '列传');
INSERT INTO `archives`
VALUES (10644, 1613413504757, 1613413504757, '创业16年，天涯终于要带伤上市了_详细解读_最新资讯_热点事件_36氪', 2015, 5, '列传');
INSERT INTO `archives`
VALUES (10646, 1613413504757, 1613413504757, '陆兆禧，阿里CEO这两年_详细解读_最新资讯_热点事件_36氪', 2015, 5, '世家');
INSERT INTO `archives`
VALUES (10648, 1613413504757, 1613413504757, '李开复、蔡文胜、徐小平再聚首，想让投资变得更简单_详细解读_最新资讯_热点事件_36氪', 2015, 5, '列传');
INSERT INTO `archives`
VALUES (10650, 1613413504757, 1613413504757, '1.3亿元卖掉了“半个暴风影音”，迅雷你后悔吗？_详细解读_最新资讯_热点事件_36氪', 2015, 5, '列传');
INSERT INTO `archives`
VALUES (10652, 1613413504757, 1613413504757, '从死亡诗社到新东方_详细解读_最新资讯_热点事件_36氪', 2015, 6, '列传');
INSERT INTO `archives`
VALUES (10654, 1613413504757, 1613413504757, '晚点独家 _ 兴盛优选开启新一轮融资，留给社区团购创业公司的时间已经不多', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10656, 1613413504757, 1613413504757, '晚点独家 _ 刘强东亲自下场，带队社区团购；字节商业化架构调整；滴滴海外出行业务日均 500 万单；字节来了一名新高管', 2020, 12,
        '世家');
INSERT INTO `archives`
VALUES (10658, 1613413504757, 1613413504757, '长视频战争：十年 1000 亿人民币，烧出了三家电视台', 2020, 12, '世家');
INSERT INTO `archives`
VALUES (10660, 1613413504757, 1613413504757, '二本学生「逃离」双选会', 2020, 12, '群像');
INSERT INTO `archives`
VALUES (10662, 1613413504757, 1613413504757, '腾讯总办里的局外人 _ 故事硬核', 2020, 12, '世家');
INSERT INTO `archives`
VALUES (10664, 1613413504757, 1613413504757, '47岁，他做出湖南第一家互联网独角兽_手机新浪网', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10666, 1613413504758, 1613413504758, '饭圈注水，豆瓣崩溃', 2020, 12, '群像');
INSERT INTO `archives`
VALUES (10668, 1613413504758, 1613413504758, '创投圈去魅', 2018, 5, '列传');
INSERT INTO `archives`
VALUES (10670, 1613413504758, 1613413504758, 'XVC胡博予：VC和创业一样是个反人性的职业 - 知乎', 2017, 11, '列传');
INSERT INTO `archives`
VALUES (10674, 1613413504758, 1613413504758, '每日优鲜徐正口述：4年时间我看透了零售，融了4.5亿美金_凤凰网', 2018, 11, '列传');
INSERT INTO `archives`
VALUES (10676, 1613413504758, 1613413504758, '“互联网投行化”的警示 — Maxwell Zhou', 2018, 2, '列传');
INSERT INTO `archives`
VALUES (10678, 1613413504758, 1613413504758, '周喆吾：错过了移动互联网十年，年轻人不想洗洗睡，还有机会吗？ - 知乎', 2018, 10, '列传');
INSERT INTO `archives`
VALUES (10680, 1613413504758, 1613413504758, 'PKQ逻辑 - 商业笔记 — Maxwell Zhou', 2018, 8, '列传');
INSERT INTO `archives`
VALUES (10682, 1613413504758, 1613413504758, '「真人在线免费答题」背后，一个新赛道的崛起', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10684, 1613413504758, 1613413504758, '围猎600万家夫妻老婆店', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10686, 1613413504758, 1613413504758, '拼多多为什么崛起？这是目前解读最深刻的一篇_拼多多_商业模式_分析_新浪科技_新浪网', 2018, 8, '列传');
INSERT INTO `archives`
VALUES (10688, 1613413504758, 1613413504758, '趣头条现状：在高速侧行中换车轮-虎嗅网', 2018, 3, '列传');
INSERT INTO `archives`
VALUES (10690, 1613413504758, 1613413504758, '来自《22岁年薪150万》作者Denny的一封信', 2014, 7, '列传');
INSERT INTO `archives`
VALUES (10692, 1613413504758, 1613413504758, 'Forrest Li’s Sea Story 李小冬与冬海集团的故事', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10694, 1613413504758, 1613413504758, '快手投资 & 战略岗位面经', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10696, 1613413504758, 1613413504758, '移动互联网十年 _ 爱范儿', 2018, 9, '群像');
INSERT INTO `archives`
VALUES (10698, 1613413504758, 1613413504758, '今年的乌镇静悄悄', 2020, 12, '世家');
INSERT INTO `archives`
VALUES (10700, 1613413504758, 1613413504758, '印度尼西亚：中国短视频平台的新战场', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10702, 1613413504759, 1613413504759, '疫情如何影响欧美色情行业？', 2020, 12, '群像');
INSERT INTO `archives`
VALUES (10704, 1613413504759, 1613413504759, '如何击穿品质和创新的火线，五周年的CF手游有话说', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10706, 1613413504759, 1613413504759, '华人创立的Doordash上市了，数数地里这些offer值多少钱', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10708, 1613413504759, 1613413504759, '我玩了50个小时的《赛博朋克2077》：没有超纲，但足够充实', 2020, 12, '游侠');
INSERT INTO `archives`
VALUES (10710, 1613413504759, 1613413504759, '脑控电脑正在成为现实，但重大障碍仍然存在', 2020, 12, '游侠');
INSERT INTO `archives`
VALUES (10712, 1613413504759, 1613413504759, '晚点独家 _ 快手组织大调整，成立新一届经管委；张一鸣说2021字节三大业务重点是跨境电商、2B和办公硬件；哈啰出行放弃社区团购', 2020,
        12, '世家');
INSERT INTO `archives`
VALUES (10714, 1613413504759, 1613413504759, '挖了一下快手招股书，发现创始人薪酬是……', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10716, 1613413504759, 1613413504759, '对话投资人刘芹：认知不够，才不敢做疯狂的事', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10718, 1613413504759, 1613413504759, '腾讯游戏错过《原神》', 2020, 12, '世家');
INSERT INTO `archives`
VALUES (10720, 1613413504759, 1613413504759, '《赛博朋克2077》：预谋已久的狂欢，蓄势欲动的风潮', 2020, 12, '游侠');
INSERT INTO `archives`
VALUES (10722, 1613413504759, 1613413504759, '社区设计指南 V0.2', 2020, 10, '群像');
INSERT INTO `archives`
VALUES (10724, 1613413504759, 1613413504759, 'KFC即将推出的“全家桶主机”，发售日跳票至12月18日', 2020, 12, '游侠');
INSERT INTO `archives`
VALUES (10726, 1613413504759, 1613413504759, '不要动不动就说资本作恶', 2020, 12, '游侠');
INSERT INTO `archives`
VALUES (10728, 1613413504759, 1613413504759, '王慧文_组织能力只服阿里 支撑这么多业务还不出乱子_王慧文_下半场_乱子_新浪科技_新浪网', 2018, 11, '列传');
INSERT INTO `archives`
VALUES (10732, 1613413504759, 1613413504759, '一代宅男“老司机”变成泛娱乐投资一哥，红杉曹曦是怎么投出斗鱼、懂球帝、英雄互娱的？ - 创业ABC - 创业邦', 2016, 5, '列传');
INSERT INTO `archives`
VALUES (10734, 1613413504759, 1613413504759, '《杀马特，我爱你》与残酷青春', 2020, 12, '群像');
INSERT INTO `archives`
VALUES (10736, 1613413504759, 1613413504759, '中芯国际「宫斗」背后，也是一部半导体成长史 _ 知料', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10738, 1613413504759, 1613413504759, '怎样看待腾讯 CTO 张志东离职？ - 知乎', 2019, 8, '世家');
INSERT INTO `archives`
VALUES (10740, 1613413504760, 1613413504760, '中国最大烂尾楼：世界第一高楼“天空之城”的功过成败__财经头条', 2016, 7, '游侠');
INSERT INTO `archives`
VALUES (10742, 1613413504760, 1613413504760, 'Memos · Anti-Portfolio · Bessemer Venture Partners', 2020, 0, '搜神');
INSERT INTO `archives`
VALUES (10744, 1613413504760, 1613413504760, '即刻搜索_百度百科', 2014, 3, '游侠');
INSERT INTO `archives`
VALUES (10746, 1613413504760, 1613413504760, '比特大陆大分拆启动：詹克团回归 吴忌寒携B池小鹿现金退出（比特大陆系列26）', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10748, 1613413504760, 1613413504760, '比特大陆谈判细节曝光！吴詹双方或将走向妥协_比特大陆_新浪财经_新浪网', 2020, 6, '列传');
INSERT INTO `archives`
VALUES (10750, 1613413504760, 1613413504760, '美团联合创始人王慧文：清华大学《互联网产品管理课》', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10752, 1613413504760, 1613413504760, '美团点评王慧文：互联网有AB面 最惨烈战争发生在B2_美团_王慧文_互联网_新浪科技_新浪网', 2017, 12, '列传');
INSERT INTO `archives`
VALUES (10754, 1613413504760, 1613413504760, '马佳佳：一“泡”而红之后 - 知乎', 2018, 2, '游侠');
INSERT INTO `archives`
VALUES (10756, 1613413504760, 1613413504760, '美团王慧文万字内部讲话：20年 to C，20年 to B _ 人人都是产品经理', 2018, 12, '列传');
INSERT INTO `archives`
VALUES (10758, 1613413504760, 1613413504760, '虚拟UP主 - 萌娘百科 万物皆可萌的百科全书', 2020, 12, '群像');
INSERT INTO `archives`
VALUES (10762, 1613413504760, 1613413504760, '光源资本郑烜乐：突围移动互联网下半场——以终为始，合纵连横 _ 光源观点', 2020, 11, '列传');
INSERT INTO `archives`
VALUES (10764, 1613413504760, 1613413504760, '腾讯第10款社交产品上线，简版「陌陌」有戏吗？', 2020, 12, '世家');
INSERT INTO `archives`
VALUES (10766, 1613413504760, 1613413504760, '高榕募资超100亿元，LP们捧张震真是捧对人了 _ 投中网', 2020, 10, '列传');
INSERT INTO `archives`
VALUES (10768, 1613413504761, 1613413504761, '陌陌 CEO 王力觉得这篇对话大家不看也没关系', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10770, 1613413504761, 1613413504761, '刚刚公告，游族网络39岁董事长因病救治无效逝世！公司发文悼念：再见少年', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10774, 1613413504761, 1613413504761, '估值70亿美元，Discord的诞生竟然又是因为做游戏太失败？', 2020, 12, '搜神');
INSERT INTO `archives`
VALUES (10776, 1613413504761, 1613413504761, '超70亿NPC！这个奇葩模拟游戏在Reddit爆火', 2020, 12, '搜神');
INSERT INTO `archives`
VALUES (10778, 1613413504761, 1613413504761, '千万不要学习陆奇丨底片', 2020, 12, '搜神');
INSERT INTO `archives`
VALUES (10780, 1613413504761, 1613413504761, 'The Observer Effect – Tobi Lütke', 2020, 12, '搜神');
INSERT INTO `archives`
VALUES (10782, 1613413504761, 1613413504761, 'Making Humans a Multi-Planetary Species', 2017, 0, '搜神');
INSERT INTO `archives`
VALUES (10784, 1613413504761, 1613413504761, '专访B站COO李旎：B站如何健康增长三十年？', 2020, 12, '列传');
INSERT INTO `archives`
VALUES (10786, 1613413504761, 1613413504761, '魅族的“三剑客”-虎嗅网', 2017, 12, '列传');
INSERT INTO `archives`
VALUES (10788, 1613413504761, 1613413504761, '东三环的中年“焦虑”', 2021, 1, '群像');
INSERT INTO `archives`
VALUES (10790, 1613413504761, 1613413504761, '用户五千、估值过亿，社交新贵 Clubhouse 席卷硅谷', 2020, 5, '搜神');
INSERT INTO `archives`
VALUES (10792, 1613413504761, 1613413504761, '谁来拯救阿里大文娱？', 2019, 4, '世家');
INSERT INTO `archives`
VALUES (10794, 1613413504761, 1613413504761, 'OpenAI祭出120亿参数魔法模型！从文本合成图像栩栩如生，仿佛拥有人类的语言想象力', 2021, 1, '搜神');
INSERT INTO `archives`
VALUES (10796, 1613413504761, 1613413504761, '傅盛：悬崖边的反思', 2020, 3, '列传');
INSERT INTO `archives`
VALUES (10798, 1613413504761, 1613413504761, '从奥利给大叔到快手女团，快手的破圈运动', 2020, 7, '列传');
INSERT INTO `archives`
VALUES (10800, 1613413504761, 1613413504761, 'BIGO：全球化夹缝中的生存冠军', 2020, 4, '搜神');
INSERT INTO `archives`
VALUES (10802, 1613413504761, 1613413504761, '危机时刻：互联网公司IPO大撤退', 2020, 4, '群像');
INSERT INTO `archives`
VALUES (10804, 1613413504762, 1613413504762, '中国科学技术发展战略研究院 虚拟永生技术与伦理问题', 2020, 5, '群像');
INSERT INTO `archives`
VALUES (10808, 1613413504762, 1613413504762, '谁在让字节跳动？106位高管架构首次曝光_手机网易网', 2019, 4, '世家');
INSERT INTO `archives`
VALUES (10810, 1613413504762, 1613413504762, 'B站高管解读财报：虚拟主播业务增长非常强劲_哔哩哔哩_主播_财报_新浪科技_新浪网', 2019, 5, '列传');
INSERT INTO `archives`
VALUES (10812, 1613413504762, 1613413504762, 'Musically创始人Alex Zhu的一篇采访 - 程序猿', 2020, 7, '搜神');
INSERT INTO `archives`
VALUES (10814, 1613413504762, 1613413504762, 'Musical.ly CEO阳陆育：C轮前投资方全部退出', 2017, 11, '搜神');
INSERT INTO `archives`
VALUES (10816, 1613413504763, 1613413504763, '马斯克最新访谈全文，信息量极大，远见令人震撼', 2021, 1, '搜神');
INSERT INTO `archives`
VALUES (10818, 1613413504763, 1613413504763, '又三十余家传统媒体阵亡，有的连休刊词都不留……', 2021, 1, '群像');
INSERT INTO `archives`
VALUES (10820, 1613413504763, 1613413504763, '重磅爆料，我在拼多多的三年', 2021, 1, '列传');
INSERT INTO `archives`
VALUES (10822, 1613413504763, 1613413504763, '志象网独家｜对话昆仑万维创始人周亚辉：我不是大佬，我还是个创业者', 2021, 1, '列传');
INSERT INTO `archives`
VALUES (10824, 1613413504763, 1613413504763, 'Steam月活已达1.2亿，蒸汽平台或将在年初上线', 2021, 1, '搜神');
INSERT INTO `archives`
VALUES (10826, 1613413504763, 1613413504763, '虚拟偶像大众化元年，如何挖掘蓝海市场｜虚拟偶像公司2020年盘点', 2021, 1, '群像');
INSERT INTO `archives`
VALUES (10828, 1613413504763, 1613413504763, '如何评价大连车务段 车系统瘫痪 昼夜攻关恢复Flash运行的文章「全力攻关一昼夜，确保运输三十站」?', 2021, 1, '游侠');
INSERT INTO `archives`
VALUES (10830, 1613413504763, 1613413504763,
        'I’m 32 and spent $200k on biohacking. Became calmer, thinner, extroverted, healthier & happier. _ Hacker Noon',
        2017, 9, '搜神');
INSERT INTO `archives`
VALUES (10832, 1613413504763, 1613413504763, '一群穷孩子的人生实验', 2021, 1, '群像');
INSERT INTO `archives`
VALUES (10834, 1613413504763, 1613413504763, '晚点独家 _ 拼多多个别部门投票决定是否推行 “996”，加班费或将按月发放；滴滴 SVP 章文嵩将离职；字节游戏主力团队变动', 2021, 1,
        '世家');
INSERT INTO `archives`
VALUES (10836, 1613413504763, 1613413504763, '一个视频带火了《人间地狱》，然后呢？', 2021, 1, '游侠');
INSERT INTO `archives`
VALUES (10838, 1613413504764, 1613413504764, '字节跳动的游戏：2000人、10_工作室、4大发行平台和29家公司', 2021, 1, '世家');
INSERT INTO `archives`
VALUES (10840, 1613413504764, 1613413504764, 'ARK重磅报告：5年10倍的科技投资机会', 2021, 1, '群像');
INSERT INTO `archives`
VALUES (10844, 1613413504764, 1613413504764, '在京东做管培生是种什么体验？', 2017, 9, '列传');
INSERT INTO `archives`
VALUES (10846, 1613413504764, 1613413504764, '独家 _ 美团登顶之后：饿了么前高管首度披露与王兴对决的日子', 2021, 2, '世家');
INSERT INTO `archives`
VALUES (10848, 1613413504764, 1613413504764, 'Clubhouse：创造故事的年代，如何造神丨溯元对谈', 2021, 2, '游侠');
INSERT INTO `archives`
VALUES (10850, 1613413504764, 1613413504764, '字节跳动的游戏：2000人、10_工作室、4大发行平台和29家公司', 2021, 1, '世家');
INSERT INTO `archives`
VALUES (10852, 1613413504764, 1613413504764, '这款国产修仙用6天冲破12万在线，制作人在地铁上泪崩了.....', 2021, 2, '游侠');
INSERT INTO `archives`
VALUES (10854, 1613413504764, 1613413504764, '5个人用不到两年时间，做了一款发售1小时登顶Steam全球热销榜的国产游戏', 2021, 1, '游侠');
INSERT INTO `archives`
VALUES (10860, 1613413504764, 1613413504764, '一年入职4万人：字节跳动的人才培养曝光，值得每位HR学习！', 2020, 9, '世家');
INSERT INTO `archives`
VALUES (10862, 1613413504764, 1613413504764, 'Clubhouse：创造故事的年代，如何造神丨溯元对谈', 2021, 2, '游侠');
INSERT INTO `archives`
VALUES (10864, 1613413504764, 1613413504764, '我怎么配进Clubhouse的圈子呢', 2021, 2, '游侠');
INSERT INTO `archives`
VALUES (10866, 1613413504764, 1613413504764, '如何评价任天堂推出的游戏《健身环大冒险》？ - 知乎', 2019, 12, '搜神');
COMMIT;

-- ----------------------------
-- Table structure for article_likes
-- ----------------------------
DROP TABLE IF EXISTS `article_likes`;
CREATE TABLE `article_likes`
(
    `id`         bigint(20)   NOT NULL AUTO_INCREMENT,
    `article_id` bigint(20)   NOT NULL,
    `client_id`  varchar(256) NOT NULL,
    `created_at` bigint(20)   NOT NULL,
    `is_like`    tinyint(1)   NOT NULL DEFAULT '1',
    PRIMARY KEY (`id`),
    KEY `ARTICLE_ID_IS_LIKE` (`article_id`, `is_like`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1000164
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Records of article_likes
-- ----------------------------
BEGIN;
INSERT INTO `article_likes`
VALUES (1000000, 10000, '127.0.0.1', 1605541642254, 1);
INSERT INTO `article_likes`
VALUES (1000001, 10000, '127.0.0.1', 1605541651276, 1);
INSERT INTO `article_likes`
VALUES (1000002, 10000, '127.0.0.1', 1605541652091, 1);
INSERT INTO `article_likes`
VALUES (1000003, 10000, '127.0.0.1', 1605541652917, 1);
INSERT INTO `article_likes`
VALUES (1000004, 10000, '127.0.0.1', 1605541847910, 1);
INSERT INTO `article_likes`
VALUES (1000005, 10440, '127.0.0.1', 1605543097153, 1);
INSERT INTO `article_likes`
VALUES (1000006, 10440, '127.0.0.1', 1605543103069, 1);
INSERT INTO `article_likes`
VALUES (1000007, 10440, '127.0.0.1', 1605543103597, 1);
INSERT INTO `article_likes`
VALUES (1000008, 10440, '127.0.0.1', 1605543109303, 0);
INSERT INTO `article_likes`
VALUES (1000009, 10440, '127.0.0.1', 1605543109803, 1);
INSERT INTO `article_likes`
VALUES (1000010, 10440, '127.0.0.1', 1605544237605, 1);
INSERT INTO `article_likes`
VALUES (1000011, 10440, '127.0.0.1', 1605544238670, 1);
INSERT INTO `article_likes`
VALUES (1000012, 10440, '127.0.0.1', 1605544239544, 1);
INSERT INTO `article_likes`
VALUES (1000013, 10440, '127.0.0.1', 1605544258201, 1);
INSERT INTO `article_likes`
VALUES (1000014, 10440, '127.0.0.1', 1605544258219, 1);
INSERT INTO `article_likes`
VALUES (1000015, 10440, '127.0.0.1', 1605544258600, 1);
INSERT INTO `article_likes`
VALUES (1000016, 10440, '127.0.0.1', 1605544258621, 1);
INSERT INTO `article_likes`
VALUES (1000017, 10440, '127.0.0.1', 1605544258636, 1);
INSERT INTO `article_likes`
VALUES (1000018, 10440, '127.0.0.1', 1605585214681, 1);
INSERT INTO `article_likes`
VALUES (1000019, 10440, '127.0.0.1', 1605585216545, 0);
INSERT INTO `article_likes`
VALUES (1000020, 10440, '127.0.0.1', 1605585217733, 0);
INSERT INTO `article_likes`
VALUES (1000021, 10440, '127.0.0.1', 1605585218614, 0);
INSERT INTO `article_likes`
VALUES (1000022, 10440, '127.0.0.1', 1605585239671, 1);
INSERT INTO `article_likes`
VALUES (1000023, 10440, '127.0.0.1', 1605585240973, 1);
INSERT INTO `article_likes`
VALUES (1000024, 10440, '127.0.0.1', 1605585242624, 1);
INSERT INTO `article_likes`
VALUES (1000025, 10440, '127.0.0.1', 1605585245222, 0);
INSERT INTO `article_likes`
VALUES (1000026, 10440, '127.0.0.1', 1605585248494, 0);
INSERT INTO `article_likes`
VALUES (1000027, 10440, '127.0.0.1', 1605585474884, 0);
INSERT INTO `article_likes`
VALUES (1000028, 10440, '127.0.0.1', 1605585475880, 0);
INSERT INTO `article_likes`
VALUES (1000029, 10440, '127.0.0.1', 1605585476338, 0);
INSERT INTO `article_likes`
VALUES (1000030, 10440, '127.0.0.1', 1605585477000, 0);
INSERT INTO `article_likes`
VALUES (1000031, 10440, '127.0.0.1', 1605585477633, 0);
INSERT INTO `article_likes`
VALUES (1000032, 10440, '127.0.0.1', 1605585478460, 0);
INSERT INTO `article_likes`
VALUES (1000033, 10440, '127.0.0.1', 1605585479908, 0);
INSERT INTO `article_likes`
VALUES (1000034, 10440, '127.0.0.1', 1605585596926, 1);
INSERT INTO `article_likes`
VALUES (1000035, 10440, '127.0.0.1', 1605585636086, 1);
INSERT INTO `article_likes`
VALUES (1000036, 10440, '127.0.0.1', 1605585638616, 0);
INSERT INTO `article_likes`
VALUES (1000037, 10440, '127.0.0.1', 1605585640184, 0);
INSERT INTO `article_likes`
VALUES (1000038, 10440, '127.0.0.1', 1605585661333, 0);
INSERT INTO `article_likes`
VALUES (1000039, 10446, '127.0.0.1', 1605585665029, 1);
INSERT INTO `article_likes`
VALUES (1000040, 10446, '127.0.0.1', 1605585673387, 0);
INSERT INTO `article_likes`
VALUES (1000041, 10222, '127.0.0.1', 1605585681869, 1);
INSERT INTO `article_likes`
VALUES (1000042, 10222, '127.0.0.1', 1605585716979, 1);
INSERT INTO `article_likes`
VALUES (1000043, 10446, '127.0.0.1', 1605585726213, 1);
INSERT INTO `article_likes`
VALUES (1000044, 10406, '127.0.0.1', 1605585731694, 1);
INSERT INTO `article_likes`
VALUES (1000045, 10085, '127.0.0.1', 1605585798288, 1);
INSERT INTO `article_likes`
VALUES (1000046, 10406, '127.0.0.1', 1605585805284, 0);
INSERT INTO `article_likes`
VALUES (1000047, 10440, '127.0.0.1', 1605585810098, 0);
INSERT INTO `article_likes`
VALUES (1000048, 10222, '127.0.0.1', 1605585814722, 0);
INSERT INTO `article_likes`
VALUES (1000049, 10114, '127.0.0.1', 1605585819950, 1);
INSERT INTO `article_likes`
VALUES (1000050, 10050, '127.0.0.1', 1605585839329, 1);
INSERT INTO `article_likes`
VALUES (1000051, 10050, '127.0.0.1', 1605585840694, 0);
INSERT INTO `article_likes`
VALUES (1000052, 10222, '127.0.0.1', 1605593393926, 1);
INSERT INTO `article_likes`
VALUES (1000053, 10222, '127.0.0.1', 1605593394509, 1);
INSERT INTO `article_likes`
VALUES (1000054, 10222, '127.0.0.1', 1605593395217, 1);
INSERT INTO `article_likes`
VALUES (1000055, 10222, '127.0.0.1', 1605593395350, 1);
INSERT INTO `article_likes`
VALUES (1000056, 10222, '127.0.0.1', 1605593395508, 1);
INSERT INTO `article_likes`
VALUES (1000057, 10548, '127.0.0.1', 1605593408046, 0);
INSERT INTO `article_likes`
VALUES (1000058, 10548, '127.0.0.1', 1605593409283, 1);
INSERT INTO `article_likes`
VALUES (1000059, 10548, '127.0.0.1', 1605593410140, 1);
INSERT INTO `article_likes`
VALUES (1000060, 10440, '127.0.0.1', 1605597095048, 0);
INSERT INTO `article_likes`
VALUES (1000061, 10440, '127.0.0.1', 1605597105408, 0);
INSERT INTO `article_likes`
VALUES (1000062, 10440, '127.0.0.1', 1605597140969, 1);
INSERT INTO `article_likes`
VALUES (1000063, 10440, '127.0.0.1', 1605597143707, 1);
INSERT INTO `article_likes`
VALUES (1000064, 10222, '127.0.0.1', 1605597145417, 0);
INSERT INTO `article_likes`
VALUES (1000065, 10222, '127.0.0.1', 1605597145608, 0);
INSERT INTO `article_likes`
VALUES (1000066, 10222, '127.0.0.1', 1605597145824, 0);
INSERT INTO `article_likes`
VALUES (1000067, 10222, '127.0.0.1', 1605597146902, 0);
INSERT INTO `article_likes`
VALUES (1000068, 10222, '127.0.0.1', 1605597146903, 0);
INSERT INTO `article_likes`
VALUES (1000069, 10248, '127.0.0.1', 1605684623132, 1);
INSERT INTO `article_likes`
VALUES (1000070, 10248, '127.0.0.1', 1605684633244, 1);
INSERT INTO `article_likes`
VALUES (1000071, 10248, '127.0.0.1', 1605684640162, 0);
INSERT INTO `article_likes`
VALUES (1000072, 10248, '127.0.0.1', 1605684642039, 0);
INSERT INTO `article_likes`
VALUES (1000073, 10440, '127.0.0.1', 1605685057268, 1);
INSERT INTO `article_likes`
VALUES (1000074, 10440, '127.0.0.1', 1605685060917, 1);
INSERT INTO `article_likes`
VALUES (1000075, 10440, '127.0.0.1', 1605685640593, 1);
INSERT INTO `article_likes`
VALUES (1000076, 10430, '127.0.0.1', 1605706284896, 1);
INSERT INTO `article_likes`
VALUES (1000077, 10430, '127.0.0.1', 1605706294490, 1);
INSERT INTO `article_likes`
VALUES (1000078, 10350, '127.0.0.1', 1605706415871, 1);
INSERT INTO `article_likes`
VALUES (1000079, 10350, '127.0.0.1', 1605706763144, 1);
INSERT INTO `article_likes`
VALUES (1000080, 10350, '127.0.0.1', 1605706764909, 0);
INSERT INTO `article_likes`
VALUES (1000081, 10350, '127.0.0.1', 1605706766348, 0);
INSERT INTO `article_likes`
VALUES (1000082, 10350, '127.0.0.1', 1605706768050, 1);
INSERT INTO `article_likes`
VALUES (1000083, 10350, '127.0.0.1', 1605706768484, 1);
INSERT INTO `article_likes`
VALUES (1000084, 10350, '127.0.0.1', 1605706768881, 1);
INSERT INTO `article_likes`
VALUES (1000085, 10350, '127.0.0.1', 1605706981548, 1);
INSERT INTO `article_likes`
VALUES (1000086, 10350, '127.0.0.1', 1605706987466, 0);
INSERT INTO `article_likes`
VALUES (1000087, 10350, '127.0.0.1', 1605706987619, 0);
INSERT INTO `article_likes`
VALUES (1000088, 10406, '127.0.0.1', 1605708267207, 0);
INSERT INTO `article_likes`
VALUES (1000089, 10006, '127.0.0.1', 1605708282302, 1);
INSERT INTO `article_likes`
VALUES (1000090, 10006, '127.0.0.1', 1605708299142, 0);
INSERT INTO `article_likes`
VALUES (1000091, 10264, '127.0.0.1', 1606530106608, 1);
INSERT INTO `article_likes`
VALUES (1000092, 10424, '127.0.0.1', 1606820194505, 1);
INSERT INTO `article_likes`
VALUES (1000093, 10090, '127.0.0.1', 1606833134856, 1);
INSERT INTO `article_likes`
VALUES (1000094, 10090, '127.0.0.1', 1606833135331, 1);
INSERT INTO `article_likes`
VALUES (1000095, 10090, '127.0.0.1', 1606833135472, 1);
INSERT INTO `article_likes`
VALUES (1000096, 10090, '127.0.0.1', 1606834772254, 1);
INSERT INTO `article_likes`
VALUES (1000097, 10090, '127.0.0.1', 1606834772683, 1);
INSERT INTO `article_likes`
VALUES (1000098, 10090, '127.0.0.1', 1606834772824, 1);
INSERT INTO `article_likes`
VALUES (1000099, 10090, '127.0.0.1', 1606834776638, 1);
INSERT INTO `article_likes`
VALUES (1000100, 10090, '127.0.0.1', 1606834776777, 1);
INSERT INTO `article_likes`
VALUES (1000101, 10090, '127.0.0.1', 1606834776922, 1);
INSERT INTO `article_likes`
VALUES (1000102, 10090, '127.0.0.1', 1606834792201, 1);
INSERT INTO `article_likes`
VALUES (1000103, 10090, '127.0.0.1', 1606834798895, 0);
INSERT INTO `article_likes`
VALUES (1000104, 10090, '127.0.0.1', 1606835018248, 1);
INSERT INTO `article_likes`
VALUES (1000105, 10090, '127.0.0.1', 1606835019081, 1);
INSERT INTO `article_likes`
VALUES (1000106, 10090, '127.0.0.1', 1606835024490, 1);
INSERT INTO `article_likes`
VALUES (1000107, 10090, '127.0.0.1', 1606835024639, 1);
INSERT INTO `article_likes`
VALUES (1000108, 10520, '127.0.0.1', 1606835036199, 1);
INSERT INTO `article_likes`
VALUES (1000109, 10520, '127.0.0.1', 1606835036322, 1);
INSERT INTO `article_likes`
VALUES (1000110, 10520, '127.0.0.1', 1606835036455, 1);
INSERT INTO `article_likes`
VALUES (1000111, 10052, '127.0.0.1', 1606843071096, 1);
INSERT INTO `article_likes`
VALUES (1000112, 10052, '127.0.0.1', 1606843071097, 1);
INSERT INTO `article_likes`
VALUES (1000113, 10110, '127.0.0.1', 1606876205896, 1);
INSERT INTO `article_likes`
VALUES (1000114, 10110, '127.0.0.1', 1606876205890, 1);
INSERT INTO `article_likes`
VALUES (1000115, 10170, '127.0.0.1', 1606889034862, 1);
INSERT INTO `article_likes`
VALUES (1000116, 10170, '127.0.0.1', 1606889034862, 1);
INSERT INTO `article_likes`
VALUES (1000117, 10454, '127.0.0.1', 1606991168445, 1);
INSERT INTO `article_likes`
VALUES (1000118, 101, '127.0.0.1', 1607335460756, 1);
INSERT INTO `article_likes`
VALUES (1000119, 10033, '127.0.0.1', 1607603757380, 1);
INSERT INTO `article_likes`
VALUES (1000120, 10590, '127.0.0.1', 1607603812043, 1);
INSERT INTO `article_likes`
VALUES (1000121, 10222, '127.0.0.1', 1607831410768, 1);
INSERT INTO `article_likes`
VALUES (1000122, 10006, '127.0.0.1', 1607831413324, 1);
INSERT INTO `article_likes`
VALUES (1000123, 10350, '127.0.0.1', 1607831415250, 1);
INSERT INTO `article_likes`
VALUES (1000124, 10050, '127.0.0.1', 1607831419483, 1);
INSERT INTO `article_likes`
VALUES (1000125, 10742, '127.0.0.1', 1608403950905, 1);
INSERT INTO `article_likes`
VALUES (1000126, 10256, '127.0.0.1', 1608403960663, 1);
INSERT INTO `article_likes`
VALUES (1000127, 10050, '127.0.0.1', 1608403977251, 0);
INSERT INTO `article_likes`
VALUES (1000128, 10090, '127.0.0.1', 1609767547518, 1);
INSERT INTO `article_likes`
VALUES (1000129, 10350, '127.0.0.1', 1609767549901, 1);
INSERT INTO `article_likes`
VALUES (1000130, 10350, '127.0.0.1', 1609767550844, 0);
INSERT INTO `article_likes`
VALUES (1000131, 10350, '127.0.0.1', 1609767551655, 1);
INSERT INTO `article_likes`
VALUES (1000132, 10063, '127.0.0.1', 1609901533198, 1);
INSERT INTO `article_likes`
VALUES (1000133, 10258, '127.0.0.1', 1610997472444, 1);
INSERT INTO `article_likes`
VALUES (1000134, 102, '127.0.0.1', 1611648274074, 0);
INSERT INTO `article_likes`
VALUES (1000135, 102, '127.0.0.1', 1611648275347, 1);
INSERT INTO `article_likes`
VALUES (1000136, 102, '127.0.0.1', 1611648276719, 1);
INSERT INTO `article_likes`
VALUES (1000137, 102, '127.0.0.1', 1611648277530, 1);
INSERT INTO `article_likes`
VALUES (1000138, 10548, '127.0.0.1', 1611649388503, 1);
INSERT INTO `article_likes`
VALUES (1000139, 10548, '127.0.0.1', 1611649388626, 1);
INSERT INTO `article_likes`
VALUES (1000140, 10548, '127.0.0.1', 1611649389145, 1);
INSERT INTO `article_likes`
VALUES (1000141, 10548, '127.0.0.1', 1611649389286, 1);
INSERT INTO `article_likes`
VALUES (1000142, 10548, '127.0.0.1', 1612130415917, 0);
INSERT INTO `article_likes`
VALUES (1000143, 10548, '127.0.0.1', 1612130417079, 0);
INSERT INTO `article_likes`
VALUES (1000144, 10548, '127.0.0.1', 1612130421635, 0);
INSERT INTO `article_likes`
VALUES (1000145, 10548, '127.0.0.1', 1612130424911, 0);
INSERT INTO `article_likes`
VALUES (1000146, 10322, '127.0.0.1', 1612130450335, 1);
INSERT INTO `article_likes`
VALUES (1000147, 10011, '127.0.0.1', 1612130455112, 1);
INSERT INTO `article_likes`
VALUES (1000148, 10460, '127.0.0.1', 1612130562232, 0);
INSERT INTO `article_likes`
VALUES (1000149, 10494, '127.0.0.1', 1612130571009, 1);
INSERT INTO `article_likes`
VALUES (1000150, 10294, '127.0.0.1', 1612130584365, 1);
INSERT INTO `article_likes`
VALUES (1000151, 10294, '127.0.0.1', 1612130586624, 0);
INSERT INTO `article_likes`
VALUES (1000152, 10268, '127.0.0.1', 1612130596910, 0);
INSERT INTO `article_likes`
VALUES (1000153, 10170, '127.0.0.1', 1612130618299, 0);
INSERT INTO `article_likes`
VALUES (1000154, 10354, '127.0.0.1', 1612130667456, 1);
INSERT INTO `article_likes`
VALUES (1000155, 10440, '127.0.0.1', 1612632464394, 1);
INSERT INTO `article_likes`
VALUES (1000156, 10520, '127.0.0.1', 1612632470570, 1);
INSERT INTO `article_likes`
VALUES (1000157, 10454, '127.0.0.1', 1612632475590, 1);
INSERT INTO `article_likes`
VALUES (1000158, 10454, '127.0.0.1', 1612632481379, 1);
INSERT INTO `article_likes`
VALUES (1000159, 10520, '127.0.0.1', 1613391961139, 0);
INSERT INTO `article_likes`
VALUES (1000160, 10440, '127.0.0.1', 1613391962890, 0);
INSERT INTO `article_likes`
VALUES (1000161, 10590, '127.0.0.1', 1613391968023, 0);
INSERT INTO `article_likes`
VALUES (1000162, 10548, '127.0.0.1', 1613391970178, 0);
INSERT INTO `article_likes`
VALUES (1000163, 10256, '127.0.0.1', 1613391992785, 0);
COMMIT;

-- ----------------------------
-- Table structure for search_keywords
-- ----------------------------
DROP TABLE IF EXISTS `search_keywords`;
CREATE TABLE `search_keywords`
(
    `id`           bigint(20)   NOT NULL AUTO_INCREMENT,
    `search_count` int(11)      NOT NULL,
    `keyword`      varchar(256) NOT NULL,
    `created_at`   bigint(20)   NOT NULL,
    `updated_at`   bigint(20)   NOT NULL,
    PRIMARY KEY (`id`),
    KEY `KEYWORD` (`keyword`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1000050
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Records of search_keywords
-- ----------------------------
BEGIN;
INSERT INTO `search_keywords`
VALUES (1000000, 11, '腐败的机会', 1607990084727, 1609767631408);
INSERT INTO `search_keywords`
VALUES (1000001, 4, '真的', 1608135070157, 1608135744172);
INSERT INTO `search_keywords`
VALUES (1000002, 18, '游戏', 1608224083965, 1608532753271);
INSERT INTO `search_keywords`
VALUES (1000003, 22, '劣迹斑斑的九城', 1608226596877, 1608305063981);
INSERT INTO `search_keywords`
VALUES (1000004, 9, '缺少外部竞争', 1608227036741, 1608271446227);
INSERT INTO `search_keywords`
VALUES (1000005, 1, '内部竞争', 1608264611553, 1608264611553);
INSERT INTO `search_keywords`
VALUES (1000006, 24, '腾讯', 1608264628709, 1609068335776);
INSERT INTO `search_keywords`
VALUES (1000007, 4, 'IEG', 1608264656470, 1608445519469);
INSERT INTO `search_keywords`
VALUES (1000008, 1, '王思聪', 1608264676567, 1608264676567);
INSERT INTO `search_keywords`
VALUES (1000009, 1, '斗鱼', 1608264685637, 1608264685637);
INSERT INTO `search_keywords`
VALUES (1000010, 1, '比特币', 1608264700293, 1608264700293);
INSERT INTO `search_keywords`
VALUES (1000011, 6, '马云', 1608271399254, 1613365714233);
INSERT INTO `search_keywords`
VALUES (1000012, 1, '和阿里巴巴好好说话', 1608272618767, 1608272618767);
INSERT INTO `search_keywords`
VALUES (1000013, 1, '腾讯没有梦想', 1608301530706, 1608301530706);
INSERT INTO `search_keywords`
VALUES (1000014, 1, '百度投资', 1608301604697, 1608301604697);
INSERT INTO `search_keywords`
VALUES (1000015, 3, '百度', 1608301609271, 1608445505537);
INSERT INTO `search_keywords`
VALUES (1000016, 1, '劣迹斑', 1608305000269, 1608305000269);
INSERT INTO `search_keywords`
VALUES (1000017, 9, '王慧文', 1608400456868, 1613392267086);
INSERT INTO `search_keywords`
VALUES (1000018, 1, '梁', 1608442192521, 1608442192521);
INSERT INTO `search_keywords`
VALUES (1000019, 1, 'steam', 1608531549609, 1608531549609);
INSERT INTO `search_keywords`
VALUES (1000020, 1, '蒸汽', 1608531555574, 1608531555574);
INSERT INTO `search_keywords`
VALUES (1000021, 1, '腾讯游戏', 1608531572109, 1608531572109);
INSERT INTO `search_keywords`
VALUES (1000022, 1, '难啊', 1608707129744, 1608707129744);
INSERT INTO `search_keywords`
VALUES (1000023, 1, '00后', 1608785980184, 1608785980184);
INSERT INTO `search_keywords`
VALUES (1000024, 11, 'memo', 1609002429793, 1609005962736);
INSERT INTO `search_keywords`
VALUES (1000025, 2, 'MEMOS', 1609051903065, 1609051903674);
INSERT INTO `search_keywords`
VALUES (1000026, 1, 'GOOGLE', 1609064000990, 1609064000990);
INSERT INTO `search_keywords`
VALUES (1000027, 2, '去腾讯', 1609068384291, 1609068385512);
INSERT INTO `search_keywords`
VALUES (1000028, 2, '近腾讯', 1609068439397, 1609068440619);
INSERT INTO `search_keywords`
VALUES (1000029, 1, '进腾讯', 1609068464890, 1609068464890);
INSERT INTO `search_keywords`
VALUES (1000030, 1, '四大', 1609072491392, 1609072491392);
INSERT INTO `search_keywords`
VALUES (1000031, 1, '嗨氏', 1609081525824, 1609081525824);
INSERT INTO `search_keywords`
VALUES (1000032, 1, '社交', 1609777680592, 1609777680592);
INSERT INTO `search_keywords`
VALUES (1000033, 1, '饿了么', 1609901515097, 1609901515097);
INSERT INTO `search_keywords`
VALUES (1000034, 1, '字节', 1609936612790, 1609936612790);
INSERT INTO `search_keywords`
VALUES (1000035, 2, 'BIGO', 1610010262187, 1610010332467);
INSERT INTO `search_keywords`
VALUES (1000036, 7, 'TODO', 1610285609429, 1612599297926);
INSERT INTO `search_keywords`
VALUES (1000037, 1, '陈天桥', 1610624539527, 1610624539527);
INSERT INTO `search_keywords`
VALUES (1000038, 1, '傅盛', 1610633930442, 1610633930442);
INSERT INTO `search_keywords`
VALUES (1000039, 2, '字节跳动', 1610720235925, 1610990407799);
INSERT INTO `search_keywords`
VALUES (1000040, 1, '快手', 1610803248173, 1610803248173);
INSERT INTO `search_keywords`
VALUES (1000041, 1, '王', 1610990385143, 1610990385143);
INSERT INTO `search_keywords`
VALUES (1000042, 1, '王伯', 1610990396816, 1610990396816);
INSERT INTO `search_keywords`
VALUES (1000043, 1, '管培', 1612130257310, 1612130257310);
INSERT INTO `search_keywords`
VALUES (1000044, 1, 'TAP', 1612599132926, 1612599132926);
INSERT INTO `search_keywords`
VALUES (1000045, 1, 'KENZO', 1612626907679, 1612626907679);
INSERT INTO `search_keywords`
VALUES (1000046, 1, 'ZO', 1612626914065, 1612626914065);
INSERT INTO `search_keywords`
VALUES (1000047, 1, '火箭', 1612634582435, 1612634582435);
INSERT INTO `search_keywords`
VALUES (1000048, 1, '曲凯', 1612634604157, 1612634604157);
INSERT INTO `search_keywords`
VALUES (1000049, 1, '10246', 1613399161092, 1613399161092);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
