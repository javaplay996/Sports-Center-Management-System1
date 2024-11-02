/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmdyn9h
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmdyn9h` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmdyn9h`;

/*Table structure for table `changdileixing` */

DROP TABLE IF EXISTS `changdileixing`;

CREATE TABLE `changdileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='场地类型';

/*Data for the table `changdileixing` */

insert  into `changdileixing`(`id`,`addtime`,`leixing`) values (31,'2021-04-11 20:10:45','类型1');
insert  into `changdileixing`(`id`,`addtime`,`leixing`) values (32,'2021-04-11 20:10:45','类型2');
insert  into `changdileixing`(`id`,`addtime`,`leixing`) values (33,'2021-04-11 20:10:45','类型3');
insert  into `changdileixing`(`id`,`addtime`,`leixing`) values (34,'2021-04-11 20:10:45','类型4');
insert  into `changdileixing`(`id`,`addtime`,`leixing`) values (35,'2021-04-11 20:10:45','类型5');
insert  into `changdileixing`(`id`,`addtime`,`leixing`) values (36,'2021-04-11 20:10:45','类型6');

/*Table structure for table `changdixinxi` */

DROP TABLE IF EXISTS `changdixinxi`;

CREATE TABLE `changdixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) DEFAULT NULL COMMENT '场地类型',
  `rongnarenshu` int(11) DEFAULT NULL COMMENT '容纳人数',
  `changdiweizhi` varchar(200) DEFAULT NULL COMMENT '场地位置',
  `xiangqing` longtext COMMENT '详情',
  `weixiujilu` longtext COMMENT '维修记录',
  `changditupian` varchar(200) DEFAULT NULL COMMENT '场地图片',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='场地信息';

/*Data for the table `changdixinxi` */

