/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - sy
*******************************************************************

这是master分支啊


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sy` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `sy`;

/*Table structure for table `tbug` */

DROP TABLE IF EXISTS `tbug`;

CREATE TABLE `tbug` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tbug` */

/*Table structure for table `tmenu` */

DROP TABLE IF EXISTS `tmenu`;

CREATE TABLE `tmenu` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `PID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `TEXT` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ICONCLS` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `SEQ` decimal(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK4C3C3B370B9FEB1` (`PID`),
  CONSTRAINT `FK4C3C3B370B9FEB1` FOREIGN KEY (`PID`) REFERENCES `tmenu` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tmenu` */

insert  into `tmenu`(`ID`,`PID`,`TEXT`,`URL`,`ICONCLS`,`SEQ`) values ('0',NULL,'首页','','icon-tip','1'),('buggl','xtgl','BUG管理','/admin/buggl.jsp',NULL,'5'),('cdgl','xtgl','菜单管理','/admin/cdgl.jsp',NULL,'4'),('druidgl','0','连接池管理','',NULL,'2'),('druidjk','druidgl','连接池监控','/druidController/druid.action','icon-tip','1'),('jsgl','xtgl','角色管理','/admin/jsgl.jsp',NULL,'2'),('xtgl','0','系统管理','','icon-sum','1'),('yhgl','xtgl','用户管理','/admin/yhgl.jsp','icon-back','1'),('zygl','xtgl','资源管理','/admin/zygl.jsp',NULL,'3');

/*Table structure for table `tonline` */

DROP TABLE IF EXISTS `tonline`;

CREATE TABLE `tonline` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `LOGINNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `IP` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LOGINDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tonline` */

insert  into `tonline`(`ID`,`LOGINNAME`,`IP`,`LOGINDATETIME`) values ('8cb09c5f-aff8-47de-9534-a2e693a86b86','孙宇','本地','2017-09-09 19:46:37');

/*Table structure for table `tresource` */

DROP TABLE IF EXISTS `tresource`;

CREATE TABLE `tresource` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `PID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `TEXT` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `SEQ` decimal(22,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKC0C62062A3B371E0` (`PID`),
  CONSTRAINT `FKC0C62062A3B371E0` FOREIGN KEY (`PID`) REFERENCES `tresource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tresource` */

insert  into `tresource`(`ID`,`PID`,`TEXT`,`URL`,`SEQ`) values ('0',NULL,'首页',NULL,'1'),('buggl','xtgl','BUG管理',NULL,'5'),('bugglAdd','buggl','BUG添加','/bugController/add.action','1'),('bugglDatagrid','buggl','BUG列表','/bugController/datagrid.action','4'),('bugglDel','buggl','BUG删除','/bugController/remove.action','2'),('bugglEdit','buggl','BUG修改','/bugController/edit.action','3'),('bugglUpdate','buggl','BUG上传','/bugController/upload.action','5'),('cdgl','xtgl','菜单管理',NULL,'4'),('cdglAdd','cdgl','菜单添加','/menuController/add.action','1'),('cdglDel','cdgl','菜单删除','/menuController/remove.action','2'),('cdglEdit','cdgl','菜单修改','/menuController/edit.action','3'),('cdglTreegrid','cdgl','菜单列表','/menuController/treegrid.action','4'),('jsgl','xtgl','角色管理',NULL,'2'),('jsglAdd','jsgl','角色添加','/roleController/add.action','1'),('jsglDatagrid','jsgl','角色列表','/roleController/datagrid.action','4'),('jsglDel','jsgl','角色删除','/roleController/remove.action','2'),('jsglEdit','jsgl','角色修改','/roleController/edit.action','3'),('xtgl','0','系统管理',NULL,'1'),('yhgl','xtgl','用户管理',NULL,'1'),('yhglAdd','yhgl','用户添加','/userController/add.action','1'),('yhglDatagrid','yhgl','用户列表','/userController/datagrid.action','4'),('yhglDel','yhgl','用户删除','/userController/remove.action','2'),('yhglEdit','yhgl','用户修改','/userController/edit.action','3'),('yhglModifyPwd','yhgl','用户修改密码','/userController/modifyPwd.action','5'),('yhglModifyRole','yhgl','用户批量修改角色','/userController/modifyRole.action','6'),('zygl','xtgl','资源管理',NULL,'3'),('zyglAdd','zygl','资源添加','/resourceController/add.action','1'),('zyglDel','zygl','资源删除','/resourceController/remove.action','2'),('zyglEdit','zygl','资源修改','/resourceController/edit.action','3'),('zyglTreegrid','zygl','资源列表','/resourceController/treegrid.action','4');

/*Table structure for table `trole` */

DROP TABLE IF EXISTS `trole`;

CREATE TABLE `trole` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `TEXT` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `trole` */

insert  into `trole`(`ID`,`TEXT`) values ('0','超管角色');

/*Table structure for table `trole_tresource` */

DROP TABLE IF EXISTS `trole_tresource`;

CREATE TABLE `trole_tresource` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `ROLE_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `RESOURCE_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK41E0D52DC2CC4DC1` (`ROLE_ID`),
  KEY `FK41E0D52DED474B41` (`RESOURCE_ID`),
  CONSTRAINT `FK41E0D52DC2CC4DC1` FOREIGN KEY (`ROLE_ID`) REFERENCES `trole` (`ID`),
  CONSTRAINT `FK41E0D52DED474B41` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `tresource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `trole_tresource` */

insert  into `trole_tresource`(`ID`,`ROLE_ID`,`RESOURCE_ID`) values ('00362ef7-8921-4245-90db-26a24d3d7d04','0','zygl'),('0111fa17-e610-4ba9-b1b7-cc71e92e0251','0','yhgl'),('0910e946-1e4b-4290-9bbb-eedaf2164995','0','zyglAdd'),('1b36a6b8-4d4f-42d2-bbee-b81d6c6f0d7d','0','bugglAdd'),('1c7cc4e8-3c8f-4ae6-85c6-239c153ebaa0','0','yhglDatagrid'),('215d657f-c1a2-4f47-8405-b42ade27690f','0','yhglAdd'),('2358f413-9e1c-4e8c-88ec-22163c335e54','0','cdglDel'),('2d2f4fe3-3b47-4339-9c79-86d9a6c30821','0','cdgl'),('5e340498-32f2-4de2-872f-064fb197cde5','0','bugglUpdate'),('612e8618-984f-4920-9839-a6978f775d69','0','jsglAdd'),('698e8bdb-d016-4793-adce-08344488391d','0','bugglDel'),('711d2189-7109-4cbe-8580-d3451281329d','0','bugglDatagrid'),('7cf37bdc-96f2-4655-bc4a-d5d01afbdc1a','0','yhglEdit'),('8532bbab-69b9-42e7-85cb-575af03ccf44','0','jsgl'),('85f22564-9fa7-44d0-8f64-c43b7a05c60e','0','cdglTreegrid'),('8ba43a64-5828-47e0-a9e2-cad7b2813cbf','0','jsglDatagrid'),('8f0a7d39-ecc1-413c-967e-bb833513782f','0','0'),('9c5c8c90-9ffe-4085-b43a-56c6fdb97daa','0','bugglEdit'),('a3fd5be1-c482-4a9f-b8e7-d4edcafa7ca4','0','cdglEdit'),('a888df6d-3fc6-4019-853e-d297974875be','0','jsglDel'),('b2d5ba9a-5359-4de7-808c-e0222a960f57','0','xtgl'),('b70382a0-0ebf-4ffb-95b7-ab2ad2d83130','0','zyglDel'),('ccbd2338-6d82-4c3e-9e19-cb061f5b9050','0','yhglDel'),('ced0e70a-c36a-4d99-93d1-0aadb1ffe073','0','cdglAdd'),('cf343dc7-8859-46f6-aa59-e63add69f873','0','buggl'),('d96c46ad-bcd1-4068-86b9-7b48953499ce','0','yhglModifyRole'),('da2fff48-cae9-4288-82ba-18792827efad','0','zyglTreegrid'),('e691fd65-5aab-4108-866c-5c805162f3bd','0','zyglEdit'),('eb2e0263-ac58-4de9-bbad-d5b65bf91dc4','0','yhglModifyPwd'),('f26d6e86-7100-427b-99bb-7ee65d8bdb62','0','jsglEdit');

/*Table structure for table `tuser` */

DROP TABLE IF EXISTS `tuser`;

CREATE TABLE `tuser` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PWD` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `MODIFYDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tuser` */

insert  into `tuser`(`ID`,`NAME`,`PWD`,`CREATEDATETIME`,`MODIFYDATETIME`) values ('0','孙宇','21232f297a57a5a743894a0e4a801fc3',NULL,'2017-09-19 22:26:14'),('1d977d19-1ebf-4de8-87e1-f56ff44515f2','guest','e10adc3949ba59abbe56e057f20f883e','2017-09-09 19:44:43',NULL);

/*Table structure for table `tuser_trole` */

DROP TABLE IF EXISTS `tuser_trole`;

CREATE TABLE `tuser_trole` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `USER_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `ROLE_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKA1EFD8AAC2CC4DC1` (`ROLE_ID`),
  KEY `FKA1EFD8AA67F711A1` (`USER_ID`),
  CONSTRAINT `FKA1EFD8AA67F711A1` FOREIGN KEY (`USER_ID`) REFERENCES `tuser` (`ID`),
  CONSTRAINT `FKA1EFD8AAC2CC4DC1` FOREIGN KEY (`ROLE_ID`) REFERENCES `trole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tuser_trole` */

insert  into `tuser_trole`(`ID`,`USER_ID`,`ROLE_ID`) values ('d0e98d93-4b25-4e64-a2c2-5f8018d42897','0','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
