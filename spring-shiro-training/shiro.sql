/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2016-10-08 22:46:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attendanceinfo
-- ----------------------------
DROP TABLE IF EXISTS `attendanceinfo`;
CREATE TABLE `attendanceinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propertyown` varchar(200) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `devname` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `manager` varchar(200) DEFAULT NULL,
  `oaautono` varchar(200) DEFAULT NULL,
  `seclevel` varchar(200) DEFAULT NULL,
  `brandno` varchar(200) DEFAULT NULL,
  `sncode` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `usestatus` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attendanceinfo
-- ----------------------------
INSERT INTO `attendanceinfo` VALUES ('1', 'sd', 'sada,asadsda,sada,asadsda', 'adss', 'asdasd', 'asdda', 'asdad', 'aasdadsasd', null, 'adsas', null, 'adsad', '2016-09-07 20:34:56', 'asdasd', '22222222');

-- ----------------------------
-- Table structure for change_history
-- ----------------------------
DROP TABLE IF EXISTS `change_history`;
CREATE TABLE `change_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changedate` datetime DEFAULT NULL,
  `applicant` varchar(200) DEFAULT NULL,
  `applicationdate` datetime DEFAULT NULL,
  `changecontent` text,
  `describe` text,
  `applicationno` varchar(200) DEFAULT NULL,
  `updatekey` varchar(100) DEFAULT NULL,
  `bustype` varchar(200) DEFAULT NULL COMMENT '业务类型',
  `status` varchar(10) DEFAULT NULL,
  `rowid` varchar(50) DEFAULT NULL,
  `tablename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of change_history
-- ----------------------------
INSERT INTO `change_history` VALUES ('10', null, '1', '2016-10-08 22:29:51', 'null', null, 'WH10001', '887de111-3b8a-4a48-9bc3-f85e54eae405', '新增', '0', 'null', 'computermanage');
INSERT INTO `change_history` VALUES ('11', null, '1', '2016-10-08 22:38:21', '修改', null, 'BG001', 'ecf3429c-ecad-41db-9b54-2d66b3715b8b', '修改', '0', '10', 'computermanage');
INSERT INTO `change_history` VALUES ('12', null, '1', '2016-10-08 22:42:04', '清退台帐', null, 'QT10001', '31c322fc-2691-4987-9b2e-aed72a77b6cf', '清退', '0', '11', 'computermanage');

-- ----------------------------
-- Table structure for computermanage
-- ----------------------------
DROP TABLE IF EXISTS `computermanage`;
CREATE TABLE `computermanage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infodevno` varchar(200) DEFAULT NULL,
  `depname` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `devseclevel` varchar(10) DEFAULT NULL COMMENT '设备密级',
  `propertyno` varchar(200) DEFAULT NULL COMMENT '资产编号',
  `propertyown` varchar(200) DEFAULT NULL COMMENT '资产归属',
  `devorigno` varchar(200) DEFAULT NULL COMMENT '设备出厂编号',
  `devno` varchar(200) DEFAULT NULL COMMENT '设备型号',
  `diskno` varchar(200) DEFAULT NULL COMMENT '硬盘序列号',
  `devstandard` varchar(200) DEFAULT NULL COMMENT '规格',
  `starttime` varchar(100) DEFAULT NULL COMMENT '启用时间',
  `devname` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `ipaddress` varchar(200) DEFAULT NULL COMMENT 'IP地址',
  `vlan` varchar(200) DEFAULT NULL COMMENT 'VLAN',
  `mac` varchar(100) DEFAULT NULL,
  `switchport` varchar(10) DEFAULT NULL COMMENT '交换机端口号',
  `patchpanel` varchar(200) DEFAULT NULL COMMENT '配线架',
  `phylocation` varchar(200) DEFAULT NULL COMMENT '物理位置',
  `osversion` varchar(200) DEFAULT NULL COMMENT '操作系统版本',
  `osinstime` varchar(100) DEFAULT NULL COMMENT '操作系统安装时间',
  `cakeyno` varchar(100) DEFAULT NULL COMMENT 'CAKEY编号',
  `networkmark` varchar(1000) DEFAULT NULL COMMENT '网管备注',
  `usedstatus` varchar(1000) DEFAULT NULL COMMENT '使用情况',
  `leaveTime` varchar(100) DEFAULT NULL COMMENT '离网时间',
  `remark` varchar(1000) DEFAULT NULL,
  `isInstall` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  `changeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of computermanage
-- ----------------------------
INSERT INTO `computermanage` VALUES ('10', 'BH001', '数据部', '张三', '高级', 'ZC001', '数据部', 'CH100', 'XH100', 'DW100', '最好', '2016-10-08 22:27:51', '拉丁', '192.168.31.213', 'VLAN', '50:7B:9D:77:F0:62', '8080', '三楼左三', '三楼201', 'windows10', '2016-10-04 22:29:15', 'key100', '无', '正常', '2016-10-25 22:29:33', '无', '是', '0', '2016-10-25 22:35:25', '887de111-3b8a-4a48-9bc3-f85e54eae405');
INSERT INTO `computermanage` VALUES ('11', 'BH001', '数据部', '张三', '高级', 'ZC001', '数据部', 'CH100', 'XH100', 'DW100', '最好', '2016-10-08 22:27:51', '拉丁', '192.168.31.213', 'VLAN', '50:7B:9D:77:F0:62', '8080', '三楼左三', '三楼201', 'windows10', '2016-10-04 22:29:15', 'key100', '无', '正常', '2016-10-25 22:29:33', '无', '是', '0', '2016-10-08 22:38:21', 'ecf3429c-ecad-41db-9b54-2d66b3715b8b');
INSERT INTO `computermanage` VALUES ('12', 'BH001', '数据部', '  ', '高级', 'ZC001', '数据部', 'CH100', 'XH100', 'DW100', '最好', '2016-10-08 22:27:51', '拉丁', '192.168.31.213', 'VLAN', '50:7B:9D:77:F0:62', '8080', '三楼左三', '三楼201', 'windows10', '2016-10-04 22:29:15', 'key100', '无', '正常', '2016-10-25 22:29:33', '无', '是', '0', '2016-10-08 22:42:04', '31c322fc-2691-4987-9b2e-aed72a77b6cf');

-- ----------------------------
-- Table structure for convertinfo
-- ----------------------------
DROP TABLE IF EXISTS `convertinfo`;
CREATE TABLE `convertinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialno` varchar(200) DEFAULT NULL,
  `computerno` varchar(200) DEFAULT NULL,
  `assetnumber` varchar(200) DEFAULT NULL,
  `usedepartment` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `configure` varchar(200) DEFAULT NULL,
  `displaymodel` varchar(200) DEFAULT NULL,
  `hostnumber` varchar(200) DEFAULT NULL,
  `diskid` varchar(200) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `purpose` varchar(1000) DEFAULT NULL,
  `secequipment` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `uabnumber` varchar(100) DEFAULT NULL,
  `osinstall` varchar(1000) DEFAULT NULL,
  `roomid` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of convertinfo
-- ----------------------------
INSERT INTO `convertinfo` VALUES ('1', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '2016-09-01 21:37:42', '11', '12', '13', '14', '15', '16', '17', '184444');

-- ----------------------------
-- Table structure for cpuinfo
-- ----------------------------
DROP TABLE IF EXISTS `cpuinfo`;
CREATE TABLE `cpuinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `cpuNo` varchar(50) DEFAULT NULL,
  `cpuMhz` varchar(50) DEFAULT NULL,
  `cpuVendor` varchar(50) DEFAULT NULL,
  `cpuModel` varchar(50) DEFAULT NULL,
  `cpuCacheSize` varchar(50) DEFAULT NULL,
  `cpuTotalCores` varchar(50) DEFAULT NULL,
  `cpuTotalSockets` varchar(50) DEFAULT NULL,
  `cpuCoresPerSocket` varchar(50) DEFAULT NULL,
  `cpuUser` varchar(50) DEFAULT NULL,
  `cpuSys` varchar(50) DEFAULT NULL,
  `cpuWait` varchar(50) DEFAULT NULL,
  `cpuNice` varchar(50) DEFAULT NULL,
  `cpuIdle` varchar(50) DEFAULT NULL,
  `cpuTotal` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cpuinfo
-- ----------------------------
INSERT INTO `cpuinfo` VALUES ('84', '192.168.31.213', '50:7B:9D:77:F0:62', '1', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:30:46');
INSERT INTO `cpuinfo` VALUES ('85', '192.168.31.213', '50:7B:9D:77:F0:62', '2', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '6.2%', '0.0%', '0.0%', '0.0%', '93.8%', '6.2%', '2016-07-24 12:30:46');
INSERT INTO `cpuinfo` VALUES ('86', '192.168.31.213', '50:7B:9D:77:F0:62', '3', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:30:46');
INSERT INTO `cpuinfo` VALUES ('87', '192.168.31.213', '50:7B:9D:77:F0:62', '4', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:30:46');
INSERT INTO `cpuinfo` VALUES ('88', '192.168.31.213', '50:7B:9D:77:F0:62', '5', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:30:46');
INSERT INTO `cpuinfo` VALUES ('89', '192.168.31.213', '50:7B:9D:77:F0:62', '6', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:30:46');
INSERT INTO `cpuinfo` VALUES ('90', '192.168.31.213', '50:7B:9D:77:F0:62', '7', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:30:46');
INSERT INTO `cpuinfo` VALUES ('91', '192.168.31.213', '50:7B:9D:77:F0:62', '8', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:30:46');
INSERT INTO `cpuinfo` VALUES ('92', '169.254.139.125', '50:7B:9D:77:F0:62', '1', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:31:30');
INSERT INTO `cpuinfo` VALUES ('93', '169.254.139.125', '50:7B:9D:77:F0:62', '2', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '3.2%', '0.0%', '0.0%', '96.8%', '3.2%', '2016-07-24 12:31:31');
INSERT INTO `cpuinfo` VALUES ('94', '169.254.139.125', '50:7B:9D:77:F0:62', '3', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:31:31');
INSERT INTO `cpuinfo` VALUES ('95', '169.254.139.125', '50:7B:9D:77:F0:62', '4', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:31:31');
INSERT INTO `cpuinfo` VALUES ('96', '169.254.139.125', '50:7B:9D:77:F0:62', '5', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:31:31');
INSERT INTO `cpuinfo` VALUES ('97', '169.254.139.125', '50:7B:9D:77:F0:62', '6', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:31:31');
INSERT INTO `cpuinfo` VALUES ('98', '169.254.139.125', '50:7B:9D:77:F0:62', '7', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:31:31');
INSERT INTO `cpuinfo` VALUES ('99', '169.254.139.125', '50:7B:9D:77:F0:62', '8', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.0%', '0.0%', '0.0%', '0.0%', '100.0%', '0.0%', '2016-07-24 12:31:31');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `keys_` varchar(200) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', '涉密计算机台帐', 'computerManage', '/computerManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('2', '涉密计算机台帐', 'computerManage', '/computerManage/changeAddPage', '新增');
INSERT INTO `dictionary` VALUES ('3', '涉密计算机台帐', 'computerManage', '/computerManage/returnPage', '清退');

-- ----------------------------
-- Table structure for diskinfo
-- ----------------------------
DROP TABLE IF EXISTS `diskinfo`;
CREATE TABLE `diskinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `devNo` varchar(50) DEFAULT NULL COMMENT '分区盘符号',
  `devName` varchar(100) DEFAULT NULL COMMENT '盘符名称',
  `dirName` varchar(100) DEFAULT NULL COMMENT '盘符路径',
  `flags` varchar(100) DEFAULT NULL COMMENT '盘符标志',
  `sysTypeName` varchar(100) DEFAULT NULL COMMENT '盘符文件系统类型',
  `typeName` varchar(100) DEFAULT NULL COMMENT '盘符类型名',
  `type` varchar(100) DEFAULT NULL COMMENT '盘符文件系统类型',
  `total` varchar(100) DEFAULT NULL COMMENT '文件系统总大小',
  `free` varchar(100) DEFAULT NULL COMMENT '文件系统剩余大小',
  `avail` varchar(100) DEFAULT NULL COMMENT '文件系统可用大小',
  `used` varchar(100) DEFAULT NULL COMMENT '文件系统已经使用量',
  `usePercent` varchar(100) DEFAULT NULL COMMENT '文件系统资源的利用率',
  `diskReads` varchar(100) DEFAULT NULL COMMENT '磁盘读出',
  `diskWrites` varchar(100) DEFAULT NULL COMMENT '磁盘写入',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diskinfo
-- ----------------------------
INSERT INTO `diskinfo` VALUES ('10', '192.168.31.213', '50:7B:9D:77:F0:62', '0', 'C:\\', 'C:\\', '0', 'NTFS', 'local', '2', '121599', '68357', '68357', '53241', '44.0%', '446943', '363424', '2016-07-24 12:30:46');
INSERT INTO `diskinfo` VALUES ('11', '192.168.31.213', '50:7B:9D:77:F0:62', '1', 'D:\\', 'D:\\', '0', 'NTFS', 'local', '2', '476991', '442114', '442114', '34876', '8.0%', '35535', '11997', '2016-07-24 12:30:46');
INSERT INTO `diskinfo` VALUES ('12', '192.168.31.213', '50:7B:9D:77:F0:62', '2', 'E:\\', 'E:\\', '0', 'NTFS', 'local', '2', '476877', '457132', '457132', '19744', '5.0%', '1656', '6984', '2016-07-24 12:30:46');

-- ----------------------------
-- Table structure for internetinfo
-- ----------------------------
DROP TABLE IF EXISTS `internetinfo`;
CREATE TABLE `internetinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(200) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `roomnum` varchar(100) DEFAULT NULL,
  `infodevno` varchar(200) DEFAULT NULL,
  `newassertsno` varchar(200) DEFAULT NULL,
  `resdepart` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `devbrand` varchar(200) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
  `serialno` varchar(100) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `devseculevel` varchar(100) DEFAULT NULL,
  `usemethod` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `printhostip` varchar(100) DEFAULT NULL,
  `printmac` varchar(100) DEFAULT NULL,
  `printport` varchar(100) DEFAULT NULL,
  `patchpanel` varchar(100) DEFAULT NULL,
  `payhostip` varchar(100) DEFAULT NULL,
  `payport` varchar(100) DEFAULT NULL,
  `paymac` varchar(100) DEFAULT NULL,
  `park` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of internetinfo
-- ----------------------------
INSERT INTO `internetinfo` VALUES ('1', 'sadasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdsad', 'adssdasd', '2016-09-01 21:49:59', 'adsdad', 'asdsda', 'asdsad', 'asddssad', 'adssda', 'adsdsasd', 'adsdsdd', 'asdsadad', 'adssd', '111111', 'asdsaddad');

-- ----------------------------
-- Table structure for notepadinfo
-- ----------------------------
DROP TABLE IF EXISTS `notepadinfo`;
CREATE TABLE `notepadinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialno` varchar(200) DEFAULT NULL,
  `devinformno` varchar(200) DEFAULT NULL,
  `installaddres` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `devseclevel` varchar(200) DEFAULT NULL,
  `productno` varchar(200) DEFAULT NULL,
  `brandno` varchar(200) DEFAULT NULL,
  `vlan` varchar(200) DEFAULT NULL,
  `ipaddress` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `patchpanel` varchar(200) DEFAULT NULL,
  `switchport` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notepadinfo
-- ----------------------------
INSERT INTO `notepadinfo` VALUES ('1', '凯特', '实打实的', '阿萨德啊', '阿萨德啊', '啊撒打算', '阿斯打算', '阿斯阿斯', '啊撒旦撒', '阿斯倒萨速度', ' 阿斯达斯大', '啊撒旦撒', '1231');

-- ----------------------------
-- Table structure for oaautoinfo
-- ----------------------------
DROP TABLE IF EXISTS `oaautoinfo`;
CREATE TABLE `oaautoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devno` varchar(200) DEFAULT NULL,
  `departname` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `seclevel` varchar(200) DEFAULT NULL,
  `devname` varchar(200) DEFAULT NULL,
  `brand` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `capacity` varchar(200) DEFAULT NULL,
  `serialno` varchar(200) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `purpose` varchar(200) DEFAULT NULL,
  `useaddress` varchar(200) DEFAULT NULL,
  `usestatus` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oaautoinfo
-- ----------------------------

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `code` varchar(64) NOT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `pid` bigint(19) DEFAULT NULL,
  `seq` tinyint(2) NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='组织机构';

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '总经办', '', '01', 'icon-company', null, '0', '2014-02-19 01:00:00');
INSERT INTO `organization` VALUES ('3', '技术部', '', '02', 'icon-company', null, '1', '2015-10-01 13:10:42');
INSERT INTO `organization` VALUES ('5', '产品部', '', '03', 'icon-company', null, '2', '2015-12-06 12:15:30');
INSERT INTO `organization` VALUES ('6', '测试组', '', '04', 'icon-folder', '3', '0', '2015-12-06 13:12:18');

-- ----------------------------
-- Table structure for plotterinfo
-- ----------------------------
DROP TABLE IF EXISTS `plotterinfo`;
CREATE TABLE `plotterinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resdepart` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `informdevno` varchar(200) DEFAULT NULL,
  `devseclevel` varchar(200) DEFAULT NULL,
  `brand` varchar(200) DEFAULT NULL,
  `purpose` varchar(200) DEFAULT NULL,
  `devproductdate` datetime DEFAULT NULL,
  `productno` varchar(200) DEFAULT NULL,
  `hardwareconf` varchar(200) DEFAULT NULL,
  `diskno` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `osinsttime` datetime DEFAULT NULL,
  `os` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plotterinfo
-- ----------------------------
INSERT INTO `plotterinfo` VALUES ('1', '阿萨德', '啊速度', ' 阿萨德', ' 撒旦', ' 撒 速度', '阿斯大苏打', '2016-09-07 20:37:42', '啊撒旦撒', '阿斯的是', '是阿达岁的', '是阿斯是', '2016-09-07 20:37:55', '2222222222');

-- ----------------------------
-- Table structure for printinfo
-- ----------------------------
DROP TABLE IF EXISTS `printinfo`;
CREATE TABLE `printinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room` varchar(200) DEFAULT NULL,
  `devno` varchar(100) DEFAULT NULL,
  `assertsno` varchar(200) DEFAULT NULL,
  `respondepart` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `brand` varchar(1000) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `specifications` varchar(200) DEFAULT NULL,
  `serialno` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `devseclevel` varchar(200) DEFAULT NULL,
  `usemethod` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of printinfo
-- ----------------------------
INSERT INTO `printinfo` VALUES ('1', 'asds', 'asdsad', 'asdsd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdsad', 'asdsad', 'asdasd', '2016-09-01 21:52:27', 'asdsaad', 'asdsd', 'asdsd', '111111');

-- ----------------------------
-- Table structure for processinfo
-- ----------------------------
DROP TABLE IF EXISTS `processinfo`;
CREATE TABLE `processinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `CreationClassName` varchar(100) DEFAULT NULL COMMENT '进程创建者',
  `CSName` varchar(100) DEFAULT NULL COMMENT '用户名',
  `ExecutablePath` text COMMENT '运行的应用所在的位置',
  `Name` varchar(100) DEFAULT NULL COMMENT '应用名称',
  `OSName` varchar(200) DEFAULT NULL COMMENT '操作系统版本',
  `ProcessId` varchar(100) DEFAULT NULL COMMENT '进程ID',
  `SessionId` varchar(100) DEFAULT NULL COMMENT 'Session ID',
  `ThreadCount` varchar(100) DEFAULT NULL COMMENT '线程数',
  `VirtualSize` varchar(100) DEFAULT NULL COMMENT '虚拟内存',
  `WindowsVersion` varchar(100) DEFAULT NULL COMMENT '操作系统版本',
  `WorkingSetSize` varchar(100) DEFAULT NULL COMMENT '工作集大小',
  `CpuRatioForWindows` varchar(100) DEFAULT NULL COMMENT 'cpu占用率',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processinfo
