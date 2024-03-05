/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - wenwanxiaoshou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wenwanxiaoshou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wenwanxiaoshou`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(2,3,'收货人2','17703786902','地址2',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(3,2,'收货人3','17703786903','地址3',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(4,1,'收货人4','17703786904','地址4',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(5,1,'收货人5','17703786905','地址5',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(6,2,'收货人6','17703786906','地址6',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(7,3,'收货人7','17703786907','地址7',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(8,3,'收货人8','17703786908','地址8',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(9,3,'收货人9','17703786909','地址9',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(10,2,'收货人10','17703786910','地址10',1,'2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(11,1,'收货人11','17703786911','地址11',2,'2022-02-10 09:59:57','2022-02-10 11:58:24','2022-02-10 09:59:57');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/wenwanxiaoshou/upload/1644460572191.jpg'),(2,'轮播图2','http://localhost:8080/wenwanxiaoshou/upload/1644460582205.jpg'),(3,'轮播图3','http://localhost:8080/wenwanxiaoshou/upload/1644460592773.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (74,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-02-10 09:59:48'),(75,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-02-10 09:59:48'),(76,'goods_types','商品名称',1,'商品类型1',NULL,NULL,'2022-02-10 09:59:48'),(77,'goods_types','商品名称',2,'商品类型2',NULL,NULL,'2022-02-10 09:59:48'),(78,'goods_types','商品名称',3,'商品类型3',NULL,NULL,'2022-02-10 09:59:48'),(79,'goods_order_payment_types','支付方式',1,'余额支付',NULL,NULL,'2022-02-10 09:59:48'),(80,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-02-10 09:59:48'),(81,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-02-10 09:59:48'),(82,'sex_types','性别类型名称',2,'女',NULL,NULL,'2022-02-10 09:59:48'),(83,'sex_types','性别类型名称',1,'男',NULL,NULL,'2022-02-10 09:59:48'),(84,'goods_order_types','订单类型名称',1,'退款',NULL,NULL,'2022-02-10 09:59:48'),(85,'goods_order_types','订单类型名称',2,'已支付',NULL,NULL,'2022-02-10 09:59:48'),(86,'goods_order_types','订单类型名称',3,'已发货',NULL,NULL,'2022-02-10 09:59:48'),(87,'goods_order_types','订单类型名称',4,'已收货',NULL,NULL,'2022-02-10 09:59:48'),(88,'goods_order_types','订单类型名称',5,'已评价',NULL,NULL,'2022-02-10 09:59:48'),(89,'news_types','新闻类型名称',1,'优惠活动',NULL,NULL,'2022-02-10 09:59:48'),(90,'news_types','新闻类型名称',2,'紧急情况',NULL,NULL,'2022-02-10 09:59:48');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `goods_types` int(11) DEFAULT NULL COMMENT '商品类型  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `goods_kucun_number` int(11) DEFAULT '0' COMMENT '商品库存',
  `goods_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `goods_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `goods_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `goods_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_photo`,`goods_kucun_number`,`goods_old_money`,`goods_new_money`,`goods_clicknum`,`shangxia_types`,`goods_delete`,`goods_content`,`create_time`) values (1,'商品名称1',3,'http://localhost:8080/wenwanxiaoshou/upload/1644460254947.jpg',10000,'728.12','23.33',220,1,1,'<p>商品简介1</p>','2022-02-10 09:59:57'),(2,'商品名称2',3,'http://localhost:8080/wenwanxiaoshou/upload/1644460244117.jpg',10002,'592.20','257.03',204,1,1,'<p>商品简介2</p>','2022-02-10 09:59:57'),(3,'商品名称3',1,'http://localhost:8080/wenwanxiaoshou/upload/1644460193751.png',10002,'551.19','74.76',78,1,1,'<p>商品简介3</p>','2022-02-10 09:59:57'),(4,'商品名称4',2,'http://localhost:8080/wenwanxiaoshou/upload/1644460185419.jpg',10004,'889.08','492.48',406,1,1,'<p>商品简介4</p>','2022-02-10 09:59:57'),(5,'商品名称5',3,'http://localhost:8080/wenwanxiaoshou/upload/1644460142231.jpg',10003,'828.48','243.94',65,1,1,'<p>商品简介5</p>','2022-02-10 09:59:57'),(6,'商品名称6',2,'http://localhost:8080/wenwanxiaoshou/upload/1644460130515.jpg',10006,'742.55','142.02',467,2,1,'<p>商品简介6</p>','2022-02-10 09:59:57'),(7,'商品名称7',3,'http://localhost:8080/wenwanxiaoshou/upload/photo.jpg',10007,'831.28','326.08',416,1,2,'商品简介7','2022-02-10 09:59:57'),(8,'商品名称8',1,'http://localhost:8080/wenwanxiaoshou/upload/photo1.jpg',10008,'632.06','256.52',119,1,2,'商品简介8','2022-02-10 09:59:57'),(9,'商品名称9',1,'http://localhost:8080/wenwanxiaoshou/upload/photo2.jpg',10009,'725.11','326.95',283,1,2,'商品简介9','2022-02-10 09:59:57'),(10,'商品名称10',1,'http://localhost:8080/wenwanxiaoshou/upload/photo3.jpg',100010,'803.85','472.89',405,1,2,'商品简介10','2022-02-10 09:59:57'),(11,'商品名称11',2,'http://localhost:8080/wenwanxiaoshou/upload/photo4.jpg',100011,'891.59','220.21',33,1,2,'商品简介11','2022-02-10 09:59:57');

