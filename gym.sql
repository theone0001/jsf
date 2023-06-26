

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `loginName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名',
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `type` int(1) NOT NULL COMMENT '0管理员 1教练 2会员',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` int(1) NULL DEFAULT NULL COMMENT '性别 0男 1女',
  `age` int(4) NULL DEFAULT NULL COMMENT '年龄',
  `coachDate` date NULL DEFAULT NULL COMMENT '教练工作时间',
  `coachTeach` int(4) NULL DEFAULT NULL COMMENT '教练教龄',
  `coachWages` double NULL DEFAULT NULL COMMENT '教练工资',
  `coachAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练家庭住址',
  `coachStatic` int(1) NULL DEFAULT NULL COMMENT '教练状态 0正常1休假 2离职',
  `memberTypes` int(20) NULL DEFAULT NULL COMMENT '会员类型',
  `memberDate` date NULL DEFAULT NULL COMMENT '会员入会时间',
  `memberBirthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员生日',
  `memberStatic` int(1) NULL DEFAULT NULL COMMENT '会员状态',
  `memberBalance` float NULL DEFAULT NULL COMMENT '会员余额',
  `memberXufei` date NULL DEFAULT NULL COMMENT '会员到期日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`) VALUES ('1', 'admin', '0192023a7bbd73250516f069df18b500','0','管理员');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`) VALUES ('2', 'zhangjinhe', '0192023a7bbd73250516f069df18b500','0','张晋赫');

-- ----------------------------
-- Records of coach
-- ----------------------------
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`coachDate`,`coachTeach`,`coachWages`,`coachAddress`,`coachStatic`) VALUES ('3', 'zhangqiling','e10adc3949ba59abbe56e057f20f883e','1','张起灵', '13243253432', '0', '22', '2019-08-02', '2', '6000', '张家古楼', '0');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`coachDate`,`coachTeach`,`coachWages`,`coachAddress`,`coachStatic`) VALUES ('4', 'lanwangji','e10adc3949ba59abbe56e057f20f883e','1','蓝忘机', '13324332344', '0', '20', '2019-08-02', '2', '10000', '云深不知处', '0');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`coachDate`,`coachTeach`,`coachWages`,`coachAddress`,`coachStatic`) VALUES ('5', 'huacheng','e10adc3949ba59abbe56e057f20f883e','1','花城', '13324245453', '1', '25', '2020-04-10', '3', '12000', '仙乐国', '0');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`coachDate`,`coachTeach`,`coachWages`,`coachAddress`,`coachStatic`) VALUES ('6', 'waner','e10adc3949ba59abbe56e057f20f883e','1','婉儿', '13342244112', '1', '18', '2020-05-01', '2', '16500', '长留', '1');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`coachDate`,`coachTeach`,`coachWages`,`coachAddress`,`coachStatic`) VALUES ('7', 'baifengjiu','e10adc3949ba59abbe56e057f20f883e','1','白凤九', '13433324335', '1', '20', '2019-10-04', '1', '18000', '青丘', '2');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`coachDate`,`coachTeach`,`coachWages`,`coachAddress`,`coachStatic`) VALUES ('8', 'zhanghan','e10adc3949ba59abbe56e057f20f883e','1','张含', '15299985622', '1', '35', '2020-04-02', '5', '10000', '北京丰台', '1');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`coachDate`,`coachTeach`,`coachWages`,`coachAddress`,`coachStatic`) VALUES ('9', 'zhouming','e10adc3949ba59abbe56e057f20f883e','1','周命', '15785456231', '1', '22', '2020-05-06', '2', '12000', '陕西西安', '0');

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('10', 'liujian','e10adc3949ba59abbe56e057f20f883e','2','刘建', '13456789087', '1', '23', '3', '2020-04-06', '08-24', '1', '390', '2021-05-03');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('11', 'tom','e10adc3949ba59abbe56e057f20f883e','2','Tom', '15266668585', '1', '24', '2', '2020-04-06', '08-07', '1', '-5', '2020-06-02');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('12', 'wangzeming','e10adc3949ba59abbe56e057f20f883e','2','王泽明', '17858966255', '1', '19', '4', '2020-04-06', '05-08', '2', '820', '2020-04-10');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('13', 'zhanghong','e10adc3949ba59abbe56e057f20f883e','2','张红', '18799256874', '0', '23', '1', '2020-04-07', '04-08', '1', '-7', '2020-08-31');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('14', 'wangfang','e10adc3949ba59abbe56e057f20f883e','2','王芳', '15299950487', '0', '22', '3', '2020-04-07', '04-21', '1', '990', '2021-08-01');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('15', 'liming','e10adc3949ba59abbe56e057f20f883e','2','李明', '15699588547', '1', '22', '3', '2020-04-07', '04-21', '1', '0', '2021-05-03');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('16', 'jerry','e10adc3949ba59abbe56e057f20f883e','2','jerry', '15266528547', '1', '25', '2', '2020-04-08', '04-08', '1', '-7', '2020-06-02');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('17', 'fanglan','e10adc3949ba59abbe56e057f20f883e','2','方蓝', '13456789876', '0', '22', '4', '2020-04-10', '04-29', '1', '0', '2020-05-10');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('18', 'zhaojing','e10adc3949ba59abbe56e057f20f883e','2','赵静', '15288888888', '0', '25', '3', '2020-04-12', '04-22', '1', '0', '2021-05-03');
INSERT INTO `user` (`id`,`loginName`,`password`,`type`,`name`,`phone`,`sex`,`age`,`memberTypes`,`memberDate`,`memberBirthday`,`memberStatic`,`memberBalance`,`memberXufei`) VALUES ('19', 'sunxi','e10adc3949ba59abbe56e057f20f883e','2','孙戏', '18566584785', '1', '35', '3', '2020-05-03', '05-03', '1', '-2', '2021-05-03');


