/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t162`;
CREATE DATABASE IF NOT EXISTS `t162` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t162`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/jingquminsuyuyue/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/jingquminsuyuyue/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/jingquminsuyuyue/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'fangjian_types', '房间类型', 1, '房间类型1', NULL, NULL, '2022-03-01 13:00:08'),
	(2, 'fangjian_types', '房间类型', 2, '房间类型2', NULL, NULL, '2022-03-01 13:00:08'),
	(3, 'fangjian_types', '房间类型', 3, '房间类型3', NULL, NULL, '2022-03-01 13:00:08'),
	(4, 'fnagjian_yuye_yesno_types', '审核结果', 1, '未审核', NULL, NULL, '2022-03-01 13:00:08'),
	(5, 'fnagjian_yuye_yesno_types', '审核结果', 2, '通过', NULL, NULL, '2022-03-01 13:00:08'),
	(6, 'fnagjian_yuye_yesno_types', '审核结果', 3, '拒绝', NULL, NULL, '2022-03-01 13:00:08'),
	(7, 'meishi_types', '美食类型', 1, '美食类型1', NULL, NULL, '2022-03-01 13:00:08'),
	(8, 'meishi_types', '美食类型', 2, '美食类型2', NULL, NULL, '2022-03-01 13:00:08'),
	(9, 'meishi_types', '美食类型', 3, '美食类型3', NULL, NULL, '2022-03-01 13:00:08'),
	(10, 'meishi_yuye_yesno_types', '审核结果', 1, '未审核', NULL, NULL, '2022-03-01 13:00:08'),
	(11, 'meishi_yuye_yesno_types', '审核结果', 2, '通过', NULL, NULL, '2022-03-01 13:00:08'),
	(12, 'meishi_yuye_yesno_types', '审核结果', 3, '拒绝', NULL, NULL, '2022-03-01 13:00:08'),
	(13, 'jingdian_types', '景点类型', 1, '景点类型1', NULL, NULL, '2022-03-01 13:00:08'),
	(14, 'jingdian_types', '景点类型', 2, '景点类型2', NULL, NULL, '2022-03-01 13:00:08'),
	(15, 'jingdian_types', '景点类型', 3, '景点类型3', NULL, NULL, '2022-03-01 13:00:08'),
	(16, 'jingdian_yuye_yesno_types', '审核结果', 1, '未审核', NULL, NULL, '2022-03-01 13:00:08'),
	(17, 'jingdian_yuye_yesno_types', '审核结果', 2, '通过', NULL, NULL, '2022-03-01 13:00:08'),
	(18, 'jingdian_yuye_yesno_types', '审核结果', 3, '拒绝', NULL, NULL, '2022-03-01 13:00:08'),
	(19, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-01 13:00:08'),
	(20, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-01 13:00:08'),
	(21, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-01 13:00:09'),
	(22, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-01 13:00:09'),
	(23, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-01 13:00:09');

DROP TABLE IF EXISTS `fangjian`;
CREATE TABLE IF NOT EXISTS `fangjian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_name` varchar(200) DEFAULT NULL COMMENT '房间名称 Search111',
  `fangjian_photo` varchar(200) DEFAULT NULL COMMENT '房间图片',
  `fangjian_tese` varchar(200) DEFAULT NULL COMMENT '房间特色',
  `fangjian_peizhi` varchar(200) DEFAULT NULL COMMENT '房间配置',
  `fangjian_money` decimal(10,2) DEFAULT NULL COMMENT '价格（天）',
  `fangjian_types` int DEFAULT NULL COMMENT '房间类型  Search111',
  `fangjian_number` int DEFAULT NULL COMMENT '房间剩余数量',
  `fangjian_clicknum` int DEFAULT NULL COMMENT '点击次数',
  `fangjian_content` text COMMENT '房间详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='房间信息';

DELETE FROM `fangjian`;
INSERT INTO `fangjian` (`id`, `fangjian_name`, `fangjian_photo`, `fangjian_tese`, `fangjian_peizhi`, `fangjian_money`, `fangjian_types`, `fangjian_number`, `fangjian_clicknum`, `fangjian_content`, `create_time`) VALUES
	(1, '房间名称1', 'http://localhost:8080/jingquminsuyuyue/upload/1646139844193.jpg', '房间特色1', '房间配置1', 928.25, 3, 224, 154, '<p>房间详情1</p>', '2022-03-01 13:00:22'),
	(2, '房间名称2', 'http://localhost:8080/jingquminsuyuyue/upload/1646139836896.jpg', '房间特色2', '房间配置2', 857.58, 1, 440, 318, '<p>房间详情2</p>', '2022-03-01 13:00:22'),
	(3, '房间名称3', 'http://localhost:8080/jingquminsuyuyue/upload/1646139829573.jpg', '房间特色3', '房间配置3', 767.43, 2, 441, 32, '<p>房间详情3</p>', '2022-03-01 13:00:22'),
	(4, '房间名称4', 'http://localhost:8080/jingquminsuyuyue/upload/1646139822205.jpg', '房间特色4', '房间配置4', 870.40, 1, 200, 49, '<p>房间详情4</p>', '2022-03-01 13:00:22'),
	(5, '房间名称5', 'http://localhost:8080/jingquminsuyuyue/upload/1646139815281.jpg', '房间特色5', '房间配置5', 754.42, 2, 132, 222, '<p>房间详情5</p>', '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `fangjian_liuyan`;
CREATE TABLE IF NOT EXISTS `fangjian_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_id` int DEFAULT NULL COMMENT '房间',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fangjian_liuyan_text` text COMMENT '反馈内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '反馈时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='房间反馈';

DELETE FROM `fangjian_liuyan`;
INSERT INTO `fangjian_liuyan` (`id`, `fangjian_id`, `yonghu_id`, `fangjian_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '反馈内容1', '回复信息1', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(2, 2, 3, '反馈内容2', '回复信息2', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(3, 3, 1, '反馈内容3', '回复信息3', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(4, 4, 2, '反馈内容4', '回复信息4', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(5, 5, 3, '反馈内容5', '回复信息5', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `fnagjian_yuye`;
CREATE TABLE IF NOT EXISTS `fnagjian_yuye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_id` int DEFAULT NULL COMMENT '房间',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fnagjian_yuye_time` date DEFAULT NULL COMMENT '预约日期',
  `fnagjian_yuye_text` text COMMENT '预约备注',
  `fnagjian_tiwen` decimal(10,2) DEFAULT NULL COMMENT '近期体温',
  `fnagjian_text` text COMMENT '近期行程',
  `fnagjian_yuye_yesno_types` int DEFAULT NULL COMMENT '审核结果',
  `fnagjian_yuye_yesno_text` text COMMENT '审核反馈',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='房间预约';

DELETE FROM `fnagjian_yuye`;
INSERT INTO `fnagjian_yuye` (`id`, `fangjian_id`, `yonghu_id`, `fnagjian_yuye_time`, `fnagjian_yuye_text`, `fnagjian_tiwen`, `fnagjian_text`, `fnagjian_yuye_yesno_types`, `fnagjian_yuye_yesno_text`, `create_time`) VALUES
	(1, 1, 2, '2022-03-01', '预约备注1', 176.93, '近期行程1', 1, NULL, '2022-03-01 13:00:22'),
	(2, 2, 3, '2022-03-01', '预约备注2', 839.66, '近期行程2', 1, NULL, '2022-03-01 13:00:22'),
	(3, 3, 1, '2022-03-01', '预约备注3', 99.56, '近期行程3', 1, NULL, '2022-03-01 13:00:22'),
	(4, 4, 2, '2022-03-01', '预约备注4', 797.68, '近期行程4', 1, NULL, '2022-03-01 13:00:22'),
	(5, 5, 2, '2022-03-01', '预约备注5', 871.90, '近期行程5', 2, '123', '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `gongzuojilu`;
CREATE TABLE IF NOT EXISTS `gongzuojilu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `gongzuorenyuan_tiwen` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `insert_time` date DEFAULT NULL COMMENT '添加时间',
  `gongzuorenyuan_text` text COMMENT '工作记录',
  `gongzuorenyuan_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='工作记录';

DELETE FROM `gongzuojilu`;
INSERT INTO `gongzuojilu` (`id`, `gongzuorenyuan_id`, `gongzuorenyuan_tiwen`, `insert_time`, `gongzuorenyuan_text`, `gongzuorenyuan_delete`, `create_time`) VALUES
	(1, 3, 27.39, '2022-03-01', '工作记录1', 172, '2022-03-01 13:00:22'),
	(2, 2, 198.86, '2022-03-01', '工作记录2', 353, '2022-03-01 13:00:22'),
	(3, 3, 932.25, '2022-03-01', '工作记录3', 474, '2022-03-01 13:00:22'),
	(4, 1, 821.53, '2022-03-01', '工作记录4', 260, '2022-03-01 13:00:22'),
	(5, 1, 451.80, '2022-03-01', '工作记录5', 318, '2022-03-01 13:00:22'),
	(6, 1, 35.60, '2022-03-01', '打扫了卫生 接待了客户', 1, '2022-03-01 13:04:46');

DROP TABLE IF EXISTS `gongzuorenyuan`;
CREATE TABLE IF NOT EXISTS `gongzuorenyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongzuorenyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuorenyuan_name` varchar(200) DEFAULT NULL COMMENT '工作人员姓名 Search111 ',
  `gongzuorenyuan_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `gongzuorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongzuorenyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongzuorenyuan_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='工作人员';

DELETE FROM `gongzuorenyuan`;
INSERT INTO `gongzuorenyuan` (`id`, `gongzuorenyuan_uuid_number`, `username`, `password`, `gongzuorenyuan_name`, `gongzuorenyuan_photo`, `sex_types`, `gongzuorenyuan_phone`, `gongzuorenyuan_email`, `gongzuorenyuan_delete`, `create_time`) VALUES
	(1, '164613962288211', '工作人员1', '123456', '工作人员姓名1', 'http://localhost:8080/jingquminsuyuyue/upload/gongzuorenyuan1.jpg', 1, '17703786901', '1@qq.com', 1, '2022-03-01 13:00:22'),
	(2, '16461396228828', '工作人员2', '123456', '工作人员姓名2', 'http://localhost:8080/jingquminsuyuyue/upload/gongzuorenyuan2.jpg', 1, '17703786902', '2@qq.com', 1, '2022-03-01 13:00:22'),
	(3, '16461396228825', '工作人员3', '123456', '工作人员姓名3', 'http://localhost:8080/jingquminsuyuyue/upload/gongzuorenyuan3.jpg', 1, '17703786903', '3@qq.com', 1, '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `jingdian`;
CREATE TABLE IF NOT EXISTS `jingdian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名称 Search111',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdian_types` int DEFAULT NULL COMMENT '景点类型  Search111',
  `jingdian_money` decimal(10,2) DEFAULT NULL COMMENT '景点价格',
  `jingdian_number` int DEFAULT NULL COMMENT '景点数量',
  `jingdian_clicknum` int DEFAULT NULL COMMENT '点击次数',
  `jingdian_content` text COMMENT '景点详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='景点信息';

DELETE FROM `jingdian`;
INSERT INTO `jingdian` (`id`, `jingdian_name`, `jingdian_photo`, `jingdian_types`, `jingdian_money`, `jingdian_number`, `jingdian_clicknum`, `jingdian_content`, `create_time`) VALUES
	(1, '景点名称1', 'http://localhost:8080/jingquminsuyuyue/upload/jingdian1.jpg', 3, 937.49, 349, 399, '景点详情1', '2022-03-01 13:00:22'),
	(2, '景点名称2', 'http://localhost:8080/jingquminsuyuyue/upload/jingdian2.jpg', 3, 695.65, 232, 35, '景点详情2', '2022-03-01 13:00:22'),
	(3, '景点名称3', 'http://localhost:8080/jingquminsuyuyue/upload/jingdian3.jpg', 1, 446.12, 493, 394, '景点详情3', '2022-03-01 13:00:22'),
	(4, '景点名称4', 'http://localhost:8080/jingquminsuyuyue/upload/jingdian4.jpg', 3, 427.53, 168, 449, '景点详情4', '2022-03-01 13:00:22'),
	(5, '景点名称5', 'http://localhost:8080/jingquminsuyuyue/upload/jingdian5.jpg', 3, 163.38, 276, 369, '景点详情5', '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `jingdian_liuyan`;
CREATE TABLE IF NOT EXISTS `jingdian_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int DEFAULT NULL COMMENT '景点',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingdian_liuyan_text` text COMMENT '反馈内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '反馈时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='景点反馈';

DELETE FROM `jingdian_liuyan`;
INSERT INTO `jingdian_liuyan` (`id`, `jingdian_id`, `yonghu_id`, `jingdian_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '反馈内容1', '回复信息1', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(2, 2, 1, '反馈内容2', '回复信息2', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(3, 3, 2, '反馈内容3', '回复信息3', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(4, 4, 1, '反馈内容4', '回复信息4', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(5, 5, 1, '反馈内容5', '回复信息5', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `jingdian_yuye`;
CREATE TABLE IF NOT EXISTS `jingdian_yuye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int DEFAULT NULL COMMENT '景点',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingdian_yuye_time` date DEFAULT NULL COMMENT '预约日期',
  `jingdian_yuye_text` text COMMENT '预约备注',
  `jingdian_yuye_yesno_types` int DEFAULT NULL COMMENT '审核结果',
  `jingdian_yuye_yesno_text` text COMMENT '审核反馈',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='景点预约';

DELETE FROM `jingdian_yuye`;
INSERT INTO `jingdian_yuye` (`id`, `jingdian_id`, `yonghu_id`, `jingdian_yuye_time`, `jingdian_yuye_text`, `jingdian_yuye_yesno_types`, `jingdian_yuye_yesno_text`, `create_time`) VALUES
	(1, 1, 3, '2022-03-01', '预约备注1', 1, NULL, '2022-03-01 13:00:22'),
	(2, 2, 3, '2022-03-01', '预约备注2', 1, NULL, '2022-03-01 13:00:22'),
	(3, 3, 2, '2022-03-01', '预约备注3', 1, NULL, '2022-03-01 13:00:22'),
	(4, 4, 3, '2022-03-01', '预约备注4', 1, NULL, '2022-03-01 13:00:22'),
	(5, 5, 2, '2022-03-01', '预约备注5', 1, NULL, '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `meishi`;
CREATE TABLE IF NOT EXISTS `meishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称 Search111',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '美食图片',
  `meishi_types` int DEFAULT NULL COMMENT '美食类型  Search111',
  `meishi_number` int DEFAULT NULL COMMENT '美食数量',
  `meishi_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `meishi_clicknum` int DEFAULT NULL COMMENT '点击次数',
  `meishi_content` text COMMENT '美食详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='美食信息';

DELETE FROM `meishi`;
INSERT INTO `meishi` (`id`, `meishi_name`, `meishi_photo`, `meishi_types`, `meishi_number`, `meishi_money`, `meishi_clicknum`, `meishi_content`, `create_time`) VALUES
	(1, '美食名称1', 'http://localhost:8080/jingquminsuyuyue/upload/meishi1.jpg', 2, 119, 586.18, 106, '美食详情1', '2022-03-01 13:00:22'),
	(2, '美食名称2', 'http://localhost:8080/jingquminsuyuyue/upload/meishi2.jpg', 1, 260, 528.16, 242, '美食详情2', '2022-03-01 13:00:22'),
	(3, '美食名称3', 'http://localhost:8080/jingquminsuyuyue/upload/meishi3.jpg', 2, 195, 378.17, 297, '美食详情3', '2022-03-01 13:00:22'),
	(4, '美食名称4', 'http://localhost:8080/jingquminsuyuyue/upload/meishi4.jpg', 2, 382, 22.74, 448, '美食详情4', '2022-03-01 13:00:22'),
	(5, '美食名称5', 'http://localhost:8080/jingquminsuyuyue/upload/meishi5.jpg', 2, 400, 34.79, 444, '美食详情5', '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `meishi_liuyan`;
CREATE TABLE IF NOT EXISTS `meishi_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meishi_liuyan_text` text COMMENT '反馈内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '反馈时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='美食反馈';

DELETE FROM `meishi_liuyan`;
INSERT INTO `meishi_liuyan` (`id`, `meishi_id`, `yonghu_id`, `meishi_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '反馈内容1', '回复信息1', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(2, 2, 1, '反馈内容2', '回复信息2', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(3, 3, 1, '反馈内容3', '回复信息3', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(4, 4, 2, '反馈内容4', '回复信息4', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22'),
	(5, 5, 1, '反馈内容5', '回复信息5', '2022-03-01 13:00:22', '2022-03-01 13:00:22', '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `meishi_yuye`;
CREATE TABLE IF NOT EXISTS `meishi_yuye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meishi_yuye_time` date DEFAULT NULL COMMENT '预约日期',
  `meishi_yuye_text` text COMMENT '预约备注',
  `meishi_yuye_yesno_types` int DEFAULT NULL COMMENT '审核结果',
  `meishi_yuye_yesno_text` text COMMENT '审核反馈',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='美食预约';

DELETE FROM `meishi_yuye`;
INSERT INTO `meishi_yuye` (`id`, `meishi_id`, `yonghu_id`, `meishi_yuye_time`, `meishi_yuye_text`, `meishi_yuye_yesno_types`, `meishi_yuye_yesno_text`, `create_time`) VALUES
	(1, 1, 3, '2022-03-01', '预约备注1', 1, NULL, '2022-03-01 13:00:22'),
	(2, 2, 3, '2022-03-01', '预约备注2', 1, NULL, '2022-03-01 13:00:22'),
	(3, 3, 1, '2022-03-01', '预约备注3', 1, NULL, '2022-03-01 13:00:22'),
	(4, 4, 1, '2022-03-01', '预约备注4', 1, NULL, '2022-03-01 13:00:22'),
	(5, 5, 3, '2022-03-01', '预约备注5', 2, '通过', '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/jingquminsuyuyue/upload/news1.jpg', '2022-03-01 13:00:22', '公告详情1', '2022-03-01 13:00:22'),
	(2, '公告标题2', 1, 'http://localhost:8080/jingquminsuyuyue/upload/news2.jpg', '2022-03-01 13:00:22', '公告详情2', '2022-03-01 13:00:22'),
	(3, '公告标题3', 3, 'http://localhost:8080/jingquminsuyuyue/upload/news3.jpg', '2022-03-01 13:00:22', '公告详情3', '2022-03-01 13:00:22'),
	(4, '公告标题4', 3, 'http://localhost:8080/jingquminsuyuyue/upload/news4.jpg', '2022-03-01 13:00:22', '公告详情4', '2022-03-01 13:00:22'),
	(5, '公告标题5', 1, 'http://localhost:8080/jingquminsuyuyue/upload/news5.jpg', '2022-03-01 13:00:22', '公告详情5', '2022-03-01 13:00:22');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '4xx3pul2z8ur9l5cme82xdlngkmbhzzt', '2022-03-01 11:39:39', '2024-04-28 14:19:15'),
	(2, 1, 'a1', 'yonghu', '用户', 'ez9lw1hdkjqbdk7sw73sviyzzd8myn4b', '2022-03-01 11:44:15', '2024-04-28 14:21:57'),
	(3, 1, 'a1', 'gongzuorenyuan', '工作人员', 'yu1dl08n0qnj1lior7i11tcc9bctxcbt', '2022-03-01 13:03:22', '2024-04-28 14:21:30');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-25 07:59:12');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/jingquminsuyuyue/upload/yonghu1.jpg', 1, '17703786901', '410224199610232001', '1@qq.com', 1, '2022-03-01 13:00:22'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/jingquminsuyuyue/upload/yonghu2.jpg', 2, '17703786902', '410224199610232002', '2@qq.com', 1, '2022-03-01 13:00:22'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/jingquminsuyuyue/upload/yonghu3.jpg', 1, '17703786903', '410224199610232003', '3@qq.com', 1, '2022-03-01 13:00:22');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