/*Table structure for table `goods_commentback` */

DROP TABLE IF EXISTS `goods_commentback`;

CREATE TABLE `goods_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `goods_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `goods_commentback` */

insert  into `goods_commentback`(`id`,`goods_id`,`yonghu_id`,`goods_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,1,'评价内容1','回复信息1','2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(2,2,3,'评价内容2','回复信息2','2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(3,3,1,'评价内容3','回复信息3','2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(4,4,1,'评价内容4','回复信息4','2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(5,5,3,'评价内容5','回复信息5','2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57'),(9,9,2,'评价内容9','回复信息9','2022-02-10 09:59:57','2022-02-10 09:59:57','2022-02-10 09:59:57');

/*Table structure for table `goods_order` */

DROP TABLE IF EXISTS `goods_order`;

CREATE TABLE `goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(200) DEFAULT NULL COMMENT '购买的数量',
  `goods_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `goods_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `goods_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `goods_order` */

insert  into `goods_order`(`id`,`goods_order_uuid_number`,`address_id`,`goods_id`,`yonghu_id`,`buy_number`,`goods_order_true_price`,`goods_order_types`,`goods_order_payment_types`,`insert_time`,`create_time`) values (4,'1644464709551',11,5,1,1,'243.94',3,1,'2022-02-10 11:45:10','2022-02-10 11:45:10'),(5,'1644465487503',5,3,1,1,'74.76',3,1,'2022-02-10 11:58:08','2022-02-10 11:58:08'),(6,'1644465487503',5,5,1,1,'243.94',5,1,'2022-02-10 11:58:08','2022-02-10 11:58:08'),(7,'1644469978806',11,1,1,1,'23.33',2,1,'2022-02-10 13:12:59','2022-02-10 13:12:59');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','http://localhost:8080/wenwanxiaoshou/upload/1644460334291.jpg',1,'2022-02-10 09:59:57','<p>新闻详情1</p>','2022-02-10 09:59:57'),(2,'新闻名称2','http://localhost:8080/wenwanxiaoshou/upload/1644460322871.jpg',2,'2022-02-10 09:59:57','<p>新闻详情2</p>','2022-02-10 09:59:57'),(3,'新闻名称3','http://localhost:8080/wenwanxiaoshou/upload/1644460315095.jpg',1,'2022-02-10 09:59:57','<p>新闻详情3</p>','2022-02-10 09:59:57'),(4,'新闻名称4','http://localhost:8080/wenwanxiaoshou/upload/1644460307993.jpg',2,'2022-02-10 09:59:57','<p>新闻详情4</p>','2022-02-10 09:59:57');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','w0klx0uoju2abven2rd5cnfgh989cj28','2022-02-10 09:46:11','2022-02-10 14:56:27'),(2,1,'admin','users','管理员','tbnmn8di7ksrtv5qpra45nmaqolhzt7g','2022-02-10 10:20:38','2022-02-10 14:58:21');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

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
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/wenwanxiaoshou/upload/1644464117151.jpg','17703786901','410224199610232001',1,'9665.55',1,'2022-02-10 09:59:57'),(2,'a2','123456','用户姓名2','http://localhost:8080/wenwanxiaoshou/upload/1644464655045.jpg','17703786902','410224199610232002',1,'774.75',1,'2022-02-10 09:59:57'),(3,'a3','123456','用户姓名3','http://localhost:8080/wenwanxiaoshou/upload/1644464670454.jpg','17703786903','410224199610232003',1,'934.48',1,'2022-02-10 09:59:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