-- ----------------------------
-- Table structure for chongzhi
-- ----------------------------
DROP TABLE IF EXISTS `chongzhi`;
CREATE TABLE `chongzhi` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Memberid` int(11) DEFAULT NULL,
  `Typeid` int(11) DEFAULT NULL,
  `Money` int(11) DEFAULT NULL,
  `ssmoney` int(11) DEFAULT NULL,
  `zlmoney` int(11) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `czjine` int(11) DEFAULT NULL,
  `beizhu` varchar(50) DEFAULT NULL,
  `czStatic` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `eqId` int(20) NOT NULL AUTO_INCREMENT,
  `eqName` varchar(20) DEFAULT NULL,
  `eqText` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`eqId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES ('1', '跑步机', '大型斑马牌跑步机');
INSERT INTO `equipment` VALUES ('2', '动感单车', '塑身');
INSERT INTO `equipment` VALUES ('3', '呼啦圈', '10');

-- ----------------------------
-- Table structure for goodinfo
-- ----------------------------
DROP TABLE IF EXISTS `goodinfo`;
CREATE TABLE `goodinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(50) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `unitPrice` double DEFAULT NULL,
  `sellPrice` double DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`goodsId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('2', '可口可乐', '瓶', '2', '5', '48', '1');
INSERT INTO `goods` VALUES ('3', '百事可乐', '瓶', '2', '5', '3', '');
INSERT INTO `goods` VALUES ('4', '小布丁雪糕', '根', '0.5', '1', '13', '');
INSERT INTO `goods` VALUES ('5', '压缩饼干', '块', '2', '5', '24', '');
INSERT INTO `goods` VALUES ('7', '脉动', '瓶', '3', '6', '0', '');
INSERT INTO `goods` VALUES ('8', '毛巾', '个', '10', '20', '0', '');

