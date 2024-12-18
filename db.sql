/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaojiuyezaopin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaojiuyezaopin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaojiuyezaopin`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'jianli_types','求职意向',1,'求职意向1',NULL,NULL,'2023-03-28 10:26:55'),(2,'jianli_types','求职意向',2,'求职意向2',NULL,NULL,'2023-03-28 10:26:55'),(3,'jianli_types','求职意向',3,'求职意向3',NULL,NULL,'2023-03-28 10:26:55'),(4,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2023-03-28 10:26:55'),(5,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2023-03-28 10:26:55'),(6,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2023-03-28 10:26:55'),(7,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2023-03-28 10:26:55'),(8,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2023-03-28 10:26:55'),(9,'sex_types','性别',1,'男',NULL,NULL,'2023-03-28 10:26:55'),(10,'sex_types','性别',2,'女',NULL,NULL,'2023-03-28 10:26:55'),(13,'news_types','公告信息类型',1,'公告信息类型1',NULL,NULL,'2023-03-28 10:26:55'),(14,'news_types','公告信息类型',2,'公告信息类型2',NULL,NULL,'2023-03-28 10:26:55'),(15,'news_types','公告信息类型',3,'公告信息类型3',NULL,NULL,'2023-03-28 10:26:55'),(17,'toudi_yesno_types','投递状态',1,'未回复',NULL,NULL,'2023-03-28 10:26:55'),(18,'toudi_yesno_types','投递状态',2,'通过',NULL,NULL,'2023-03-28 10:26:55'),(19,'toudi_yesno_types','投递状态',3,'拒绝',NULL,NULL,'2023-03-28 10:26:55'),(20,'gongsi_types','企业类型',1,'企业类型1',NULL,NULL,'2023-03-28 10:26:55'),(21,'gongsi_types','企业类型',2,'企业类型2',NULL,NULL,'2023-03-28 10:26:55'),(22,'gongsi_types','企业类型',3,'企业类型3',NULL,NULL,'2023-03-28 10:26:55'),(23,'leixing_types','招聘类型',1,'招聘类型1',NULL,NULL,'2023-03-28 10:26:55'),(24,'leixing_types','招聘类型',2,'招聘类型2',NULL,NULL,'2023-03-28 10:26:55'),(25,'leixing_types','招聘类型',3,'招聘类型3',NULL,NULL,'2023-03-28 10:26:55'),(26,'zhaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-28 10:26:55'),(27,'zhaopin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-28 10:26:55'),(28,'zhaopin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-28 10:26:55'),(29,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-28 10:26:55'),(30,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-28 10:26:55');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '企业',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`gongsi_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,2,NULL,'发布内容1',421,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(2,'帖子标题2',NULL,1,NULL,'发布内容2',37,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(3,'帖子标题3',NULL,2,NULL,'发布内容3',476,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(4,'帖子标题4',NULL,3,NULL,'发布内容4',119,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(5,'帖子标题5',NULL,1,NULL,'发布内容5',221,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(6,'帖子标题6',NULL,3,NULL,'发布内容6',133,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(7,'帖子标题7',NULL,2,NULL,'发布内容7',417,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(8,'帖子标题8',NULL,1,NULL,'发布内容8',360,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(9,'帖子标题9',NULL,3,NULL,'发布内容9',417,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(10,'帖子标题10',NULL,1,NULL,'发布内容10',438,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(11,'帖子标题11',NULL,3,NULL,'发布内容11',399,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(12,'帖子标题12',NULL,1,NULL,'发布内容12',18,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(13,'帖子标题13',NULL,1,NULL,'发布内容13',305,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(14,'帖子标题14',NULL,1,NULL,'发布内容14',390,1,'2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(15,NULL,NULL,1,NULL,'123123123',14,2,'2023-03-28 11:31:57',NULL,'2023-03-28 11:31:57'),(16,NULL,1,NULL,NULL,'123123123',14,2,'2023-03-28 11:36:59',NULL,'2023-03-28 11:36:59'),(17,NULL,NULL,NULL,1,'123123',14,2,'2023-03-28 11:37:36',NULL,'2023-03-28 11:37:36');

/*Table structure for table `gongsi` */

DROP TABLE IF EXISTS `gongsi`;

CREATE TABLE `gongsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `gongsi_types` int(11) DEFAULT NULL COMMENT '企业类型',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '企业封面',
  `gongsi_content` longtext COMMENT '企业简介 ',
  `gongsi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `gongsi` */

insert  into `gongsi`(`id`,`username`,`password`,`gongsi_name`,`gongsi_types`,`gongsi_phone`,`gongsi_email`,`gongsi_photo`,`gongsi_content`,`gongsi_delete`,`create_time`) values (1,'a1','123456','企业名称1',3,'17703786901','1@qq.com','upload/gongsi1.jpg','企业简介1',1,'2023-03-28 10:28:11'),(2,'a2','123456','企业名称2',2,'17703786902','2@qq.com','upload/gongsi2.jpg','企业简介2',1,'2023-03-28 10:28:11'),(3,'a3','123456','企业名称3',2,'17703786903','3@qq.com','upload/gongsi3.jpg','企业简介3',1,'2023-03-28 10:28:11');

/*Table structure for table `jianli` */

DROP TABLE IF EXISTS `jianli`;

CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int(11) DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '位置',
  `jiaoyu_text` longtext COMMENT '教育经历',
  `shixi_text` longtext COMMENT '实习或工作经历',
  `geren_text` longtext COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='简历';

/*Data for the table `jianli` */

insert  into `jianli`(`id`,`yonghu_id`,`jianli_uuid_number`,`jianli_name`,`jianli_xingming`,`jianli_types`,`jianli_xinzi`,`jianli_xueli`,`jianli_jingli`,`sex_types`,`jianli_file`,`jianli_phone`,`jianli_photo`,`jianli_address`,`jiaoyu_text`,`shixi_text`,`geren_text`,`create_time`) values (1,1,'1679970491811','简历标题1','姓名1',1,'期望工资1','学历1','工作经历1',2,'upload/file.rar','17703786901','upload/jianli1.jpg','位置1','教育经历1','实习或工作经历1','个人介绍1','2023-03-28 10:28:11'),(2,2,'1679970491732','简历标题2','姓名2',1,'期望工资2','学历2','工作经历2',2,'upload/file.rar','17703786902','upload/jianli2.jpg','位置2','教育经历2','实习或工作经历2','个人介绍2','2023-03-28 10:28:11'),(3,3,'1679970491714','简历标题3','姓名3',2,'期望工资3','学历3','工作经历3',1,'upload/file.rar','17703786903','upload/jianli3.jpg','位置3','教育经历3','实习或工作经历3','个人介绍3','2023-03-28 10:28:11');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` longtext COMMENT '公告信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告信息标题1',2,'upload/news1.jpg','2023-03-28 10:28:11','公告信息详情1',1,'2023-03-28 10:28:11'),(2,'公告信息标题2',3,'upload/news2.jpg','2023-03-28 10:28:11','公告信息详情2',1,'2023-03-28 10:28:11'),(3,'公告信息标题3',1,'upload/news3.jpg','2023-03-28 10:28:11','公告信息详情3',1,'2023-03-28 10:28:11'),(4,'公告信息标题4',3,'upload/news4.jpg','2023-03-28 10:28:11','公告信息详情4',1,'2023-03-28 10:28:11'),(5,'公告信息标题5',3,'upload/news5.jpg','2023-03-28 10:28:11','公告信息详情5',1,'2023-03-28 10:28:11'),(6,'公告信息标题6',2,'upload/news6.jpg','2023-03-28 10:28:11','公告信息详情6',1,'2023-03-28 10:28:11'),(7,'公告信息标题7',1,'upload/news7.jpg','2023-03-28 10:28:11','公告信息详情7',1,'2023-03-28 10:28:11'),(8,'公告信息标题8',3,'upload/news8.jpg','2023-03-28 10:28:11','公告信息详情8',1,'2023-03-28 10:28:11'),(9,'公告信息标题9',2,'upload/news9.jpg','2023-03-28 10:28:11','公告信息详情9',1,'2023-03-28 10:28:11'),(10,'公告信息标题10',2,'upload/news10.jpg','2023-03-28 10:28:11','公告信息详情10',1,'2023-03-28 10:28:11'),(11,'公告信息标题11',2,'upload/news11.jpg','2023-03-28 10:28:11','公告信息详情11',1,'2023-03-28 10:28:11'),(12,'公告信息标题12',2,'upload/news12.jpg','2023-03-28 10:28:11','公告信息详情12',1,'2023-03-28 10:28:11'),(13,'公告信息标题13',2,'upload/news13.jpg','2023-03-28 10:28:11','公告信息详情13',1,'2023-03-28 10:28:11'),(14,'公告信息标题14',1,'upload/news14.jpg','2023-03-28 10:28:11','公告信息详情14',1,'2023-03-28 10:28:11');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '采购员id',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','gongsi','企业','079ak8nll4nhwh8sywc9unu6q1dvd2pv','2023-03-28 10:59:11','2023-03-28 12:39:22'),(2,1,'a1','yonghu','用户','pd798cxss39qhxabyelowljev85y8irr','2023-03-28 11:22:28','2023-03-28 12:33:00'),(3,1,'admin','users','管理员','zap6kp69hregii8bdq4z7ag0512ah5ko','2023-03-28 11:37:06','2023-03-28 12:37:07');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tongzhi_content` longtext COMMENT '通知信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='企业通知';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`yonghu_id`,`tongzhi_content`,`insert_time`,`create_time`) values (1,2,'通知信息1','2023-03-28 10:28:11','2023-03-28 10:28:11'),(2,2,'通知信息2','2023-03-28 10:28:11','2023-03-28 10:28:11'),(3,3,'通知信息3','2023-03-28 10:28:11','2023-03-28 10:28:11'),(4,3,'通知信息4','2023-03-28 10:28:11','2023-03-28 10:28:11'),(5,3,'通知信息5','2023-03-28 10:28:11','2023-03-28 10:28:11'),(6,1,'通知信息6','2023-03-28 10:28:11','2023-03-28 10:28:11'),(7,3,'通知信息7','2023-03-28 10:28:11','2023-03-28 10:28:11'),(8,2,'通知信息8','2023-03-28 10:28:11','2023-03-28 10:28:11'),(9,1,'通知信息9','2023-03-28 10:28:11','2023-03-28 10:28:11'),(10,1,'通知信息10','2023-03-28 10:28:11','2023-03-28 10:28:11'),(13,2,'通知信息13','2023-03-28 10:28:11','2023-03-28 10:28:11'),(14,3,'通知信息14','2023-03-28 10:28:11','2023-03-28 10:28:11');

/*Table structure for table `toudi` */

DROP TABLE IF EXISTS `toudi`;

CREATE TABLE `toudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int(11) DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `toudi_yesno_types` int(11) DEFAULT NULL COMMENT '投递状态 Search111',
  `toudi_yesno_text` longtext COMMENT '投递回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='简历投递';

/*Data for the table `toudi` */

insert  into `toudi`(`id`,`jianli_id`,`zhaopin_id`,`toudi_yesno_types`,`toudi_yesno_text`,`insert_time`,`create_time`) values (1,1,1,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(2,2,2,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(3,3,3,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(4,1,4,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(5,1,5,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(6,1,6,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(7,1,7,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(8,2,8,3,'12312312','2023-03-28 10:28:11','2023-03-28 10:28:11'),(9,2,9,2,'123123','2023-03-28 10:28:11','2023-03-28 10:28:11'),(10,2,10,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(11,2,11,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(12,2,12,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(13,3,13,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(14,3,14,1,NULL,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(31,1,14,1,NULL,'2023-03-28 11:30:41','2023-03-28 11:30:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-28 10:26:54');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',2,1,'2023-03-28 10:28:11'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',1,1,'2023-03-28 10:28:11'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',1,1,'2023-03-28 10:28:11');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '企业',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zan_number` int(111) DEFAULT NULL COMMENT '赞',
  `cai_number` int(111) DEFAULT NULL COMMENT '踩',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `leixing_types` int(11) DEFAULT NULL COMMENT '招聘类型 Search111',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` longtext COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='职位招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`gongsi_id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_daiyu`,`zhaopin_address`,`lianxiren_name`,`zhaopin_phone`,`zan_number`,`cai_number`,`zhaopin_types`,`leixing_types`,`zhaopin_renshu_number`,`shangxia_types`,`zhaopin_content`,`create_time`) values (1,3,'招聘信息名称1','upload/zhaopin1.jpg','薪资待遇1','上班地点1','联系人1','17703786901',299,443,1,1,450,1,'招聘信息详情1','2023-03-28 10:28:11'),(2,3,'招聘信息名称2','upload/zhaopin2.jpg','薪资待遇2','上班地点2','联系人2','17703786902',317,59,2,1,430,1,'招聘信息详情2','2023-03-28 10:28:11'),(3,2,'招聘信息名称3','upload/zhaopin3.jpg','薪资待遇3','上班地点3','联系人3','17703786903',424,101,1,2,210,1,'招聘信息详情3','2023-03-28 10:28:11'),(4,2,'招聘信息名称4','upload/zhaopin4.jpg','薪资待遇4','上班地点4','联系人4','17703786904',461,223,2,1,85,1,'招聘信息详情4','2023-03-28 10:28:11'),(5,1,'招聘信息名称5','upload/zhaopin5.jpg','薪资待遇5','上班地点5','联系人5','17703786905',122,83,3,3,74,1,'招聘信息详情5','2023-03-28 10:28:11'),(6,2,'招聘信息名称6','upload/zhaopin6.jpg','薪资待遇6','上班地点6','联系人6','17703786906',342,273,3,3,245,1,'招聘信息详情6','2023-03-28 10:28:11'),(7,2,'招聘信息名称7','upload/zhaopin7.jpg','薪资待遇7','上班地点7','联系人7','17703786907',463,431,3,3,474,1,'招聘信息详情7','2023-03-28 10:28:11'),(8,1,'招聘信息名称8','upload/zhaopin8.jpg','薪资待遇8','上班地点8','联系人8','17703786908',23,243,2,2,19,1,'招聘信息详情8','2023-03-28 10:28:11'),(9,1,'招聘信息名称9','upload/zhaopin9.jpg','薪资待遇9','上班地点9','联系人9','17703786909',305,247,1,1,33,1,'招聘信息详情9','2023-03-28 10:28:11'),(10,3,'招聘信息名称10','upload/zhaopin10.jpg','薪资待遇10','上班地点10','联系人10','17703786910',43,238,1,3,133,1,'招聘信息详情10','2023-03-28 10:28:11'),(11,2,'招聘信息名称11','upload/zhaopin11.jpg','薪资待遇11','上班地点11','联系人11','17703786911',89,129,2,1,407,1,'招聘信息详情11','2023-03-28 10:28:11'),(12,3,'招聘信息名称12','upload/zhaopin12.jpg','薪资待遇12','上班地点12','联系人12','17703786912',56,244,2,2,265,1,'招聘信息详情12','2023-03-28 10:28:11'),(13,3,'招聘信息名称13','upload/zhaopin13.jpg','薪资待遇13','上班地点13','联系人13','17703786913',418,363,2,2,336,1,'招聘信息详情13','2023-03-28 10:28:11'),(14,2,'招聘信息名称14','upload/zhaopin14.jpg','薪资待遇14','上班地点14','联系人14','17703786914',321,247,1,1,166,1,'招聘信息详情14','2023-03-28 10:28:11');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='职位收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(2,2,2,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(3,3,3,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(4,4,2,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(5,5,1,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(6,6,3,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(7,7,2,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(8,8,1,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(9,9,2,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(11,11,3,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(12,12,3,1,'2023-03-28 10:28:11','2023-03-28 10:28:11'),(13,13,2,1,'2023-03-28 10:28:11','2023-03-28 10:28:11');

/*Table structure for table `zhaopin_liuyan` */

DROP TABLE IF EXISTS `zhaopin_liuyan`;

CREATE TABLE `zhaopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_liuyan_text` longtext COMMENT '留言内容',
  `reply_text` longtext COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='职位留言';

/*Data for the table `zhaopin_liuyan` */

insert  into `zhaopin_liuyan`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'留言内容1','回复信息1','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(2,2,2,'留言内容2','回复信息2','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(3,3,3,'留言内容3','回复信息3','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(4,4,1,'留言内容4','回复信息4','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(5,5,2,'留言内容5','回复信息5','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(6,6,1,'留言内容6','回复信息6','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(7,7,3,'留言内容7','回复信息7','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(8,8,2,'留言内容8','回复信息8','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(9,9,3,'留言内容9','回复信息91111','2023-03-28 10:28:11','2023-03-28 11:34:19','2023-03-28 10:28:11'),(10,10,3,'留言内容10','回复信息10','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(11,11,3,'留言内容11','回复信息11','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(12,12,3,'留言内容12','回复信息12','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(13,13,2,'留言内容13','回复信息13','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11'),(14,14,3,'留言内容14','回复信息14','2023-03-28 10:28:11','2023-03-28 10:28:11','2023-03-28 10:28:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