insert  into `changdixinxi`(`id`,`addtime`,`changdimingcheng`,`changdileixing`,`rongnarenshu`,`changdiweizhi`,`xiangqing`,`weixiujilu`,`changditupian`,`clicknum`) values (21,'2021-04-11 20:10:45','场地名称1','类型1',100,'XXX','ZZZ','<p>编辑器可以发布文字和图片</p>','http://localhost:8080/ssmdyn9h/upload/changdixinxi_changditupian1.jpg',5);
insert  into `changdixinxi`(`id`,`addtime`,`changdimingcheng`,`changdileixing`,`rongnarenshu`,`changdiweizhi`,`xiangqing`,`weixiujilu`,`changditupian`,`clicknum`) values (22,'2021-04-11 20:10:45','场地名称2','场地类型2',2,'场地位置2','详情2','维修记录2','http://localhost:8080/ssmdyn9h/upload/changdixinxi_changditupian2.jpg',2);
insert  into `changdixinxi`(`id`,`addtime`,`changdimingcheng`,`changdileixing`,`rongnarenshu`,`changdiweizhi`,`xiangqing`,`weixiujilu`,`changditupian`,`clicknum`) values (23,'2021-04-11 20:10:45','场地名称3','场地类型3',3,'场地位置3','详情3','维修记录3','http://localhost:8080/ssmdyn9h/upload/changdixinxi_changditupian3.jpg',3);
insert  into `changdixinxi`(`id`,`addtime`,`changdimingcheng`,`changdileixing`,`rongnarenshu`,`changdiweizhi`,`xiangqing`,`weixiujilu`,`changditupian`,`clicknum`) values (24,'2021-04-11 20:10:45','场地名称4','场地类型4',4,'场地位置4','详情4','维修记录4','http://localhost:8080/ssmdyn9h/upload/changdixinxi_changditupian4.jpg',4);
insert  into `changdixinxi`(`id`,`addtime`,`changdimingcheng`,`changdileixing`,`rongnarenshu`,`changdiweizhi`,`xiangqing`,`weixiujilu`,`changditupian`,`clicknum`) values (25,'2021-04-11 20:10:45','场地名称5','场地类型5',5,'场地位置5','详情5','维修记录5','http://localhost:8080/ssmdyn9h/upload/changdixinxi_changditupian5.jpg',5);
insert  into `changdixinxi`(`id`,`addtime`,`changdimingcheng`,`changdileixing`,`rongnarenshu`,`changdiweizhi`,`xiangqing`,`weixiujilu`,`changditupian`,`clicknum`) values (26,'2021-04-11 20:10:45','场地名称6','场地类型6',6,'场地位置6','详情6','维修记录6','http://localhost:8080/ssmdyn9h/upload/changdixinxi_changditupian6.jpg',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'管理员可以更换轮播图','http://localhost:8080/ssmdyn9h/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmdyn9h/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmdyn9h/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618143288780 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-04-11 20:10:45',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (72,'2021-04-11 20:10:45',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (73,'2021-04-11 20:10:45',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (74,'2021-04-11 20:10:45',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (75,'2021-04-11 20:10:45',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (76,'2021-04-11 20:10:45',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1618143288779,'2021-04-11 20:14:48',1618143165099,'1','sadasdsa','XXX');

/*Table structure for table `qicaileixing` */

DROP TABLE IF EXISTS `qicaileixing`;

CREATE TABLE `qicaileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='器材类型';

/*Data for the table `qicaileixing` */

insert  into `qicaileixing`(`id`,`addtime`,`leixing`) values (61,'2021-04-11 20:10:45','体育用品');
insert  into `qicaileixing`(`id`,`addtime`,`leixing`) values (62,'2021-04-11 20:10:45','类型2');
insert  into `qicaileixing`(`id`,`addtime`,`leixing`) values (63,'2021-04-11 20:10:45','类型3');
insert  into `qicaileixing`(`id`,`addtime`,`leixing`) values (64,'2021-04-11 20:10:45','类型4');
insert  into `qicaileixing`(`id`,`addtime`,`leixing`) values (65,'2021-04-11 20:10:45','类型5');
insert  into `qicaileixing`(`id`,`addtime`,`leixing`) values (66,'2021-04-11 20:10:45','类型6');

/*Table structure for table `qicaixinxi` */

DROP TABLE IF EXISTS `qicaixinxi`;

CREATE TABLE `qicaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) DEFAULT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `yongtu` longtext COMMENT '用途',
  `suoshuchangdi` varchar(200) DEFAULT NULL COMMENT '所属场地',
  `beizhu` longtext COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qicaibianhao` (`qicaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='器材信息';

/*Data for the table `qicaixinxi` */

insert  into `qicaixinxi`(`id`,`addtime`,`qicaibianhao`,`qicaimingcheng`,`leixing`,`shuliang`,`yongtu`,`suoshuchangdi`,`beizhu`,`tupian`) values (51,'2021-04-11 20:10:45','器材编号1','器材名称1','类型1',1,'用途1XXX','所属场地1','备注1XX','http://localhost:8080/ssmdyn9h/upload/qicaixinxi_tupian1.jpg');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaibianhao`,`qicaimingcheng`,`leixing`,`shuliang`,`yongtu`,`suoshuchangdi`,`beizhu`,`tupian`) values (52,'2021-04-11 20:10:45','器材编号2','器材名称2','类型2',2,'用途2','所属场地2','备注2','http://localhost:8080/ssmdyn9h/upload/qicaixinxi_tupian2.jpg');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaibianhao`,`qicaimingcheng`,`leixing`,`shuliang`,`yongtu`,`suoshuchangdi`,`beizhu`,`tupian`) values (53,'2021-04-11 20:10:45','器材编号3','器材名称3','类型3',3,'用途3','所属场地3','备注3','http://localhost:8080/ssmdyn9h/upload/qicaixinxi_tupian3.jpg');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaibianhao`,`qicaimingcheng`,`leixing`,`shuliang`,`yongtu`,`suoshuchangdi`,`beizhu`,`tupian`) values (54,'2021-04-11 20:10:45','器材编号4','器材名称4','类型4',4,'用途4','所属场地4','备注4','http://localhost:8080/ssmdyn9h/upload/qicaixinxi_tupian4.jpg');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaibianhao`,`qicaimingcheng`,`leixing`,`shuliang`,`yongtu`,`suoshuchangdi`,`beizhu`,`tupian`) values (55,'2021-04-11 20:10:45','器材编号5','器材名称5','类型5',5,'用途5','所属场地5','备注5','http://localhost:8080/ssmdyn9h/upload/qicaixinxi_tupian5.jpg');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaibianhao`,`qicaimingcheng`,`leixing`,`shuliang`,`yongtu`,`suoshuchangdi`,`beizhu`,`tupian`) values (56,'2021-04-11 20:10:45','器材编号6','器材名称6','类型6',6,'用途6','所属场地6','备注6','http://localhost:8080/ssmdyn9h/upload/qicaixinxi_tupian6.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618143165099,'1','yonghu','用户','u4xvwzy2uj0ta2ig0k0bbvo15saxf0f9','2021-04-11 20:12:49','2021-04-11 21:14:20');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','tli96ydq6zxtojxzuztvgicio8pufj4d','2021-04-11 20:15:38','2021-04-11 21:15:38');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-11 20:10:45');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618143165100 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (11,'2021-04-11 20:10:45','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (12,'2021-04-11 20:10:45','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (13,'2021-04-11 20:10:45','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (14,'2021-04-11 20:10:45','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (15,'2021-04-11 20:10:45','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (16,'2021-04-11 20:10:45','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`) values (1618143165099,'2021-04-11 20:12:45','1','1','1','男','15685684585','','');

/*Table structure for table `yuangongxinxi` */

DROP TABLE IF EXISTS `yuangongxinxi`;

CREATE TABLE `yuangongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `gongzuozhize` longtext COMMENT '工作职责',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='员工信息';

/*Data for the table `yuangongxinxi` */

insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`zhiwu`,`gongzuozhize`,`lianxidianhua`,`zhaopian`) values (41,'2021-04-11 20:10:45','工号1','姓名1','女','XX','工作职责XXX','13823888881','http://localhost:8080/ssmdyn9h/upload/yuangongxinxi_zhaopian1.jpg');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`zhiwu`,`gongzuozhize`,`lianxidianhua`,`zhaopian`) values (42,'2021-04-11 20:10:45','工号2','姓名2','男','职务2','工作职责2','13823888882','http://localhost:8080/ssmdyn9h/upload/yuangongxinxi_zhaopian2.jpg');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`zhiwu`,`gongzuozhize`,`lianxidianhua`,`zhaopian`) values (43,'2021-04-11 20:10:45','工号3','姓名3','男','职务3','工作职责3','13823888883','http://localhost:8080/ssmdyn9h/upload/yuangongxinxi_zhaopian3.jpg');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`zhiwu`,`gongzuozhize`,`lianxidianhua`,`zhaopian`) values (44,'2021-04-11 20:10:45','工号4','姓名4','男','职务4','工作职责4','13823888884','http://localhost:8080/ssmdyn9h/upload/yuangongxinxi_zhaopian4.jpg');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`zhiwu`,`gongzuozhize`,`lianxidianhua`,`zhaopian`) values (45,'2021-04-11 20:10:45','工号5','姓名5','男','职务5','工作职责5','13823888885','http://localhost:8080/ssmdyn9h/upload/yuangongxinxi_zhaopian5.jpg');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`zhiwu`,`gongzuozhize`,`lianxidianhua`,`zhaopian`) values (46,'2021-04-11 20:10:45','工号6','姓名6','男','职务6','工作职责6','13823888886','http://localhost:8080/ssmdyn9h/upload/yuangongxinxi_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