-- ----------------------------
-- Table structure for loos
-- ----------------------------
DROP TABLE IF EXISTS `loos`;
CREATE TABLE `loos` (
  `loosId` int(20) NOT NULL AUTO_INCREMENT,
  `loosName` varchar(20) DEFAULT NULL,
  `loosImages` varchar(50) DEFAULT NULL,
  `loosAddress` varchar(50) DEFAULT NULL,
  `loosjdate` datetime DEFAULT NULL,
  `loosStatus` int(10) DEFAULT NULL,
  `scavenger` varchar(50) DEFAULT NULL,
  `scavengerPhone` varchar(50) DEFAULT NULL,
  `ReceiveName` varchar(20) DEFAULT NULL,
  `ReceivePhone` varchar(20) DEFAULT NULL,
  `loosldate` datetime DEFAULT NULL,
  `admin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`loosId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loos
-- ----------------------------
INSERT INTO `loos` VALUES ('1', '车钥匙', '1', '厕所门口', '2020-04-10 00:00:00', '1', '张三', '13355660000', '22', '25525', '2020-04-12 00:00:00', 'admin');
INSERT INTO `loos` VALUES ('2', '手机', '1', '前台', '2020-05-01 00:00:00', '1', '王能', '15299952320', '张宏', '15899965478', '2020-05-02 00:00:00', 'admin');
INSERT INTO `loos` VALUES ('3', '钱包', '1', '动感单车旁', '2020-05-01 00:00:00', '0', '李镇', '15966325478', null, null, null, 'admin');
INSERT INTO `loos` VALUES ('4', '包', '1', '门口', '2020-05-02 00:00:00', '0', '刘伟', '15326587548', null, null, null, 'admin');

-- ----------------------------
-- Table structure for membertype
-- ----------------------------
DROP TABLE IF EXISTS `membertype`;
CREATE TABLE `membertype` (
  `TypeId` int(20) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(20) DEFAULT NULL,
  `TypeciShu` int(11) DEFAULT NULL,
  `TypeDay` int(11) DEFAULT NULL,
  `Typemoney` float DEFAULT NULL,
  PRIMARY KEY (`TypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of membertype
-- ----------------------------
INSERT INTO `membertype` VALUES ('1', '季卡', '0', '90', '500');
INSERT INTO `membertype` VALUES ('2', '月卡', '0', '30', '150');
INSERT INTO `membertype` VALUES ('3', '年卡', '0', '365', '1000');
INSERT INTO `membertype` VALUES ('4', '周卡', '0', '7', '50');

-- ----------------------------
-- Table structure for privatecoachinfo
-- ----------------------------
DROP TABLE IF EXISTS `privatecoachinfo`;
CREATE TABLE `privatecoachinfo` (
  `pid` int(20) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `coachid` int(11) DEFAULT NULL,
  `subjectid` int(11) DEFAULT NULL,
  `count` int(20) DEFAULT NULL,
  `countprice` double DEFAULT NULL,
  `realprice` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `remark` varchar(20) DEFAULT NULL,
  `admin` varchar(20) DEFAULT 'asdf',
  PRIMARY KEY (`pid`),
  KEY `fk_pri_subject` (`subjectid`),
  KEY `fk_pri_coach` (`coachid`),
  KEY `fk_pri_member` (`memberid`),
  CONSTRAINT `fk_pri_coach` FOREIGN KEY (`coachid`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_pri_member` FOREIGN KEY (`memberid`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_pri_subject` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subId` int(20) NOT NULL AUTO_INCREMENT,
  `subname` varchar(20) DEFAULT NULL,
  `sellingPrice` double DEFAULT NULL,
  PRIMARY KEY (`subId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '健身球', '30');
INSERT INTO `subject` VALUES ('2', '跑步机', '35');
INSERT INTO `subject` VALUES ('4', '压力车', '50');
INSERT INTO `subject` VALUES ('5', '仰卧起坐', '20');
INSERT INTO `subject` VALUES ('6', '健身操', '50');


DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `userid` int(11) DEFAULT NULL,
    `message` varchar(255) DEFAULT NULL,
    `date` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `userid` (`userid`),
    CONSTRAINT `message_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `messages` VALUES (1,1,'故人西辞黄鹤楼，烟花三月下扬州。','2022-05-12 12:33:06'),
                             (2,9,'孤帆远影碧空尽，唯见长江天际流。','2022-05-12 12:34:40'),
                             (3,2,'床前明月光，疑是地上霜。','2022-05-12 12:33:27'),
                             (4,8,'行路难！行路难！多歧路，今安在？长风破浪会有时，直挂云帆济沧海。','2022-05-12 12:34:10'),
                             (5,10,'飞流直下三千尺，疑是银河落九天。','2022-05-12 12:36:13'),
                             (6,10,'弃我去者，昨日之日不可留','2022-05-12 12:37:04'),
                             (7,2,'两岸青山相对出，孤帆一片日边来。','2022-05-12 12:42:18'),
                             (8,1,'相看两不厌，只有敬亭山。','2022-05-12 12:42:36'),
                             (9,8,'我寄愁心与明月，随风直到夜郎西。','2022-05-12 12:42:57');