-- ----------------------------
INSERT INTO `processinfo` VALUES ('74', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'System Idle Process', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '0', '0', '8', '65536', '10.0.10586', '4096', null, '2016-07-24 12:30:52');
INSERT INTO `processinfo` VALUES ('75', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'System', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4', '0', '219', '129101824', '10.0.10586', '78225408', null, '2016-07-24 12:30:52');
INSERT INTO `processinfo` VALUES ('76', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'smss.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '416', '0', '2', '2199029886976', '10.0.10586', '327680', null, '2016-07-24 12:30:52');
INSERT INTO `processinfo` VALUES ('77', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'csrss.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '572', '0', '10', '2199118258176', '10.0.10586', '3567616', null, '2016-07-24 12:30:52');
INSERT INTO `processinfo` VALUES ('78', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'wininit.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '684', '0', '2', '2199086186496', '10.0.10586', '995328', null, '2016-07-24 12:30:52');
INSERT INTO `processinfo` VALUES ('319', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '248', '1', '2', '84889600', '10.0.10586', '3526656', null, '2016-07-24 12:31:35');
INSERT INTO `processinfo` VALUES ('320', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '10704', '1', '4', '2199109169152', '10.0.10586', '6172672', null, '2016-07-24 12:31:35');
INSERT INTO `processinfo` VALUES ('321', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8852', '1', '7', '146976768', '10.0.10586', '11165696', null, '2016-07-24 12:31:35');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `pid` bigint(19) DEFAULT NULL,
  `seq` tinyint(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `resourcetype` tinyint(2) NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8 COMMENT='资源';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '系统管理', '', '系统管理', 'icon-company', null, '0', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('11', '资源管理', '/resource/manager', '资源管理', 'icon-folder', '1', '1', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('12', '角色管理', '/role/manager', '角色管理', 'icon-folder', '1', '2', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('13', '用户管理', '/user/manager', '用户管理', 'icon-folder', '1', '3', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('14', '部门管理', '/organization/manager', '部门管理', 'icon-folder', '1', '4', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('111', '列表', '/resource/treeGrid', '资源列表', 'icon-list', '11', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('112', '添加', '/resource/add', '资源添加', 'icon-add', '11', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('113', '编辑', '/resource/edit', '资源编辑', 'icon-edit', '11', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('114', '删除', '/resource/delete', '资源删除', 'icon-del', '11', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('121', '列表', '/role/dataGrid', '角色列表', 'icon-list', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('122', '添加', '/role/add', '角色添加', 'icon-add', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('123', '编辑', '/role/edit', '角色编辑', 'icon-edit', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('124', '删除', '/role/delete', '角色删除', 'icon-del', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('125', '授权', '/role/grant', '角色授权', 'icon-ok', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('131', '列表', '/user/dataGrid', '用户列表', 'icon-list', '13', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('132', '添加', '/user/add', '用户添加', 'icon-add', '13', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('133', '编辑', '/user/edit', '用户编辑', 'icon-edit', '13', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('134', '删除', '/user/delete', '用户删除', 'icon-del', '13', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('141', '列表', '/organization/treeGrid', '用户列表', 'icon-list', '14', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('142', '添加', '/organization/add', '部门添加', 'icon-add', '14', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('143', '编辑', '/organization/edit', '部门编辑', 'icon-edit', '14', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('144', '删除', '/organization/delete', '部门删除', 'icon-del', '14', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('221', '参数管理', '', null, 'icon-company', null, '2', '0', '0', '2015-12-01 11:44:20');
INSERT INTO `resource` VALUES ('226', '修改密码', '/user/editPwdPage', null, 'icon-edit', null, '3', '0', '1', '2015-12-07 20:23:06');
INSERT INTO `resource` VALUES ('227', '台帐列表', '', null, 'icon-company', null, '4', '0', '0', '2016-08-17 21:09:27');
INSERT INTO `resource` VALUES ('228', '内网计算机台账', '/computerManage/manager', null, 'icon-folder', '227', '0', '0', '0', '2016-08-17 21:10:57');
INSERT INTO `resource` VALUES ('229', '列表', '/computerManage/dataGrid', null, 'icon-list', '228', '0', '0', '1', '2016-09-10 12:46:55');
INSERT INTO `resource` VALUES ('230', '添加', '/computerManage/add', null, 'icon-add', '228', '1', '0', '1', '2016-09-10 12:47:53');
INSERT INTO `resource` VALUES ('231', '详情', '/computerManage/queryDetail', null, 'icon-edit', '228', '2', '0', '1', '2016-09-10 12:49:28');
INSERT INTO `resource` VALUES ('232', '删除', '/computerManage/delete', null, 'icon-del', '228', '3', '0', '1', '2016-09-10 12:50:35');
INSERT INTO `resource` VALUES ('233', '服务器台账', '/serverManage/manager', null, 'icon-folder', '227', '1', '0', '0', '2016-09-10 12:52:36');
INSERT INTO `resource` VALUES ('234', '列表', '/serverManage/dataGrid', null, 'icon-list', '233', '0', '0', '1', '2016-09-10 12:53:22');
INSERT INTO `resource` VALUES ('235', '添加', '/serverManage/add', null, 'icon-add', '233', '1', '0', '1', '2016-09-10 12:53:53');
INSERT INTO `resource` VALUES ('236', '编辑', '/serverManage/edit', null, 'icon-edit', '233', '2', '0', '1', '2016-09-10 12:54:21');
INSERT INTO `resource` VALUES ('237', '删除', '/serverManage/delete', null, 'icon-del', '233', '3', '0', '1', '2016-09-10 12:55:11');
INSERT INTO `resource` VALUES ('238', '安全产品台帐', '/secProdInfoManage/manager', null, 'icon-folder', '227', '2', '0', '0', '2016-09-10 12:57:17');
INSERT INTO `resource` VALUES ('239', '列表', '/secProdInfoManage/dataGrid', null, 'icon-list', '238', '0', '0', '1', '2016-09-10 12:57:54');
INSERT INTO `resource` VALUES ('240', '添加', '/secProdInfoManage/add', null, 'icon-add', '238', '1', '0', '1', '2016-09-10 12:59:19');
INSERT INTO `resource` VALUES ('241', '编辑', '/secProdInfoManage/edit', null, 'icon-edit', '238', '2', '0', '1', '2016-09-10 13:00:02');
INSERT INTO `resource` VALUES ('242', '删除', '/secProdInfoManage/delete', null, 'icon-del', '238', '3', '0', '1', '2016-09-10 13:00:30');
INSERT INTO `resource` VALUES ('243', '交换机台帐', '/switchInfoManage/manager', null, 'icon-folder', '227', '3', '0', '0', '2016-09-10 13:01:44');
INSERT INTO `resource` VALUES ('244', '列表', '/switchInfoManage/dataGrid', null, 'icon-list', '243', '0', '0', '1', '2016-09-10 13:02:12');
INSERT INTO `resource` VALUES ('245', '添加', '/switchInfoManage/add', null, 'icon-add', '243', '1', '0', '1', '2016-09-10 13:02:34');
INSERT INTO `resource` VALUES ('246', '编辑', '/switchInfoManage/edit', null, 'icon-edit', '243', '2', '0', '1', '2016-09-10 13:02:58');
INSERT INTO `resource` VALUES ('247', '删除', '/switchInfoManage/delete', null, 'icon-del', '243', '3', '0', '1', '2016-09-10 13:03:23');
INSERT INTO `resource` VALUES ('248', '中间转换机台帐', '/convertInfoManage/manager', null, 'icon-folder', '227', '4', '0', '0', '2016-09-10 13:04:14');
INSERT INTO `resource` VALUES ('249', '列表', '/convertInfoManage/dataGrid', null, 'icon-list', '248', '0', '0', '1', '2016-09-10 13:06:22');
INSERT INTO `resource` VALUES ('250', '添加', '/convertInfoManage/add', null, 'icon-add', '248', '1', '0', '1', '2016-09-10 13:06:45');
INSERT INTO `resource` VALUES ('251', '编辑', '/convertInfoManage/edit', null, 'icon-edit', '248', '2', '0', '1', '2016-09-10 13:07:22');
INSERT INTO `resource` VALUES ('252', '删除', '/convertInfoManage/delete', null, 'icon-del', '248', '3', '0', '1', '2016-09-10 13:08:01');
INSERT INTO `resource` VALUES ('253', '涉密单机台帐', '/secHostInfoManage/manager', null, 'icon-folder', '227', '5', '0', '0', '2016-09-10 13:09:12');
INSERT INTO `resource` VALUES ('254', '列表', '/secHostInfoManage/dataGrid', null, 'icon-list', '253', '0', '0', '1', '2016-09-10 13:10:19');
INSERT INTO `resource` VALUES ('255', '添加', '/secHostInfoManage/add', null, 'icon-add', '253', '1', '0', '1', '2016-09-10 13:11:04');
INSERT INTO `resource` VALUES ('256', '编辑', '/secHostInfoManage/edit', null, 'icon-edit', '253', '2', '0', '1', '2016-09-10 13:12:04');
INSERT INTO `resource` VALUES ('257', '删除', '/secHostInfoManage/delete', null, 'icon-del', '253', '3', '0', '1', '2016-09-10 13:12:46');
INSERT INTO `resource` VALUES ('258', '非密单机台帐', '/unsecHostInfoManage/manager', null, 'icon-folder', '227', '6', '0', '0', '2016-09-10 13:14:11');
INSERT INTO `resource` VALUES ('259', '列表', '/unsecHostInfoManage/dataGrid', null, 'icon-list', '258', '0', '0', '1', '2016-09-10 13:15:39');
INSERT INTO `resource` VALUES ('260', '添加', '/unsecHostInfoManage/add', null, 'icon-add', '258', '1', '0', '1', '2016-09-10 13:16:21');
INSERT INTO `resource` VALUES ('261', '编辑', '/unsecHostInfoManage/edit', null, 'icon-edit', '258', '2', '0', '1', '2016-09-10 13:17:00');
INSERT INTO `resource` VALUES ('262', '删除', '/unsecHostInfoManage/delete', null, 'icon-del', '258', '3', '0', '1', '2016-09-10 13:17:34');
INSERT INTO `resource` VALUES ('263', '互联网计算机台帐', '/internetInfoManage/manager', null, 'icon-folder', '227', '7', '0', '0', '2016-09-10 13:18:25');
INSERT INTO `resource` VALUES ('264', '列表', '/internetInfoManage/dateGrid', null, 'icon-list', '263', '0', '0', '1', '2016-09-10 13:19:09');
INSERT INTO `resource` VALUES ('265', '添加', '/internetInfoManage/add', null, 'icon-add', '263', '1', '0', '1', '2016-09-10 13:19:31');
INSERT INTO `resource` VALUES ('266', '编辑', '/internetInfoManage/edit', null, 'icon-edit', '263', '2', '0', '1', '2016-09-10 13:20:07');
INSERT INTO `resource` VALUES ('267', '删除', '/internetInfoManage/delete', null, 'icon-del', '263', '3', '0', '1', '2016-09-10 13:20:31');
INSERT INTO `resource` VALUES ('268', '内网打印机台帐', '/printInfoManage/manager', null, 'icon-folder', '227', '7', '0', '0', '2016-09-10 13:21:25');
INSERT INTO `resource` VALUES ('269', '列表', '/printInfoManage/dataGrid', null, 'icon-list', '268', '0', '0', '1', '2016-09-10 13:22:39');
INSERT INTO `resource` VALUES ('270', '添加', '/printInfoManage/add', null, 'icon-add', '268', '1', '0', '1', '2016-09-10 13:23:02');
INSERT INTO `resource` VALUES ('271', '编辑', '/printInfoManage/edit', null, 'icon-edit', '268', '2', '0', '1', '2016-09-10 13:23:30');
INSERT INTO `resource` VALUES ('272', '删除', '/printInfoManage/delete', null, 'icon-del', '268', '3', '0', '1', '2016-09-10 13:23:55');
INSERT INTO `resource` VALUES ('273', '直连涉密打印设备台帐', '/secPrintInfoManage/manager', null, 'icon-folder', '227', '8', '0', '0', '2016-09-10 13:25:02');
INSERT INTO `resource` VALUES ('274', '列表', '/secPrintInfoManage/dataGrid', null, 'icon-list', '273', '0', '0', '1', '2016-09-10 13:25:37');
INSERT INTO `resource` VALUES ('275', '添加', '/secPrintInfoManage/add', null, 'icon-add', '273', '1', '0', '1', '2016-09-10 13:26:23');
INSERT INTO `resource` VALUES ('276', '编辑', '/secPrintInfoManage/edit', null, 'icon-edit', '273', '2', '0', '1', '2016-09-10 13:27:09');
INSERT INTO `resource` VALUES ('277', '删除', '/secPrintInfoManage/delete', null, 'icon-del', '273', '3', '0', '1', '2016-09-10 13:27:45');
INSERT INTO `resource` VALUES ('278', '非密直连打印机台帐', '/unSecPrintInfoManage/manager', null, 'icon-folder', '227', '9', '0', '0', '2016-09-10 13:28:37');
INSERT INTO `resource` VALUES ('279', '列表', '/unSecPrintInfoManage/dataGrid', null, 'icon-list', '278', '0', '0', '1', '2016-09-10 13:29:13');
INSERT INTO `resource` VALUES ('280', '添加', '/unSecPrintInfoManage/add', null, 'icon-add', '278', '1', '0', '1', '2016-09-10 13:29:58');
INSERT INTO `resource` VALUES ('281', '编辑', '/unSecPrintInfoManage/edit', null, 'icon-edit', '278', '2', '0', '1', '2016-09-10 13:30:27');
INSERT INTO `resource` VALUES ('282', '删除', '/unSecPrintInfoManage/delete', null, 'icon-del', '278', '3', '0', '1', '2016-09-10 13:31:05');
INSERT INTO `resource` VALUES ('283', '直连绘图仪台帐', '/attendanceInfoManage/manager', null, 'icon-folder', '227', '10', '0', '0', '2016-09-10 13:32:25');
INSERT INTO `resource` VALUES ('284', '列表', '/attendanceInfoManage/dataGrid', null, 'icon-list', '283', '0', '0', '1', '2016-09-10 13:32:55');
INSERT INTO `resource` VALUES ('285', '添加', '/attendanceInfoManage/add', null, 'icon-add', '283', '1', '0', '1', '2016-09-10 13:33:19');
INSERT INTO `resource` VALUES ('286', '编辑', '/attendanceInfoManage/edit', null, 'icon-edit', '283', '2', '0', '1', '2016-09-10 13:33:44');
INSERT INTO `resource` VALUES ('287', '删除', '/attendanceInfoManage/delete', null, 'icon-del', '283', '3', '0', '1', '2016-09-10 13:34:11');
INSERT INTO `resource` VALUES ('288', '便携式计算机台帐', '/notePadInfoManage/manager', null, 'icon-folder', '227', '11', '0', '0', '2016-09-10 13:35:24');
INSERT INTO `resource` VALUES ('289', '列表', '/notePadInfoManage/dataGrid', null, 'icon-list', '288', '0', '0', '1', '2016-09-10 13:35:53');
INSERT INTO `resource` VALUES ('290', '添加', '/notePadInfoManage/add', null, 'icon-add', '288', '1', '0', '1', '2016-09-10 13:36:11');
INSERT INTO `resource` VALUES ('291', '编辑', '/notePadInfoManage/edit', null, 'icon-edit', '288', '2', '0', '1', '2016-09-10 13:36:33');
INSERT INTO `resource` VALUES ('292', '删除', '/notePadInfoManage/delete', null, 'icon-del', '288', '3', '0', '1', '2016-09-10 13:36:59');
INSERT INTO `resource` VALUES ('293', '考勤机台帐', '/plotterInfoManage/manager', null, 'icon-folder', '227', '12', '0', '0', '2016-09-10 13:37:37');
INSERT INTO `resource` VALUES ('294', '列表', '/plotterInfoManage/dataGrid', null, 'icon-list', '293', '0', '0', '1', '2016-09-10 13:38:05');
INSERT INTO `resource` VALUES ('295', '添加', '/plotterInfoManage/add', null, 'icon-add', '293', '1', '0', '1', '2016-09-10 13:38:28');
INSERT INTO `resource` VALUES ('296', '编辑', '/plotterInfoManage/edit', null, 'icon-edit', '293', '2', '0', '1', '2016-09-10 13:38:47');
INSERT INTO `resource` VALUES ('297', '删除', '/plotterInfoManage/delete', null, 'icon-del', '293', '3', '0', '1', '2016-09-10 13:39:12');
INSERT INTO `resource` VALUES ('298', '办公自动化设备台帐', '/oaAutoInfoManage/manager', null, 'icon-folder', '227', '13', '0', '0', '2016-09-10 13:40:24');
INSERT INTO `resource` VALUES ('299', '列表', '/oaAutoInfoManage/dataGrid', null, 'icon-list', '298', '0', '0', '1', '2016-09-10 13:41:04');
INSERT INTO `resource` VALUES ('300', '添加', '/oaAutoInfoManage/add', null, 'icon-add', '298', '1', '0', '1', '2016-09-10 13:41:25');
INSERT INTO `resource` VALUES ('301', '编辑', '/oaAutoInfoManage/edit', null, 'icon-edit', '298', '2', '0', '1', '2016-09-10 13:41:45');
INSERT INTO `resource` VALUES ('302', '删除', '/oaAutoInfoManage/delete', null, 'icon-del', '298', '3', '0', '1', '2016-09-10 13:42:19');
INSERT INTO `resource` VALUES ('303', '字典管理', '/dictionaryManager/manager', null, 'icon-folder', '221', '0', '0', '0', '2016-09-22 22:28:33');
INSERT INTO `resource` VALUES ('304', '列表', '/dictionaryManager/dataGrid', null, 'icon-list', '303', '1', '0', '1', '2016-09-22 22:31:18');
INSERT INTO `resource` VALUES ('305', '添加', '/dictionaryManager/add', null, 'icon-add', '303', '2', '0', '1', '2016-09-22 22:31:41');
INSERT INTO `resource` VALUES ('306', '编辑', '/dictionaryManager/edit', null, 'icon-edit', '303', '2', '0', '1', '2016-09-22 22:38:30');
INSERT INTO `resource` VALUES ('307', '删除', '/dictionaryManager/delete', null, 'icon-del', '303', '3', '0', '1', '2016-09-22 22:39:04');
INSERT INTO `resource` VALUES ('308', '台帐管理', '', null, 'icon-company', null, '5', '0', '0', '2016-09-24 15:26:43');
INSERT INTO `resource` VALUES ('309', '台帐变更', '/changeOrder/manager', null, 'icon-folder', '308', '0', '0', '0', '2016-09-24 15:29:10');
INSERT INTO `resource` VALUES ('310', '列表', '/changeOrder/dataGrid', null, 'icon-list', '309', '1', '0', '1', '2016-09-24 15:30:30');
INSERT INTO `resource` VALUES ('311', '添加', '/changeOrder/add', null, 'icon-add', '309', '2', '0', '1', '2016-09-24 15:31:18');
INSERT INTO `resource` VALUES ('312', '删除', '/changeOrder/delete', null, 'icon-del', '309', '3', '0', '1', '2016-09-24 15:32:19');
INSERT INTO `resource` VALUES ('316', '确定', '/changeOrder/confirm', null, 'icon-save', '309', '4', '0', '1', '2016-10-01 20:45:05');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `seq` tinyint(2) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '0', '超级管理员', '0');
INSERT INTO `role` VALUES ('2', '技术部经理', '0', '技术部经理', '0');
INSERT INTO `role` VALUES ('7', '产品部经理', '0', '产品部经理', '0');
INSERT INTO `role` VALUES ('8', '测试账户', '0', '测试账户', '0');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(19) NOT NULL,
  `resource_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=879 DEFAULT CHARSET=utf8 COMMENT='角色资源';

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('158', '3', '1');
INSERT INTO `role_resource` VALUES ('159', '3', '11');
INSERT INTO `role_resource` VALUES ('160', '3', '111');
INSERT INTO `role_resource` VALUES ('161', '3', '112');
INSERT INTO `role_resource` VALUES ('162', '3', '113');
INSERT INTO `role_resource` VALUES ('163', '3', '114');
INSERT INTO `role_resource` VALUES ('164', '3', '12');
INSERT INTO `role_resource` VALUES ('165', '3', '121');
INSERT INTO `role_resource` VALUES ('166', '3', '122');
INSERT INTO `role_resource` VALUES ('167', '3', '123');
INSERT INTO `role_resource` VALUES ('168', '3', '124');
INSERT INTO `role_resource` VALUES ('169', '3', '125');
INSERT INTO `role_resource` VALUES ('170', '3', '13');
INSERT INTO `role_resource` VALUES ('171', '3', '131');
INSERT INTO `role_resource` VALUES ('172', '3', '132');
INSERT INTO `role_resource` VALUES ('173', '3', '133');
INSERT INTO `role_resource` VALUES ('174', '3', '134');
INSERT INTO `role_resource` VALUES ('175', '3', '14');
INSERT INTO `role_resource` VALUES ('176', '3', '141');
INSERT INTO `role_resource` VALUES ('177', '3', '142');
INSERT INTO `role_resource` VALUES ('178', '3', '143');
INSERT INTO `role_resource` VALUES ('179', '3', '144');
INSERT INTO `role_resource` VALUES ('349', '2', '1');
INSERT INTO `role_resource` VALUES ('350', '2', '13');
INSERT INTO `role_resource` VALUES ('351', '2', '131');
INSERT INTO `role_resource` VALUES ('352', '2', '132');
INSERT INTO `role_resource` VALUES ('353', '2', '133');
INSERT INTO `role_resource` VALUES ('354', '2', '222');
INSERT INTO `role_resource` VALUES ('355', '2', '223');
INSERT INTO `role_resource` VALUES ('356', '2', '224');
INSERT INTO `role_resource` VALUES ('357', '2', '221');
INSERT INTO `role_resource` VALUES ('358', '2', '226');
INSERT INTO `role_resource` VALUES ('359', '7', '1');
INSERT INTO `role_resource` VALUES ('360', '7', '14');
INSERT INTO `role_resource` VALUES ('361', '7', '141');
INSERT INTO `role_resource` VALUES ('362', '7', '142');
INSERT INTO `role_resource` VALUES ('363', '7', '143');
INSERT INTO `role_resource` VALUES ('364', '7', '222');
INSERT INTO `role_resource` VALUES ('365', '7', '223');
INSERT INTO `role_resource` VALUES ('366', '7', '224');
INSERT INTO `role_resource` VALUES ('367', '7', '221');
INSERT INTO `role_resource` VALUES ('368', '7', '226');
INSERT INTO `role_resource` VALUES ('396', '8', '1');
INSERT INTO `role_resource` VALUES ('397', '8', '11');
INSERT INTO `role_resource` VALUES ('398', '8', '111');
INSERT INTO `role_resource` VALUES ('399', '8', '12');
INSERT INTO `role_resource` VALUES ('400', '8', '121');
INSERT INTO `role_resource` VALUES ('401', '8', '13');
INSERT INTO `role_resource` VALUES ('402', '8', '131');
INSERT INTO `role_resource` VALUES ('403', '8', '14');
INSERT INTO `role_resource` VALUES ('404', '8', '141');
INSERT INTO `role_resource` VALUES ('405', '8', '222');
INSERT INTO `role_resource` VALUES ('406', '8', '223');
INSERT INTO `role_resource` VALUES ('407', '8', '224');
INSERT INTO `role_resource` VALUES ('408', '8', '221');
INSERT INTO `role_resource` VALUES ('769', '1', '1');
INSERT INTO `role_resource` VALUES ('770', '1', '11');
INSERT INTO `role_resource` VALUES ('771', '1', '111');
INSERT INTO `role_resource` VALUES ('772', '1', '112');
INSERT INTO `role_resource` VALUES ('773', '1', '113');
INSERT INTO `role_resource` VALUES ('774', '1', '114');
INSERT INTO `role_resource` VALUES ('775', '1', '12');
INSERT INTO `role_resource` VALUES ('776', '1', '121');
INSERT INTO `role_resource` VALUES ('777', '1', '122');
INSERT INTO `role_resource` VALUES ('778', '1', '123');
INSERT INTO `role_resource` VALUES ('779', '1', '124');
INSERT INTO `role_resource` VALUES ('780', '1', '125');
INSERT INTO `role_resource` VALUES ('781', '1', '13');
INSERT INTO `role_resource` VALUES ('782', '1', '131');
INSERT INTO `role_resource` VALUES ('783', '1', '132');
INSERT INTO `role_resource` VALUES ('784', '1', '133');
INSERT INTO `role_resource` VALUES ('785', '1', '134');
INSERT INTO `role_resource` VALUES ('786', '1', '14');
INSERT INTO `role_resource` VALUES ('787', '1', '141');
INSERT INTO `role_resource` VALUES ('788', '1', '142');
INSERT INTO `role_resource` VALUES ('789', '1', '143');
INSERT INTO `role_resource` VALUES ('790', '1', '144');
INSERT INTO `role_resource` VALUES ('791', '1', '221');
INSERT INTO `role_resource` VALUES ('792', '1', '303');
INSERT INTO `role_resource` VALUES ('793', '1', '304');
INSERT INTO `role_resource` VALUES ('794', '1', '305');
INSERT INTO `role_resource` VALUES ('795', '1', '306');
INSERT INTO `role_resource` VALUES ('796', '1', '307');
INSERT INTO `role_resource` VALUES ('797', '1', '227');
INSERT INTO `role_resource` VALUES ('798', '1', '228');
INSERT INTO `role_resource` VALUES ('799', '1', '229');
INSERT INTO `role_resource` VALUES ('800', '1', '230');
INSERT INTO `role_resource` VALUES ('801', '1', '231');
INSERT INTO `role_resource` VALUES ('802', '1', '232');
INSERT INTO `role_resource` VALUES ('803', '1', '233');
INSERT INTO `role_resource` VALUES ('804', '1', '234');
INSERT INTO `role_resource` VALUES ('805', '1', '235');
INSERT INTO `role_resource` VALUES ('806', '1', '236');
INSERT INTO `role_resource` VALUES ('807', '1', '237');
INSERT INTO `role_resource` VALUES ('808', '1', '238');
INSERT INTO `role_resource` VALUES ('809', '1', '239');
INSERT INTO `role_resource` VALUES ('810', '1', '240');
INSERT INTO `role_resource` VALUES ('811', '1', '241');
INSERT INTO `role_resource` VALUES ('812', '1', '242');
INSERT INTO `role_resource` VALUES ('813', '1', '243');
INSERT INTO `role_resource` VALUES ('814', '1', '244');
INSERT INTO `role_resource` VALUES ('815', '1', '245');
INSERT INTO `role_resource` VALUES ('816', '1', '246');
INSERT INTO `role_resource` VALUES ('817', '1', '247');
INSERT INTO `role_resource` VALUES ('818', '1', '248');
INSERT INTO `role_resource` VALUES ('819', '1', '249');
INSERT INTO `role_resource` VALUES ('820', '1', '250');
INSERT INTO `role_resource` VALUES ('821', '1', '251');
INSERT INTO `role_resource` VALUES ('822', '1', '252');
INSERT INTO `role_resource` VALUES ('823', '1', '253');
INSERT INTO `role_resource` VALUES ('824', '1', '254');
INSERT INTO `role_resource` VALUES ('825', '1', '255');
INSERT INTO `role_resource` VALUES ('826', '1', '256');
INSERT INTO `role_resource` VALUES ('827', '1', '257');
INSERT INTO `role_resource` VALUES ('828', '1', '258');
INSERT INTO `role_resource` VALUES ('829', '1', '259');
INSERT INTO `role_resource` VALUES ('830', '1', '260');
INSERT INTO `role_resource` VALUES ('831', '1', '261');
INSERT INTO `role_resource` VALUES ('832', '1', '262');
INSERT INTO `role_resource` VALUES ('833', '1', '263');
INSERT INTO `role_resource` VALUES ('834', '1', '264');
INSERT INTO `role_resource` VALUES ('835', '1', '265');
INSERT INTO `role_resource` VALUES ('836', '1', '266');
INSERT INTO `role_resource` VALUES ('837', '1', '267');
INSERT INTO `role_resource` VALUES ('838', '1', '268');
INSERT INTO `role_resource` VALUES ('839', '1', '269');
INSERT INTO `role_resource` VALUES ('840', '1', '270');
INSERT INTO `role_resource` VALUES ('841', '1', '271');
INSERT INTO `role_resource` VALUES ('842', '1', '272');
INSERT INTO `role_resource` VALUES ('843', '1', '273');
INSERT INTO `role_resource` VALUES ('844', '1', '274');
INSERT INTO `role_resource` VALUES ('845', '1', '275');
INSERT INTO `role_resource` VALUES ('846', '1', '276');
INSERT INTO `role_resource` VALUES ('847', '1', '277');
INSERT INTO `role_resource` VALUES ('848', '1', '278');
INSERT INTO `role_resource` VALUES ('849', '1', '279');
INSERT INTO `role_resource` VALUES ('850', '1', '280');
INSERT INTO `role_resource` VALUES ('851', '1', '281');
INSERT INTO `role_resource` VALUES ('852', '1', '282');
INSERT INTO `role_resource` VALUES ('853', '1', '283');
INSERT INTO `role_resource` VALUES ('854', '1', '284');
INSERT INTO `role_resource` VALUES ('855', '1', '285');
INSERT INTO `role_resource` VALUES ('856', '1', '286');
INSERT INTO `role_resource` VALUES ('857', '1', '287');
INSERT INTO `role_resource` VALUES ('858', '1', '288');
INSERT INTO `role_resource` VALUES ('859', '1', '289');
INSERT INTO `role_resource` VALUES ('860', '1', '290');
INSERT INTO `role_resource` VALUES ('861', '1', '291');
INSERT INTO `role_resource` VALUES ('862', '1', '292');
INSERT INTO `role_resource` VALUES ('863', '1', '293');
INSERT INTO `role_resource` VALUES ('864', '1', '294');
INSERT INTO `role_resource` VALUES ('865', '1', '295');
INSERT INTO `role_resource` VALUES ('866', '1', '296');
INSERT INTO `role_resource` VALUES ('867', '1', '297');
INSERT INTO `role_resource` VALUES ('868', '1', '298');
INSERT INTO `role_resource` VALUES ('869', '1', '299');
INSERT INTO `role_resource` VALUES ('870', '1', '300');
INSERT INTO `role_resource` VALUES ('871', '1', '301');
INSERT INTO `role_resource` VALUES ('872', '1', '302');
INSERT INTO `role_resource` VALUES ('873', '1', '308');
INSERT INTO `role_resource` VALUES ('874', '1', '309');
INSERT INTO `role_resource` VALUES ('875', '1', '310');
INSERT INTO `role_resource` VALUES ('876', '1', '311');
INSERT INTO `role_resource` VALUES ('877', '1', '312');
INSERT INTO `role_resource` VALUES ('878', '1', '316');

-- ----------------------------
-- Table structure for sechostinfo
-- ----------------------------
DROP TABLE IF EXISTS `sechostinfo`;
CREATE TABLE `sechostinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialno` varchar(100) DEFAULT NULL,
  `informdevno` varchar(200) DEFAULT NULL,
  `assetsno` varchar(100) DEFAULT NULL,
  `usedepart` varchar(100) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `configure` varchar(200) DEFAULT NULL,
  `displaymodel` varchar(200) DEFAULT NULL,
  `hostnumber` varchar(200) DEFAULT NULL,
  `diskid` varchar(200) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `secequipment` varchar(200) DEFAULT NULL,
  `purpose` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `osinstall` datetime DEFAULT NULL,
  `roomid` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sechostinfo
-- ----------------------------
INSERT INTO `sechostinfo` VALUES ('1', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '2016-09-01 21:46:02', '12', '14', '13', '2016-09-01 21:46:12', '16', '17999');

-- ----------------------------
-- Table structure for secprintinfo
-- ----------------------------
DROP TABLE IF EXISTS `secprintinfo`;
CREATE TABLE `secprintinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(200) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
  `roomno` varchar(200) DEFAULT NULL,
  `propertyno` varchar(200) DEFAULT NULL,
  `resdepart` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `brand` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `specifications` varchar(200) DEFAULT NULL,
  `serialno` varchar(200) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `devseclevel` varchar(200) DEFAULT NULL,
  `purpose` varchar(200) DEFAULT NULL,
  `usemethod` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secprintinfo
-- ----------------------------
INSERT INTO `secprintinfo` VALUES ('1', 'asdsa', 'asd', 'asd', 'asd', 'asd', 'asda', 'adsa', 'adsa', 'ads', 'asd', '2016-09-08 20:28:53', 'asadads', 'asdasd', 'asd', 'asda', 'asd');

-- ----------------------------
-- Table structure for secproductinfo
-- ----------------------------
DROP TABLE IF EXISTS `secproductinfo`;
CREATE TABLE `secproductinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depname` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `securitylevel` varchar(200) DEFAULT NULL,
  `newname` varchar(200) DEFAULT NULL,
  `switchbrand` varchar(200) DEFAULT NULL,
  `factoryno` varchar(200) DEFAULT NULL,
  `switchip` varchar(200) DEFAULT NULL,
  `switchmac` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `port` varchar(200) DEFAULT NULL,
  `patchpanel` varchar(200) DEFAULT NULL,
  `purpose` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `region` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secproductinfo
-- ----------------------------
INSERT INTO `secproductinfo` VALUES ('1', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '1566');

-- ----------------------------
-- Table structure for servermanage
-- ----------------------------
DROP TABLE IF EXISTS `servermanage`;
CREATE TABLE `servermanage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialno` varchar(100) DEFAULT NULL,
  `newcertifno` varchar(200) DEFAULT NULL,
  `unicertifno` varchar(200) DEFAULT NULL,
  `respondepart` varchar(200) DEFAULT NULL,
  `marcher` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `equipment` varchar(200) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
  `diskno` varchar(200) DEFAULT NULL,
  `osversion` varchar(200) DEFAULT NULL,
  `usedate` varchar(100) DEFAULT NULL,
  `secequipment` varchar(200) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `roomaddress` varchar(100) DEFAULT NULL,
  `usestatus` varchar(100) DEFAULT NULL,
  `mainuse` varchar(100) DEFAULT NULL,
  `accesspoint` varchar(100) DEFAULT NULL,
  `devtype` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servermanage
-- ----------------------------
INSERT INTO `servermanage` VALUES ('4', '11', '22', '33', '44', '55', '66', '77', '88', '99', '100', '2016-08-31 21:08:05', '111', '112', '113', '114', '115', '116', '117', '118', '119999');

-- ----------------------------
-- Table structure for switchinfo
-- ----------------------------
DROP TABLE IF EXISTS `switchinfo`;
CREATE TABLE `switchinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(100) DEFAULT NULL,
  `certifno` varchar(200) DEFAULT NULL,
  `depname` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `devname` varchar(200) DEFAULT NULL,
  `ipaddress` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `equipment` varchar(200) DEFAULT NULL,
  `informpoint` varchar(200) DEFAULT NULL,
  `termachtype` varchar(200) DEFAULT NULL,
  `termachpurpose` varchar(200) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
  `os` varchar(200) DEFAULT NULL,
  `osinstaltime` datetime DEFAULT NULL,
  `seclevel` varchar(100) DEFAULT NULL,
  `location` varchar(2000) DEFAULT NULL,
  `diskno` varchar(200) DEFAULT NULL,
  `antiviruscomp` varchar(200) DEFAULT NULL,
  `hostaudit` varchar(200) DEFAULT NULL,
  `medmanager` varchar(200) DEFAULT NULL,
  `cardid` varchar(200) DEFAULT NULL,
  `cardmac` varchar(200) DEFAULT NULL,
  `cardinfo` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of switchinfo
-- ----------------------------
INSERT INTO `switchinfo` VALUES ('1', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '2016-08-03 21:25:44', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25666');

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
DROP TABLE IF EXISTS `syslog`;
CREATE TABLE `syslog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `opt_content` varchar(1024) DEFAULT NULL,
  `client_ip` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1432 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syslog
-- ----------------------------
INSERT INTO `syslog` VALUES ('3', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-10-30 17:58:44');
INSERT INTO `syslog` VALUES ('4', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=admin&', '127.0.0.1', '2015-10-30 17:58:59');
INSERT INTO `syslog` VALUES ('5', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-11-02 10:35:25');
INSERT INTO `syslog` VALUES ('6', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=admin&', '127.0.0.1', '2015-11-02 10:35:42');
INSERT INTO `syslog` VALUES ('7', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-11-02 10:43:17');
INSERT INTO `syslog` VALUES ('8', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=admin&', '127.0.0.1', '2015-11-02 10:43:42');
INSERT INTO `syslog` VALUES ('9', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-11-02 17:44:45');
INSERT INTO `syslog` VALUES ('10', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=admin&', '127.0.0.1', '2015-11-02 17:44:49');
INSERT INTO `syslog` VALUES ('11', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-11-18 19:14:16');
INSERT INTO `syslog` VALUES ('12', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=admin&', '127.0.0.1', '2015-11-18 19:14:21');
INSERT INTO `syslog` VALUES ('13', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=218&_=1448724292127&', '127.0.0.1', '2015-11-28 23:25:25');
INSERT INTO `syslog` VALUES ('14', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=218&icon=&status=0&name=测试&seq=0&pid=216&resourcetype=0&url=/sysLog/manager&', '127.0.0.1', '2015-11-28 23:26:06');
INSERT INTO `syslog` VALUES ('15', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-11-28 23:52:39');
INSERT INTO `syslog` VALUES ('16', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-11-28 23:53:26');
INSERT INTO `syslog` VALUES ('17', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-11-29 14:36:08');
INSERT INTO `syslog` VALUES ('18', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=admin&', '127.0.0.1', '2015-11-29 14:36:44');
INSERT INTO `syslog` VALUES ('19', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-29 18:40:59');
INSERT INTO `syslog` VALUES ('20', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-29 18:41:02');
INSERT INTO `syslog` VALUES ('21', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-11-29 18:41:20');
INSERT INTO `syslog` VALUES ('22', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-29 18:42:09');
INSERT INTO `syslog` VALUES ('23', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-29 18:44:48');
INSERT INTO `syslog` VALUES ('24', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-29 23:38:07');
INSERT INTO `syslog` VALUES ('25', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-30 13:00:37');
INSERT INTO `syslog` VALUES ('26', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-30 13:05:38');
INSERT INTO `syslog` VALUES ('27', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-30 13:08:32');
INSERT INTO `syslog` VALUES ('28', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-30 13:09:35');
INSERT INTO `syslog` VALUES ('29', 'qaz', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-30 13:10:05');
INSERT INTO `syslog` VALUES ('30', 'qaz', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-30 13:12:46');
INSERT INTO `syslog` VALUES ('31', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-11-30 13:12:52');
INSERT INTO `syslog` VALUES ('32', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-11-30 13:12:56');
INSERT INTO `syslog` VALUES ('33', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=4&_=1448937800548&', '127.0.0.1', '2015-12-01 10:43:36');
INSERT INTO `syslog` VALUES ('34', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:delete,[参数]:id=4&', '127.0.0.1', '2015-12-01 10:43:43');
INSERT INTO `syslog` VALUES ('35', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=218&_=1448937800549&', '127.0.0.1', '2015-12-01 10:44:06');
INSERT INTO `syslog` VALUES ('36', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=218&icon=&status=0&name=日志管理&seq=0&pid=&resourcetype=0&url=/sysLog/manager&', '127.0.0.1', '2015-12-01 10:44:27');
INSERT INTO `syslog` VALUES ('37', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-01 11:08:57');
INSERT INTO `syslog` VALUES ('38', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=219&', '127.0.0.1', '2015-12-01 11:09:21');
INSERT INTO `syslog` VALUES ('39', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=218&_=1448939340536&', '127.0.0.1', '2015-12-01 11:09:38');
INSERT INTO `syslog` VALUES ('40', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=218&icon=&status=0&name=日志管理&seq=0&pid=&resourcetype=0&url=/sysLog/manager&', '127.0.0.1', '2015-12-01 11:09:50');
INSERT INTO `syslog` VALUES ('41', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=217&', '127.0.0.1', '2015-12-01 11:10:06');
INSERT INTO `syslog` VALUES ('42', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=3&_=1448939340537&', '127.0.0.1', '2015-12-01 11:10:50');
INSERT INTO `syslog` VALUES ('43', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-12-01 11:19:32');
INSERT INTO `syslog` VALUES ('44', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=218&_=1448937870495&', '127.0.0.1', '2015-12-01 11:36:53');
INSERT INTO `syslog` VALUES ('45', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=218&icon=icon-folder&status=0&name=日志管理&seq=0&pid=216&resourcetype=0&url=/sysLog/manager&', '127.0.0.1', '2015-12-01 11:37:02');
INSERT INTO `syslog` VALUES ('46', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=216&_=1448937870496&', '127.0.0.1', '2015-12-01 11:37:05');
INSERT INTO `syslog` VALUES ('47', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2015-12-01 11:37:10');
INSERT INTO `syslog` VALUES ('48', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:icon=icon-folder&status=0&name=日志管理&seq=0&pid=&resourcetype=0&url=&', '127.0.0.1', '2015-12-01 11:37:27');
INSERT INTO `syslog` VALUES ('49', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=216&', '127.0.0.1', '2015-12-01 11:37:32');
INSERT INTO `syslog` VALUES ('50', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=220&', '127.0.0.1', '2015-12-01 11:37:37');
INSERT INTO `syslog` VALUES ('51', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-01 11:43:23');
INSERT INTO `syslog` VALUES ('52', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=218&_=1448941407091&', '127.0.0.1', '2015-12-01 11:43:47');
INSERT INTO `syslog` VALUES ('53', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=218&icon=icon-folder&status=0&name=日志管理&seq=0&pid=216&resourcetype=0&url=&', '127.0.0.1', '2015-12-01 11:43:52');
INSERT INTO `syslog` VALUES ('54', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=218&_=1448941407092&', '127.0.0.1', '2015-12-01 11:43:56');
INSERT INTO `syslog` VALUES ('55', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=218&icon=icon-folder&status=0&name=日志管理&seq=0&pid=&resourcetype=0&url=&', '127.0.0.1', '2015-12-01 11:44:02');
INSERT INTO `syslog` VALUES ('56', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=218&_=1448941407093&', '127.0.0.1', '2015-12-01 11:44:04');
INSERT INTO `syslog` VALUES ('57', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2015-12-01 11:44:15');
INSERT INTO `syslog` VALUES ('58', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:icon=&status=0&name=信息&seq=0&pid=&resourcetype=0&url=&', '127.0.0.1', '2015-12-01 11:44:20');
INSERT INTO `syslog` VALUES ('59', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1448941407095&', '127.0.0.1', '2015-12-01 11:44:24');
INSERT INTO `syslog` VALUES ('60', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=218&', '127.0.0.1', '2015-12-01 11:44:28');
INSERT INTO `syslog` VALUES ('61', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPwdPage,[参数]:', null, '2015-12-01 11:44:42');
INSERT INTO `syslog` VALUES ('62', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1448941473196&', '127.0.0.1', '2015-12-01 11:44:52');
INSERT INTO `syslog` VALUES ('63', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=221&icon=&status=0&name=日志管理&seq=0&pid=&resourcetype=0&url=&', '127.0.0.1', '2015-12-01 11:44:58');
INSERT INTO `syslog` VALUES ('64', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1448941473197&', '127.0.0.1', '2015-12-01 11:45:12');
INSERT INTO `syslog` VALUES ('65', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1448941473198&', '127.0.0.1', '2015-12-01 11:58:16');
INSERT INTO `syslog` VALUES ('66', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=221&icon=icon-company&status=0&name=日志管理&seq=0&pid=&resourcetype=0&url=&', '127.0.0.1', '2015-12-01 11:58:19');
INSERT INTO `syslog` VALUES ('67', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-12-06 12:10:52');
INSERT INTO `syslog` VALUES ('68', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=admin&', '127.0.0.1', '2015-12-06 12:10:55');
INSERT INTO `syslog` VALUES ('69', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:delete,[参数]:id=4&', '127.0.0.1', '2015-12-06 12:11:08');
INSERT INTO `syslog` VALUES ('70', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:delete,[参数]:id=5&', '127.0.0.1', '2015-12-06 12:11:11');
INSERT INTO `syslog` VALUES ('71', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:delete,[参数]:id=6&', '127.0.0.1', '2015-12-06 12:11:13');
INSERT INTO `syslog` VALUES ('72', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:delete,[参数]:id=3&', '127.0.0.1', '2015-12-06 12:11:16');
INSERT INTO `syslog` VALUES ('73', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=2&_=1449375056663&', '127.0.0.1', '2015-12-06 12:11:19');
INSERT INTO `syslog` VALUES ('74', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:edit,[参数]:id=2&status=0&description=技术部经理&name=技术部经理&seq=0&', '127.0.0.1', '2015-12-06 12:11:33');
INSERT INTO `syslog` VALUES ('75', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=1&_=1449375056664&', '127.0.0.1', '2015-12-06 12:11:35');
INSERT INTO `syslog` VALUES ('76', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:edit,[参数]:id=1&status=0&description=超级管理员&name=超级管理员&seq=0&', '127.0.0.1', '2015-12-06 12:11:39');
INSERT INTO `syslog` VALUES ('77', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:addPage,[参数]:', null, '2015-12-06 12:11:41');
INSERT INTO `syslog` VALUES ('78', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:add,[参数]:status=0&description=产品部经理&name=产品部经理&seq=0&', '127.0.0.1', '2015-12-06 12:11:57');
INSERT INTO `syslog` VALUES ('79', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=1&_=1449375056666&', '127.0.0.1', '2015-12-06 12:12:09');
INSERT INTO `syslog` VALUES ('80', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=1&loginname=admin&phone=18707173376&sex=0&status=0&age=18&name=admin&usertype=0&organizationId=1&password=&roleIds=1&', '127.0.0.1', '2015-12-06 12:12:37');
INSERT INTO `syslog` VALUES ('81', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=13&_=1449375056667&', '127.0.0.1', '2015-12-06 12:12:42');
INSERT INTO `syslog` VALUES ('82', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=13&loginname=snoopy&phone=&sex=0&status=0&age=25&name=snoopy&usertype=1&organizationId=3&password=&roleIds=2&', '127.0.0.1', '2015-12-06 12:13:26');
INSERT INTO `syslog` VALUES ('83', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=1&_=1449375056668&', '127.0.0.1', '2015-12-06 12:13:30');
INSERT INTO `syslog` VALUES ('84', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=1&loginname=admin&phone=18707173376&sex=0&status=0&age=25&name=admin&usertype=0&organizationId=1&password=&roleIds=1&', '127.0.0.1', '2015-12-06 12:13:36');
INSERT INTO `syslog` VALUES ('85', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=13&_=1449375056669&', '127.0.0.1', '2015-12-06 12:13:40');
INSERT INTO `syslog` VALUES ('86', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=13&loginname=snoopy&phone=18707173376&sex=0&status=0&age=25&name=snoopy&usertype=1&organizationId=3&password=&roleIds=2&', '127.0.0.1', '2015-12-06 12:13:43');
INSERT INTO `syslog` VALUES ('87', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449375056670&', '127.0.0.1', '2015-12-06 12:13:45');
INSERT INTO `syslog` VALUES ('88', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=&sex=0&status=0&age=0&name=dreamlu&usertype=1&organizationId=3&password=123456&roleIds=7&', '127.0.0.1', '2015-12-06 12:14:37');
INSERT INTO `syslog` VALUES ('89', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=13&_=1449375056671&', '127.0.0.1', '2015-12-06 12:14:41');
INSERT INTO `syslog` VALUES ('90', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=13&loginname=snoopy&phone=18707173376&sex=0&status=0&age=25&name=snoopy&usertype=1&organizationId=3&password=123456&roleIds=2&', '127.0.0.1', '2015-12-06 12:14:46');
INSERT INTO `syslog` VALUES ('91', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449375056672&', '127.0.0.1', '2015-12-06 12:14:47');
INSERT INTO `syslog` VALUES ('92', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=18707173376&sex=0&status=0&age=0&name=dreamlu&usertype=1&organizationId=3&password=123456&roleIds=7&', '127.0.0.1', '2015-12-06 12:14:53');
INSERT INTO `syslog` VALUES ('93', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:addPage,[参数]:', null, '2015-12-06 12:15:13');
INSERT INTO `syslog` VALUES ('94', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:add,[参数]:icon=icon-folder&address=&name=产品部&seq=0&pid=&code=产品部&', '127.0.0.1', '2015-12-06 12:15:30');
INSERT INTO `syslog` VALUES ('95', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=5&_=1449375056674&', '127.0.0.1', '2015-12-06 12:15:42');
INSERT INTO `syslog` VALUES ('96', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:edit,[参数]:id=5&icon=icon-company&address=&name=产品部&seq=0&pid=&code=03&', '127.0.0.1', '2015-12-06 12:15:50');
INSERT INTO `syslog` VALUES ('97', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449375056675&', '127.0.0.1', '2015-12-06 12:15:58');
INSERT INTO `syslog` VALUES ('98', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=18707173376&sex=0&status=0&age=0&name=dreamlu&usertype=1&organizationId=5&password=&roleIds=7&', '127.0.0.1', '2015-12-06 12:16:01');
INSERT INTO `syslog` VALUES ('99', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449375365022&', '127.0.0.1', '2015-12-06 12:16:12');
INSERT INTO `syslog` VALUES ('100', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=18707173376&sex=0&status=0&age=25&name=dreamlu&usertype=1&organizationId=5&password=&roleIds=7&', '127.0.0.1', '2015-12-06 12:16:15');
INSERT INTO `syslog` VALUES ('101', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1449375365023&', '127.0.0.1', '2015-12-06 12:16:33');
INSERT INTO `syslog` VALUES ('102', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=221&icon=icon-company&status=0&name=日志管理&seq=0&pid=&resourcetype=0&url=/sysLog/manager&', '127.0.0.1', '2015-12-06 12:17:29');
INSERT INTO `syslog` VALUES ('103', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1449375468115&', '127.0.0.1', '2015-12-06 12:18:30');
INSERT INTO `syslog` VALUES ('104', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221&', '127.0.0.1', '2015-12-06 12:18:36');
INSERT INTO `syslog` VALUES ('105', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1449375468116&', '127.0.0.1', '2015-12-06 12:18:39');
INSERT INTO `syslog` VALUES ('106', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=2&resourceIds=13,131,132,133,134,221&', '127.0.0.1', '2015-12-06 12:18:55');
INSERT INTO `syslog` VALUES ('107', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449375468117&', '127.0.0.1', '2015-12-06 12:18:57');
INSERT INTO `syslog` VALUES ('108', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=7&resourceIds=14,141,142,143,221&', '127.0.0.1', '2015-12-06 12:19:13');
INSERT INTO `syslog` VALUES ('109', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:19:16');
INSERT INTO `syslog` VALUES ('110', 'snoopy', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:21:33');
INSERT INTO `syslog` VALUES ('111', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449375726916&', '127.0.0.1', '2015-12-06 12:22:16');
INSERT INTO `syslog` VALUES ('112', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=18707173376&sex=0&status=0&age=25&name=dreamlu&usertype=1&organizationId=5&password=123456&roleIds=7&', '127.0.0.1', '2015-12-06 12:22:21');
INSERT INTO `syslog` VALUES ('113', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449375726917&', '127.0.0.1', '2015-12-06 12:22:40');
INSERT INTO `syslog` VALUES ('114', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=18707173376&sex=0&status=0&age=25&name=dreamlu&usertype=1&organizationId=5&password=123456&roleIds=7&', '127.0.0.1', '2015-12-06 12:22:49');
INSERT INTO `syslog` VALUES ('115', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449375726918&', '127.0.0.1', '2015-12-06 12:22:51');
INSERT INTO `syslog` VALUES ('116', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=18707173376&sex=0&status=0&age=25&name=dreamlu&usertype=1&organizationId=5&password=123456&roleIds=7&', '127.0.0.1', '2015-12-06 12:23:24');
INSERT INTO `syslog` VALUES ('117', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449375726919&', '127.0.0.1', '2015-12-06 12:23:31');
INSERT INTO `syslog` VALUES ('118', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=18707173376&sex=0&status=0&age=25&name=dreamlu&usertype=1&organizationId=5&password=admin&roleIds=7&', '127.0.0.1', '2015-12-06 12:23:36');
INSERT INTO `syslog` VALUES ('119', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:23:46');
INSERT INTO `syslog` VALUES ('120', 'dreamlu', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:24:07');
INSERT INTO `syslog` VALUES ('121', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1449375852321&', '127.0.0.1', '2015-12-06 12:24:19');
INSERT INTO `syslog` VALUES ('122', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1449375852322&', '127.0.0.1', '2015-12-06 12:25:03');
INSERT INTO `syslog` VALUES ('123', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=2&resourceIds=1,13,131,132,133,134,221&', '127.0.0.1', '2015-12-06 12:25:30');
INSERT INTO `syslog` VALUES ('124', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:25:32');
INSERT INTO `syslog` VALUES ('125', 'dreamlu', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:25:42');
INSERT INTO `syslog` VALUES ('126', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPwdPage,[参数]:', null, '2015-12-06 12:25:51');
INSERT INTO `syslog` VALUES ('127', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=7&_=1449375949053&', '127.0.0.1', '2015-12-06 12:25:57');
INSERT INTO `syslog` VALUES ('128', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449375949054&', '127.0.0.1', '2015-12-06 12:25:59');
INSERT INTO `syslog` VALUES ('129', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=7&resourceIds=1,14,141,142,143,221&', '127.0.0.1', '2015-12-06 12:26:03');
INSERT INTO `syslog` VALUES ('130', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:26:06');
INSERT INTO `syslog` VALUES ('131', 'dreamlu', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=1&_=1449375972808&', '127.0.0.1', '2015-12-06 12:26:19');
INSERT INTO `syslog` VALUES ('132', 'dreamlu', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:26:37');
INSERT INTO `syslog` VALUES ('133', 'snoopy', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:addPage,[参数]:', null, '2015-12-06 12:27:13');
INSERT INTO `syslog` VALUES ('134', 'snoopy', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=1&_=1449376026245&', '127.0.0.1', '2015-12-06 12:27:35');
INSERT INTO `syslog` VALUES ('135', 'snoopy', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:27:50');
INSERT INTO `syslog` VALUES ('136', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:addPage,[参数]:', null, '2015-12-06 12:28:27');
INSERT INTO `syslog` VALUES ('137', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=1&_=1449376091840&', '127.0.0.1', '2015-12-06 12:29:44');
INSERT INTO `syslog` VALUES ('138', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1449376091841&', '127.0.0.1', '2015-12-06 12:29:47');
INSERT INTO `syslog` VALUES ('139', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=221&icon=icon-company&status=0&name=日志管理&seq=1&pid=&resourcetype=0&url=/sysLog/manager&', '127.0.0.1', '2015-12-06 12:29:52');
INSERT INTO `syslog` VALUES ('140', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=1&_=1449376091842&', '127.0.0.1', '2015-12-06 12:30:26');
INSERT INTO `syslog` VALUES ('141', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=3&_=1449376091843&', '127.0.0.1', '2015-12-06 12:30:28');
INSERT INTO `syslog` VALUES ('142', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:edit,[参数]:id=3&icon=icon-company&address=&name=技术部&seq=1&pid=&code=02&', '127.0.0.1', '2015-12-06 12:30:30');
INSERT INTO `syslog` VALUES ('143', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=5&_=1449376091844&', '127.0.0.1', '2015-12-06 12:30:34');
INSERT INTO `syslog` VALUES ('144', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:edit,[参数]:id=5&icon=icon-company&address=&name=产品部&seq=2&pid=&code=03&', '127.0.0.1', '2015-12-06 12:30:37');
INSERT INTO `syslog` VALUES ('145', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:31:04');
INSERT INTO `syslog` VALUES ('146', 'snoopy', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:31:29');
INSERT INTO `syslog` VALUES ('147', 'snoopy', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:36:12');
INSERT INTO `syslog` VALUES ('148', 'snoopy', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:36:42');
INSERT INTO `syslog` VALUES ('149', 'snoopy', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 12:39:16');
INSERT INTO `syslog` VALUES ('150', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=1&_=1449376768451&', '127.0.0.1', '2015-12-06 12:39:56');
INSERT INTO `syslog` VALUES ('151', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2015-12-06 12:40:20');
INSERT INTO `syslog` VALUES ('152', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:icon=&status=0&name=视频教程&seq=0&pid=&resourcetype=0&url=&', '127.0.0.1', '2015-12-06 12:40:42');
INSERT INTO `syslog` VALUES ('153', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=222&_=1449376846336&', '127.0.0.1', '2015-12-06 12:41:00');
INSERT INTO `syslog` VALUES ('154', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=222&_=1449376846337&', '127.0.0.1', '2015-12-06 12:41:04');
INSERT INTO `syslog` VALUES ('155', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=222&icon=&status=0&name=视频教程&seq=2&pid=&resourcetype=0&url=&', '127.0.0.1', '2015-12-06 12:41:08');
INSERT INTO `syslog` VALUES ('156', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=222&_=1449376846338&', '127.0.0.1', '2015-12-06 12:41:20');
INSERT INTO `syslog` VALUES ('157', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=222&icon=icon-company&status=0&name=视频教程&seq=2&pid=&resourcetype=0&url=&', '127.0.0.1', '2015-12-06 12:41:25');
INSERT INTO `syslog` VALUES ('158', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2015-12-06 12:42:13');
INSERT INTO `syslog` VALUES ('159', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:icon=&status=0&name=官方网站&seq=0&pid=222&resourcetype=0&url=http://www.dreamlu.net/&', '127.0.0.1', '2015-12-06 12:42:42');
INSERT INTO `syslog` VALUES ('160', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=223&_=1449376846340&', '127.0.0.1', '2015-12-06 12:42:52');
INSERT INTO `syslog` VALUES ('161', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=223&icon=icon-folder&status=0&name=官方网站&seq=0&pid=222&resourcetype=0&url=http://www.dreamlu.net/&', '127.0.0.1', '2015-12-06 12:42:57');
INSERT INTO `syslog` VALUES ('162', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2015-12-06 12:43:12');
INSERT INTO `syslog` VALUES ('163', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:icon=&status=0&name=JFinal2.0视频&seq=1&pid=222&resourcetype=0&url=http://blog.dreamlu.net/blog/79&', '127.0.0.1', '2015-12-06 12:45:28');
INSERT INTO `syslog` VALUES ('164', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=224&_=1449376846342&', '127.0.0.1', '2015-12-06 12:45:32');
INSERT INTO `syslog` VALUES ('165', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=224&icon=icon-folder&status=0&name=JFinal2.0视频&seq=1&pid=222&resourcetype=0&url=http://blog.dreamlu.net/blog/79&', '127.0.0.1', '2015-12-06 12:45:36');
INSERT INTO `syslog` VALUES ('166', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2015-12-06 12:45:55');
INSERT INTO `syslog` VALUES ('167', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:icon=&status=0&name=JFinal2.0视频源码&seq=0&pid=222&resourcetype=0&url=http://git.oschina.net/596392912/JFinal2.0-beetl-training&', '127.0.0.1', '2015-12-06 12:47:00');
INSERT INTO `syslog` VALUES ('168', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=225&_=1449376846344&', '127.0.0.1', '2015-12-06 12:47:03');
INSERT INTO `syslog` VALUES ('169', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=225&icon=&status=0&name=JFinal2.0视频源码&seq=2&pid=222&resourcetype=0&url=http://git.oschina.net/596392912/JFinal2.0-beetl-training&', '127.0.0.1', '2015-12-06 12:47:09');
INSERT INTO `syslog` VALUES ('170', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=225&_=1449376846345&', '127.0.0.1', '2015-12-06 12:47:21');
INSERT INTO `syslog` VALUES ('171', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=225&icon=icon-folder&status=0&name=视频源码&seq=2&pid=222&resourcetype=0&url=http://git.oschina.net/596392912/JFinal2.0-beetl-training&', '127.0.0.1', '2015-12-06 12:47:30');
INSERT INTO `syslog` VALUES ('172', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=222&_=1449377269160&', '127.0.0.1', '2015-12-06 12:48:09');
INSERT INTO `syslog` VALUES ('173', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=222&icon=icon-company&status=0&name=视频教程&seq=1&pid=&resourcetype=0&url=&', '127.0.0.1', '2015-12-06 12:48:13');
INSERT INTO `syslog` VALUES ('174', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1449377269161&', '127.0.0.1', '2015-12-06 12:48:15');
INSERT INTO `syslog` VALUES ('175', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=221&icon=icon-company&status=0&name=日志管理&seq=2&pid=&resourcetype=0&url=/sysLog/manager&', '127.0.0.1', '2015-12-06 12:48:19');
INSERT INTO `syslog` VALUES ('176', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=223&_=1449377269162&', '127.0.0.1', '2015-12-06 12:48:33');
INSERT INTO `syslog` VALUES ('177', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=224&_=1449377269163&', '127.0.0.1', '2015-12-06 12:48:36');
INSERT INTO `syslog` VALUES ('178', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=224&icon=icon-folder&status=0&name=JFinal视频&seq=1&pid=222&resourcetype=0&url=http://blog.dreamlu.net/blog/79&', '127.0.0.1', '2015-12-06 12:48:42');
INSERT INTO `syslog` VALUES ('179', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=224&_=1449377269164&', '127.0.0.1', '2015-12-06 12:48:53');
INSERT INTO `syslog` VALUES ('180', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=224&icon=icon-folder&status=0&name=jfinal视频&seq=1&pid=222&resourcetype=0&url=http://blog.dreamlu.net/blog/79&', '127.0.0.1', '2015-12-06 12:49:01');
INSERT INTO `syslog` VALUES ('181', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=admin&', '127.0.0.1', '2015-12-06 13:09:23');
INSERT INTO `syslog` VALUES ('182', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=225&', '127.0.0.1', '2015-12-06 13:09:29');
INSERT INTO `syslog` VALUES ('183', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:addPage,[参数]:', null, '2015-12-06 13:09:42');
INSERT INTO `syslog` VALUES ('184', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1449378563775&', '127.0.0.1', '2015-12-06 13:09:48');
INSERT INTO `syslog` VALUES ('185', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,222,223,224,221&', '127.0.0.1', '2015-12-06 13:09:53');
INSERT INTO `syslog` VALUES ('186', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1449378563776&', '127.0.0.1', '2015-12-06 13:09:55');
INSERT INTO `syslog` VALUES ('187', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=2&resourceIds=1,13,131,132,133,134,222,223,224,221&', '127.0.0.1', '2015-12-06 13:09:59');
INSERT INTO `syslog` VALUES ('188', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449378563777&', '127.0.0.1', '2015-12-06 13:10:00');
INSERT INTO `syslog` VALUES ('189', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=7&resourceIds=1,14,141,142,143,222,223,224,221&', '127.0.0.1', '2015-12-06 13:10:04');
INSERT INTO `syslog` VALUES ('190', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 13:10:08');
INSERT INTO `syslog` VALUES ('191', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:addPage,[参数]:', null, '2015-12-06 13:10:28');
INSERT INTO `syslog` VALUES ('192', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:add,[参数]:status=0&description=测试账户&name=测试账户&seq=0&', '127.0.0.1', '2015-12-06 13:10:40');
INSERT INTO `syslog` VALUES ('193', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:addPage,[参数]:', null, '2015-12-06 13:10:45');
INSERT INTO `syslog` VALUES ('194', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:addPage,[参数]:', null, '2015-12-06 13:11:24');
INSERT INTO `syslog` VALUES ('195', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:addPage,[参数]:', null, '2015-12-06 13:11:27');
INSERT INTO `syslog` VALUES ('196', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:addPage,[参数]:', null, '2015-12-06 13:11:40');
INSERT INTO `syslog` VALUES ('197', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=3&_=1449378619302&', '127.0.0.1', '2015-12-06 13:11:52');
INSERT INTO `syslog` VALUES ('198', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:addPage,[参数]:', null, '2015-12-06 13:11:56');
INSERT INTO `syslog` VALUES ('199', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:add,[参数]:icon=icon-folder&address=&name=测试组&seq=0&pid=3&code=04&', '127.0.0.1', '2015-12-06 13:12:18');
INSERT INTO `syslog` VALUES ('200', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:addPage,[参数]:', null, '2015-12-06 13:12:28');
INSERT INTO `syslog` VALUES ('201', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:addPage,[参数]:', null, '2015-12-06 13:12:36');
INSERT INTO `syslog` VALUES ('202', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:add,[参数]:loginname=test&phone=&sex=0&status=0&age=25&name=test&usertype=1&organizationId=6&password=admin&roleIds=8&', '127.0.0.1', '2015-12-06 13:13:03');
INSERT INTO `syslog` VALUES ('203', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=15&_=1449378750752&', '127.0.0.1', '2015-12-06 13:13:11');
INSERT INTO `syslog` VALUES ('204', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=15&loginname=test&phone=18707173376&sex=0&status=0&age=25&name=test&usertype=1&organizationId=6&password=&roleIds=8&', '127.0.0.1', '2015-12-06 13:13:15');
INSERT INTO `syslog` VALUES ('205', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 13:13:20');
INSERT INTO `syslog` VALUES ('206', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPwdPage,[参数]:', null, '2015-12-06 13:13:36');
INSERT INTO `syslog` VALUES ('207', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editUserPwd,[参数]:oldPwd=admin&rePwd=123456qaz&pwd=123456qaz&', '127.0.0.1', '2015-12-06 13:14:05');
INSERT INTO `syslog` VALUES ('208', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1449378807806&', '127.0.0.1', '2015-12-06 13:14:16');
INSERT INTO `syslog` VALUES ('209', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=8&resourceIds=1,11,111,12,121,13,131,14,141,222,223,224,221&', '127.0.0.1', '2015-12-06 13:14:40');
INSERT INTO `syslog` VALUES ('210', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 13:14:43');
INSERT INTO `syslog` VALUES ('211', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPwdPage,[参数]:', null, '2015-12-06 13:15:29');
INSERT INTO `syslog` VALUES ('212', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=15&_=1449378923020&', '127.0.0.1', '2015-12-06 13:15:37');
INSERT INTO `syslog` VALUES ('213', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=15&loginname=test&phone=18707173376&sex=0&status=0&age=25&name=test&usertype=1&organizationId=6&password=admin&roleIds=8&', '127.0.0.1', '2015-12-06 13:15:42');
INSERT INTO `syslog` VALUES ('214', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 13:15:52');
INSERT INTO `syslog` VALUES ('215', 'test', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 13:16:40');
INSERT INTO `syslog` VALUES ('216', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-06 13:17:18');
INSERT INTO `syslog` VALUES ('217', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=1&_=1449452930847&', '127.0.0.1', '2015-12-07 09:49:12');
INSERT INTO `syslog` VALUES ('218', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=1&loginname=admin&phone=18707173376&sex=0&status=0&age=25&name=admin&usertype=0&organizationId=1&password=test&roleIds=1&', '127.0.0.1', '2015-12-07 09:49:18');
INSERT INTO `syslog` VALUES ('219', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=13&_=1449452930848&', '127.0.0.1', '2015-12-07 09:49:20');
INSERT INTO `syslog` VALUES ('220', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=13&loginname=snoopy&phone=18707173376&sex=0&status=0&age=25&name=snoopy&usertype=1&organizationId=3&password=test&roleIds=2&', '127.0.0.1', '2015-12-07 09:49:26');
INSERT INTO `syslog` VALUES ('221', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449452930849&', '127.0.0.1', '2015-12-07 09:49:27');
INSERT INTO `syslog` VALUES ('222', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=18707173376&sex=0&status=0&age=25&name=dreamlu&usertype=1&organizationId=5&password=test&roleIds=7&', '127.0.0.1', '2015-12-07 09:49:32');
INSERT INTO `syslog` VALUES ('223', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-07 09:49:37');
INSERT INTO `syslog` VALUES ('224', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-07 09:49:45');
INSERT INTO `syslog` VALUES ('225', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2015-12-07 20:22:40');
INSERT INTO `syslog` VALUES ('226', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:icon=&status=0&name=修改密码&seq=0&pid=&resourcetype=1&url=&', '127.0.0.1', '2015-12-07 20:23:06');
INSERT INTO `syslog` VALUES ('227', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=226&_=1449490954500&', '127.0.0.1', '2015-12-07 20:23:16');
INSERT INTO `syslog` VALUES ('228', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=226&icon=修改密码&status=0&name=修改密码&seq=0&pid=&resourcetype=1&url=&', '127.0.0.1', '2015-12-07 20:23:22');
INSERT INTO `syslog` VALUES ('229', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=222&_=1449491005264&', '127.0.0.1', '2015-12-07 20:23:57');
INSERT INTO `syslog` VALUES ('230', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=226&_=1449491005265&', '127.0.0.1', '2015-12-07 20:24:00');
INSERT INTO `syslog` VALUES ('231', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=226&icon=icon-edit&status=0&name=修改密码&seq=0&pid=&resourcetype=1&url=&', '127.0.0.1', '2015-12-07 20:24:04');
INSERT INTO `syslog` VALUES ('232', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=226&_=1449491005266&', '127.0.0.1', '2015-12-07 20:24:13');
INSERT INTO `syslog` VALUES ('233', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=226&icon=icon-edit&status=0&name=修改密码&seq=3&pid=&resourcetype=1&url=&', '127.0.0.1', '2015-12-07 20:24:22');
INSERT INTO `syslog` VALUES ('234', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=226&_=1449491067030&', '127.0.0.1', '2015-12-07 20:25:24');
INSERT INTO `syslog` VALUES ('235', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=226&icon=icon-edit&status=0&name=修改密码&seq=3&pid=&resourcetype=1&url=/user/editPwdPage&', '127.0.0.1', '2015-12-07 20:25:28');
INSERT INTO `syslog` VALUES ('236', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=8&_=1449491288100&', '127.0.0.1', '2015-12-07 20:28:15');
INSERT INTO `syslog` VALUES ('237', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1449491288101&', '127.0.0.1', '2015-12-07 20:28:23');
INSERT INTO `syslog` VALUES ('238', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-07 20:28:36');
INSERT INTO `syslog` VALUES ('239', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=8&_=1449491324914&', '127.0.0.1', '2015-12-07 20:28:54');
INSERT INTO `syslog` VALUES ('240', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1449491324915&', '127.0.0.1', '2015-12-07 20:28:56');
INSERT INTO `syslog` VALUES ('241', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1449491355867&', '127.0.0.1', '2015-12-07 20:29:24');
INSERT INTO `syslog` VALUES ('242', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=226&_=1449491355868&', '127.0.0.1', '2015-12-07 20:30:15');
INSERT INTO `syslog` VALUES ('243', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=226&icon=icon-edit&status=0&name=修改密码&seq=3&pid=&resourcetype=0&url=/user/editPwdPage&', '127.0.0.1', '2015-12-07 20:30:19');
INSERT INTO `syslog` VALUES ('244', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1449491422645&', '127.0.0.1', '2015-12-07 20:30:29');
INSERT INTO `syslog` VALUES ('245', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:null', '127.0.0.1', '2015-12-07 20:35:15');
INSERT INTO `syslog` VALUES ('246', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=test&', '127.0.0.1', '2015-12-07 20:35:22');
INSERT INTO `syslog` VALUES ('247', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPwdPage,[参数]:', null, '2015-12-07 20:35:27');
INSERT INTO `syslog` VALUES ('248', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=226&_=1449491723079&', '127.0.0.1', '2015-12-07 20:35:50');
INSERT INTO `syslog` VALUES ('249', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=226&icon=icon-edit&status=0&name=修改密码&seq=3&pid=&resourcetype=1&url=/user/editPwdPage&', '127.0.0.1', '2015-12-07 20:35:55');
INSERT INTO `syslog` VALUES ('250', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1449491758085&', '127.0.0.1', '2015-12-07 20:36:11');
INSERT INTO `syslog` VALUES ('251', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=226&_=1449491758086&', '127.0.0.1', '2015-12-07 20:36:25');
INSERT INTO `syslog` VALUES ('252', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=226&icon=icon-edit&status=0&name=修改密码&seq=3&pid=&resourcetype=0&url=/user/editPwdPage&', '127.0.0.1', '2015-12-07 20:36:29');
INSERT INTO `syslog` VALUES ('253', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449491758087&', '127.0.0.1', '2015-12-07 20:36:34');
INSERT INTO `syslog` VALUES ('254', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=7&resourceIds=1,14,141,142,143,144,222,223,224,221,226&', '127.0.0.1', '2015-12-07 20:36:51');
INSERT INTO `syslog` VALUES ('255', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=7&_=1449491758088&', '127.0.0.1', '2015-12-07 20:36:54');
INSERT INTO `syslog` VALUES ('256', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=7&_=1449491758089&', '127.0.0.1', '2015-12-07 20:37:11');
INSERT INTO `syslog` VALUES ('257', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449491758090&', '127.0.0.1', '2015-12-07 20:37:14');
INSERT INTO `syslog` VALUES ('258', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=7&resourceIds=1,14,141,142,143,222,223,224,221,226&', '127.0.0.1', '2015-12-07 20:37:18');
INSERT INTO `syslog` VALUES ('259', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=7&_=1449491758091&', '127.0.0.1', '2015-12-07 20:37:22');
INSERT INTO `syslog` VALUES ('260', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449491758092&', '127.0.0.1', '2015-12-07 20:37:24');
INSERT INTO `syslog` VALUES ('261', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1449491758093&', '127.0.0.1', '2015-12-07 20:37:29');
INSERT INTO `syslog` VALUES ('262', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449491758094&', '127.0.0.1', '2015-12-07 20:37:43');
INSERT INTO `syslog` VALUES ('263', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1449491758095&', '127.0.0.1', '2015-12-07 20:37:50');
INSERT INTO `syslog` VALUES ('264', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=2&resourceIds=1,13,131,132,133,134,222,223,224,221,226&', '127.0.0.1', '2015-12-07 20:37:58');
INSERT INTO `syslog` VALUES ('265', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449491758096&', '127.0.0.1', '2015-12-07 20:37:59');
INSERT INTO `syslog` VALUES ('266', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1449491758097&', '127.0.0.1', '2015-12-07 20:38:06');
INSERT INTO `syslog` VALUES ('267', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=2&resourceIds=1,13,131,132,133,222,223,224,221,226&', '127.0.0.1', '2015-12-07 20:38:13');
INSERT INTO `syslog` VALUES ('268', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1449491758098&', '127.0.0.1', '2015-12-07 20:38:15');
INSERT INTO `syslog` VALUES ('269', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=2&resourceIds=1,13,131,132,133,134,222,223,224,221,226&', '127.0.0.1', '2015-12-07 20:38:19');
INSERT INTO `syslog` VALUES ('270', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449491758099&', '127.0.0.1', '2015-12-07 20:38:20');
INSERT INTO `syslog` VALUES ('271', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=7&resourceIds=1,14,141,142,143,144,222,223,224,221,226&', '127.0.0.1', '2015-12-07 20:38:26');
INSERT INTO `syslog` VALUES ('272', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1449491758100&', '127.0.0.1', '2015-12-07 20:38:28');
INSERT INTO `syslog` VALUES ('273', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=2&resourceIds=1,13,131,132,133,222,223,224,221,226&', '127.0.0.1', '2015-12-07 20:38:40');
INSERT INTO `syslog` VALUES ('274', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=2&_=1449491758101&', '127.0.0.1', '2015-12-07 20:38:42');
INSERT INTO `syslog` VALUES ('275', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=7&_=1449491758102&', '127.0.0.1', '2015-12-07 20:38:44');
INSERT INTO `syslog` VALUES ('276', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449491758103&', '127.0.0.1', '2015-12-07 20:38:46');
INSERT INTO `syslog` VALUES ('277', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=7&resourceIds=1,14,141,142,143,222,223,224,221,226&', '127.0.0.1', '2015-12-07 20:38:52');
INSERT INTO `syslog` VALUES ('278', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1449491758104&', '127.0.0.1', '2015-12-07 20:38:53');
INSERT INTO `syslog` VALUES ('279', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,222,223,224,221,226&', '127.0.0.1', '2015-12-07 20:38:56');
INSERT INTO `syslog` VALUES ('280', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=8&_=1449491758105&', '127.0.0.1', '2015-12-07 20:38:58');
INSERT INTO `syslog` VALUES ('281', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449491758106&', '127.0.0.1', '2015-12-07 20:39:01');
INSERT INTO `syslog` VALUES ('282', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1449491758107&', '127.0.0.1', '2015-12-07 20:39:24');
INSERT INTO `syslog` VALUES ('283', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=8&resourceIds=1,11,111,12,121,13,131,14,141,222,223,224,221&', '127.0.0.1', '2015-12-07 20:39:31');
INSERT INTO `syslog` VALUES ('284', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=7&_=1449491758108&', '127.0.0.1', '2015-12-07 20:39:33');
INSERT INTO `syslog` VALUES ('285', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=2&_=1449491758109&', '127.0.0.1', '2015-12-07 20:39:41');
INSERT INTO `syslog` VALUES ('286', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1449491758110&', '127.0.0.1', '2015-12-07 20:39:47');
INSERT INTO `syslog` VALUES ('287', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-07 20:39:51');
INSERT INTO `syslog` VALUES ('288', 'test', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-07 20:40:10');
INSERT INTO `syslog` VALUES ('289', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPwdPage,[参数]:', null, '2015-12-07 20:40:46');
INSERT INTO `syslog` VALUES ('290', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=226&_=1449492036162&', '127.0.0.1', '2015-12-07 20:40:59');
INSERT INTO `syslog` VALUES ('291', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=226&icon=icon-edit&status=0&name=修改密码&seq=3&pid=&resourcetype=1&url=/user/editPwdPage&', '127.0.0.1', '2015-12-07 20:41:02');
INSERT INTO `syslog` VALUES ('292', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=13&_=1449492036163&', '127.0.0.1', '2015-12-07 20:41:45');
INSERT INTO `syslog` VALUES ('293', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=13&loginname=snoopy&phone=18707173376&sex=0&status=0&age=25&name=snoopy&usertype=1&organizationId=3&password=123456qaz&roleIds=2&', '127.0.0.1', '2015-12-07 20:41:54');
INSERT INTO `syslog` VALUES ('294', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=1&_=1449492036164&', '127.0.0.1', '2015-12-07 20:41:58');
INSERT INTO `syslog` VALUES ('295', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=1&loginname=admin&phone=18707173376&sex=0&status=0&age=25&name=admin&usertype=0&organizationId=1&password=123456qaz&roleIds=1&', '127.0.0.1', '2015-12-07 20:42:05');
INSERT INTO `syslog` VALUES ('296', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=13&_=1449492036165&', '127.0.0.1', '2015-12-07 20:42:06');
INSERT INTO `syslog` VALUES ('297', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=13&loginname=snoopy&phone=18707173376&sex=0&status=0&age=25&name=snoopy&usertype=1&organizationId=3&password=qaz123456&roleIds=2&', '127.0.0.1', '2015-12-07 20:42:17');
INSERT INTO `syslog` VALUES ('298', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1449492036166&', '127.0.0.1', '2015-12-07 20:42:18');
INSERT INTO `syslog` VALUES ('299', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=14&loginname=dreamlu&phone=18707173376&sex=0&status=0&age=25&name=dreamlu&usertype=1&organizationId=5&password=qaz123456&roleIds=7&', '127.0.0.1', '2015-12-07 20:42:23');
INSERT INTO `syslog` VALUES ('300', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-07 20:42:28');
INSERT INTO `syslog` VALUES ('301', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-07 20:42:39');
INSERT INTO `syslog` VALUES ('302', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-07 20:42:59');
INSERT INTO `syslog` VALUES ('303', 'test', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:null', '127.0.0.1', '2015-12-07 20:43:16');
INSERT INTO `syslog` VALUES ('304', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPwdPage,[参数]:', null, '2016-08-15 22:13:35');
INSERT INTO `syslog` VALUES ('305', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editUserPwd,[参数]:oldPwd=test&pwd=123&rePwd=123&', '127.0.0.1', '2016-08-15 22:13:42');
INSERT INTO `syslog` VALUES ('306', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=222&', '127.0.0.1', '2016-08-15 22:15:56');
INSERT INTO `syslog` VALUES ('307', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-08-15 22:16:07');
INSERT INTO `syslog` VALUES ('308', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=223&', '127.0.0.1', '2016-08-15 22:16:33');
INSERT INTO `syslog` VALUES ('309', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=224&', '127.0.0.1', '2016-08-15 22:17:01');
INSERT INTO `syslog` VALUES ('310', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-08-15 22:17:11');
INSERT INTO `syslog` VALUES ('311', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:addPage,[参数]:', null, '2016-08-15 22:20:29');
INSERT INTO `syslog` VALUES ('312', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:add,[参数]:loginname=zkt&name=zkt&password=123&sex=0&age=&usertype=0&organizationId=1&roleIds=1&phone=&status=0&', '127.0.0.1', '2016-08-15 22:20:59');
INSERT INTO `syslog` VALUES ('313', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-17 21:06:08');
INSERT INTO `syslog` VALUES ('314', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-17 21:06:18');
INSERT INTO `syslog` VALUES ('315', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-08-17 21:08:39');
INSERT INTO `syslog` VALUES ('316', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=1&_=1471439178495&', '127.0.0.1', '2016-08-17 21:08:59');
INSERT INTO `syslog` VALUES ('317', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=1&name=系统管理&resourcetype=0&url=&seq=0&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-08-17 21:09:04');
INSERT INTO `syslog` VALUES ('318', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-08-17 21:09:13');
INSERT INTO `syslog` VALUES ('319', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=资产管理&resourcetype=0&url=&seq=0&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-08-17 21:09:27');
INSERT INTO `syslog` VALUES ('320', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-08-17 21:09:33');
INSERT INTO `syslog` VALUES ('321', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=内网计算机台账&resourcetype=1&url=/computerManage/manager&seq=0&icon=&status=0&pid=227&', '127.0.0.1', '2016-08-17 21:10:57');
INSERT INTO `syslog` VALUES ('322', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=228&_=1471439178498&', '127.0.0.1', '2016-08-17 21:11:32');
INSERT INTO `syslog` VALUES ('323', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=228&name=内网计算机台账&resourcetype=1&url=/computerManage/manager&seq=0&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-08-17 21:11:35');
INSERT INTO `syslog` VALUES ('324', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1471439178499&', '127.0.0.1', '2016-08-17 21:11:49');
INSERT INTO `syslog` VALUES ('325', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,227,221&', '127.0.0.1', '2016-08-17 21:11:55');
INSERT INTO `syslog` VALUES ('326', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-17 21:15:54');
INSERT INTO `syslog` VALUES ('327', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-17 21:18:11');
INSERT INTO `syslog` VALUES ('328', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:add,[参数]:infodevno=1&depname=2&resperson=3&devseclevel=4&propertyno=5&propertyown=6&devorigno=7&devno=8&diskno=9&devstandard=10&starttime=2016-08-17 21:19:04&devname=11&ipaddress=12&vlan=13&mac=14&switchport=15&patchpanel=16&phylocation=17&osversion=18&osinstime=2016-08-17 21:19:39&cakeyno=19&networkmark=20&usedstatus=21&leaveTime=2016-08-17 21:19:39&remark=22&isInstall=23&', '127.0.0.1', '2016-08-17 21:20:16');
INSERT INTO `syslog` VALUES ('329', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&_=1471439704836&', '127.0.0.1', '2016-08-17 21:23:08');
INSERT INTO `syslog` VALUES ('330', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&_=1471439704837&', '127.0.0.1', '2016-08-17 21:23:54');
INSERT INTO `syslog` VALUES ('331', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=1&_=1471439704838&', '127.0.0.1', '2016-08-17 21:26:25');
INSERT INTO `syslog` VALUES ('332', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&_=1471439704839&', '127.0.0.1', '2016-08-17 21:27:49');
INSERT INTO `syslog` VALUES ('333', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&_=1471439704840&', '127.0.0.1', '2016-08-17 21:31:04');
INSERT INTO `syslog` VALUES ('334', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:id=1&infodevno=10&depname=20&resperson=30&devseclevel=40&propertyno=50&propertyown=60&devorigno=70&devno=80&diskno=90&devstandard=100&starttime=2016-08-17 21:19:04.0&devname=110&ipaddress=120&vlan=130&mac=140&switchport=150&patchpanel=160&phylocation=170&osversion=180&osinstime=2016-08-17 21:19:39.0&cakeyno=190&networkmark=200&usedstatus=210&leaveTime=2016-08-17 21:19:39.0&remark=220&isInstall=230&', '127.0.0.1', '2016-08-17 21:31:39');
INSERT INTO `syslog` VALUES ('335', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&_=1471441316648&', '127.0.0.1', '2016-08-17 21:43:29');
INSERT INTO `syslog` VALUES ('336', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:id=1&infodevno=10&depname=20&resperson=30&devseclevel=40&propertyno=50&propertyown=60&devorigno=70&devno=80&diskno=90&devstandard=100&starttime=2016-08-17 21:19:04.0&devname=110&ipaddress=120&vlan=130&mac=140&switchport=150&patchpanel=160&phylocation=170&osversion=180&osinstime=2016-08-17 21:19:39.0&cakeyno=190&networkmark=200&usedstatus=210&leaveTime=2016-08-17 21:19:39.0&remark=220&isInstall=230&', '127.0.0.1', '2016-08-17 21:43:43');
INSERT INTO `syslog` VALUES ('337', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-17 21:43:45');
INSERT INTO `syslog` VALUES ('338', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-17 22:01:29');
INSERT INTO `syslog` VALUES ('339', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 20:28:01');
INSERT INTO `syslog` VALUES ('340', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 20:28:12');
INSERT INTO `syslog` VALUES ('341', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:addPage,[参数]:', null, '2016-08-18 20:28:20');
INSERT INTO `syslog` VALUES ('342', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-18 20:29:07');
INSERT INTO `syslog` VALUES ('343', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-18 20:30:38');
INSERT INTO `syslog` VALUES ('344', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-18 20:33:12');
INSERT INTO `syslog` VALUES ('345', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-18 20:35:09');
INSERT INTO `syslog` VALUES ('346', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-18 20:36:25');
INSERT INTO `syslog` VALUES ('347', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-18 20:37:55');
INSERT INTO `syslog` VALUES ('348', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&_=1471523577678&', '127.0.0.1', '2016-08-18 20:38:00');
INSERT INTO `syslog` VALUES ('349', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:id=1&infodevno=10&depname=20&resperson=30&devseclevel=40&propertyno=50&propertyown=60&devorigno=70&devno=80&diskno=90&devstandard=100&starttime=2016-08-17 21:19:04.0&devname=110&ipaddress=120&vlan=130&mac=140&switchport=150&patchpanel=160&phylocation=170&osversion=180&osinstime=2016-08-17 21:19:39&cakeyno=190&networkmark=200&usedstatus=210&leaveTime=2016-08-17 21:19:39.0&remark=220&isInstall=是&', '127.0.0.1', '2016-08-18 20:38:23');
INSERT INTO `syslog` VALUES ('350', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-18 20:42:28');
INSERT INTO `syslog` VALUES ('351', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 21:32:32');
INSERT INTO `syslog` VALUES ('352', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 21:32:33');
INSERT INTO `syslog` VALUES ('353', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 21:32:36');
INSERT INTO `syslog` VALUES ('354', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 21:35:51');
INSERT INTO `syslog` VALUES ('355', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 21:35:55');
INSERT INTO `syslog` VALUES ('356', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 21:51:07');
INSERT INTO `syslog` VALUES ('357', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 21:51:08');
INSERT INTO `syslog` VALUES ('358', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-08-18 21:51:10');
INSERT INTO `syslog` VALUES ('359', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 21:53:33');
INSERT INTO `syslog` VALUES ('360', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 21:53:37');
INSERT INTO `syslog` VALUES ('361', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 22:13:35');
INSERT INTO `syslog` VALUES ('362', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 22:13:39');
INSERT INTO `syslog` VALUES ('363', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 22:33:22');
INSERT INTO `syslog` VALUES ('364', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 22:33:22');
INSERT INTO `syslog` VALUES ('365', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 22:43:04');
INSERT INTO `syslog` VALUES ('366', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 22:43:07');
INSERT INTO `syslog` VALUES ('367', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 23:08:29');
INSERT INTO `syslog` VALUES ('368', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-08-18 23:08:31');
INSERT INTO `syslog` VALUES ('369', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-08-18 23:09:03');
INSERT INTO `syslog` VALUES ('370', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 23:19:52');
INSERT INTO `syslog` VALUES ('371', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 23:19:56');
INSERT INTO `syslog` VALUES ('372', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 23:21:34');
INSERT INTO `syslog` VALUES ('373', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-08-18 23:21:36');
INSERT INTO `syslog` VALUES ('374', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 23:21:38');
INSERT INTO `syslog` VALUES ('375', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 23:24:02');
INSERT INTO `syslog` VALUES ('376', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 23:30:59');
INSERT INTO `syslog` VALUES ('377', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 23:31:09');
INSERT INTO `syslog` VALUES ('378', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 23:32:45');
INSERT INTO `syslog` VALUES ('379', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-08-18 23:32:47');
INSERT INTO `syslog` VALUES ('380', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 23:41:40');
INSERT INTO `syslog` VALUES ('381', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-18 23:41:46');
INSERT INTO `syslog` VALUES ('382', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-18 23:59:28');
INSERT INTO `syslog` VALUES ('383', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-08-18 23:59:30');
INSERT INTO `syslog` VALUES ('384', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-20 15:44:31');
INSERT INTO `syslog` VALUES ('385', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-20 15:44:36');
INSERT INTO `syslog` VALUES ('386', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-20 15:51:30');
INSERT INTO `syslog` VALUES ('387', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:add,[参数]:infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-08-12 15:51:41&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-08-18 15:51:58&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-08-20 15:52:05&remark=2&isInstall=2&', '127.0.0.1', '2016-08-20 15:52:15');
INSERT INTO `syslog` VALUES ('388', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-20 16:29:03');
INSERT INTO `syslog` VALUES ('389', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=9&_=1471682033999&', '127.0.0.1', '2016-08-20 16:34:08');
INSERT INTO `syslog` VALUES ('390', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:id=9&infodevno=No123&depname=数据部&resperson=张三&devseclevel=高级&propertyno=SX001&propertyown=国家所有&devorigno=XXX0001&devno=X001&diskno=SN9999&devstandard=高质量&starttime=2016-08-20 00:00:00.0&devname=IBM小型机&ipaddress=192.168.13.181&vlan=cd-sd-ass&mac=de-ds-we-qwqw&switchport=9090.0&patchpanel=三楼&phylocation=三楼东北角&osversion=centos&osinstime=2016-08-12 00:00:00&cakeyno=9902.0&networkmark=无&usedstatus=正常&leaveTime=2016-09-10 00:00:00.0&remark=无&isInstall=是&', '127.0.0.1', '2016-08-20 16:34:13');
INSERT INTO `syslog` VALUES ('391', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=1&_=1471682034000&', '127.0.0.1', '2016-08-20 16:42:14');
INSERT INTO `syslog` VALUES ('392', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-08-20 16:48:15');
INSERT INTO `syslog` VALUES ('393', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=10&', '127.0.0.1', '2016-08-20 17:11:07');
INSERT INTO `syslog` VALUES ('394', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=10&', '127.0.0.1', '2016-08-20 17:11:10');
INSERT INTO `syslog` VALUES ('395', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=10&', '127.0.0.1', '2016-08-20 17:13:46');
INSERT INTO `syslog` VALUES ('396', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-20 17:15:59');
INSERT INTO `syslog` VALUES ('397', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-08-20 17:16:04');
INSERT INTO `syslog` VALUES ('398', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=10&', '127.0.0.1', '2016-08-20 17:16:13');
INSERT INTO `syslog` VALUES ('399', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=9&', '127.0.0.1', '2016-08-20 17:16:25');
INSERT INTO `syslog` VALUES ('400', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=8&', '127.0.0.1', '2016-08-20 17:16:28');
INSERT INTO `syslog` VALUES ('401', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=2&', '127.0.0.1', '2016-08-20 17:16:33');
INSERT INTO `syslog` VALUES ('402', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=3&', '127.0.0.1', '2016-08-20 17:16:36');
INSERT INTO `syslog` VALUES ('403', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=4&', '127.0.0.1', '2016-08-20 17:16:40');
INSERT INTO `syslog` VALUES ('404', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=5&', '127.0.0.1', '2016-08-20 17:16:45');
INSERT INTO `syslog` VALUES ('405', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=11&', '127.0.0.1', '2016-08-20 17:19:33');
INSERT INTO `syslog` VALUES ('406', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:delete,[参数]:id=6&', '127.0.0.1', '2016-08-20 17:19:39');
INSERT INTO `syslog` VALUES ('407', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-08-27 14:47:53');
INSERT INTO `syslog` VALUES ('408', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=1&newcertifno=2&unicertifno=3&respondepart=4&marcher=5&model=6&equipment=7&devno=8&diskno=9&osversion=10&usedate=2016-08-27 14:48:14&secequipment=11&mac=12&ipaddress=13&roomaddress=14&usestatus=15&mainuse=16&accesspoint=17&devtype=18&remark=19&', '127.0.0.1', '2016-08-27 14:48:43');
INSERT INTO `syslog` VALUES ('409', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-27 20:18:48');
INSERT INTO `syslog` VALUES ('410', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-08-27 20:18:50');
INSERT INTO `syslog` VALUES ('411', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-08-27 20:18:57');
INSERT INTO `syslog` VALUES ('412', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=1&newcertifno=2&unicertifno=3&respondepart=4&marcher=5&model=6&equipment=7&devno=8&diskno=9&osversion=10&usedate=2016-08-27 20:19:15&secequipment=11&mac=12&ipaddress=13&roomaddress=14&usestatus=15&mainuse=16&accesspoint=17&devtype=18&remark=19&', '127.0.0.1', '2016-08-27 20:19:35');
INSERT INTO `syslog` VALUES ('413', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-08-27 20:20:15');
INSERT INTO `syslog` VALUES ('414', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=1&newcertifno=2&unicertifno=3&respondepart=4&marcher=5&model=6&equipment=7&devno=8&diskno=9&osversion=10&usedate=2016-08-27 20:20:36&secequipment=11&mac=12&ipaddress=13&roomaddress=14&usestatus=15&mainuse=16&accesspoint=17&devtype=18&remark=19&', '127.0.0.1', '2016-08-27 20:20:59');
INSERT INTO `syslog` VALUES ('415', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-08-27 20:21:30');
INSERT INTO `syslog` VALUES ('416', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=1&newcertifno=2&unicertifno=3&respondepart=4&marcher=5&model=6&equipment=7&devno=8&diskno=9&osversion=10&usedate=2016-08-27 20:21:49&secequipment=11&mac=12&ipaddress=13&roomaddress=14&usestatus=15&mainuse=16&accesspoint=17&devtype=18&remark=19&', '127.0.0.1', '2016-08-27 20:22:10');
INSERT INTO `syslog` VALUES ('417', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-08-27 20:23:04');
INSERT INTO `syslog` VALUES ('418', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=1&newcertifno=2&unicertifno=3&respondepart=4&marcher=5&model=6&equipment=7&devno=8&diskno=9&osversion=10&usedate=2016-08-27 20:23:31&secequipment=11&mac=12&ipaddress=13&roomaddress=14&usestatus=15&mainuse=16&accesspoint=17&devtype=18&remark=19&', '127.0.0.1', '2016-08-27 20:23:54');
INSERT INTO `syslog` VALUES ('419', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-08-27 20:24:54');
INSERT INTO `syslog` VALUES ('420', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-08-27 20:24:56');
INSERT INTO `syslog` VALUES ('421', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=2&_=1472300696513&', '127.0.0.1', '2016-08-27 20:25:32');
INSERT INTO `syslog` VALUES ('422', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:delete,[参数]:id=2&', '127.0.0.1', '2016-08-27 20:25:51');
INSERT INTO `syslog` VALUES ('423', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-09-01 20:20:07');
INSERT INTO `syslog` VALUES ('424', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=1&newcertifno=2&unicertifno=3&respondepart=4&marcher=5&model=6&equipment=7&devno=8&diskno=9&osversion=10&usedate=2016-09-01 20:21:12&secequipment=11&mac=12&ipaddress=13&roomaddress=14&usestatus=15&mainuse=16&accesspoint=17&devtype=18&remark=19&', '127.0.0.1', '2016-09-01 20:21:33');
INSERT INTO `syslog` VALUES ('425', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 20:27:00');
INSERT INTO `syslog` VALUES ('426', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-09-01 20:27:01');
INSERT INTO `syslog` VALUES ('427', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-09-01 20:27:08');
INSERT INTO `syslog` VALUES ('428', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=1&newcertifno=2&unicertifno=3&respondepart=4&marcher=5&model=6&equipment=7&devno=8&diskno=9&osversion=10&usedate=2016-09-01 20:27:28&secequipment=11&mac=12&ipaddress=13&roomaddress=14&usestatus=15&mainuse=16&accesspoint=17&devtype=18&remark=19&', '127.0.0.1', '2016-09-01 20:27:48');
INSERT INTO `syslog` VALUES ('429', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 20:35:05');
INSERT INTO `syslog` VALUES ('430', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-01 20:35:08');
INSERT INTO `syslog` VALUES ('431', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-09-01 20:35:20');
INSERT INTO `syslog` VALUES ('432', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=11&newcertifno=22&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=2016-09-01 20:35:47&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=119&', '127.0.0.1', '2016-09-01 20:36:15');
INSERT INTO `syslog` VALUES ('433', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=3&_=1472733309362&', '127.0.0.1', '2016-09-01 20:36:20');
INSERT INTO `syslog` VALUES ('434', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-09-01 20:37:01');
INSERT INTO `syslog` VALUES ('435', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=3&_=1472733309364&', '127.0.0.1', '2016-09-01 20:37:34');
INSERT INTO `syslog` VALUES ('436', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=3&_=1472733309365&', '127.0.0.1', '2016-09-01 20:38:00');
INSERT INTO `syslog` VALUES ('437', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:id=3&serialno=11&newcertifno=22&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=2016-09-01 20:38:04&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=120&', '127.0.0.1', '2016-09-01 20:38:19');
INSERT INTO `syslog` VALUES ('438', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=3&_=1472733309366&', '127.0.0.1', '2016-09-01 20:39:47');
INSERT INTO `syslog` VALUES ('439', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:id=3&serialno=11&newcertifno=22&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=Thu Sep 01 20:35:47 CST 2016&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=119000&', '127.0.0.1', '2016-09-01 20:40:02');
INSERT INTO `syslog` VALUES ('440', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=3&_=1472733309367&', '127.0.0.1', '2016-09-01 20:41:28');
INSERT INTO `syslog` VALUES ('441', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 20:43:01');
INSERT INTO `syslog` VALUES ('442', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-01 20:43:07');
INSERT INTO `syslog` VALUES ('443', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=3&_=1472733788020&', '127.0.0.1', '2016-09-01 20:44:20');
INSERT INTO `syslog` VALUES ('444', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 20:45:48');
INSERT INTO `syslog` VALUES ('445', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-01 20:45:52');
INSERT INTO `syslog` VALUES ('446', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=3&_=1472733953098&', '127.0.0.1', '2016-09-01 20:46:02');
INSERT INTO `syslog` VALUES ('447', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 20:51:11');
INSERT INTO `syslog` VALUES ('448', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-01 20:51:15');
INSERT INTO `syslog` VALUES ('449', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:delete,[参数]:id=3&', '127.0.0.1', '2016-09-01 20:51:24');
INSERT INTO `syslog` VALUES ('450', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:delete,[参数]:id=1&', '127.0.0.1', '2016-09-01 20:51:27');
INSERT INTO `syslog` VALUES ('451', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-09-01 20:51:29');
INSERT INTO `syslog` VALUES ('452', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=11&newcertifno=22&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=2016-09-01 20:51:55&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=119&', '127.0.0.1', '2016-09-01 20:52:17');
INSERT INTO `syslog` VALUES ('453', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=4&_=1472734275666&', '127.0.0.1', '2016-09-01 20:52:22');
INSERT INTO `syslog` VALUES ('454', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:edit,[参数]:id=4&serialno=11&newcertifno=22&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=2016-09-01 20:52:24&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=119000&', '127.0.0.1', '2016-09-01 20:52:31');
INSERT INTO `syslog` VALUES ('455', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=4&_=1472734275667&', '127.0.0.1', '2016-09-01 20:53:32');
INSERT INTO `syslog` VALUES ('456', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 20:59:43');
INSERT INTO `syslog` VALUES ('457', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-01 20:59:46');
INSERT INTO `syslog` VALUES ('458', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=4&_=1472734786796&', '127.0.0.1', '2016-09-01 21:00:03');
INSERT INTO `syslog` VALUES ('459', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:edit,[参数]:id=4&serialno=11&newcertifno=22&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=2016-09-01 20:51:55.0&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=119000&', '127.0.0.1', '2016-09-01 21:00:10');
INSERT INTO `syslog` VALUES ('460', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=4&_=1472734786797&', '127.0.0.1', '2016-09-01 21:00:43');
INSERT INTO `syslog` VALUES ('461', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:edit,[参数]:id=4&serialno=11&newcertifno=22&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=2016-08-31 20:51:55&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=119000&', '127.0.0.1', '2016-09-01 21:00:51');
INSERT INTO `syslog` VALUES ('462', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=4&_=1472734786798&', '127.0.0.1', '2016-09-01 21:01:04');
INSERT INTO `syslog` VALUES ('463', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:edit,[参数]:id=4&serialno=111111&newcertifno=22222&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=2016-09-06 20:51:55&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=119&', '127.0.0.1', '2016-09-01 21:01:19');
INSERT INTO `syslog` VALUES ('464', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=4&_=1472735159397&', '127.0.0.1', '2016-09-01 21:06:21');
INSERT INTO `syslog` VALUES ('465', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:edit,[参数]:id=4&serialno=11&newcertifno=22&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=2016-08-31 21:08:05&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=119999&', '127.0.0.1', '2016-09-01 21:08:13');
INSERT INTO `syslog` VALUES ('466', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:editPage,[参数]:id=6&_=1472735159398&', '127.0.0.1', '2016-09-01 21:08:37');
INSERT INTO `syslog` VALUES ('467', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:10:37');
INSERT INTO `syslog` VALUES ('468', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:add,[参数]:depname=1&resperson=2&securitylevel=3&newname=4&switchbrand=5&factoryno=6&switchip=7&switchmac=8&location=9&port=10&patchpanel=11&purpose=12&status=13&region=14&remark=15&', '127.0.0.1', '2016-09-01 21:11:07');
INSERT INTO `syslog` VALUES ('469', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:editPage,[参数]:id=1&_=1472735159400&', '127.0.0.1', '2016-09-01 21:11:11');
INSERT INTO `syslog` VALUES ('470', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:edit,[参数]:id=1&depname=1&resperson=2&securitylevel=3&newname=4&switchbrand=5&factoryno=6&switchip=7&switchmac=8&location=9&port=10&patchpanel=11&purpose=12&status=13&region=14&remark=1566&', '127.0.0.1', '2016-09-01 21:11:17');
INSERT INTO `syslog` VALUES ('471', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:11:31');
INSERT INTO `syslog` VALUES ('472', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:22:55');
INSERT INTO `syslog` VALUES ('473', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:add,[参数]:region=1&certifno=2&depname=3&resperson=4&devname=5&ipaddress=6&mac=7&model=8&equipment=9&informpoint=10&termachtype=11&termachpurpose=12&devno=13&os=14&osinstaltime=2016-09-01 21:23:25&seclevel=15&location=16&diskno=17&antiviruscomp=18&hostaudit=19&medmanager=20&cardid=21&cardmac=22&cardinfo=23&status=24&remark=25&', '127.0.0.1', '2016-09-01 21:23:58');
INSERT INTO `syslog` VALUES ('474', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:editPage,[参数]:id=1&_=1472735159403&', '127.0.0.1', '2016-09-01 21:24:03');
INSERT INTO `syslog` VALUES ('475', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:edit,[参数]:id=1&region=1&certifno=2&depname=3&resperson=4&devname=5&ipaddress=6&mac=7&model=8&equipment=9&informpoint=10&termachtype=11&termachpurpose=12&devno=13&os=14&osinstaltime=2016-08-31 21:24:06&seclevel=15&location=16&diskno=17&antiviruscomp=18&hostaudit=19&medmanager=20&cardid=21&cardmac=22&cardinfo=23&status=24&remark=25666&', '127.0.0.1', '2016-09-01 21:24:18');
INSERT INTO `syslog` VALUES ('476', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 21:25:30');
INSERT INTO `syslog` VALUES ('477', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-01 21:25:34');
INSERT INTO `syslog` VALUES ('478', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:editPage,[参数]:id=1&_=1472736334426&', '127.0.0.1', '2016-09-01 21:25:42');
INSERT INTO `syslog` VALUES ('479', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:edit,[参数]:id=1&region=1&certifno=2&depname=3&resperson=4&devname=5&ipaddress=6&mac=7&model=8&equipment=9&informpoint=10&termachtype=11&termachpurpose=12&devno=13&os=14&osinstaltime=2016-08-03 21:25:44&seclevel=15&location=16&diskno=17&antiviruscomp=18&hostaudit=19&medmanager=20&cardid=21&cardmac=22&cardinfo=23&status=24&remark=25666&', '127.0.0.1', '2016-09-01 21:25:50');
INSERT INTO `syslog` VALUES ('480', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:editPage,[参数]:id=1&_=1472736334427&', '127.0.0.1', '2016-09-01 21:29:16');
INSERT INTO `syslog` VALUES ('481', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:editPage,[参数]:id=1&_=1472736595751&', '127.0.0.1', '2016-09-01 21:30:04');
INSERT INTO `syslog` VALUES ('482', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 21:31:40');
INSERT INTO `syslog` VALUES ('483', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-01 21:31:45');
INSERT INTO `syslog` VALUES ('484', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:editPage,[参数]:id=1&_=1472736705698&', '127.0.0.1', '2016-09-01 21:31:54');
INSERT INTO `syslog` VALUES ('485', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:edit,[参数]:id=1&region=1&certifno=2&depname=3&resperson=4&devname=5&ipaddress=6&mac=7&model=8&equipment=9&informpoint=10&termachtype=11&termachpurpose=12&devno=13&os=14&osinstaltime=2016-08-03 21:25:44&seclevel=15&location=16&diskno=17&antiviruscomp=18&hostaudit=19&medmanager=20&cardid=21&cardmac=22&cardinfo=23&status=24&remark=25666&', '127.0.0.1', '2016-09-01 21:32:05');
INSERT INTO `syslog` VALUES ('486', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 21:37:11');
INSERT INTO `syslog` VALUES ('487', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-01 21:37:14');
INSERT INTO `syslog` VALUES ('488', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ConvertInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:37:24');
INSERT INTO `syslog` VALUES ('489', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ConvertInfoController,[方法]:add,[参数]:serialno=1&computerno=2&assetnumber=3&usedepartment=4&resperson=5&model=6&configure=7&displaymodel=8&hostnumber=9&diskid=10&usedate=2016-09-01 21:37:42&purpose=11&secequipment=12&mac=13&uabnumber=14&osinstall=15&roomid=16&status=17&remark=18&', '127.0.0.1', '2016-09-01 21:38:03');
INSERT INTO `syslog` VALUES ('490', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ConvertInfoController,[方法]:editPage,[参数]:id=1&_=1472737035037&', '127.0.0.1', '2016-09-01 21:38:08');
INSERT INTO `syslog` VALUES ('491', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ConvertInfoController,[方法]:edit,[参数]:id=1&serialno=1&computerno=2&assetnumber=3&usedepartment=4&resperson=5&model=6&configure=7&displaymodel=8&hostnumber=9&diskid=10&usedate=2016-09-01 21:37:42.0&purpose=11&secequipment=12&mac=13&uabnumber=14&osinstall=15&roomid=16&status=17&remark=184444&', '127.0.0.1', '2016-09-01 21:38:15');
INSERT INTO `syslog` VALUES ('492', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:38:21');
INSERT INTO `syslog` VALUES ('493', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:add,[参数]:serialno=1&informdevno=2&assetsno=3&usedepart=4&resperson=5&model=6&configure=7&displaymodel=8&hostnumber=9&diskid=10&usedate=2016-09-01 21:38:43&secequipment=12&mac=13&purpose=14&osinstall=15&roomid=16&status=17&', '127.0.0.1', '2016-09-01 21:39:03');
INSERT INTO `syslog` VALUES ('494', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:40:19');
INSERT INTO `syslog` VALUES ('495', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:add,[参数]:serialno=1&informdevno=2&assetsno=3&usedepart=4&resperson=5&model=6&configure=7&displaymodel=8&hostnumber=9&diskid=10&usedate=2016-09-01 21:40:41&secequipment=12&mac=13&purpose=14&osinstall=15&roomid=16&status=17&', '127.0.0.1', '2016-09-01 21:40:56');
INSERT INTO `syslog` VALUES ('496', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:41:21');
INSERT INTO `syslog` VALUES ('497', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:add,[参数]:serialno=1&informdevno=2&assetsno=3&usedepart=4&resperson=5&model=6&configure=7&displaymodel=8&hostnumber=9&diskid=10&usedate=2016-09-01 21:41:40&secequipment=12&mac=13&purpose=14&osinstall=15&roomid=16&status=17&', '127.0.0.1', '2016-09-01 21:41:54');
INSERT INTO `syslog` VALUES ('498', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:43:47');
INSERT INTO `syslog` VALUES ('499', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:45:42');
INSERT INTO `syslog` VALUES ('500', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:add,[参数]:serialno=1&informdevno=2&assetsno=3&usedepart=4&resperson=5&model=6&configure=7&displaymodel=8&hostnumber=9&diskid=10&usedate=2016-09-01 21:46:02&secequipment=12&mac=13&purpose=14&osinstall=2016-09-01 21:46:12&roomid=16&status=17&', '127.0.0.1', '2016-09-01 21:46:18');
INSERT INTO `syslog` VALUES ('501', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:editPage,[参数]:id=1&_=1472737422176&', '127.0.0.1', '2016-09-01 21:46:20');
INSERT INTO `syslog` VALUES ('502', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:edit,[参数]:id=1&serialno=1&informdevno=2&assetsno=3&usedepart=4&resperson=5&model=6&configure=7&displaymodel=8&hostnumber=9&diskid=10&usedate=2016-09-01 21:46:02.0&secequipment=12&mac=13&purpose=14&osinstall=2016-09-01 21:46:12.0&roomid=16&status=17999&', '127.0.0.1', '2016-09-01 21:46:25');
INSERT INTO `syslog` VALUES ('503', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecHostInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:46:32');
INSERT INTO `syslog` VALUES ('504', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecHostInfoController,[方法]:add,[参数]:informdevno=2&departname=3&resperson=4&seclevel=d&assetsno=sd&assersown=dsd&equipmentno=ddsd&devno=dsdsd&diskno=dddfc&specification=mmm&starttime=2016-09-01 21:47:04&ipaddress=dsdsd&mac=asdasd&location=asdasd&osversion=adsd&osinstaltime=2016-09-01 21:47:15&surfcertif=asdsadad&usestatus=asdasd&remark=asdsdad&', '127.0.0.1', '2016-09-01 21:47:22');
INSERT INTO `syslog` VALUES ('505', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-01 21:48:46');
INSERT INTO `syslog` VALUES ('506', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-01 21:48:51');
INSERT INTO `syslog` VALUES ('507', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecHostInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:48:59');
INSERT INTO `syslog` VALUES ('508', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecHostInfoController,[方法]:add,[参数]:informdevno=2&departname=3&resperson=4&seclevel=15&assetsno=ad&assersown=sd&equipmentno=sd&devno=sd&diskno=dfsd&specification=sds&starttime=2016-09-01 21:49:16&ipaddress=sddsd&mac=sdsdfds&location=sdsdsd&osversion=sdsdsd&osinstaltime=2016-08-30 21:49:24&surfcertif=sdsdsd&usestatus=sdssdsd&remark=sddssdsd&', '127.0.0.1', '2016-09-01 21:49:30');
INSERT INTO `syslog` VALUES ('509', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecHostInfoController,[方法]:editPage,[参数]:id=1&_=1472737732162&', '127.0.0.1', '2016-09-01 21:49:35');
INSERT INTO `syslog` VALUES ('510', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecHostInfoController,[方法]:edit,[参数]:id=1&informdevno=2&departname=3&resperson=4&seclevel=15&assetsno=ad&assersown=sd&equipmentno=sd&devno=sd&diskno=dfsd&specification=sds&starttime=2016-09-01 21:49:16.0&ipaddress=sddsd&mac=sdsdfds&location=sdsdsd&osversion=sdsdsd&osinstaltime=2016-08-30 21:49:24.0&surfcertif=sdsdsd&usestatus=sdssdsd&remark=123&', '127.0.0.1', '2016-09-01 21:49:40');
INSERT INTO `syslog` VALUES ('511', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:49:47');
INSERT INTO `syslog` VALUES ('512', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:add,[参数]:region=sadasd&number=asdasd&roomnum=asdsd&infodevno=asdsad&newassertsno=asdasd&resdepart=asdasdd&resperson=asdsad&devbrand=asdasd&devno=asdsad&serialno=adssdasd&usedate=2016-09-01 21:49:59&devseculevel=adsdad&usemethod=asdsda&status=asdsad&printhostip=asddssad&printmac=adssda&printport=adsdsasd&patchpanel=adsdsdd&payhostip=asdsadad&payport=adssd&paymac=asdsd&park=asdsaddad&', '127.0.0.1', '2016-09-01 21:50:17');
INSERT INTO `syslog` VALUES ('513', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=1&_=1472737732164&', '127.0.0.1', '2016-09-01 21:50:24');
INSERT INTO `syslog` VALUES ('514', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:edit,[参数]:id=1&region=sadasd&number=asdasd&roomnum=asdasd&infodevno=asdasd&newassertsno=asdasd&resdepart=asdasd&resperson=asdasd&devbrand=asdasd&devno=asdsad&serialno=adssdasd&usedate=2016-09-01 21:49:59.0&devseculevel=adsdad&usemethod=asdsda&status=asdsad&printhostip=asddssad&printmac=adssda&printport=adsdsasd&patchpanel=adsdsdd&payhostip=asdsadad&payport=adssd&paymac=111111&park=asdsaddad&', '127.0.0.1', '2016-09-01 21:50:30');
INSERT INTO `syslog` VALUES ('515', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:addPage,[参数]:', null, '2016-09-01 21:52:15');
INSERT INTO `syslog` VALUES ('516', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:add,[参数]:room=asds&devno=asdsad&assertsno=asdsd&respondepart=asdasd&resperson=asdasd&brand=asdasd&model=asdasd&specifications=asdsad&serialno=asdsad&code=asdasd&usedate=2016-09-01 21:52:27&devseclevel=asdsaad&usemethod=asdsd&status=asdsd&remark=asdsdasd&', '127.0.0.1', '2016-09-01 21:52:34');
INSERT INTO `syslog` VALUES ('517', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:editPage,[参数]:id=1&_=1472737929053&', '127.0.0.1', '2016-09-01 21:52:36');
INSERT INTO `syslog` VALUES ('518', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:id=1&room=asds&devno=asdsad&assertsno=asdsd&respondepart=asdasd&resperson=asdasd&brand=asdasd&model=asdasd&specifications=asdsad&serialno=asdsad&code=asdasd&usedate=2016-09-01 21:52:27.0&devseclevel=asdsaad&usemethod=asdsdsadasd&status=asdsd&remark=1111111&', '127.0.0.1', '2016-09-01 21:52:42');
INSERT INTO `syslog` VALUES ('519', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:editPage,[参数]:id=1&_=1472737929054&', '127.0.0.1', '2016-09-01 21:53:14');
INSERT INTO `syslog` VALUES ('520', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:edit,[参数]:id=1&room=asds&devno=asdsad&assertsno=asdsd&respondepart=asdasd&resperson=asdasd&brand=asdasd&model=asdasd&specifications=asdsad&serialno=asdsad&code=asdasd&usedate=2016-09-01 21:52:27.0&devseclevel=asdsaad&usemethod=asdsd&status=asdsd&remark=111111&', '127.0.0.1', '2016-09-01 21:53:20');
INSERT INTO `syslog` VALUES ('521', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-03 10:35:01');
INSERT INTO `syslog` VALUES ('522', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-03 10:35:05');
INSERT INTO `syslog` VALUES ('523', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:addPage,[参数]:', null, '2016-09-03 10:44:11');
INSERT INTO `syslog` VALUES ('524', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-03 14:26:23');
INSERT INTO `syslog` VALUES ('525', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-03 14:26:27');
INSERT INTO `syslog` VALUES ('526', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-03 14:39:56');
INSERT INTO `syslog` VALUES ('527', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-03 14:40:00');
INSERT INTO `syslog` VALUES ('528', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:delete,[参数]:id=5&', '127.0.0.1', '2016-09-03 14:40:22');
INSERT INTO `syslog` VALUES ('529', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:editPage,[参数]:id=4&_=1472884800662&', '127.0.0.1', '2016-09-03 14:40:25');
INSERT INTO `syslog` VALUES ('530', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:edit,[参数]:id=4&serialno=11&newcertifno=22&unicertifno=33&respondepart=44&marcher=55&model=66&equipment=77&devno=88&diskno=99&osversion=100&usedate=2016-08-31 21:08:05.0&secequipment=111&mac=112&ipaddress=113&roomaddress=114&usestatus=115&mainuse=116&accesspoint=117&devtype=118&remark=119999&', '127.0.0.1', '2016-09-03 14:40:27');
INSERT INTO `syslog` VALUES ('531', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-07 20:21:41');
INSERT INTO `syslog` VALUES ('532', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-07 20:21:45');
INSERT INTO `syslog` VALUES ('533', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-09-07 20:22:09');
INSERT INTO `syslog` VALUES ('534', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-09-07 20:28:34');
INSERT INTO `syslog` VALUES ('535', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:add,[参数]:region=asdsa&devno=asd&roomno=asd&propertyno=asd&resdepart=asd&resperson=asda&brand=adsa&model=adsa&specifications=ads&serialno=asd&usedate=2016-09-07 20:28:53&devseclevel=asadads&purpose=asdasd&usemethod=asd&status=asda&remark=asd&', '127.0.0.1', '2016-09-07 20:29:09');
INSERT INTO `syslog` VALUES ('536', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:editPage,[参数]:id=1&_=1473251304374&', '127.0.0.1', '2016-09-07 20:29:11');
INSERT INTO `syslog` VALUES ('537', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:edit,[参数]:id=1&region=asdsa&devno=asd&roomno=asd&propertyno=asd&resdepart=asd&resperson=asda&brand=adsa&model=adsa&specifications=ads&serialno=asd&usedate=2016-09-08 20:28:53&devseclevel=asadads&purpose=asdasd&usemethod=asd&status=asda&remark=asd&', '127.0.0.1', '2016-09-07 20:29:19');
INSERT INTO `syslog` VALUES ('538', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-09-07 20:29:57');
INSERT INTO `syslog` VALUES ('539', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:add,[参数]:sequenceno=sdf&roomno=sdf&informdevno=sdf&newassetnum= dfsf&resdepart=sdf&resperson= dsfsdf&brand=sfd&model=sfd&specifications=sdf&serialno=sdf&usedate=2016-09-07 20:30:18&devseclevel= sdfdf&usemethod=ssdf&status=sdfsdf&remark=sf&accesspoint=sdf&mac=sdfsdf&paycardinfo=sdfsdf&payhostip=sdf&paymac=sdfdfd&', '127.0.0.1', '2016-09-07 20:30:38');
INSERT INTO `syslog` VALUES ('540', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:editPage,[参数]:id=1&_=1473251304376&', '127.0.0.1', '2016-09-07 20:30:43');
INSERT INTO `syslog` VALUES ('541', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:edit,[参数]:id=1&sequenceno=sdf&roomno=sdf&informdevno=sdf&newassetnum= dfsf&resdepart=sdf&resperson= dsfsdf&brand=sfd&model=sfd&specifications=sdf&serialno=sdf&usedate=2016-09-22 20:30:18&devseclevel= sdfdf&usemethod=ssdf&status=sdfsdf&remark=sf&accesspoint=sdf&mac=sdfsdf&paycardinfo=sdfsdf&payhostip=sdf&paymac=sdfdfd&', '127.0.0.1', '2016-09-07 20:30:51');
INSERT INTO `syslog` VALUES ('542', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:editPage,[参数]:id=1&_=1473251304377&', '127.0.0.1', '2016-09-07 20:32:25');
INSERT INTO `syslog` VALUES ('543', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:edit,[参数]:id=1&sequenceno=sdf&roomno=sdf&informdevno=sdf&newassetnum= dfsf&resdepart=sdf&resperson= dsfsdf&brand=sfd&model=sfd&specifications=sdf&serialno=sdf&usedate=2016-09-07 20:30:18.0&devseclevel= sdfdf&usemethod=ssdf&status=sdfsdf&remark=sf&accesspoint=sdf&mac=sdfsdf&paycardinfo=sdfsdf&payhostip=内推网&paymac=内推网内推网内推网&', '127.0.0.1', '2016-09-07 20:33:59');
INSERT INTO `syslog` VALUES ('544', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:editPage,[参数]:id=1&_=1473251304378&', '127.0.0.1', '2016-09-07 20:34:03');
INSERT INTO `syslog` VALUES ('545', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:addPage,[参数]:', null, '2016-09-07 20:34:27');
INSERT INTO `syslog` VALUES ('546', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:add,[参数]:propertyown=sd&devno=sada&department=adss&devname=asdasd&resperson=asdda&manager=asdad&oaautono=aasdadsasd&brandno=adsas&location=adsad&usedate=2016-09-07 20:34:56&usestatus=asdasd&remark=1111111&', '127.0.0.1', '2016-09-07 20:35:01');
INSERT INTO `syslog` VALUES ('547', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:editPage,[参数]:id=1&_=1473251304380&', '127.0.0.1', '2016-09-07 20:35:06');
INSERT INTO `syslog` VALUES ('548', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:edit,[参数]:id=1&propertyown=sd&devno=sada,asadsda&department=adss&devname=asdasd&resperson=asdda&manager=asdad&oaautono=aasdadsasd&brandno=adsas&location=adsad&usedate=2016-09-07 20:34:56.0&usestatus=asdasd&remark=tetewangzi&', '127.0.0.1', '2016-09-07 20:35:15');
INSERT INTO `syslog` VALUES ('549', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:editPage,[参数]:id=1&_=1473251304381&', '127.0.0.1', '2016-09-07 20:36:24');
INSERT INTO `syslog` VALUES ('550', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:edit,[参数]:id=1&propertyown=sd&devno=sada,asadsda&department=adss&devname=asdasd&resperson=asdda&manager=asdad&oaautono=aasdadsasd&brandno=adsas&location=adsad&usedate=2016-09-07 20:34:56.0&usestatus=asdasd&remark=22222222&', '127.0.0.1', '2016-09-07 20:36:29');
INSERT INTO `syslog` VALUES ('551', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.NotePadInfoController,[方法]:addPage,[参数]:', null, '2016-09-07 20:36:51');
INSERT INTO `syslog` VALUES ('552', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.NotePadInfoController,[方法]:add,[参数]:serialno=凯特&devinformno=实打实的&installaddres=阿萨德啊&resperson=阿萨德啊&devseclevel=啊撒打算&productno=阿斯打算&brandno=阿斯阿斯&vlan=啊撒旦撒&ipaddress=阿斯倒萨速度&mac= 阿斯达斯大&patchpanel=啊撒旦撒&switchport=阿斯打啊苏打水&', '127.0.0.1', '2016-09-07 20:37:18');
INSERT INTO `syslog` VALUES ('553', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.NotePadInfoController,[方法]:editPage,[参数]:id=1&_=1473251802992&', '127.0.0.1', '2016-09-07 20:37:20');
INSERT INTO `syslog` VALUES ('554', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.NotePadInfoController,[方法]:edit,[参数]:id=1&serialno=凯特&devinformno=实打实的&installaddres=阿萨德啊&resperson=阿萨德啊&devseclevel=啊撒打算&productno=阿斯打算&brandno=阿斯阿斯&vlan=啊撒旦撒&ipaddress=阿斯倒萨速度&mac= 阿斯达斯大&patchpanel=啊撒旦撒&switchport=1231&', '127.0.0.1', '2016-09-07 20:37:24');
INSERT INTO `syslog` VALUES ('555', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.PlotterInfoController,[方法]:addPage,[参数]:', null, '2016-09-07 20:37:32');
INSERT INTO `syslog` VALUES ('556', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.PlotterInfoController,[方法]:add,[参数]:resdepart=阿萨德&resperson=啊速度&informdevno= 阿萨德&devseclevel= 撒旦&brand= 撒 速度&purpose=阿斯大苏打&devproductdate=2016-09-07 20:37:42&productno=啊撒旦撒&hardwareconf=阿斯的是&diskno=是阿达岁的&mac=是阿斯是&os=阿萨德阿斯&osinsttime=2016-09-07 20:37:55&', '127.0.0.1', '2016-09-07 20:37:59');
INSERT INTO `syslog` VALUES ('557', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.PlotterInfoController,[方法]:editPage,[参数]:id=1&_=1473251802994&', '127.0.0.1', '2016-09-07 20:38:01');
INSERT INTO `syslog` VALUES ('558', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.PlotterInfoController,[方法]:edit,[参数]:id=1&resdepart=阿萨德&resperson=啊速度&informdevno= 阿萨德&devseclevel= 撒旦&brand= 撒 速度&purpose=阿斯大苏打&devproductdate=2016-09-07 20:37:42.0&productno=啊撒旦撒&hardwareconf=阿斯的是&diskno=是阿达岁的&mac=是阿斯是&os=2222222222&osinsttime=2016-09-07 20:37:55.0&', '127.0.0.1', '2016-09-07 20:38:05');
INSERT INTO `syslog` VALUES ('559', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:addPage,[参数]:', null, '2016-09-07 20:38:09');
INSERT INTO `syslog` VALUES ('560', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:add,[参数]:devno=我去恶趣味&departname=阿斯达斯&resperson=阿斯达斯&seclevel=阿萨德阿斯&devname=似懂非懂&brand= 发射导弹&model=撒旦撒v&capacity=撒旦撒旦&serialno=阿萨德撒打算&usedate=2016-09-07 20:38:33&purpose=今后还将结合才&useaddress=撒旦 &usestatus=阿萨德sad&remark=撒旦撒旦&', '127.0.0.1', '2016-09-07 20:38:45');
INSERT INTO `syslog` VALUES ('561', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:editPage,[参数]:id=1&_=1473251802996&', '127.0.0.1', '2016-09-07 20:39:20');
INSERT INTO `syslog` VALUES ('562', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:edit,[参数]:id=1&devno=我去恶趣味&departname=阿斯达斯&resperson=阿斯达斯&seclevel=阿萨德阿斯&devname=似懂非懂&brand= 发射导弹&model=撒旦撒v&capacity=撒旦撒旦&serialno=阿萨德撒打算&usedate=2016-09-07 20:38:33.0&purpose=今后还将结合才&useaddress=撒旦 &usestatus=阿萨德sad&remark=爱谁谁&', '127.0.0.1', '2016-09-07 20:39:29');
INSERT INTO `syslog` VALUES ('563', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:delete,[参数]:id=1&', '127.0.0.1', '2016-09-07 20:39:34');
INSERT INTO `syslog` VALUES ('564', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-07 21:20:00');
INSERT INTO `syslog` VALUES ('565', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-09-07 21:20:02');
INSERT INTO `syslog` VALUES ('566', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=8&_=1473254404072&', '127.0.0.1', '2016-09-07 21:21:29');
INSERT INTO `syslog` VALUES ('567', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=7&_=1473254404073&', '127.0.0.1', '2016-09-07 21:21:38');
INSERT INTO `syslog` VALUES ('568', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=2&_=1473254404074&', '127.0.0.1', '2016-09-07 21:21:41');
INSERT INTO `syslog` VALUES ('569', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:editPage,[参数]:id=1&_=1473254404075&', '127.0.0.1', '2016-09-07 21:21:44');
INSERT INTO `syslog` VALUES ('570', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1473254404076&', '127.0.0.1', '2016-09-07 21:22:38');
INSERT INTO `syslog` VALUES ('571', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-08 21:53:12');
INSERT INTO `syslog` VALUES ('572', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=zkt&password=123&', '127.0.0.1', '2016-09-08 21:53:14');
INSERT INTO `syslog` VALUES ('573', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-09-08 21:53:41');
INSERT INTO `syslog` VALUES ('574', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-08 22:30:17');
INSERT INTO `syslog` VALUES ('575', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-08 22:30:18');
INSERT INTO `syslog` VALUES ('576', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-08 22:30:21');
INSERT INTO `syslog` VALUES ('577', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-08 23:01:33');
INSERT INTO `syslog` VALUES ('578', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-08 23:01:36');
INSERT INTO `syslog` VALUES ('579', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-08 23:41:11');
INSERT INTO `syslog` VALUES ('580', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-08 23:41:12');
INSERT INTO `syslog` VALUES ('581', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-09 00:35:48');
INSERT INTO `syslog` VALUES ('582', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-09 00:35:50');
INSERT INTO `syslog` VALUES ('583', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-09-09 00:55:07');
INSERT INTO `syslog` VALUES ('584', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=16&_=1473353713392&', '127.0.0.1', '2016-09-09 00:55:44');
INSERT INTO `syslog` VALUES ('585', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=16&loginname=zkt&name=zkt&password=&sex=0&age=&usertype=0&organizationId=6&roleIds=1&phone=&status=0&', '127.0.0.1', '2016-09-09 00:55:51');
INSERT INTO `syslog` VALUES ('586', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=16&_=1473353713393&', '127.0.0.1', '2016-09-09 00:55:57');
INSERT INTO `syslog` VALUES ('587', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=16&loginname=zkt&name=zkt&password=&sex=0&age=&usertype=1&organizationId=6&roleIds=1&phone=&status=0&', '127.0.0.1', '2016-09-09 00:56:00');
INSERT INTO `syslog` VALUES ('588', 'zkt', 'zkt', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-09-09 00:56:04');
INSERT INTO `syslog` VALUES ('589', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=16&_=1473355370613&', '127.0.0.1', '2016-09-09 01:23:44');
INSERT INTO `syslog` VALUES ('590', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:edit,[参数]:id=16&loginname=zkt&name=zkt&password=&sex=0&age=&usertype=0&organizationId=6&roleIds=1&phone=&status=0&', '127.0.0.1', '2016-09-09 01:23:52');
INSERT INTO `syslog` VALUES ('591', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-09 20:43:45');
INSERT INTO `syslog` VALUES ('592', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-09 20:43:50');
INSERT INTO `syslog` VALUES ('593', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1473425031030&', '127.0.0.1', '2016-09-09 20:44:28');
INSERT INTO `syslog` VALUES ('594', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=228&_=1473425031031&', '127.0.0.1', '2016-09-09 20:46:04');
INSERT INTO `syslog` VALUES ('595', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=228&name=内网计算机台账&resourcetype=0&url=/computerManage/manager&seq=0&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-09 20:46:15');
INSERT INTO `syslog` VALUES ('596', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1473425031032&', '127.0.0.1', '2016-09-09 20:46:37');
INSERT INTO `syslog` VALUES ('597', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,227,228,221&', '127.0.0.1', '2016-09-09 20:46:42');
INSERT INTO `syslog` VALUES ('598', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-09-09 20:46:52');
INSERT INTO `syslog` VALUES ('599', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-09 21:06:59');
INSERT INTO `syslog` VALUES ('600', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-09 21:06:59');
INSERT INTO `syslog` VALUES ('601', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-09 21:07:40');
INSERT INTO `syslog` VALUES ('602', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=227&_=1473482623777&', '127.0.0.1', '2016-09-10 12:43:58');
INSERT INTO `syslog` VALUES ('603', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=227&name=台帐管理&resourcetype=0&url=&seq=0&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-09-10 12:44:08');
INSERT INTO `syslog` VALUES ('604', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:45:46');
INSERT INTO `syslog` VALUES ('605', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=0&url=/computerManage/dataGrid&seq=0&icon=icon-list&status=0&pid=228&', '127.0.0.1', '2016-09-10 12:46:55');
INSERT INTO `syslog` VALUES ('606', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:47:16');
INSERT INTO `syslog` VALUES ('607', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/computerManage/dataGrid&seq=1&icon=icon-add&status=0&pid=228&', '127.0.0.1', '2016-09-10 12:47:53');
INSERT INTO `syslog` VALUES ('608', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=229&_=1473482623780&', '127.0.0.1', '2016-09-10 12:47:56');
INSERT INTO `syslog` VALUES ('609', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=229&name=列表&resourcetype=1&url=/computerManage/dataGrid&seq=0&icon=icon-list&status=0&pid=228&', '127.0.0.1', '2016-09-10 12:48:01');
INSERT INTO `syslog` VALUES ('610', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=230&_=1473482623781&', '127.0.0.1', '2016-09-10 12:48:19');
INSERT INTO `syslog` VALUES ('611', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=230&name=添加&resourcetype=1&url=/computerManage/add&seq=1&icon=icon-add&status=0&pid=228&', '127.0.0.1', '2016-09-10 12:48:33');
INSERT INTO `syslog` VALUES ('612', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:48:52');
INSERT INTO `syslog` VALUES ('613', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/computerManage/edit&seq=2&icon=icon-edit&status=0&pid=228&', '127.0.0.1', '2016-09-10 12:49:28');
INSERT INTO `syslog` VALUES ('614', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:49:46');
INSERT INTO `syslog` VALUES ('615', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/computerManage/delete&seq=3&icon=icon-del&status=0&pid=228&', '127.0.0.1', '2016-09-10 12:50:35');
INSERT INTO `syslog` VALUES ('616', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:52:00');
INSERT INTO `syslog` VALUES ('617', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=服务器台账&resourcetype=0&url=/serverManage/manager&seq=0&icon=icon-company&status=0&pid=227&', '127.0.0.1', '2016-09-10 12:52:36');
INSERT INTO `syslog` VALUES ('618', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:52:53');
INSERT INTO `syslog` VALUES ('619', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/serverManage/dataGrid&seq=0&icon=icon-list&status=0&pid=233&', '127.0.0.1', '2016-09-10 12:53:22');
INSERT INTO `syslog` VALUES ('620', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:53:30');
INSERT INTO `syslog` VALUES ('621', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/serverManage/add&seq=1&icon=icon-add&status=0&pid=233&', '127.0.0.1', '2016-09-10 12:53:53');
INSERT INTO `syslog` VALUES ('622', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:53:59');
INSERT INTO `syslog` VALUES ('623', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/serverManage/edit&seq=2&icon=icon-edit&status=0&pid=233&', '127.0.0.1', '2016-09-10 12:54:21');
INSERT INTO `syslog` VALUES ('624', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:54:26');
INSERT INTO `syslog` VALUES ('625', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/serverManage/delete&seq=3&icon=icon-del&status=0&pid=233&', '127.0.0.1', '2016-09-10 12:55:11');
INSERT INTO `syslog` VALUES ('626', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=233&_=1473482623789&', '127.0.0.1', '2016-09-10 12:55:48');
INSERT INTO `syslog` VALUES ('627', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=233&name=服务器台账&resourcetype=0&url=/serverManage/manager&seq=0&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 12:56:10');
INSERT INTO `syslog` VALUES ('628', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:56:32');
INSERT INTO `syslog` VALUES ('629', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=安全产品台帐&resourcetype=0&url=/secProdInfoManage/manager&seq=0&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 12:57:17');
INSERT INTO `syslog` VALUES ('630', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:57:27');
INSERT INTO `syslog` VALUES ('631', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/secProdInfoManage/add&seq=0&icon=icon-add&status=0&pid=238&', '127.0.0.1', '2016-09-10 12:57:54');
INSERT INTO `syslog` VALUES ('632', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=239&_=1473482623792&', '127.0.0.1', '2016-09-10 12:58:11');
INSERT INTO `syslog` VALUES ('633', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=239&name=列表&resourcetype=1&url=/secProdInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=238&', '127.0.0.1', '2016-09-10 12:58:46');
INSERT INTO `syslog` VALUES ('634', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:58:55');
INSERT INTO `syslog` VALUES ('635', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=0&url=/secProdInfoManage/add&seq=1&icon=icon-add&status=0&pid=238&', '127.0.0.1', '2016-09-10 12:59:19');
INSERT INTO `syslog` VALUES ('636', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=240&_=1473482623794&', '127.0.0.1', '2016-09-10 12:59:25');
INSERT INTO `syslog` VALUES ('637', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=240&name=添加&resourcetype=1&url=/secProdInfoManage/add&seq=1&icon=icon-add&status=0&pid=238&', '127.0.0.1', '2016-09-10 12:59:29');
INSERT INTO `syslog` VALUES ('638', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 12:59:38');
INSERT INTO `syslog` VALUES ('639', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/secProdInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=238&', '127.0.0.1', '2016-09-10 13:00:02');
INSERT INTO `syslog` VALUES ('640', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:00:09');
INSERT INTO `syslog` VALUES ('641', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/secProdInfoManage/delete&seq=3&icon=icon-del&status=0&pid=238&', '127.0.0.1', '2016-09-10 13:00:30');
INSERT INTO `syslog` VALUES ('642', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:01:04');
INSERT INTO `syslog` VALUES ('643', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=交换机台帐&resourcetype=0&url=/switchInfoManage/manager&seq=0&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:01:44');
INSERT INTO `syslog` VALUES ('644', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:01:53');
INSERT INTO `syslog` VALUES ('645', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/switchInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=243&', '127.0.0.1', '2016-09-10 13:02:12');
INSERT INTO `syslog` VALUES ('646', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:02:17');
INSERT INTO `syslog` VALUES ('647', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/switchInfoManage/add&seq=1&icon=icon-add&status=0&pid=243&', '127.0.0.1', '2016-09-10 13:02:34');
INSERT INTO `syslog` VALUES ('648', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:02:38');
INSERT INTO `syslog` VALUES ('649', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/switchInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=243&', '127.0.0.1', '2016-09-10 13:02:58');
INSERT INTO `syslog` VALUES ('650', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:03:02');
INSERT INTO `syslog` VALUES ('651', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/switchInfoManage/delete&seq=3&icon=icon-del&status=0&pid=243&', '127.0.0.1', '2016-09-10 13:03:23');
INSERT INTO `syslog` VALUES ('652', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:03:40');
INSERT INTO `syslog` VALUES ('653', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=中间转换机台帐&resourcetype=0&url=/convertInfoManage/manager&seq=0&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:04:14');
INSERT INTO `syslog` VALUES ('654', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=233&_=1473482623803&', '127.0.0.1', '2016-09-10 13:04:22');
INSERT INTO `syslog` VALUES ('655', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=233&name=服务器台账&resourcetype=0&url=/serverManage/manager&seq=1&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:04:25');
INSERT INTO `syslog` VALUES ('656', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=238&_=1473482623804&', '127.0.0.1', '2016-09-10 13:04:47');
INSERT INTO `syslog` VALUES ('657', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=238&name=安全产品台帐&resourcetype=0&url=/secProdInfoManage/manager&seq=2&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:04:51');
INSERT INTO `syslog` VALUES ('658', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=243&_=1473482623805&', '127.0.0.1', '2016-09-10 13:05:10');
INSERT INTO `syslog` VALUES ('659', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=243&name=交换机台帐&resourcetype=0&url=/switchInfoManage/manager&seq=3&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:05:14');
INSERT INTO `syslog` VALUES ('660', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=248&_=1473482623806&', '127.0.0.1', '2016-09-10 13:05:20');
INSERT INTO `syslog` VALUES ('661', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=248&name=中间转换机台帐&resourcetype=0&url=/convertInfoManage/manager&seq=4&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:05:24');
INSERT INTO `syslog` VALUES ('662', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:05:31');
INSERT INTO `syslog` VALUES ('663', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/convertInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=248&', '127.0.0.1', '2016-09-10 13:06:22');
INSERT INTO `syslog` VALUES ('664', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:06:26');
INSERT INTO `syslog` VALUES ('665', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/convertInfoManage/add&seq=1&icon=icon-add&status=0&pid=248&', '127.0.0.1', '2016-09-10 13:06:45');
INSERT INTO `syslog` VALUES ('666', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:06:49');
INSERT INTO `syslog` VALUES ('667', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/convertInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=248&', '127.0.0.1', '2016-09-10 13:07:22');
INSERT INTO `syslog` VALUES ('668', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:07:32');
INSERT INTO `syslog` VALUES ('669', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/convertInfoManage/delete&seq=3&icon=icon-del&status=0&pid=248&', '127.0.0.1', '2016-09-10 13:08:01');
INSERT INTO `syslog` VALUES ('670', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:08:24');
INSERT INTO `syslog` VALUES ('671', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=涉密单机台帐&resourcetype=0&url=/secHostInfoManage/manager&seq=5&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:09:12');
INSERT INTO `syslog` VALUES ('672', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:09:29');
INSERT INTO `syslog` VALUES ('673', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/secHostInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=253&', '127.0.0.1', '2016-09-10 13:10:19');
INSERT INTO `syslog` VALUES ('674', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:10:28');
INSERT INTO `syslog` VALUES ('675', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/secHostInfoManage/add&seq=1&icon=icon-add&status=0&pid=253&', '127.0.0.1', '2016-09-10 13:11:03');
INSERT INTO `syslog` VALUES ('676', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:11:19');
INSERT INTO `syslog` VALUES ('677', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/secHostInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=253&', '127.0.0.1', '2016-09-10 13:12:04');
INSERT INTO `syslog` VALUES ('678', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:12:10');
INSERT INTO `syslog` VALUES ('679', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/secHostInfoManage/delete&seq=3&icon=icon-del&status=0&pid=253&', '127.0.0.1', '2016-09-10 13:12:46');
INSERT INTO `syslog` VALUES ('680', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:13:29');
INSERT INTO `syslog` VALUES ('681', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=非密单机台帐&resourcetype=0&url=/unsecHostInfoManage/manager&seq=0&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:14:11');
INSERT INTO `syslog` VALUES ('682', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=258&_=1473482623817&', '127.0.0.1', '2016-09-10 13:14:32');
INSERT INTO `syslog` VALUES ('683', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=258&name=非密单机台帐&resourcetype=0&url=/unsecHostInfoManage/manager&seq=6&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:14:37');
INSERT INTO `syslog` VALUES ('684', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=258&name=非密单机台帐&resourcetype=0&url=/unsecHostInfoManage/manager&seq=6&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:14:40');
INSERT INTO `syslog` VALUES ('685', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:14:46');
INSERT INTO `syslog` VALUES ('686', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/unsecHostInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=258&', '127.0.0.1', '2016-09-10 13:15:39');
INSERT INTO `syslog` VALUES ('687', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:15:44');
INSERT INTO `syslog` VALUES ('688', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/unsecHostInfoManage/add&seq=1&icon=icon-add&status=0&pid=258&', '127.0.0.1', '2016-09-10 13:16:21');
INSERT INTO `syslog` VALUES ('689', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:16:23');
INSERT INTO `syslog` VALUES ('690', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/unsecHostInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=258&', '127.0.0.1', '2016-09-10 13:17:00');
INSERT INTO `syslog` VALUES ('691', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:17:02');
INSERT INTO `syslog` VALUES ('692', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/unsecHostInfoManage/delete&seq=3&icon=icon-del&status=0&pid=258&', '127.0.0.1', '2016-09-10 13:17:34');
INSERT INTO `syslog` VALUES ('693', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:17:37');
INSERT INTO `syslog` VALUES ('694', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=互联网计算机台帐&resourcetype=0&url=/internetInfoManage/manager&seq=7&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:18:25');
INSERT INTO `syslog` VALUES ('695', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:18:33');
INSERT INTO `syslog` VALUES ('696', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/internetInfoManage/dateGrid&seq=0&icon=icon-list&status=0&pid=263&', '127.0.0.1', '2016-09-10 13:19:09');
INSERT INTO `syslog` VALUES ('697', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:19:11');
INSERT INTO `syslog` VALUES ('698', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/internetInfoManage/add&seq=1&icon=icon-add&status=0&pid=263&', '127.0.0.1', '2016-09-10 13:19:31');
INSERT INTO `syslog` VALUES ('699', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:19:33');
INSERT INTO `syslog` VALUES ('700', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/internetInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=263&', '127.0.0.1', '2016-09-10 13:20:07');
INSERT INTO `syslog` VALUES ('701', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:20:09');
INSERT INTO `syslog` VALUES ('702', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/internetInfoManage/delete&seq=3&icon=icon-del&status=0&pid=263&', '127.0.0.1', '2016-09-10 13:20:31');
INSERT INTO `syslog` VALUES ('703', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:20:39');
INSERT INTO `syslog` VALUES ('704', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=内网打印机台帐&resourcetype=0&url=/printInfoManage/manager&seq=0&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:21:25');
INSERT INTO `syslog` VALUES ('705', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=268&_=1473482623828&', '127.0.0.1', '2016-09-10 13:21:31');
INSERT INTO `syslog` VALUES ('706', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=268&name=内网打印机台帐&resourcetype=0&url=/printInfoManage/manager&seq=7&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:21:36');
INSERT INTO `syslog` VALUES ('707', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:21:40');
INSERT INTO `syslog` VALUES ('708', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/printInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=268&', '127.0.0.1', '2016-09-10 13:22:39');
INSERT INTO `syslog` VALUES ('709', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:22:42');
INSERT INTO `syslog` VALUES ('710', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/printInfoManage/add&seq=1&icon=icon-add&status=0&pid=268&', '127.0.0.1', '2016-09-10 13:23:02');
INSERT INTO `syslog` VALUES ('711', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:23:04');
INSERT INTO `syslog` VALUES ('712', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/printInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=268&', '127.0.0.1', '2016-09-10 13:23:30');
INSERT INTO `syslog` VALUES ('713', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:23:34');
INSERT INTO `syslog` VALUES ('714', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/printInfoManage/delete&seq=3&icon=icon-del&status=0&pid=268&', '127.0.0.1', '2016-09-10 13:23:55');
INSERT INTO `syslog` VALUES ('715', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:24:12');
INSERT INTO `syslog` VALUES ('716', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=直连涉密打印设备台帐&resourcetype=0&url=/secPrintInfoManage/manager&seq=8&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:25:02');
INSERT INTO `syslog` VALUES ('717', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:25:05');
INSERT INTO `syslog` VALUES ('718', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/secPrintInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=273&', '127.0.0.1', '2016-09-10 13:25:37');
INSERT INTO `syslog` VALUES ('719', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:25:43');
INSERT INTO `syslog` VALUES ('720', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/secPrintInfoManage/add&seq=1&icon=icon-add&status=0&pid=273&', '127.0.0.1', '2016-09-10 13:26:23');
INSERT INTO `syslog` VALUES ('721', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=274&_=1473482623836&', '127.0.0.1', '2016-09-10 13:26:28');
INSERT INTO `syslog` VALUES ('722', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=274&name=列表&resourcetype=1&url=/secPrintInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=273&', '127.0.0.1', '2016-09-10 13:26:37');
INSERT INTO `syslog` VALUES ('723', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:26:44');
INSERT INTO `syslog` VALUES ('724', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/secPrintInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=273&', '127.0.0.1', '2016-09-10 13:27:09');
INSERT INTO `syslog` VALUES ('725', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:27:15');
INSERT INTO `syslog` VALUES ('726', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/secPrintInfoManage/delete&seq=3&icon=icon-del&status=0&pid=273&', '127.0.0.1', '2016-09-10 13:27:45');
INSERT INTO `syslog` VALUES ('727', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:27:50');
INSERT INTO `syslog` VALUES ('728', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=非密直连打印机台帐&resourcetype=0&url=/unSecPrintInfoManage/manager&seq=9&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:28:37');
INSERT INTO `syslog` VALUES ('729', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:28:42');
INSERT INTO `syslog` VALUES ('730', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/unSecPrintInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=278&', '127.0.0.1', '2016-09-10 13:29:13');
INSERT INTO `syslog` VALUES ('731', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:29:29');
INSERT INTO `syslog` VALUES ('732', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/unSecPrintInfoManage/add&seq=1&icon=icon-add&status=0&pid=278&', '127.0.0.1', '2016-09-10 13:29:57');
INSERT INTO `syslog` VALUES ('733', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:30:01');
INSERT INTO `syslog` VALUES ('734', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/unSecPrintInfoManage/edit&seq=2&icon=icon-del&status=0&pid=278&', '127.0.0.1', '2016-09-10 13:30:27');
INSERT INTO `syslog` VALUES ('735', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:30:30');
INSERT INTO `syslog` VALUES ('736', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/unSecPrintInfoManage/delete&seq=3&icon=icon-del&status=0&pid=278&', '127.0.0.1', '2016-09-10 13:31:05');
INSERT INTO `syslog` VALUES ('737', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=281&_=1473482623844&', '127.0.0.1', '2016-09-10 13:31:15');
INSERT INTO `syslog` VALUES ('738', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=281&name=编辑&resourcetype=1&url=/unSecPrintInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=278&', '127.0.0.1', '2016-09-10 13:31:28');
INSERT INTO `syslog` VALUES ('739', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:31:59');
INSERT INTO `syslog` VALUES ('740', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=直连绘图仪台帐&resourcetype=0&url=/attendanceInfoManage/manager&seq=10&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:32:25');
INSERT INTO `syslog` VALUES ('741', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:32:29');
INSERT INTO `syslog` VALUES ('742', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/attendanceInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=283&', '127.0.0.1', '2016-09-10 13:32:55');
INSERT INTO `syslog` VALUES ('743', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:32:57');
INSERT INTO `syslog` VALUES ('744', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/attendanceInfoManage/add&seq=1&icon=icon-add&status=0&pid=283&', '127.0.0.1', '2016-09-10 13:33:19');
INSERT INTO `syslog` VALUES ('745', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:33:22');
INSERT INTO `syslog` VALUES ('746', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/attendanceInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=283&', '127.0.0.1', '2016-09-10 13:33:44');
INSERT INTO `syslog` VALUES ('747', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:33:46');
INSERT INTO `syslog` VALUES ('748', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/attendanceInfoManage/delete&seq=3&icon=icon-edit&status=0&pid=283&', '127.0.0.1', '2016-09-10 13:34:11');
INSERT INTO `syslog` VALUES ('749', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=287&_=1473482623850&', '127.0.0.1', '2016-09-10 13:34:28');
INSERT INTO `syslog` VALUES ('750', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=287&name=删除&resourcetype=1&url=/attendanceInfoManage/delete&seq=3&icon=icon-del&status=0&pid=283&', '127.0.0.1', '2016-09-10 13:34:37');
INSERT INTO `syslog` VALUES ('751', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:34:47');
INSERT INTO `syslog` VALUES ('752', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=便携式计算机台帐&resourcetype=0&url=/notePadInfoManage/manager&seq=11&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:35:24');
INSERT INTO `syslog` VALUES ('753', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:35:28');
INSERT INTO `syslog` VALUES ('754', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/notePadInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=288&', '127.0.0.1', '2016-09-10 13:35:53');
INSERT INTO `syslog` VALUES ('755', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:35:55');
INSERT INTO `syslog` VALUES ('756', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/notePadInfoManage/add&seq=1&icon=icon-add&status=0&pid=288&', '127.0.0.1', '2016-09-10 13:36:11');
INSERT INTO `syslog` VALUES ('757', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:36:13');
INSERT INTO `syslog` VALUES ('758', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/notePadInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=288&', '127.0.0.1', '2016-09-10 13:36:33');
INSERT INTO `syslog` VALUES ('759', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:36:36');
INSERT INTO `syslog` VALUES ('760', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/notePadInfoManage/delete&seq=3&icon=icon-del&status=0&pid=288&', '127.0.0.1', '2016-09-10 13:36:59');
INSERT INTO `syslog` VALUES ('761', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:37:02');
INSERT INTO `syslog` VALUES ('762', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=考勤机台帐&resourcetype=0&url=/plotterInfoManage/manager&seq=12&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:37:37');
INSERT INTO `syslog` VALUES ('763', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:37:39');
INSERT INTO `syslog` VALUES ('764', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/plotterInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=293&', '127.0.0.1', '2016-09-10 13:38:05');
INSERT INTO `syslog` VALUES ('765', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:38:06');
INSERT INTO `syslog` VALUES ('766', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/plotterInfoManage/add&seq=1&icon=icon-add&status=0&pid=293&', '127.0.0.1', '2016-09-10 13:38:28');
INSERT INTO `syslog` VALUES ('767', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:38:31');
INSERT INTO `syslog` VALUES ('768', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/plotterInfoManage/edit&seq=0&icon=icon-edit&status=0&pid=293&', '127.0.0.1', '2016-09-10 13:38:47');
INSERT INTO `syslog` VALUES ('769', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:38:49');
INSERT INTO `syslog` VALUES ('770', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/plotterInfoManage/delete&seq=3&icon=icon-del&status=0&pid=293&', '127.0.0.1', '2016-09-10 13:39:12');
INSERT INTO `syslog` VALUES ('771', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:39:14');
INSERT INTO `syslog` VALUES ('772', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=办公自动化设备台帐&resourcetype=0&url=/oaAutoInfoManage/manager&seq=12&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:40:24');
INSERT INTO `syslog` VALUES ('773', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=298&_=1473482623862&', '127.0.0.1', '2016-09-10 13:40:29');
INSERT INTO `syslog` VALUES ('774', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=298&name=办公自动化设备台帐&resourcetype=0&url=/oaAutoInfoManage/manager&seq=13&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-09-10 13:40:32');
INSERT INTO `syslog` VALUES ('775', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:40:40');
INSERT INTO `syslog` VALUES ('776', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/oaAutoInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=298&', '127.0.0.1', '2016-09-10 13:41:04');
INSERT INTO `syslog` VALUES ('777', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:41:06');
INSERT INTO `syslog` VALUES ('778', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/oaAutoInfoManage/add&seq=1&icon=icon-add&status=0&pid=298&', '127.0.0.1', '2016-09-10 13:41:25');
INSERT INTO `syslog` VALUES ('779', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:41:26');
INSERT INTO `syslog` VALUES ('780', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/oaAutoInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=298&', '127.0.0.1', '2016-09-10 13:41:45');
INSERT INTO `syslog` VALUES ('781', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:41:47');
INSERT INTO `syslog` VALUES ('782', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/oaAutoInfoManage/delete&seq=3&icon=icon-del&status=0&pid=298&', '127.0.0.1', '2016-09-10 13:42:19');
INSERT INTO `syslog` VALUES ('783', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-10 13:42:44');
INSERT INTO `syslog` VALUES ('784', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1473482623868&', '127.0.0.1', '2016-09-10 13:45:00');
INSERT INTO `syslog` VALUES ('785', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,296,295,297,298,299,300,301,302&', '127.0.0.1', '2016-09-10 13:45:09');
INSERT INTO `syslog` VALUES ('786', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-09-10 13:45:12');
INSERT INTO `syslog` VALUES ('787', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:addPage,[参数]:', null, '2016-09-10 13:59:43');
INSERT INTO `syslog` VALUES ('788', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:addPage,[参数]:', null, '2016-09-10 13:59:55');
INSERT INTO `syslog` VALUES ('789', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:editPage,[参数]:id=1&_=1473487170438&', '127.0.0.1', '2016-09-10 14:00:04');
INSERT INTO `syslog` VALUES ('790', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-09-10 14:20:15');
INSERT INTO `syslog` VALUES ('791', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:addPage,[参数]:', null, '2016-09-10 14:28:28');
INSERT INTO `syslog` VALUES ('792', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ServerManageController,[方法]:addPage,[参数]:', null, '2016-09-10 14:28:32');
INSERT INTO `syslog` VALUES ('793', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:addPage,[参数]:', null, '2016-09-10 14:28:44');
INSERT INTO `syslog` VALUES ('794', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:addPage,[参数]:', null, '2016-09-10 14:28:57');
INSERT INTO `syslog` VALUES ('795', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-11 12:00:30');
INSERT INTO `syslog` VALUES ('796', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-11 12:00:32');
INSERT INTO `syslog` VALUES ('797', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-13 20:08:35');
INSERT INTO `syslog` VALUES ('798', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-13 20:08:36');
INSERT INTO `syslog` VALUES ('799', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-13 20:08:49');
INSERT INTO `syslog` VALUES ('800', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-22 22:25:38');
INSERT INTO `syslog` VALUES ('801', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-22 22:25:40');
INSERT INTO `syslog` VALUES ('802', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=221&_=1474554340548&', '127.0.0.1', '2016-09-22 22:26:19');
INSERT INTO `syslog` VALUES ('803', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=221&name=参数管理&resourcetype=0&url=&seq=2&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-09-22 22:26:43');
INSERT INTO `syslog` VALUES ('804', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-09-22 22:26:50');
INSERT INTO `syslog` VALUES ('805', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-22 22:27:03');
INSERT INTO `syslog` VALUES ('806', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=字典管理&resourcetype=1&url=/dictionaryManager/manager&seq=0&icon=icon-folder&status=0&pid=221&', '127.0.0.1', '2016-09-22 22:28:33');
INSERT INTO `syslog` VALUES ('807', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-22 22:28:42');
INSERT INTO `syslog` VALUES ('808', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=303&_=1474554412254&', '127.0.0.1', '2016-09-22 22:30:24');
INSERT INTO `syslog` VALUES ('809', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=303&name=字典管理&resourcetype=0&url=/dictionaryManager/manager&seq=0&icon=icon-folder&status=0&pid=221&', '127.0.0.1', '2016-09-22 22:30:28');
INSERT INTO `syslog` VALUES ('810', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-22 22:30:37');
INSERT INTO `syslog` VALUES ('811', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/dictionaryManager/dataGrid&seq=1&icon=icon-list&status=0&pid=303&', '127.0.0.1', '2016-09-22 22:31:18');
INSERT INTO `syslog` VALUES ('812', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-22 22:31:22');
INSERT INTO `syslog` VALUES ('813', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/dictionaryManager/add&seq=2&icon=icon-add&status=0&pid=303&', '127.0.0.1', '2016-09-22 22:31:41');
INSERT INTO `syslog` VALUES ('814', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-22 22:31:46');
INSERT INTO `syslog` VALUES ('815', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-22 22:37:43');
INSERT INTO `syslog` VALUES ('816', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/dictionaryManager/edit&seq=2&icon=icon-edit&status=0&pid=303&', '127.0.0.1', '2016-09-22 22:38:30');
INSERT INTO `syslog` VALUES ('817', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-22 22:38:35');
INSERT INTO `syslog` VALUES ('818', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/dictionaryManager/delete&seq=3&icon=icon-del&status=0&pid=303&', '127.0.0.1', '2016-09-22 22:39:04');
INSERT INTO `syslog` VALUES ('819', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1474555051674&', '127.0.0.1', '2016-09-22 22:39:22');
INSERT INTO `syslog` VALUES ('820', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,296,295,297,298,299,300,301,302,221,303,304,305,306,307&', '127.0.0.1', '2016-09-22 22:39:30');
INSERT INTO `syslog` VALUES ('821', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-09-22 22:39:34');
INSERT INTO `syslog` VALUES ('822', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-09-22 22:39:45');
INSERT INTO `syslog` VALUES ('823', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密内网计算机台账&value=computermanage&url=/computerManage/modify&desc=涉密内网计算机台账&', '127.0.0.1', '2016-09-22 22:42:03');
INSERT INTO `syslog` VALUES ('824', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-22 22:43:24');
INSERT INTO `syslog` VALUES ('825', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-22 22:43:26');
INSERT INTO `syslog` VALUES ('826', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-09-22 22:43:51');
INSERT INTO `syslog` VALUES ('827', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密内网计算机台账&value=computermanage&url=/computerManage/modify&desc=涉密内网计算机台账&', '127.0.0.1', '2016-09-22 22:44:44');
INSERT INTO `syslog` VALUES ('828', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-22 22:46:46');
INSERT INTO `syslog` VALUES ('829', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-22 22:46:48');
INSERT INTO `syslog` VALUES ('830', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-09-22 22:46:52');
INSERT INTO `syslog` VALUES ('831', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密内网计算机台账&value=computermanage&url=/computerManage/modify&desc=涉密内网计算机台账&', '127.0.0.1', '2016-09-22 22:47:38');
INSERT INTO `syslog` VALUES ('832', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-22 22:49:51');
INSERT INTO `syslog` VALUES ('833', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-22 22:49:53');
INSERT INTO `syslog` VALUES ('834', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-09-22 22:50:31');
INSERT INTO `syslog` VALUES ('835', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密内网计算机台账&value=computermanage&url=/computerManage/modify&desc=涉密内网计算机台账&', '127.0.0.1', '2016-09-22 22:50:53');
INSERT INTO `syslog` VALUES ('836', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-22 22:57:26');
INSERT INTO `syslog` VALUES ('837', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-22 22:57:28');
INSERT INTO `syslog` VALUES ('838', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-09-22 22:57:33');
INSERT INTO `syslog` VALUES ('839', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:key=涉密计算机台帐&name=computermanage&url=/computerManage/modify&desc=涉密计算机台帐&', '127.0.0.1', '2016-09-22 22:58:12');
INSERT INTO `syslog` VALUES ('840', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-22 23:00:22');
INSERT INTO `syslog` VALUES ('841', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-22 23:00:24');
INSERT INTO `syslog` VALUES ('842', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-09-22 23:00:28');
INSERT INTO `syslog` VALUES ('843', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:keyvalue=涉密计算机台帐&name=computermanage&url=/computerManage/modify&desc=涉密内网计算机台账&', '127.0.0.1', '2016-09-22 23:01:20');
INSERT INTO `syslog` VALUES ('844', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-22 23:05:49');
INSERT INTO `syslog` VALUES ('845', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-22 23:05:53');
INSERT INTO `syslog` VALUES ('846', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-09-22 23:05:58');
INSERT INTO `syslog` VALUES ('847', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密计算机台帐&keys_=computerManage&url=/computerManage/modify&description=涉密计算机台帐&', '127.0.0.1', '2016-09-22 23:06:42');
INSERT INTO `syslog` VALUES ('848', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-22 23:09:04');
INSERT INTO `syslog` VALUES ('849', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-22 23:09:05');
INSERT INTO `syslog` VALUES ('850', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=1&_=1474556945977&', '127.0.0.1', '2016-09-22 23:09:42');
INSERT INTO `syslog` VALUES ('851', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-22 23:10:49');
INSERT INTO `syslog` VALUES ('852', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-22 23:10:51');
INSERT INTO `syslog` VALUES ('853', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=1&_=1474557051289&', '127.0.0.1', '2016-09-22 23:10:55');
INSERT INTO `syslog` VALUES ('854', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=1&name=涉密计算机台帐&keys_=computerManage&url=/computerManage/modify&description=涉密计算机台帐&', '127.0.0.1', '2016-09-22 23:11:02');
INSERT INTO `syslog` VALUES ('855', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=1&_=1474700075317&', '127.0.0.1', '2016-09-24 14:54:42');
INSERT INTO `syslog` VALUES ('856', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=1&name=涉密计算机台帐&keys_=computerManage&url=/computerManage/editPage&description=涉密计算机台帐&', '127.0.0.1', '2016-09-24 14:54:58');
INSERT INTO `syslog` VALUES ('857', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=1&_=1474700075318&', '127.0.0.1', '2016-09-24 14:56:28');
INSERT INTO `syslog` VALUES ('858', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=1&name=涉密计算机台帐&keys_=computerManage&url=/computerManage/editPage&description=涉密计算机台帐&', '127.0.0.1', '2016-09-24 14:56:31');
INSERT INTO `syslog` VALUES ('859', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-24 15:25:54');
INSERT INTO `syslog` VALUES ('860', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=台帐管理&resourcetype=0&url=&seq=0&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-09-24 15:26:43');
INSERT INTO `syslog` VALUES ('861', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=227&_=1474701940654&', '127.0.0.1', '2016-09-24 15:26:51');
INSERT INTO `syslog` VALUES ('862', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=227&name=台帐列表&resourcetype=0&url=&seq=0&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-09-24 15:26:58');
INSERT INTO `syslog` VALUES ('863', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=227&_=1474701940655&', '127.0.0.1', '2016-09-24 15:27:20');
INSERT INTO `syslog` VALUES ('864', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=227&name=台帐列表&resourcetype=0&url=&seq=4&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-09-24 15:27:26');
INSERT INTO `syslog` VALUES ('865', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=308&_=1474701940656&', '127.0.0.1', '2016-09-24 15:27:38');
INSERT INTO `syslog` VALUES ('866', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=308&name=台帐管理&resourcetype=0&url=&seq=5&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-09-24 15:27:42');
INSERT INTO `syslog` VALUES ('867', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-24 15:27:59');
INSERT INTO `syslog` VALUES ('868', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=台帐变更&resourcetype=0&url=/changeOrder/manager&seq=0&icon=icon-list&status=0&pid=308&', '127.0.0.1', '2016-09-24 15:29:10');
INSERT INTO `syslog` VALUES ('869', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=309&_=1474701940658&', '127.0.0.1', '2016-09-24 15:29:19');
INSERT INTO `syslog` VALUES ('870', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=309&name=台帐变更&resourcetype=0&url=/changeOrder/manager&seq=0&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-09-24 15:29:24');
INSERT INTO `syslog` VALUES ('871', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-24 15:29:41');
INSERT INTO `syslog` VALUES ('872', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/changeOrder/dataGrid&seq=1&icon=icon-list&status=0&pid=309&', '127.0.0.1', '2016-09-24 15:30:30');
INSERT INTO `syslog` VALUES ('873', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-24 15:30:43');
INSERT INTO `syslog` VALUES ('874', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/changeOrder/add&seq=2&icon=icon-add&status=0&pid=309&', '127.0.0.1', '2016-09-24 15:31:18');
INSERT INTO `syslog` VALUES ('875', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=296&_=1474701940661&', '127.0.0.1', '2016-09-24 15:31:25');
INSERT INTO `syslog` VALUES ('876', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=296&name=编辑&resourcetype=1&url=/plotterInfoManage/edit&seq=1&icon=icon-edit&status=0&pid=293&', '127.0.0.1', '2016-09-24 15:31:28');
INSERT INTO `syslog` VALUES ('877', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=296&_=1474701940662&', '127.0.0.1', '2016-09-24 15:31:34');
INSERT INTO `syslog` VALUES ('878', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=296&name=编辑&resourcetype=1&url=/plotterInfoManage/edit&seq=2&icon=icon-edit&status=0&pid=293&', '127.0.0.1', '2016-09-24 15:31:37');
INSERT INTO `syslog` VALUES ('879', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-09-24 15:31:52');
INSERT INTO `syslog` VALUES ('880', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/changeOrder/delete&seq=3&icon=icon-del&status=0&pid=309&', '127.0.0.1', '2016-09-24 15:32:19');
INSERT INTO `syslog` VALUES ('881', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1474701940664&', '127.0.0.1', '2016-09-24 15:32:32');
INSERT INTO `syslog` VALUES ('882', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312&', '127.0.0.1', '2016-09-24 15:32:38');
INSERT INTO `syslog` VALUES ('883', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-09-24 15:32:41');
INSERT INTO `syslog` VALUES ('884', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:addPage,[参数]:', null, '2016-09-24 15:36:20');
INSERT INTO `syslog` VALUES ('885', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PlotterInfoController,[方法]:addPage,[参数]:', null, '2016-09-24 15:36:26');
INSERT INTO `syslog` VALUES ('886', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 20:17:04');
INSERT INTO `syslog` VALUES ('887', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 20:17:06');
INSERT INTO `syslog` VALUES ('888', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:17:12');
INSERT INTO `syslog` VALUES ('889', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 20:18:29');
INSERT INTO `syslog` VALUES ('890', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 20:18:29');
INSERT INTO `syslog` VALUES ('891', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 20:18:34');
INSERT INTO `syslog` VALUES ('892', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:18:40');
INSERT INTO `syslog` VALUES ('893', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:19:40');
INSERT INTO `syslog` VALUES ('894', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 20:22:25');
INSERT INTO `syslog` VALUES ('895', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 20:22:28');
INSERT INTO `syslog` VALUES ('896', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:22:38');
INSERT INTO `syslog` VALUES ('897', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:23:40');
INSERT INTO `syslog` VALUES ('898', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:25:14');
INSERT INTO `syslog` VALUES ('899', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-09-25 20:31:43');
INSERT INTO `syslog` VALUES ('900', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:31:48');
INSERT INTO `syslog` VALUES ('901', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:34:45');
INSERT INTO `syslog` VALUES ('902', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:35:16');
INSERT INTO `syslog` VALUES ('903', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:36:48');
INSERT INTO `syslog` VALUES ('904', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:37:07');
INSERT INTO `syslog` VALUES ('905', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:37:17');
INSERT INTO `syslog` VALUES ('906', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 20:37:27');
INSERT INTO `syslog` VALUES ('907', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 20:37:30');
INSERT INTO `syslog` VALUES ('908', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:37:35');
INSERT INTO `syslog` VALUES ('909', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 20:40:16');
INSERT INTO `syslog` VALUES ('910', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 20:40:23');
INSERT INTO `syslog` VALUES ('911', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 20:40:26');
INSERT INTO `syslog` VALUES ('912', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:40:32');
INSERT INTO `syslog` VALUES ('913', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:40:40');
INSERT INTO `syslog` VALUES ('914', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:42:57');
INSERT INTO `syslog` VALUES ('915', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:46:26');
INSERT INTO `syslog` VALUES ('916', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:46:42');
INSERT INTO `syslog` VALUES ('917', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:46:49');
INSERT INTO `syslog` VALUES ('918', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:48:55');
INSERT INTO `syslog` VALUES ('919', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:51:57');
INSERT INTO `syslog` VALUES ('920', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:54:48');
INSERT INTO `syslog` VALUES ('921', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 20:55:53');
INSERT INTO `syslog` VALUES ('922', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:07:21');
INSERT INTO `syslog` VALUES ('923', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:09:09');
INSERT INTO `syslog` VALUES ('924', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:09:54');
INSERT INTO `syslog` VALUES ('925', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:10:17');
INSERT INTO `syslog` VALUES ('926', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:13:25');
INSERT INTO `syslog` VALUES ('927', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:15:37');
INSERT INTO `syslog` VALUES ('928', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 21:18:17');
INSERT INTO `syslog` VALUES ('929', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 21:18:22');
INSERT INTO `syslog` VALUES ('930', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:18:33');
INSERT INTO `syslog` VALUES ('931', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:20:16');
INSERT INTO `syslog` VALUES ('932', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:20:58');
INSERT INTO `syslog` VALUES ('933', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:21:23');
INSERT INTO `syslog` VALUES ('934', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:22:25');
INSERT INTO `syslog` VALUES ('935', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:26:43');
INSERT INTO `syslog` VALUES ('936', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:29:36');
INSERT INTO `syslog` VALUES ('937', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 21:32:37');
INSERT INTO `syslog` VALUES ('938', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 21:32:41');
INSERT INTO `syslog` VALUES ('939', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:32:57');
INSERT INTO `syslog` VALUES ('940', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:35:49');
INSERT INTO `syslog` VALUES ('941', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:37:05');
INSERT INTO `syslog` VALUES ('942', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 21:37:30');
INSERT INTO `syslog` VALUES ('943', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 21:37:32');
INSERT INTO `syslog` VALUES ('944', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:37:36');
INSERT INTO `syslog` VALUES ('945', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:39:13');
INSERT INTO `syslog` VALUES ('946', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:40:07');
INSERT INTO `syslog` VALUES ('947', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:41:53');
INSERT INTO `syslog` VALUES ('948', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:46:54');
INSERT INTO `syslog` VALUES ('949', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:49:53');
INSERT INTO `syslog` VALUES ('950', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:51:06');
INSERT INTO `syslog` VALUES ('951', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:51:29');
INSERT INTO `syslog` VALUES ('952', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:52:27');
INSERT INTO `syslog` VALUES ('953', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:54:54');
INSERT INTO `syslog` VALUES ('954', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 21:55:59');
INSERT INTO `syslog` VALUES ('955', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 21:56:01');
INSERT INTO `syslog` VALUES ('956', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 21:56:05');
INSERT INTO `syslog` VALUES ('957', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:06:43');
INSERT INTO `syslog` VALUES ('958', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:08:04');
INSERT INTO `syslog` VALUES ('959', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:08:21');
INSERT INTO `syslog` VALUES ('960', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:12:46');
INSERT INTO `syslog` VALUES ('961', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:12:50');
INSERT INTO `syslog` VALUES ('962', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:14:14');
INSERT INTO `syslog` VALUES ('963', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:14:16');
INSERT INTO `syslog` VALUES ('964', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:16:41');
INSERT INTO `syslog` VALUES ('965', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:16:43');
INSERT INTO `syslog` VALUES ('966', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:17:53');
INSERT INTO `syslog` VALUES ('967', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:17:55');
INSERT INTO `syslog` VALUES ('968', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:18:45');
INSERT INTO `syslog` VALUES ('969', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:18:48');
INSERT INTO `syslog` VALUES ('970', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:20:58');
INSERT INTO `syslog` VALUES ('971', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:21:04');
INSERT INTO `syslog` VALUES ('972', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:21:20');
INSERT INTO `syslog` VALUES ('973', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:21:22');
INSERT INTO `syslog` VALUES ('974', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:29:33');
INSERT INTO `syslog` VALUES ('975', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:29:36');
INSERT INTO `syslog` VALUES ('976', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:30:57');
INSERT INTO `syslog` VALUES ('977', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:30:59');
INSERT INTO `syslog` VALUES ('978', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:32:43');
INSERT INTO `syslog` VALUES ('979', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:32:45');
INSERT INTO `syslog` VALUES ('980', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:36:20');
INSERT INTO `syslog` VALUES ('981', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:36:22');
INSERT INTO `syslog` VALUES ('982', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:36:42');
INSERT INTO `syslog` VALUES ('983', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:37:31');
INSERT INTO `syslog` VALUES ('984', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:37:33');
INSERT INTO `syslog` VALUES ('985', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:37:39');
INSERT INTO `syslog` VALUES ('986', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:39:23');
INSERT INTO `syslog` VALUES ('987', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:39:25');
INSERT INTO `syslog` VALUES ('988', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:40:14');
INSERT INTO `syslog` VALUES ('989', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:40:17');
INSERT INTO `syslog` VALUES ('990', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:41:45');
INSERT INTO `syslog` VALUES ('991', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:41:48');
INSERT INTO `syslog` VALUES ('992', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:42:20');
INSERT INTO `syslog` VALUES ('993', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:42:22');
INSERT INTO `syslog` VALUES ('994', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:42:46');
INSERT INTO `syslog` VALUES ('995', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:42:48');
INSERT INTO `syslog` VALUES ('996', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:43:30');
INSERT INTO `syslog` VALUES ('997', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:43:33');
INSERT INTO `syslog` VALUES ('998', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:43:53');
INSERT INTO `syslog` VALUES ('999', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:43:55');
INSERT INTO `syslog` VALUES ('1000', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:44:11');
INSERT INTO `syslog` VALUES ('1001', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:44:12');
INSERT INTO `syslog` VALUES ('1002', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:46:51');
INSERT INTO `syslog` VALUES ('1003', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:46:53');
INSERT INTO `syslog` VALUES ('1004', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:47:31');
INSERT INTO `syslog` VALUES ('1005', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:47:33');
INSERT INTO `syslog` VALUES ('1006', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:48:13');
INSERT INTO `syslog` VALUES ('1007', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:48:40');
INSERT INTO `syslog` VALUES ('1008', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:48:45');
INSERT INTO `syslog` VALUES ('1009', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:49:16');
INSERT INTO `syslog` VALUES ('1010', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 22:49:18');
INSERT INTO `syslog` VALUES ('1011', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:49:25');
INSERT INTO `syslog` VALUES ('1012', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-08-12 15:51:41.0&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-08-18 15:51:58&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-21 22:50:04&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-25 22:50:10');
INSERT INTO `syslog` VALUES ('1013', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 22:50:29');
INSERT INTO `syslog` VALUES ('1014', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 22:50:32');
INSERT INTO `syslog` VALUES ('1015', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 23:08:08');
INSERT INTO `syslog` VALUES ('1016', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 23:08:09');
INSERT INTO `syslog` VALUES ('1017', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:08:14');
INSERT INTO `syslog` VALUES ('1018', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:08:19');
INSERT INTO `syslog` VALUES ('1019', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-08-12 15:51:41.0&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-08-18 15:51:58&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-25 23:08:44&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-25 23:08:49');
INSERT INTO `syslog` VALUES ('1020', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 23:11:46');
INSERT INTO `syslog` VALUES ('1021', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-25 23:11:46');
INSERT INTO `syslog` VALUES ('1022', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-25 23:11:49');
INSERT INTO `syslog` VALUES ('1023', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:11:53');
INSERT INTO `syslog` VALUES ('1024', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 23:12:43');
INSERT INTO `syslog` VALUES ('1025', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:14:36');
INSERT INTO `syslog` VALUES ('1026', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:15:15');
INSERT INTO `syslog` VALUES ('1027', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:15:20');
INSERT INTO `syslog` VALUES ('1028', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:20:57');
INSERT INTO `syslog` VALUES ('1029', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:21:04');
INSERT INTO `syslog` VALUES ('1030', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:22:03');
INSERT INTO `syslog` VALUES ('1031', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 23:22:05');
INSERT INTO `syslog` VALUES ('1032', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:22:30');
INSERT INTO `syslog` VALUES ('1033', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:22:32');
INSERT INTO `syslog` VALUES ('1034', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:24:51');
INSERT INTO `syslog` VALUES ('1035', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:25:24');
INSERT INTO `syslog` VALUES ('1036', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:27:37');
INSERT INTO `syslog` VALUES ('1037', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:27:42');
INSERT INTO `syslog` VALUES ('1038', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:29:07');
INSERT INTO `syslog` VALUES ('1039', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 23:29:09');
INSERT INTO `syslog` VALUES ('1040', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:29:36');
INSERT INTO `syslog` VALUES ('1041', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:29:38');
INSERT INTO `syslog` VALUES ('1042', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:31:39');
INSERT INTO `syslog` VALUES ('1043', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 23:31:41');
INSERT INTO `syslog` VALUES ('1044', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:32:30');
INSERT INTO `syslog` VALUES ('1045', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:32:51');
INSERT INTO `syslog` VALUES ('1046', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:32:56');
INSERT INTO `syslog` VALUES ('1047', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:33:22');
INSERT INTO `syslog` VALUES ('1048', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:33:32');
INSERT INTO `syslog` VALUES ('1049', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:33:57');
INSERT INTO `syslog` VALUES ('1050', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:34:22');
INSERT INTO `syslog` VALUES ('1051', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 23:34:30');
INSERT INTO `syslog` VALUES ('1052', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:35:13');
INSERT INTO `syslog` VALUES ('1053', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 23:35:15');
INSERT INTO `syslog` VALUES ('1054', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:36:55');
INSERT INTO `syslog` VALUES ('1055', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 23:36:58');
INSERT INTO `syslog` VALUES ('1056', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:37:42');
INSERT INTO `syslog` VALUES ('1057', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:38:13');
INSERT INTO `syslog` VALUES ('1058', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-25 23:38:15');
INSERT INTO `syslog` VALUES ('1059', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-25 23:38:30');
INSERT INTO `syslog` VALUES ('1060', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-25 23:38:32');
INSERT INTO `syslog` VALUES ('1061', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-26 20:08:36');
INSERT INTO `syslog` VALUES ('1062', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-26 20:08:39');
INSERT INTO `syslog` VALUES ('1063', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-26 20:08:43');
INSERT INTO `syslog` VALUES ('1064', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-26 20:08:49');
INSERT INTO `syslog` VALUES ('1065', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-26 20:44:16');
INSERT INTO `syslog` VALUES ('1066', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-26 20:44:20');
INSERT INTO `syslog` VALUES ('1067', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-26 20:44:27');
INSERT INTO `syslog` VALUES ('1068', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-26 20:44:29');
INSERT INTO `syslog` VALUES ('1069', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-26 20:44:34');
INSERT INTO `syslog` VALUES ('1070', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-26 20:44:41');
INSERT INTO `syslog` VALUES ('1071', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-26 20:56:36');
INSERT INTO `syslog` VALUES ('1072', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-26 20:56:39');
INSERT INTO `syslog` VALUES ('1073', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-26 20:58:33');
INSERT INTO `syslog` VALUES ('1074', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-26 21:01:32');
INSERT INTO `syslog` VALUES ('1075', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 21:12:48');
INSERT INTO `syslog` VALUES ('1076', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 21:12:50');
INSERT INTO `syslog` VALUES ('1077', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:12:55');
INSERT INTO `syslog` VALUES ('1078', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-29 21:12:58');
INSERT INTO `syslog` VALUES ('1079', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=1&infodevno=10&depname=20&resperson=asdasd&devseclevel=asdsaad&propertyno=50&propertyown=60&devorigno=70&devno=asdsad&diskno=90&devstandard=100&starttime=2016-09-29 21:15:44&devname=110&ipaddress=120&vlan=130&mac=140&switchport=150&patchpanel=160&phylocation=170&osversion=180&osinstime=2016-09-28 21:15:48&cakeyno=190&networkmark=200&usedstatus=210&leaveTime=2016-09-29 21:15:52&remark=1111111&isInstall=是&', '127.0.0.1', '2016-09-29 21:15:56');
INSERT INTO `syslog` VALUES ('1080', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:26:27');
INSERT INTO `syslog` VALUES ('1081', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 21:26:30');
INSERT INTO `syslog` VALUES ('1082', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-28 21:26:37&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-28 21:26:41&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 21:26:45&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 21:26:49');
INSERT INTO `syslog` VALUES ('1083', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 21:31:01');
INSERT INTO `syslog` VALUES ('1084', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 21:31:02');
INSERT INTO `syslog` VALUES ('1085', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:31:07');
INSERT INTO `syslog` VALUES ('1086', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 21:31:10');
INSERT INTO `syslog` VALUES ('1087', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-14 21:31:15&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-27 21:31:20&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 21:31:23&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 21:31:26');
INSERT INTO `syslog` VALUES ('1088', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 21:32:42');
INSERT INTO `syslog` VALUES ('1089', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 21:32:44');
INSERT INTO `syslog` VALUES ('1090', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:32:48');
INSERT INTO `syslog` VALUES ('1091', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 21:32:51');
INSERT INTO `syslog` VALUES ('1092', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-29 21:32:56&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-28 21:33:01&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 21:33:05&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 21:33:07');
INSERT INTO `syslog` VALUES ('1093', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:35:13');
INSERT INTO `syslog` VALUES ('1094', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 21:35:15');
INSERT INTO `syslog` VALUES ('1095', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 21:36:34');
INSERT INTO `syslog` VALUES ('1096', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 21:36:39');
INSERT INTO `syslog` VALUES ('1097', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:36:43');
INSERT INTO `syslog` VALUES ('1098', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 21:36:46');
INSERT INTO `syslog` VALUES ('1099', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-22 21:36:56&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-29 21:37:01&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 21:37:03&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 21:37:06');
INSERT INTO `syslog` VALUES ('1100', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 21:39:24');
INSERT INTO `syslog` VALUES ('1101', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 21:39:27');
INSERT INTO `syslog` VALUES ('1102', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:39:33');
INSERT INTO `syslog` VALUES ('1103', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 21:39:36');
INSERT INTO `syslog` VALUES ('1104', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-29 21:39:41&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-28 21:39:45&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 21:39:49&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 21:39:52');
INSERT INTO `syslog` VALUES ('1105', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 21:43:01');
INSERT INTO `syslog` VALUES ('1106', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 21:43:02');
INSERT INTO `syslog` VALUES ('1107', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:43:06');
INSERT INTO `syslog` VALUES ('1108', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 21:43:08');
INSERT INTO `syslog` VALUES ('1109', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-29 21:43:14&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-29 21:43:18&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 21:43:21&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 21:43:24');
INSERT INTO `syslog` VALUES ('1110', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 21:50:55');
INSERT INTO `syslog` VALUES ('1111', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 21:50:58');
INSERT INTO `syslog` VALUES ('1112', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:51:02');
INSERT INTO `syslog` VALUES ('1113', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 21:51:04');
INSERT INTO `syslog` VALUES ('1114', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-29 21:51:09&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-28 21:51:13&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 21:51:17&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 21:51:21');
INSERT INTO `syslog` VALUES ('1115', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 21:54:51');
INSERT INTO `syslog` VALUES ('1116', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 21:54:54');
INSERT INTO `syslog` VALUES ('1117', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 21:54:58');
INSERT INTO `syslog` VALUES ('1118', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 21:55:00');
INSERT INTO `syslog` VALUES ('1119', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-22 21:55:05&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-21 21:55:09&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 21:55:12&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 21:55:15');
INSERT INTO `syslog` VALUES ('1120', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 22:00:48');
INSERT INTO `syslog` VALUES ('1121', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 22:00:50');
INSERT INTO `syslog` VALUES ('1122', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-29 22:00:56&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-29 22:00:58&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 22:01:00&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 22:01:11');
INSERT INTO `syslog` VALUES ('1123', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 22:02:11');
INSERT INTO `syslog` VALUES ('1124', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 22:05:32');
INSERT INTO `syslog` VALUES ('1125', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 22:05:41');
INSERT INTO `syslog` VALUES ('1126', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 22:05:45');
INSERT INTO `syslog` VALUES ('1127', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 22:05:47');
INSERT INTO `syslog` VALUES ('1128', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-29 22:05:52&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-29 22:05:55&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 22:05:57&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-29 22:05:59');
INSERT INTO `syslog` VALUES ('1129', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 22:24:35');
INSERT INTO `syslog` VALUES ('1130', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 22:24:37');
INSERT INTO `syslog` VALUES ('1131', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 22:30:34');
INSERT INTO `syslog` VALUES ('1132', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 22:30:37');
INSERT INTO `syslog` VALUES ('1133', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 22:33:53');
INSERT INTO `syslog` VALUES ('1134', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 22:33:55');
INSERT INTO `syslog` VALUES ('1135', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 22:35:45');
INSERT INTO `syslog` VALUES ('1136', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 22:35:48');
INSERT INTO `syslog` VALUES ('1137', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 22:38:21');
INSERT INTO `syslog` VALUES ('1138', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 22:38:25');
INSERT INTO `syslog` VALUES ('1139', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 22:40:35');
INSERT INTO `syslog` VALUES ('1140', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 22:40:37');
INSERT INTO `syslog` VALUES ('1141', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:editPage,[参数]:id=14&_=1475159749019&', '127.0.0.1', '2016-09-29 22:43:22');
INSERT INTO `syslog` VALUES ('1142', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.UserController,[方法]:addPage,[参数]:', null, '2016-09-29 22:45:56');
INSERT INTO `syslog` VALUES ('1143', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 22:53:50');
INSERT INTO `syslog` VALUES ('1144', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 22:53:52');
INSERT INTO `syslog` VALUES ('1145', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 22:58:08');
INSERT INTO `syslog` VALUES ('1146', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 22:58:09');
INSERT INTO `syslog` VALUES ('1147', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 23:01:06');
INSERT INTO `syslog` VALUES ('1148', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 23:01:08');
INSERT INTO `syslog` VALUES ('1149', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 23:01:22');
INSERT INTO `syslog` VALUES ('1150', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 23:01:24');
INSERT INTO `syslog` VALUES ('1151', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 23:14:26');
INSERT INTO `syslog` VALUES ('1152', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 23:14:28');
INSERT INTO `syslog` VALUES ('1153', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 23:19:31');
INSERT INTO `syslog` VALUES ('1154', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 23:19:33');
INSERT INTO `syslog` VALUES ('1155', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 23:21:18');
INSERT INTO `syslog` VALUES ('1156', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 23:21:21');
INSERT INTO `syslog` VALUES ('1157', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 23:21:25');
INSERT INTO `syslog` VALUES ('1158', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 23:21:28');
INSERT INTO `syslog` VALUES ('1159', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 23:27:09');
INSERT INTO `syslog` VALUES ('1160', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 23:27:14');
INSERT INTO `syslog` VALUES ('1161', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 23:27:20');
INSERT INTO `syslog` VALUES ('1162', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 23:27:22');
INSERT INTO `syslog` VALUES ('1163', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-29 23:27:57');
INSERT INTO `syslog` VALUES ('1164', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-29 23:27:59');
INSERT INTO `syslog` VALUES ('1165', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-29 23:28:03');
INSERT INTO `syslog` VALUES ('1166', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-29 23:28:05');
INSERT INTO `syslog` VALUES ('1167', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-29 23:28:37');
INSERT INTO `syslog` VALUES ('1168', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 20:36:02');
INSERT INTO `syslog` VALUES ('1169', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-09-30 20:36:05');
INSERT INTO `syslog` VALUES ('1170', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-30 20:51:18');
INSERT INTO `syslog` VALUES ('1171', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-30 20:51:20');
INSERT INTO `syslog` VALUES ('1172', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 20:51:27');
INSERT INTO `syslog` VALUES ('1173', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 20:51:29');
INSERT INTO `syslog` VALUES ('1174', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 20:52:26');
INSERT INTO `syslog` VALUES ('1175', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 20:52:30');
INSERT INTO `syslog` VALUES ('1176', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-30 20:57:15');
INSERT INTO `syslog` VALUES ('1177', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-30 20:57:17');
INSERT INTO `syslog` VALUES ('1178', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 20:57:22');
INSERT INTO `syslog` VALUES ('1179', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 20:57:25');
INSERT INTO `syslog` VALUES ('1180', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-30 21:15:02');
INSERT INTO `syslog` VALUES ('1181', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-30 21:15:05');
INSERT INTO `syslog` VALUES ('1182', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 21:15:53');
INSERT INTO `syslog` VALUES ('1183', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 21:15:55');
INSERT INTO `syslog` VALUES ('1184', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-09-30 21:17:15');
INSERT INTO `syslog` VALUES ('1185', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-09-30 21:17:16');
INSERT INTO `syslog` VALUES ('1186', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 21:17:21');
INSERT INTO `syslog` VALUES ('1187', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 21:17:24');
INSERT INTO `syslog` VALUES ('1188', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 21:22:54');
INSERT INTO `syslog` VALUES ('1189', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 21:22:56');
INSERT INTO `syslog` VALUES ('1190', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 21:27:12');
INSERT INTO `syslog` VALUES ('1191', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 21:27:15');
INSERT INTO `syslog` VALUES ('1192', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=12345&change_content=没有理由&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-30 22:05:52&devname=2&ipaddress=2&vlan=2&mac=2&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-29 22:05:55&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 22:05:57&remark=2&isInstall=20000&', '127.0.0.1', '2016-09-30 21:27:54');
INSERT INTO `syslog` VALUES ('1193', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 22:17:31');
INSERT INTO `syslog` VALUES ('1194', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 22:18:15');
INSERT INTO `syslog` VALUES ('1195', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 22:20:03');
INSERT INTO `syslog` VALUES ('1196', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 22:20:07');
INSERT INTO `syslog` VALUES ('1197', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 22:20:23');
INSERT INTO `syslog` VALUES ('1198', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-09-30 22:23:54');
INSERT INTO `syslog` VALUES ('1199', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-09-30 22:23:58');
INSERT INTO `syslog` VALUES ('1200', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-01 19:50:28');
INSERT INTO `syslog` VALUES ('1201', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-01 19:50:30');
INSERT INTO `syslog` VALUES ('1202', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-01 19:51:02');
INSERT INTO `syslog` VALUES ('1203', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=台帐新增&resourcetype=0&url=&seq=1&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-01 19:51:31');
INSERT INTO `syslog` VALUES ('1204', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-01 19:51:39');
INSERT INTO `syslog` VALUES ('1205', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/changeOrder/dataGrid&seq=0&icon=icon-list&status=0&pid=313&', '127.0.0.1', '2016-10-01 19:53:14');
INSERT INTO `syslog` VALUES ('1206', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-01 19:53:23');
INSERT INTO `syslog` VALUES ('1207', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/changeOrder/add&seq=1&icon=icon-add&status=0&pid=313&', '127.0.0.1', '2016-10-01 19:54:28');
INSERT INTO `syslog` VALUES ('1208', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=315&_=1475322631169&', '127.0.0.1', '2016-10-01 19:54:52');
INSERT INTO `syslog` VALUES ('1209', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=315&name=添加&resourcetype=1&url=/changeOrder/orderAdd&seq=1&icon=icon-add&status=0&pid=313&', '127.0.0.1', '2016-10-01 19:55:09');
INSERT INTO `syslog` VALUES ('1210', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=313&', '127.0.0.1', '2016-10-01 19:58:07');
INSERT INTO `syslog` VALUES ('1211', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-01 20:04:30');
INSERT INTO `syslog` VALUES ('1212', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-01 20:04:33');
INSERT INTO `syslog` VALUES ('1213', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:06:12');
INSERT INTO `syslog` VALUES ('1214', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-01 20:07:57');
INSERT INTO `syslog` VALUES ('1215', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密计算机台帐&keys_=computerManage&url=/computerManage/changeAddPage&description=新增&', '127.0.0.1', '2016-10-01 20:08:18');
INSERT INTO `syslog` VALUES ('1216', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:09:25');
INSERT INTO `syslog` VALUES ('1217', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:10:51');
INSERT INTO `syslog` VALUES ('1218', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:11:44');
INSERT INTO `syslog` VALUES ('1219', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:14:01');
INSERT INTO `syslog` VALUES ('1220', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:16:06');
INSERT INTO `syslog` VALUES ('1221', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-01 20:16:16');
INSERT INTO `syslog` VALUES ('1222', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-01 20:16:20');
INSERT INTO `syslog` VALUES ('1223', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-01 20:16:32');
INSERT INTO `syslog` VALUES ('1224', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:16:36');
INSERT INTO `syslog` VALUES ('1225', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:17:08');
INSERT INTO `syslog` VALUES ('1226', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:18:39');
INSERT INTO `syslog` VALUES ('1227', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:20:41');
INSERT INTO `syslog` VALUES ('1228', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:21:14');
INSERT INTO `syslog` VALUES ('1229', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-01 20:22:05');
INSERT INTO `syslog` VALUES ('1230', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-01 20:22:10');
INSERT INTO `syslog` VALUES ('1231', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:27:04');
INSERT INTO `syslog` VALUES ('1232', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-01 20:39:57');
INSERT INTO `syslog` VALUES ('1233', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-01 20:39:59');
INSERT INTO `syslog` VALUES ('1234', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=315&', '127.0.0.1', '2016-10-01 20:43:26');
INSERT INTO `syslog` VALUES ('1235', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:delete,[参数]:id=314&', '127.0.0.1', '2016-10-01 20:43:46');
INSERT INTO `syslog` VALUES ('1236', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-01 20:44:09');
INSERT INTO `syslog` VALUES ('1237', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=确定&resourcetype=1&url=/changeOrder/confirm&seq=4&icon=icon-save&status=0&pid=309&', '127.0.0.1', '2016-10-01 20:45:05');
INSERT INTO `syslog` VALUES ('1238', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1475325600237&', '127.0.0.1', '2016-10-01 20:45:19');
INSERT INTO `syslog` VALUES ('1239', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316&', '127.0.0.1', '2016-10-01 20:45:24');
INSERT INTO `syslog` VALUES ('1240', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-01 20:45:27');
INSERT INTO `syslog` VALUES ('1241', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-01 20:49:50');
INSERT INTO `syslog` VALUES ('1242', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-01 20:49:54');
INSERT INTO `syslog` VALUES ('1243', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:49:59');
INSERT INTO `syslog` VALUES ('1244', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 20:54:16');
INSERT INTO `syslog` VALUES ('1245', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-01 20:56:40');
INSERT INTO `syslog` VALUES ('1246', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-01 20:56:42');
INSERT INTO `syslog` VALUES ('1247', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-01 20:56:48');
INSERT INTO `syslog` VALUES ('1248', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-01 20:56:51');
INSERT INTO `syslog` VALUES ('1249', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-01 20:57:51');
INSERT INTO `syslog` VALUES ('1250', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-01 20:57:55');
INSERT INTO `syslog` VALUES ('1251', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-01 20:58:48');
INSERT INTO `syslog` VALUES ('1252', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-01 20:58:51');
INSERT INTO `syslog` VALUES ('1253', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-01 21:00:12');
INSERT INTO `syslog` VALUES ('1254', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-01 21:00:16');
INSERT INTO `syslog` VALUES ('1255', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=WH10001&change_content=没有理由&id=1&infodevno=&depname=20&resperson=asdasd&devseclevel=asdsaad&propertyno=50&propertyown=60&devorigno=70&devno=asdsad&diskno=90&devstandard=100&starttime=2016-08-17 21:19:04&devname=110&ipaddress=120&vlan=130&mac=140&switchport=150&patchpanel=160&phylocation=170&osversion=180&osinstime=2016-08-17 21:19:39&cakeyno=190&networkmark=200&usedstatus=210&leaveTime=2016-08-17 21:19:39&remark=1111111&isInstall=是&', '127.0.0.1', '2016-10-01 21:00:30');
INSERT INTO `syslog` VALUES ('1256', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:delete,[参数]:id=4&', '127.0.0.1', '2016-10-01 21:00:37');
INSERT INTO `syslog` VALUES ('1257', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:delete,[参数]:id=4&', '127.0.0.1', '2016-10-01 21:01:11');
INSERT INTO `syslog` VALUES ('1258', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-01 21:07:45');
INSERT INTO `syslog` VALUES ('1259', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 21:07:48');
INSERT INTO `syslog` VALUES ('1260', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 21:10:14');
INSERT INTO `syslog` VALUES ('1261', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-01 21:10:56');
INSERT INTO `syslog` VALUES ('1262', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-01 21:10:59');
INSERT INTO `syslog` VALUES ('1263', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 21:12:58');
INSERT INTO `syslog` VALUES ('1264', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-01 21:18:17');
INSERT INTO `syslog` VALUES ('1265', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-01 21:18:19');
INSERT INTO `syslog` VALUES ('1266', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 21:18:24');
INSERT INTO `syslog` VALUES ('1267', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-01 22:07:33');
INSERT INTO `syslog` VALUES ('1268', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-01 22:07:33');
INSERT INTO `syslog` VALUES ('1269', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-01 22:07:35');
INSERT INTO `syslog` VALUES ('1270', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 22:07:39');
INSERT INTO `syslog` VALUES ('1271', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-01 22:18:36');
INSERT INTO `syslog` VALUES ('1272', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-02 11:18:50');
INSERT INTO `syslog` VALUES ('1273', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-02 11:18:52');
INSERT INTO `syslog` VALUES ('1274', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-02 11:18:57');
INSERT INTO `syslog` VALUES ('1275', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-02 11:20:52');
INSERT INTO `syslog` VALUES ('1276', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-02 11:33:28');
INSERT INTO `syslog` VALUES ('1277', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-02 11:34:59');
INSERT INTO `syslog` VALUES ('1278', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-02 11:35:03');
INSERT INTO `syslog` VALUES ('1279', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-02 11:35:37');
INSERT INTO `syslog` VALUES ('1280', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-02 11:35:40');
INSERT INTO `syslog` VALUES ('1281', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-02 11:35:55');
INSERT INTO `syslog` VALUES ('1282', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-02 11:50:13');
INSERT INTO `syslog` VALUES ('1283', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-02 11:50:17');
INSERT INTO `syslog` VALUES ('1284', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-02 11:52:38');
INSERT INTO `syslog` VALUES ('1285', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:delete,[参数]:id=4&', '127.0.0.1', '2016-10-02 11:52:51');
INSERT INTO `syslog` VALUES ('1286', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:delete,[参数]:id=3&', '127.0.0.1', '2016-10-02 11:53:12');
INSERT INTO `syslog` VALUES ('1287', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-03 12:17:29');
INSERT INTO `syslog` VALUES ('1288', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-03 12:17:32');
INSERT INTO `syslog` VALUES ('1289', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-03 13:13:11');
INSERT INTO `syslog` VALUES ('1290', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-03 13:13:13');
INSERT INTO `syslog` VALUES ('1291', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=14&', '127.0.0.1', '2016-10-03 13:13:22');
INSERT INTO `syslog` VALUES ('1292', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=14&', '127.0.0.1', '2016-10-03 13:14:48');
INSERT INTO `syslog` VALUES ('1293', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=14&', '127.0.0.1', '2016-10-03 13:15:28');
INSERT INTO `syslog` VALUES ('1294', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=14&', '127.0.0.1', '2016-10-03 13:34:30');
INSERT INTO `syslog` VALUES ('1295', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=14&', '127.0.0.1', '2016-10-03 13:37:01');
INSERT INTO `syslog` VALUES ('1296', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 13:39:10');
INSERT INTO `syslog` VALUES ('1297', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 13:43:48');
INSERT INTO `syslog` VALUES ('1298', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 13:45:02');
INSERT INTO `syslog` VALUES ('1299', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:02:37');
INSERT INTO `syslog` VALUES ('1300', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:05:01');
INSERT INTO `syslog` VALUES ('1301', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:10:10');
INSERT INTO `syslog` VALUES ('1302', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:11:24');
INSERT INTO `syslog` VALUES ('1303', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:13:36');
INSERT INTO `syslog` VALUES ('1304', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-03 14:15:49');
INSERT INTO `syslog` VALUES ('1305', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-03 14:15:51');
INSERT INTO `syslog` VALUES ('1306', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:16:00');
INSERT INTO `syslog` VALUES ('1307', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:17:17');
INSERT INTO `syslog` VALUES ('1308', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:19:18');
INSERT INTO `syslog` VALUES ('1309', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:20:06');
INSERT INTO `syslog` VALUES ('1310', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:21:34');
INSERT INTO `syslog` VALUES ('1311', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:22:12');
INSERT INTO `syslog` VALUES ('1312', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:25:59');
INSERT INTO `syslog` VALUES ('1313', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:26:28');
INSERT INTO `syslog` VALUES ('1314', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:28:27');
INSERT INTO `syslog` VALUES ('1315', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:29:11');
INSERT INTO `syslog` VALUES ('1316', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:32:53');
INSERT INTO `syslog` VALUES ('1317', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:33:47');
INSERT INTO `syslog` VALUES ('1318', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:39:12');
INSERT INTO `syslog` VALUES ('1319', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:42:30');
INSERT INTO `syslog` VALUES ('1320', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:46:06');
INSERT INTO `syslog` VALUES ('1321', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:47:06');
INSERT INTO `syslog` VALUES ('1322', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:48:14');
INSERT INTO `syslog` VALUES ('1323', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:48:34');
INSERT INTO `syslog` VALUES ('1324', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:49:22');
INSERT INTO `syslog` VALUES ('1325', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 14:59:53');
INSERT INTO `syslog` VALUES ('1326', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:01:09');
INSERT INTO `syslog` VALUES ('1327', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:10:16');
INSERT INTO `syslog` VALUES ('1328', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-03 15:11:50');
INSERT INTO `syslog` VALUES ('1329', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:12:00');
INSERT INTO `syslog` VALUES ('1330', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-03 15:15:20');
INSERT INTO `syslog` VALUES ('1331', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-03 15:15:23');
INSERT INTO `syslog` VALUES ('1332', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:15:31');
INSERT INTO `syslog` VALUES ('1333', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:16:10');
INSERT INTO `syslog` VALUES ('1334', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:17:55');
INSERT INTO `syslog` VALUES ('1335', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:20:28');
INSERT INTO `syslog` VALUES ('1336', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:20:54');
INSERT INTO `syslog` VALUES ('1337', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:22:36');
INSERT INTO `syslog` VALUES ('1338', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-03 15:26:45');
INSERT INTO `syslog` VALUES ('1339', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-03 15:26:47');
INSERT INTO `syslog` VALUES ('1340', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:26:59');
INSERT INTO `syslog` VALUES ('1341', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:28:52');
INSERT INTO `syslog` VALUES ('1342', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:30:05');
INSERT INTO `syslog` VALUES ('1343', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:30:52');
INSERT INTO `syslog` VALUES ('1344', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:31:34');
INSERT INTO `syslog` VALUES ('1345', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-03 15:37:34');
INSERT INTO `syslog` VALUES ('1346', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-03 15:37:37');
INSERT INTO `syslog` VALUES ('1347', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:37:45');
INSERT INTO `syslog` VALUES ('1348', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-03 15:38:56');
INSERT INTO `syslog` VALUES ('1349', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-03 15:38:58');
INSERT INTO `syslog` VALUES ('1350', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:39:04');
INSERT INTO `syslog` VALUES ('1351', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:39:41');
INSERT INTO `syslog` VALUES ('1352', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:41:33');
INSERT INTO `syslog` VALUES ('1353', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-03 15:45:58');
INSERT INTO `syslog` VALUES ('1354', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-03 15:46:15');
INSERT INTO `syslog` VALUES ('1355', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-03 15:46:19');
INSERT INTO `syslog` VALUES ('1356', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 15:56:15');
INSERT INTO `syslog` VALUES ('1357', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-03 16:06:57');
INSERT INTO `syslog` VALUES ('1358', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&mac=50:7B:9D:77:F0:62&', '127.0.0.1', '2016-10-07 13:09:38');
INSERT INTO `syslog` VALUES ('1359', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-07 13:38:43');
INSERT INTO `syslog` VALUES ('1360', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-07 13:38:45');
INSERT INTO `syslog` VALUES ('1361', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-07 13:40:08');
INSERT INTO `syslog` VALUES ('1362', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-07 13:40:13');
INSERT INTO `syslog` VALUES ('1363', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-07 13:48:44');
INSERT INTO `syslog` VALUES ('1364', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-07 13:48:46');
INSERT INTO `syslog` VALUES ('1365', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-07 13:54:58');
INSERT INTO `syslog` VALUES ('1366', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-07 13:55:00');
INSERT INTO `syslog` VALUES ('1367', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-07 14:16:40');
INSERT INTO `syslog` VALUES ('1368', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-07 14:55:11');
INSERT INTO `syslog` VALUES ('1369', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-07 14:55:11');
INSERT INTO `syslog` VALUES ('1370', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-07 14:55:12');
INSERT INTO `syslog` VALUES ('1371', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=231&_=1475823312795&', '127.0.0.1', '2016-10-07 14:55:38');
INSERT INTO `syslog` VALUES ('1372', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=231&name=详情&resourcetype=1&url=/computerManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=228&', '127.0.0.1', '2016-10-07 14:55:52');
INSERT INTO `syslog` VALUES ('1373', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-07 15:30:23');
INSERT INTO `syslog` VALUES ('1374', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-07 15:30:31');
INSERT INTO `syslog` VALUES ('1375', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 20:17:53');
INSERT INTO `syslog` VALUES ('1376', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 20:17:55');
INSERT INTO `syslog` VALUES ('1377', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-08 20:18:10');
INSERT INTO `syslog` VALUES ('1378', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-08 20:19:21');
INSERT INTO `syslog` VALUES ('1379', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-08 20:19:29');
INSERT INTO `syslog` VALUES ('1380', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-08 20:19:53');
INSERT INTO `syslog` VALUES ('1381', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-08 20:19:57');
INSERT INTO `syslog` VALUES ('1382', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=8&', '127.0.0.1', '2016-10-08 20:20:21');
INSERT INTO `syslog` VALUES ('1383', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-08 20:20:23');
INSERT INTO `syslog` VALUES ('1384', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=8&_=1475929076363&', '127.0.0.1', '2016-10-08 20:21:30');
INSERT INTO `syslog` VALUES ('1385', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-08 20:23:55');
INSERT INTO `syslog` VALUES ('1386', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-08 20:23:59');
INSERT INTO `syslog` VALUES ('1387', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-08 20:24:23');
INSERT INTO `syslog` VALUES ('1388', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-08 20:24:27');
INSERT INTO `syslog` VALUES ('1389', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:delete,[参数]:id=5&', '127.0.0.1', '2016-10-08 20:27:18');
INSERT INTO `syslog` VALUES ('1390', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:delete,[参数]:id=2&', '127.0.0.1', '2016-10-08 20:31:31');
INSERT INTO `syslog` VALUES ('1391', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-08 20:31:36');
INSERT INTO `syslog` VALUES ('1392', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-08 20:31:39');
INSERT INTO `syslog` VALUES ('1393', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=WH10001&change_content=修改&id=7&infodevno=2&depname=3&resperson=2&devseclevel=2&propertyno=2&propertyown=2&devorigno=2&devno=2&diskno=2&devstandard=2&starttime=2016-09-30 22:05:52&devname=2&ipaddress=2&vlan=2&mac=50:7B:9D:77:F0:62&switchport=2&patchpanel=2&phylocation=2&osversion=2&osinstime=2016-09-29 22:05:55&cakeyno=2&networkmark=2&usedstatus=2&leaveTime=2016-09-29 22:05:57&remark=2&isInstall=20000&', '127.0.0.1', '2016-10-08 20:31:51');
INSERT INTO `syslog` VALUES ('1394', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 20:34:37');
INSERT INTO `syslog` VALUES ('1395', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 20:34:39');
INSERT INTO `syslog` VALUES ('1396', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 20:36:31');
INSERT INTO `syslog` VALUES ('1397', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 20:36:33');
INSERT INTO `syslog` VALUES ('1398', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 20:41:25');
INSERT INTO `syslog` VALUES ('1399', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 20:41:27');
INSERT INTO `syslog` VALUES ('1400', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-08 20:51:44');
INSERT INTO `syslog` VALUES ('1401', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-08 20:51:47');
INSERT INTO `syslog` VALUES ('1402', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-08 20:56:37');
INSERT INTO `syslog` VALUES ('1403', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=7&', '127.0.0.1', '2016-10-08 20:56:42');
INSERT INTO `syslog` VALUES ('1404', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 21:13:08');
INSERT INTO `syslog` VALUES ('1405', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 21:13:10');
INSERT INTO `syslog` VALUES ('1406', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-08 21:13:25');
INSERT INTO `syslog` VALUES ('1407', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-08 21:16:35');
INSERT INTO `syslog` VALUES ('1408', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-08 21:18:25');
INSERT INTO `syslog` VALUES ('1409', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-08 21:19:05');
INSERT INTO `syslog` VALUES ('1410', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=2&_=1475932391014&', '127.0.0.1', '2016-10-08 21:21:43');
INSERT INTO `syslog` VALUES ('1411', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-08 21:21:48');
INSERT INTO `syslog` VALUES ('1412', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密计算机台帐&keys_=computerManage&url=/computerManage/returnPage&description=清退&', '127.0.0.1', '2016-10-08 21:22:30');
INSERT INTO `syslog` VALUES ('1413', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:delete,[参数]:id=7&', '127.0.0.1', '2016-10-08 21:41:55');
INSERT INTO `syslog` VALUES ('1414', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:delete,[参数]:id=8&', '127.0.0.1', '2016-10-08 21:41:57');
INSERT INTO `syslog` VALUES ('1415', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 22:14:23');
INSERT INTO `syslog` VALUES ('1416', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 22:14:26');
INSERT INTO `syslog` VALUES ('1417', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 22:16:08');
INSERT INTO `syslog` VALUES ('1418', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 22:16:12');
INSERT INTO `syslog` VALUES ('1419', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 22:23:37');
INSERT INTO `syslog` VALUES ('1420', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 22:23:39');
INSERT INTO `syslog` VALUES ('1421', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-08 22:26:33');
INSERT INTO `syslog` VALUES ('1422', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 22:35:37');
INSERT INTO `syslog` VALUES ('1423', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 22:35:38');
INSERT INTO `syslog` VALUES ('1424', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-08 22:37:51');
INSERT INTO `syslog` VALUES ('1425', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-08 22:37:53');
INSERT INTO `syslog` VALUES ('1426', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-08 22:37:59');
INSERT INTO `syslog` VALUES ('1427', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-08 22:38:03');
INSERT INTO `syslog` VALUES ('1428', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=BG001&change_content=修改&id=10&infodevno=BH001&depname=数据部&resperson=张三&devseclevel=高级&propertyno=ZC001&propertyown=数据部&devorigno=CH100&devno=XH100&diskno=DW100&devstandard=最好&starttime=2016-10-08 22:27:51&devname=拉丁&ipaddress=192.168.31.213&vlan=VLAN&mac=50:7B:9D:77:F0:62&switchport=8080&patchpanel=三楼左三&phylocation=三楼201&osversion=windows10&osinstime=2016-10-04 22:29:15&cakeyno=key100&networkmark=无&usedstatus=正常&leaveTime=2016-10-25 22:29:33&remark=无&isInstall=是&', '127.0.0.1', '2016-10-08 22:38:21');
INSERT INTO `syslog` VALUES ('1429', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-08 22:41:08');
INSERT INTO `syslog` VALUES ('1430', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-08 22:41:14');
INSERT INTO `syslog` VALUES ('1431', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-08 22:41:18');

-- ----------------------------
-- Table structure for unsechostinfo
-- ----------------------------
DROP TABLE IF EXISTS `unsechostinfo`;
CREATE TABLE `unsechostinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informdevno` varchar(200) DEFAULT NULL,
  `departname` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `seclevel` varchar(200) DEFAULT NULL,
  `assetsno` varchar(100) DEFAULT NULL,
  `assersown` varchar(100) DEFAULT NULL,
  `equipmentno` varchar(200) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
  `diskno` varchar(200) DEFAULT NULL,
  `specification` varchar(200) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `ipaddress` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `location` varchar(1000) DEFAULT NULL,
  `osversion` varchar(100) DEFAULT NULL,
  `osinstaltime` datetime DEFAULT NULL,
  `surfcertif` varchar(200) DEFAULT NULL,
  `usestatus` varchar(200) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unsechostinfo
-- ----------------------------
INSERT INTO `unsechostinfo` VALUES ('1', '2', '3', '4', '15', 'ad', 'sd', 'sd', 'sd', 'dfsd', 'sds', '2016-09-01 21:49:16', 'sddsd', 'sdsdfds', 'sdsdsd', 'sdsdsd', '2016-08-30 21:49:24', 'sdsdsd', 'sdssdsd', '123');

-- ----------------------------
-- Table structure for unsecprintinfo
-- ----------------------------
DROP TABLE IF EXISTS `unsecprintinfo`;
CREATE TABLE `unsecprintinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequenceno` varchar(200) DEFAULT NULL,
  `roomno` varchar(200) DEFAULT NULL,
  `informdevno` varchar(200) DEFAULT NULL,
  `newassetnum` varchar(200) DEFAULT NULL,
  `resdepart` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `brand` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `specifications` varchar(200) DEFAULT NULL,
  `serialno` varchar(200) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `devseclevel` varchar(200) DEFAULT NULL,
  `usemethod` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `accesspoint` varchar(200) DEFAULT NULL,
  `ipaddress` varchar(200) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `paycardinfo` varchar(200) DEFAULT NULL,
  `payhostip` varchar(100) DEFAULT NULL,
  `paymac` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unsecprintinfo
-- ----------------------------
INSERT INTO `unsecprintinfo` VALUES ('1', 'sdf', 'sdf', 'sdf', ' dfsf', 'sdf', ' dsfsdf', 'sfd', 'sfd', 'sdf', 'sdf', '2016-09-07 20:30:18', ' sdfdf', 'ssdf', 'sdfsdf', 'sf', 'sdf', null, 'sdfsdf', 'sdfsdf', '内推网', '内推网内推网内推网');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `sex` tinyint(2) NOT NULL DEFAULT '0',
  `age` tinyint(2) DEFAULT '0',
  `usertype` tinyint(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `organization_id` int(11) NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '202cb962ac59075b964b07152d234b70', '0', '25', '0', '0', '1', '2016-08-15 22:13:42', '18707173376');
INSERT INTO `user` VALUES ('13', 'snoopy', 'snoopy', '098f6bcd4621d373cade4e832627b4f6', '0', '25', '1', '0', '3', '2015-10-01 13:12:07', '18707173376');
INSERT INTO `user` VALUES ('14', 'dreamlu', 'dreamlu', '098f6bcd4621d373cade4e832627b4f6', '0', '25', '1', '0', '5', '2015-10-11 23:12:58', '18707173376');
INSERT INTO `user` VALUES ('15', 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', '0', '25', '1', '0', '6', '2015-12-06 13:13:03', '18707173376');
INSERT INTO `user` VALUES ('16', 'zkt', 'zkt', 'd41d8cd98f00b204e9800998ecf8427e', '0', null, '0', '0', '6', '2016-08-15 22:20:59', '');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) NOT NULL,
  `role_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('53', '15', '8');
INSERT INTO `user_role` VALUES ('60', '1', '1');
INSERT INTO `user_role` VALUES ('61', '1', '2');
INSERT INTO `user_role` VALUES ('62', '1', '7');
INSERT INTO `user_role` VALUES ('63', '13', '2');
INSERT INTO `user_role` VALUES ('64', '14', '7');
INSERT INTO `user_role` VALUES ('68', '16', '1');
