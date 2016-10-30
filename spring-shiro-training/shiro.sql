/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2016-10-30 22:32:52
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
  `status` varchar(100) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attendanceinfo
-- ----------------------------
INSERT INTO `attendanceinfo` VALUES ('1', 'sd', 'sada,asadsda,sada,asadsda', 'adss', 'asdasd', 'asdda', 'asdad', 'aasdadsasd', null, 'adsas', null, 'adsad', '2016-09-07 20:34:56', 'asdasd', '22222222', null, null, null);
INSERT INTO `attendanceinfo` VALUES ('2', '数据部', 'XH100,高级', '数据部', '设备名称', '张三', '张三', 'BH100', null, '阿斯阿斯', null, '北京', '2016-10-30 21:34:43', '良好', '无', '0', '2016-10-30 21:34:51', '37621608-f931-4601-acaf-af03eaf3d7d3');

-- ----------------------------
-- Table structure for biosinfo
-- ----------------------------
DROP TABLE IF EXISTS `biosinfo`;
CREATE TABLE `biosinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `BIOSVersion` varchar(100) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biosinfo
-- ----------------------------
INSERT INTO `biosinfo` VALUES ('4', '192.168.31.213', '50:7B:9D:77:F0:62', 'LENOVO', 'InsydeH2O Version 05.05.260KCN23WW', '{\"LENOVO - 1\",\"InsydeH2O Version 05.05.260KCN23WW\",\"InsydeH2O Version 05.05.260KCN23WW\"}', '2016-07-24 12:30:47');
INSERT INTO `biosinfo` VALUES ('5', '169.254.139.125', '50:7B:9D:77:F0:62', 'LENOVO', 'InsydeH2O Version 05.05.260KCN23WW', '{\"LENOVO - 1\",\"InsydeH2O Version 05.05.260KCN23WW\",\"InsydeH2O Version 05.05.260KCN23WW\"}', '2016-07-24 12:31:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of change_history
-- ----------------------------
INSERT INTO `change_history` VALUES ('12', null, '1', '2016-10-08 22:42:04', '清退台帐', null, 'QT10001', '31c322fc-2691-4987-9b2e-aed72a77b6cf', '清退', '0', '11', 'computermanage');
INSERT INTO `change_history` VALUES ('15', null, '1', '2016-10-22 19:25:44', '新增变更单', null, 'WH10001', '2b6b8682-920a-47aa-aaa6-6741c827a064', '新增', '1', 'null', 'servermanage');
INSERT INTO `change_history` VALUES ('16', null, '1', '2016-10-27 20:20:52', '新增计算机内网台账变更单', null, 'WH10001', 'aa24aacb-79b5-4733-a719-fd201d0faf74', '新增', '0', 'null', 'servermanage');
INSERT INTO `change_history` VALUES ('20', null, '1', '2016-10-27 21:13:08', '新增安全产品台帐变更单', null, 'QT10001', '8f31fbae-226a-4569-9123-b6341079654c', '新增', '0', 'null', 'secproductinfo');
INSERT INTO `change_history` VALUES ('21', null, '1', '2016-10-27 21:50:19', '新增中间转换机台帐变更单', null, 'BG001', '387f4437-dbca-45fc-8b8d-7cd5b7074fcf', '新增', '0', 'null', 'convertinfo');
INSERT INTO `change_history` VALUES ('22', null, '1', '2016-10-27 22:21:30', '新增中间转换机台帐变更单', null, 'QT10001', '35f88f63-bb0d-45eb-81c2-5b3f0d491618', '新增', '0', 'null', 'convertinfo');
INSERT INTO `change_history` VALUES ('23', null, '1', '2016-10-28 20:48:52', '新增中间转换机台帐变更单', null, 'QT10001', '022ec3c6-7e39-4f3c-b4c5-a9e06f61f6db', '新增', '0', 'null', 'convertinfo');
INSERT INTO `change_history` VALUES ('24', null, '1', '2016-10-28 20:51:13', '新增安全产品台帐变更单', null, 'QT10001', 'd6aa467d-3010-4f1e-9ebf-b32288b29e11', '新增', '0', 'null', 'secproductinfo');
INSERT INTO `change_history` VALUES ('25', null, '1', '2016-10-28 20:57:29', '新增交换机台帐变更单', null, 'WH10001', '6fcf6855-0b15-4c8c-8fa1-8494e7d25d95', '新增', '0', 'null', 'switchInfo');
INSERT INTO `change_history` VALUES ('26', null, '1', '2016-10-28 23:15:40', '新增交换机台帐变更单', null, 'WH10001', '9a1314a5-ccb2-45c8-b698-22e64bc24a11', '新增', '0', 'null', 'switchInfo');
INSERT INTO `change_history` VALUES ('27', null, '1', '2016-10-28 23:32:11', '新增涉密单机台帐变更单', null, 'WH10001', '5abf80d4-b53b-4c55-97da-b3df64909377', '新增', '0', 'null', 'sechostinfo');
INSERT INTO `change_history` VALUES ('28', null, '1', '2016-10-28 23:47:34', '新增非涉密单机台帐变更单', null, 'WH10001', '6b477f18-ae63-4efb-a1c1-1fe0e0ea783b', '新增', '0', 'null', 'unsechostinfo');
INSERT INTO `change_history` VALUES ('29', null, '1', '2016-10-29 00:13:57', '新增互联网计算机台帐变更单', null, 'WH10001', '7cbf0220-53f1-43a5-972e-be70fdf10a5d', '新增', '0', 'null', 'internetinfo');
INSERT INTO `change_history` VALUES ('34', null, '1', '2016-10-29 19:26:38', '新增内网打印机台帐变更单', null, 'WH10001', 'a99d0312-5999-420d-9c6b-75f2c01871a5', '新增', '1', 'null', 'printinfo');
INSERT INTO `change_history` VALUES ('37', null, '1', '2016-10-29 20:04:05', '新增非密直连打印机台帐变更单', null, 'WH10001', 'd1694ab6-53c3-4cff-a6cd-eb38f44b83e8', '新增', '0', 'null', 'unsecprintinfo');
INSERT INTO `change_history` VALUES ('38', null, '1', '2016-10-29 20:10:59', '新增直连绘图仪台帐变更单', null, 'WH10001', 'd8378d75-1985-491a-90d4-4d3ff7c17b3a', '新增', '0', 'null', 'plotterinfo');
INSERT INTO `change_history` VALUES ('39', null, '1', '2016-10-29 20:17:04', '新增直连绘图仪台帐变更单', null, 'WH10001', 'a70b6601-460f-4faa-8f06-3998816db869', '新增', '0', 'null', 'plotterinfo');
INSERT INTO `change_history` VALUES ('40', null, '1', '2016-10-29 20:40:18', '新增便携式计算机台帐变更单', null, 'WH10001', '57368a5a-5c9d-4c91-ab8b-dd9465b9fc6c', '新增', '0', 'null', 'notepadinfo');
INSERT INTO `change_history` VALUES ('41', null, '1', '2016-10-29 20:46:56', '新增办公自动化设备台帐变更单', null, 'WH10001', '0f5726dc-221d-414b-a466-6e8408cd977e', '新增', '0', 'null', 'oaautoinfo');
INSERT INTO `change_history` VALUES ('42', null, '1', '2016-10-30 17:23:21', '涉密计算计算机台帐变更', null, 'WH10001', '688dc9b2-0e09-48bd-b9b2-2c6c4e171478', '修改', '0', '10', 'computermanage');
INSERT INTO `change_history` VALUES ('43', null, '1', '2016-10-30 20:23:55', '修改服务器台账变更单', null, 'WH10001', 'ed537819-f044-4928-9687-6153d4030766', '修改', '0', 'null', 'servermanage');
INSERT INTO `change_history` VALUES ('44', null, '1', '2016-10-30 20:30:46', '修改安全产品台帐变更单', null, 'QT10001', '72042d6c-d0dc-4e8e-96eb-3a580ee6070a', '修改', '0', 'null', 'secproductinfo');
INSERT INTO `change_history` VALUES ('45', null, '1', '2016-10-30 20:33:33', '修改中间转换机台帐变更单', null, 'QT10001', 'b1aa9103-ea1d-48b7-93c8-2f24dfeec104', '修改', '0', 'null', 'convertinfo');
INSERT INTO `change_history` VALUES ('46', null, '1', '2016-10-30 20:37:16', 'null互联网计算机台帐变更单', null, 'WH10001', '0a01e85c-796c-4109-8c50-1273f0ad684f', 'null', '1', 'null', 'internetinfo');
INSERT INTO `change_history` VALUES ('47', null, '1', '2016-10-30 20:41:00', '修改互联网计算机台帐变更单', null, 'BG001', '81e4f76b-5c9a-4fa7-a013-195a42336fa4', '修改', '0', 'null', 'internetinfo');
INSERT INTO `change_history` VALUES ('48', null, '1', '2016-10-30 20:45:20', '修改便携式计算机台帐变更单', null, 'BG001', '6874db50-d641-4538-9d60-000c4c4dd5d6', '修改', '0', 'null', 'notepadinfo');
INSERT INTO `change_history` VALUES ('49', null, '1', '2016-10-30 20:46:41', '修改办公自动化设备台帐变更单', null, 'BG001', 'f341661a-d278-4afb-9d0e-07e84e43e848', '修改', '0', 'null', 'oaautoinfo');
INSERT INTO `change_history` VALUES ('50', null, '1', '2016-10-30 20:54:47', '修改直连绘图仪台帐变更单', null, 'BG001', '6022a04a-faad-435f-b542-3f84a453e9cf', '修改', '0', 'null', 'plotterinfo');
INSERT INTO `change_history` VALUES ('51', null, '1', '2016-10-30 20:56:53', '修改内网打印机台帐变更单', null, 'BG001', '6fcd96b8-fc9f-4ed6-a112-1439341c87eb', '修改', '0', 'null', 'printinfo');
INSERT INTO `change_history` VALUES ('52', null, '1', '2016-10-30 21:08:31', '新增内网打印机台帐变更单', null, 'BG001', '53f6ef96-e723-4ce4-88d7-79668b8e262c', '新增', '0', 'null', 'printinfo');
INSERT INTO `change_history` VALUES ('53', null, '1', '2016-10-30 21:10:02', '修改内网打印机台帐变更单', null, 'QT10001', '90e7023b-8c37-40ba-96fb-dc1edb6dc595', '修改', '0', 'null', 'printinfo');
INSERT INTO `change_history` VALUES ('54', null, '1', '2016-10-30 21:12:30', '修改涉密单机台帐变更单', null, 'QT10001', '024b3f7d-83e8-4d0e-9615-500e15b30ba9', '修改', '0', 'null', 'sechostinfo');
INSERT INTO `change_history` VALUES ('55', null, '1', '2016-10-30 21:15:41', '新增内网打印机台帐变更单', null, 'BG001', '9b634def-48f0-4a74-a748-7a5c60526493', '新增', '0', 'null', 'printinfo');
INSERT INTO `change_history` VALUES ('56', null, '1', '2016-10-30 21:23:24', '新增直连涉密打印设备台帐变更单', null, 'QT10001', '05cd9dce-a206-443b-97cd-98ff749e916a', '新增', '1', 'null', 'printinfo');
INSERT INTO `change_history` VALUES ('57', null, '1', '2016-10-30 21:26:49', '修改安全产品台帐变更单', null, 'BG001', 'bf528af0-bd00-4725-8eac-c1a8e6033661', '修改', '0', 'null', 'secproductinfo');
INSERT INTO `change_history` VALUES ('58', null, '1', '2016-10-30 21:27:49', '修改交换机台帐变更单', null, 'QT10001', 'f23153ac-bc8a-4f79-a4ce-e7632b497b46', '修改', '0', 'null', 'switchInfo');
INSERT INTO `change_history` VALUES ('59', null, '1', '2016-10-30 21:28:45', '修改非涉密单机台帐变更单', null, 'BG001', 'b253b402-a8e9-4dac-bc7a-4744fe987ef2', '修改', '0', 'null', 'unsechostinfo');
INSERT INTO `change_history` VALUES ('60', null, '1', '2016-10-30 21:31:58', '修改非密直连打印机台帐变更单', null, 'QT10001', 'f0473481-d8b6-42df-9ffb-9f18997921e0', '修改', '0', 'null', 'unsecprintinfo');
INSERT INTO `change_history` VALUES ('61', null, '1', '2016-10-30 21:34:51', '新增考勤机台帐变更单', null, 'QT10001', '37621608-f931-4601-acaf-af03eaf3d7d3', '新增', '0', 'null', 'attendanceinfo');

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
  `status` varchar(100) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  `changeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of computermanage
-- ----------------------------
INSERT INTO `computermanage` VALUES ('10', 'BH001', '数据部', '张三', '高级', 'ZC001', '数据部', 'CH100', 'XH100', 'S22XNXAGB49717', '最好', '2016-10-08 22:27:51', '拉丁', '169.254.139.125', 'VLAN', '50:7B:9D:77:F0:62', '8080', '三楼左三', '三楼201', 'windows10', '2016-10-04 22:29:15', 'key100', '无', '正常', '2016-10-25 22:29:33', '无', '是', '2', '2016-10-25 22:35:25', '887de111-3b8a-4a48-9bc3-f85e54eae405');
INSERT INTO `computermanage` VALUES ('11', 'BH001', '数据部', '张三', '高级', 'ZC001', '数据部', 'CH100', 'XH100', 'S22XNXAGB49717', '最好', '2016-10-08 22:27:51', '拉丁', '169.254.139.125', 'VLAN', '50:7B:9D:77:F0:62', '8080', '三楼左三', '三楼201', 'windows10', '2016-10-04 22:29:15', 'key100', '无', '正常', '2016-10-25 22:29:33', '无', '是', '1', '2016-10-08 22:38:21', 'ecf3429c-ecad-41db-9b54-2d66b3715b8b');
INSERT INTO `computermanage` VALUES ('12', 'BH001', '数据部', '  ', '高级', 'ZC001', '数据部', 'CH100', 'XH100', 'S22XNXAGB49717', '最好', '2016-10-08 22:27:51', '拉丁', '169.254.139.125', 'VLAN', '50:7B:9D:77:F0:62', '8080', '三楼左三', '三楼201', 'windows10', '2016-10-04 22:29:15', 'key100', '无', '正常', '2016-10-25 22:29:33', '无', '是', '2', '2016-10-08 22:42:04', '31c322fc-2691-4987-9b2e-aed72a77b6cf');
INSERT INTO `computermanage` VALUES ('13', 'BH001', '数据部', '阿萨德啊', '高级', 'ZC001', '数据部', 'CH100', 'XH100', 'S22XNXAGB49717', '最好', '2016-10-19 23:35:38', '设备名称', '169.254.139.125', 'VLAN', '50:7B:9D:77:F0:62', '8080', '三楼左三', '三楼201', 'Microsoft Windows 10 专业版', '2016-10-11 23:35:59', 'key100', '无', '正常', '2016-10-20 23:36:12', '无', '否', '1', '2016-10-19 23:36:31', 'cd93778a-4c3f-4fcc-9c32-74c57b77811c');
INSERT INTO `computermanage` VALUES ('14', 'BH001', '数据部', '张三', '高级', 'ZC001', '数据部', 'CH100', 'XH100', 'S22XNXAGB49717', '最好', '2016-10-08 22:27:51', '拉丁', '169.254.139.125', 'VLAN', '50:7B:9D:77:F0:62', '8080', '三楼左三', '三楼201', 'windows10', '2016-10-04 22:29:15', 'key100', '无', '正常', '2016-10-25 22:29:33', '无', '是', '0', '2016-10-30 17:23:21', '688dc9b2-0e09-48bd-b9b2-2c6c4e171478');

-- ----------------------------
-- Table structure for convertinfo
-- ----------------------------
DROP TABLE IF EXISTS `convertinfo`;
CREATE TABLE `convertinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devno` varchar(100) DEFAULT NULL,
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
  `infostatus` varchar(100) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of convertinfo
-- ----------------------------
INSERT INTO `convertinfo` VALUES ('4', 'XH100', 'XH0001', null, 'ZC1000', '数据部', '张三', 'XH100', '配置', 'XSQ1001', 'ZJ0001', 'YP1001', '2016-10-28 20:48:19', '无', '高级', '50:7B:9D:77:F0:62', 'key10001', '2016-10-28 20:48:38', 'FJ1001', '无', '无', '0', '2016-10-28 20:48:52', '022ec3c6-7e39-4f3c-b4c5-a9e06f61f6db');
INSERT INTO `convertinfo` VALUES ('5', 'XH100', 'XH0001', null, 'ZC1000', '数据部', '张三', 'XH100', '配置', 'XSQ1001', 'ZJ0001', 'YP1001', '2016-10-28 20:48:19', '无', '高级', '50:7B:9D:77:F0:62', 'key10001', '2016-10-28 20:48:38', 'FJ1001', '无', '无', '0', '2016-10-30 20:33:33', 'b1aa9103-ea1d-48b7-93c8-2f24dfeec104');

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', '内网计算机台帐', 'computerManage', '/computerManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('2', '内网计算机台帐', 'computerManage', '/computerManage/changeAddPage', '新增');
INSERT INTO `dictionary` VALUES ('3', '内网计算机台帐', 'computerManage', '/computerManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('4', '服务器台账', 'servermanage', '/serverManage/serverAddPage', '新增');
INSERT INTO `dictionary` VALUES ('5', '服务器台帐', 'servermanage', '/serverManage/serverEditPage', '修改');
INSERT INTO `dictionary` VALUES ('6', '服务器台帐', 'servermanage', '/serverManage/serverReturnPage', '清退');
INSERT INTO `dictionary` VALUES ('7', '安全产品台帐', 'sechostinfo', '/secProdInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('8', '安全产品台帐', 'sechostinfo', '/secProdInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('9', '安全产品台帐', 'sechostinfo', '/secProdInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('10', '中间转换机台帐', 'convertinfo', '/convertInfoManage/convertAddPage', '新增');
INSERT INTO `dictionary` VALUES ('11', '中间转换机台帐', 'convertinfo', '/convertInfoManage/convertEditPage', '修改');
INSERT INTO `dictionary` VALUES ('12', '中间转换机台帐', 'convertinfo', '/convertInfoManage/convertReturnPage', '清退');
INSERT INTO `dictionary` VALUES ('13', '互联网计算机台帐', 'internetinfo', '/internetInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('14', '互联网计算机台帐', 'internetinfo', '/internetInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('15', '互联网计算机台帐', 'internetinfo', '/internetInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('16', '便携式计算机台帐', 'notepadinfo', '/notePadInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('17', '便携式计算机台帐', 'notepadinfo', '/notePadInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('18', '便携式计算机台帐', 'notepadinfo', '/notePadInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('19', '办公自动化设备台帐', 'oaautoinfo', '/oaAutoInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('20', '办公自动化设备台帐', 'oaautoinfo', '/oaAutoInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('21', '办公自动化设备台帐', 'oaautoinfo', '/oaAutoInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('22', '直连绘图仪台帐', 'plotterinfo', '/plotterInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('23', '直连绘图仪台帐', 'plotterinfo', '/plotterInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('24', '直连绘图仪台帐', 'plotterinfo', '/plotterInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('25', '内网打印机台帐', 'printinfo', '/printInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('26', '内网打印机台帐', 'printinfo', '/printInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('27', '内网打印机台帐', 'printinfo', '/printInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('28', '涉密单机台帐', 'sechostinfo', '/secHostInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('29', '涉密单机台帐', 'sechostinfo', '/secHostInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('30', '涉密单机台帐', 'sechostinfo', '/secHostInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('31', '直连涉密打印设备台帐', 'secprintinfo', '/secPrintInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('32', '直连涉密打印设备台帐', 'secprintinfo', '/secPrintInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('33', '直连涉密打印设备台帐', 'secprintinfo', '/secPrintInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('34', '安全产品台帐', 'secproductinfo', '/secProdInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('35', '安全产品台帐', 'secproductinfo', '/secProdInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('36', '安全产品台帐', 'secproductinfo', '/secProdInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('37', '交换机台帐', 'switchinfo', '/switchInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('38', '交换机台帐', 'switchinfo', '/switchInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('39', '交换机台帐', 'switchinfo', '/switchInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('40', '非密单机台帐', 'unsechostinfo', '/unsecHostInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('41', '非密单机台帐', 'unsechostinfo', '/unsecHostInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('42', '非密单机台帐', 'unsechostinfo', '/unsecHostInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('43', '非密直连打印机台帐', 'unsecprintinfo', '/unSecPrintInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('44', '非密直连打印机台帐', 'unsecprintinfo', '/unSecPrintInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('45', '非密直连打印机台帐', 'unsecprintinfo', '/unSecPrintInfoManage/returnPage', '清退');
INSERT INTO `dictionary` VALUES ('46', '考勤机台帐', 'attendanceinfo', '/attendanceInfoManage/addPage', '新增');
INSERT INTO `dictionary` VALUES ('47', '考勤机台帐', 'attendanceinfo', '/attendanceInfoManage/editPage', '修改');
INSERT INTO `dictionary` VALUES ('48', '考勤机台帐', 'attendanceinfo', '/attendanceInfoManage/returnPage', '清退');

-- ----------------------------
-- Table structure for diskdriverinfo
-- ----------------------------
DROP TABLE IF EXISTS `diskdriverinfo`;
CREATE TABLE `diskdriverinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `mediaType` varchar(2000) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `serialNumber` varchar(1000) DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diskdriverinfo
-- ----------------------------
INSERT INTO `diskdriverinfo` VALUES ('14', '169.254.139.125', '50:7B:9D:77:F0:62', 'Fixed hard disk media', 'WDC WD10SPCX-24HWST1', 'WD-WXE1A95RT8DX', '', '2016-10-18 23:19:02');
INSERT INTO `diskdriverinfo` VALUES ('15', '169.254.139.125', '50:7B:9D:77:F0:62', 'Fixed hard disk media', 'SAMSUNG MZNLN128HCGR-000L2', 'S22XNXAGB49717', '4261067042', '2016-10-18 23:19:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
  `infostatus` varchar(100) DEFAULT NULL,
  `printhostip` varchar(100) DEFAULT NULL,
  `printmac` varchar(100) DEFAULT NULL,
  `printport` varchar(100) DEFAULT NULL,
  `patchpanel` varchar(100) DEFAULT NULL,
  `payhostip` varchar(100) DEFAULT NULL,
  `payport` varchar(100) DEFAULT NULL,
  `paymac` varchar(100) DEFAULT NULL,
  `park` varchar(2000) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of internetinfo
-- ----------------------------
INSERT INTO `internetinfo` VALUES ('1', 'sadasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdsad', 'adssdasd', '2016-09-01 21:49:59', 'adsdad', 'asdsda', 'asdsad', 'asddssad', 'adssda', 'adsdsasd', 'adsdsdd', 'asdsadad', 'adssd', '111111', 'asdsaddad', null, null, null);
INSERT INTO `internetinfo` VALUES ('2', '北京', 'XH1001', '房间', '撒旦', 'ZC1000', '阿萨德', '张三', '撒旦撒旦', 'BH001', '阿萨德', '2016-10-29 00:12:31', '阿萨德', '阿斗', '阿萨德', '192.168.10.100', '50:7B:9D:77:F0:62', '8080', '三楼左三', '192.168.10.100', '50:7B:9D:77:F0:62', '67', 'sda', '0', '2016-10-29 00:13:57', '7cbf0220-53f1-43a5-972e-be70fdf10a5d');
INSERT INTO `internetinfo` VALUES ('3', '北京', 'XH1001', '房间', '撒旦', 'ZC1000', '阿萨德', '张三', '撒旦撒旦', 'BH001', '阿萨德', '2016-10-29 00:12:31', '阿萨德', '阿斗', '0', '192.168.10.100', '50:7B:9D:77:F0:62', '8080', '三楼左三', '192.168.10.100', '50:7B:9D:77:F0:62', '67', 'sda', '1', '2016-10-30 20:37:16', '0a01e85c-796c-4109-8c50-1273f0ad684f');
INSERT INTO `internetinfo` VALUES ('4', '北京', 'XH1001', '房间', '撒旦', 'ZC1000', '阿萨德', '张三', '撒旦撒旦', 'BH001', '阿萨德', '2016-10-29 00:12:31', '阿萨德', '阿斗', '0', '192.168.10.100', '50:7B:9D:77:F0:62', '8080', '三楼左三', '192.168.10.100', '50:7B:9D:77:F0:62', '67', 'sda', '0', '2016-10-30 20:41:00', '81e4f76b-5c9a-4fa7-a013-195a42336fa4');

-- ----------------------------
-- Table structure for meminfo
-- ----------------------------
DROP TABLE IF EXISTS `meminfo`;
CREATE TABLE `meminfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `memtotals` varchar(100) DEFAULT NULL COMMENT '内存总量',
  `memused` varchar(100) DEFAULT NULL COMMENT '当前内存使用量',
  `memfree` varchar(100) DEFAULT NULL COMMENT '当前内存剩余量',
  `swaptotals` varchar(100) DEFAULT NULL COMMENT '交换区总量',
  `swapused` varchar(100) DEFAULT NULL COMMENT '当前交换区使用量',
  `swapfree` varchar(100) DEFAULT NULL COMMENT '当前交换区剩余量',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meminfo
-- ----------------------------
INSERT INTO `meminfo` VALUES ('5', '192.168.31.213', '50:7B:9D:77:F0:62', '8300420k', '3647512k', '4652908k', '16689028k', '3647512k', '4652908k', '2016-07-17 10:34:21');
INSERT INTO `meminfo` VALUES ('6', '169.254.139.125', '50:7B:9D:77:F0:62', '8300420k', '2954856k', '5345564k', '16689028k', '2954856k', '5345564k', '2016-07-23 17:18:30');

-- ----------------------------
-- Table structure for netinfo
-- ----------------------------
DROP TABLE IF EXISTS `netinfo`;
CREATE TABLE `netinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `netNo` varchar(50) DEFAULT NULL COMMENT '网络设备名',
  `netmask` varchar(50) DEFAULT NULL COMMENT '子网掩码',
  `rxPackets` varchar(100) DEFAULT NULL COMMENT '接收的总包裹数',
  `txPackets` varchar(100) DEFAULT NULL COMMENT '发送的总包裹数',
  `rxBytes` varchar(100) DEFAULT NULL COMMENT '接收到的总字节数',
  `txBytes` varchar(100) DEFAULT NULL COMMENT '发送的总字节数',
  `rxErrors` varchar(100) DEFAULT NULL COMMENT '接收到的错误包数',
  `txErrors` varchar(100) DEFAULT NULL COMMENT '发送数据包时的错误数',
  `rxDropped` varchar(100) DEFAULT NULL COMMENT '接收时丢弃的包数',
  `txDropped` varchar(100) DEFAULT NULL COMMENT '发送时丢弃的包数',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of netinfo
-- ----------------------------
INSERT INTO `netinfo` VALUES ('34', '192.168.31.213', '50:7B:9D:77:F0:62', '0', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('35', '192.168.31.213', '50:7B:9D:77:F0:62', '1', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('36', '192.168.31.213', '50:7B:9D:77:F0:62', '2', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('37', '192.168.31.213', '50:7B:9D:77:F0:62', '3', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('38', '192.168.31.213', '50:7B:9D:77:F0:62', '4', '255.255.0.0', '0', '3993', '0', '3993', '0', '0', '0', '0', '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('39', '192.168.31.213', '50:7B:9D:77:F0:62', '5', '255.255.255.0', '0', '3939', '0', '3939', '0', '0', '0', '0', '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('40', '192.168.31.213', '50:7B:9D:77:F0:62', '6', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('41', '192.168.31.213', '50:7B:9D:77:F0:62', '7', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('42', '192.168.31.213', '50:7B:9D:77:F0:62', '8', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('43', '192.168.31.213', '50:7B:9D:77:F0:62', '9', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('44', '192.168.31.213', '50:7B:9D:77:F0:62', '10', '255.0.0.0', '0', '0', '0', '0', '0', '0', '0', '0', '2016-07-24 12:30:46');
INSERT INTO `netinfo` VALUES ('45', '169.254.139.125', '50:7B:9D:77:F0:62', '0', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('46', '169.254.139.125', '50:7B:9D:77:F0:62', '1', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('47', '169.254.139.125', '50:7B:9D:77:F0:62', '2', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('48', '169.254.139.125', '50:7B:9D:77:F0:62', '3', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('49', '169.254.139.125', '50:7B:9D:77:F0:62', '4', '255.255.0.0', '0', '4013', '0', '4013', '0', '0', '0', '0', '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('50', '169.254.139.125', '50:7B:9D:77:F0:62', '5', '255.255.255.0', '0', '3955', '0', '3955', '0', '0', '0', '0', '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('51', '169.254.139.125', '50:7B:9D:77:F0:62', '6', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('52', '169.254.139.125', '50:7B:9D:77:F0:62', '7', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('53', '169.254.139.125', '50:7B:9D:77:F0:62', '8', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('54', '169.254.139.125', '50:7B:9D:77:F0:62', '9', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-24 12:31:31');
INSERT INTO `netinfo` VALUES ('55', '169.254.139.125', '50:7B:9D:77:F0:62', '10', '255.0.0.0', '0', '0', '0', '0', '0', '0', '0', '0', '2016-07-24 12:31:31');

-- ----------------------------
-- Table structure for nicinfo
-- ----------------------------
DROP TABLE IF EXISTS `nicinfo`;
CREATE TABLE `nicinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `AdapterType` varchar(100) DEFAULT NULL COMMENT '适配器类型',
  `DeviceID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `MACAddress` varchar(100) DEFAULT NULL COMMENT 'mac地址',
  `Name` varchar(100) DEFAULT NULL COMMENT '名称',
  `NetworkAddresses` varchar(100) DEFAULT NULL COMMENT '网络地址',
  `ServiceName` varchar(100) DEFAULT NULL COMMENT '服务名称',
  `Speed` varchar(100) DEFAULT NULL COMMENT '网卡速率',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nicinfo
-- ----------------------------
INSERT INTO `nicinfo` VALUES ('1', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '0', '00:50:56:C0:00:08', 'VMware Virtual Ethernet Adapter for VMnet8', null, 'VMnetAdapter', '100000000', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('2', '192.168.31.213', '50:7B:9D:77:F0:62', '', '1', '', 'Microsoft Kernel Debug Network Adapter', null, 'kdnic', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('3', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '2', '50:7B:9D:77:F0:62', 'Realtek PCIe GBE Family Controller', null, 'rt640x64', '9223372036854775807', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('4', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '3', '00:50:56:C0:00:01', 'VMware Virtual Ethernet Adapter for VMnet1', null, 'VMnetAdapter', '100000000', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('5', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '4', 'E0:94:67:77:94:03', 'Intel(R) Dual Band Wireless-AC 3165', null, 'Netwtw04', '433300000', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('6', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '5', 'E0:94:67:77:94:04', 'Microsoft Wi-Fi Direct Virtual Adapter', null, 'vwifimp', '9223372036854775807', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('7', '192.168.31.213', '50:7B:9D:77:F0:62', '隧道', '6', '', 'Microsoft ISATAP Adapter', null, 'tunnel', '100000', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('8', '192.168.31.213', '50:7B:9D:77:F0:62', '', '7', '', 'Microsoft ISATAP Adapter', null, '', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('9', '192.168.31.213', '50:7B:9D:77:F0:62', '', '8', '', 'WAN Miniport (SSTP)', null, '', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('10', '192.168.31.213', '50:7B:9D:77:F0:62', '', '9', '', 'WAN Miniport (IKEv2)', null, '', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('11', '192.168.31.213', '50:7B:9D:77:F0:62', '', '10', '', 'WAN Miniport (L2TP)', null, '', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('12', '192.168.31.213', '50:7B:9D:77:F0:62', '', '11', '', 'WAN Miniport (PPTP)', null, '', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('13', '192.168.31.213', '50:7B:9D:77:F0:62', '', '12', '', 'WAN Miniport (PPPOE)', null, '', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('14', '192.168.31.213', '50:7B:9D:77:F0:62', '', '13', '', 'WAN Miniport (IP)', null, '', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('15', '192.168.31.213', '50:7B:9D:77:F0:62', '', '14', '', 'WAN Miniport (IPv6)', null, '', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('16', '192.168.31.213', '50:7B:9D:77:F0:62', '', '15', '', 'WAN Miniport (Network Monitor)', null, '', '', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('17', '192.168.31.213', '50:7B:9D:77:F0:62', '隧道', '16', '', 'Microsoft ISATAP Adapter #3', null, 'tunnel', '100000', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('18', '192.168.31.213', '50:7B:9D:77:F0:62', '隧道', '17', '', 'Microsoft Teredo Tunneling Adapter', null, 'tunnel', '100000', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('19', '192.168.31.213', '50:7B:9D:77:F0:62', '隧道', '20', '', 'Microsoft ISATAP Adapter #4', null, 'tunnel', '100000', '2016-07-24 12:30:47');
INSERT INTO `nicinfo` VALUES ('20', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '0', '00:50:56:C0:00:08', 'VMware Virtual Ethernet Adapter for VMnet8', null, 'VMnetAdapter', '100000000', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('21', '169.254.139.125', '50:7B:9D:77:F0:62', '', '1', '', 'Microsoft Kernel Debug Network Adapter', null, 'kdnic', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('22', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '2', '50:7B:9D:77:F0:62', 'Realtek PCIe GBE Family Controller', null, 'rt640x64', '9223372036854775807', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('23', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '3', '00:50:56:C0:00:01', 'VMware Virtual Ethernet Adapter for VMnet1', null, 'VMnetAdapter', '100000000', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('24', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '4', 'E0:94:67:77:94:03', 'Intel(R) Dual Band Wireless-AC 3165', null, 'Netwtw04', '292500000', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('25', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '5', 'E0:94:67:77:94:04', 'Microsoft Wi-Fi Direct Virtual Adapter', null, 'vwifimp', '9223372036854775807', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('26', '169.254.139.125', '50:7B:9D:77:F0:62', '隧道', '6', '', 'Microsoft ISATAP Adapter', null, 'tunnel', '100000', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('27', '169.254.139.125', '50:7B:9D:77:F0:62', '', '7', '', 'Microsoft ISATAP Adapter', null, '', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('28', '169.254.139.125', '50:7B:9D:77:F0:62', '', '8', '', 'WAN Miniport (SSTP)', null, '', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('29', '169.254.139.125', '50:7B:9D:77:F0:62', '', '9', '', 'WAN Miniport (IKEv2)', null, '', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('30', '169.254.139.125', '50:7B:9D:77:F0:62', '', '10', '', 'WAN Miniport (L2TP)', null, '', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('31', '169.254.139.125', '50:7B:9D:77:F0:62', '', '11', '', 'WAN Miniport (PPTP)', null, '', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('32', '169.254.139.125', '50:7B:9D:77:F0:62', '', '12', '', 'WAN Miniport (PPPOE)', null, '', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('33', '169.254.139.125', '50:7B:9D:77:F0:62', '', '13', '', 'WAN Miniport (IP)', null, '', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('34', '169.254.139.125', '50:7B:9D:77:F0:62', '', '14', '', 'WAN Miniport (IPv6)', null, '', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('35', '169.254.139.125', '50:7B:9D:77:F0:62', '', '15', '', 'WAN Miniport (Network Monitor)', null, '', '', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('36', '169.254.139.125', '50:7B:9D:77:F0:62', '隧道', '16', '', 'Microsoft ISATAP Adapter #3', null, 'tunnel', '100000', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('37', '169.254.139.125', '50:7B:9D:77:F0:62', '隧道', '17', '', 'Microsoft Teredo Tunneling Adapter', null, 'tunnel', '100000', '2016-07-24 12:31:31');
INSERT INTO `nicinfo` VALUES ('38', '169.254.139.125', '50:7B:9D:77:F0:62', '隧道', '20', '', 'Microsoft ISATAP Adapter #4', null, 'tunnel', '100000', '2016-07-24 12:31:31');

-- ----------------------------
-- Table structure for notepadinfo
-- ----------------------------
DROP TABLE IF EXISTS `notepadinfo`;
CREATE TABLE `notepadinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialno` varchar(200) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
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
  `status` varchar(20) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notepadinfo
-- ----------------------------
INSERT INTO `notepadinfo` VALUES ('1', '凯特', '实打实的', '阿萨德啊', '阿萨德啊', '啊撒打算', '阿斯打算', '阿斯阿斯', '啊撒旦撒', '阿斯倒萨速度', ' 阿斯达斯大', '啊撒旦撒', '1231', null, null, null);
INSERT INTO `notepadinfo` VALUES ('2', 'XH0001', 'XH100', '阿萨德啊', '张三', '高级', '啊撒旦撒', '阿斯阿斯', 'VLAN', '192.168.31.213', '50:7B:9D:77:F0:62', '三楼左三', '8080', '0', '2016-10-29 20:40:18', '57368a5a-5c9d-4c91-ab8b-dd9465b9fc6c');
INSERT INTO `notepadinfo` VALUES ('3', 'XH0001', 'XH100', '阿萨德啊', '张三', '高级', '啊撒旦撒', '阿斯阿斯', 'VLAN', '192.168.31.213', '50:7B:9D:77:F0:62', '三楼左三', '8080', '0', '2016-10-30 20:45:20', '6874db50-d641-4538-9d60-000c4c4dd5d6');

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
  `status` varchar(20) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oaautoinfo
-- ----------------------------
INSERT INTO `oaautoinfo` VALUES ('1', 'XH100', '阿斯达斯', '张三', '高', '设备名称', '名牌', 'XH100', '撒旦撒旦', 'XH0001', '2016-10-29 20:46:45', '无', '撒旦 ', '良好', '无', '0', '2016-10-29 20:46:56', '0f5726dc-221d-414b-a466-6e8408cd977e');
INSERT INTO `oaautoinfo` VALUES ('2', 'XH100', '阿斯达斯', '张三', '高', '设备名称', '名牌', 'XH100', '撒旦撒旦', 'XH0001', '2016-10-29 20:46:45', '无', '撒旦 ', '良好', '无', '0', '2016-10-30 20:46:41', 'f341661a-d278-4afb-9d0e-07e84e43e848');

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
-- Table structure for osinfo
-- ----------------------------
DROP TABLE IF EXISTS `osinfo`;
CREATE TABLE `osinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `caption` varchar(200) DEFAULT NULL,
  `osArchitecture` varchar(200) DEFAULT NULL,
  `installDate` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `organization` varchar(200) DEFAULT NULL,
  `version` varchar(200) DEFAULT NULL,
  `serialNumber` varchar(200) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osinfo
-- ----------------------------
INSERT INTO `osinfo` VALUES ('1', '169.254.139.125', '50:7B:9D:77:F0:62', 'Microsoft Windows 10 专业版', '64 位', '20160810035517.000000+480', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', 'Microsoft', '10.0.14393', '00330-80000-00000-AA715', '2016-10-18 23:19:03');

-- ----------------------------
-- Table structure for plotterinfo
-- ----------------------------
DROP TABLE IF EXISTS `plotterinfo`;
CREATE TABLE `plotterinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resdepart` varchar(200) DEFAULT NULL,
  `resperson` varchar(200) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
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
  `status` varchar(100) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  `changeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plotterinfo
-- ----------------------------
INSERT INTO `plotterinfo` VALUES ('1', '阿萨德', '啊速度', ' 阿萨德', ' 撒旦', ' 撒 速度', '阿斯大苏打', '2016-09-07 20:37:42', '啊撒旦撒', '阿斯的是', '是阿达岁的', '是阿斯是', '2016-09-07 20:37:55', '2222222222', null, null, null);
INSERT INTO `plotterinfo` VALUES ('2', '阿萨德', '张三', 'XH100', '高级', '名牌', '无', '2016-10-29 20:10:40', '啊撒旦撒', '阿斯的是', 'S22XNXAGB49717', '50:7B:9D:77:F0:62', '2016-10-29 20:10:53', 'WIN7', '0', '2016-10-29 20:10:59', 'd8378d75-1985-491a-90d4-4d3ff7c17b3a');
INSERT INTO `plotterinfo` VALUES ('3', '阿萨德', '张三', 'XH100', '高级', '名牌', '无', '2016-10-29 20:16:49', '阿斯打算', '阿斯的是', 'S22XNXAGB49717', '50:7B:9D:77:F0:62', '2016-10-29 20:17:00', 'WIN7', '0', '2016-10-29 20:17:04', 'a70b6601-460f-4faa-8f06-3998816db869');
INSERT INTO `plotterinfo` VALUES ('4', '阿萨德', '张三', 'XH100', '高级', '名牌', '无', '2016-10-29 20:16:49', '阿斯打算', '阿斯的是', 'S22XNXAGB49717', '50:7B:9D:77:F0:62', '2016-10-29 20:17:00', 'WIN7', '0', '2016-10-30 20:54:47', '6022a04a-faad-435f-b542-3f84a453e9cf');

-- ----------------------------
-- Table structure for portinfo
-- ----------------------------
DROP TABLE IF EXISTS `portinfo`;
CREATE TABLE `portinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `Agreement` varchar(100) DEFAULT NULL COMMENT '协议类型',
  `LocalAddress` varchar(100) DEFAULT NULL COMMENT '本地地址',
  `statu` varchar(100) DEFAULT NULL COMMENT '状态',
  `Pid` varchar(100) DEFAULT NULL COMMENT '进程ID',
  `Name` varchar(100) DEFAULT NULL COMMENT '应用名称',
  `ExecutablePath` varchar(1000) DEFAULT NULL COMMENT '应用安装位置',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of portinfo
-- ----------------------------
INSERT INTO `portinfo` VALUES ('44', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::]:49666', 'LISTENING', '484', 'svchost.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('45', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::1]:8307', 'LISTENING', '4152', 'vmware-hostd.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('46', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::]:2869', 'LISTENING', '4', 'System', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('47', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '0.0.0.0:912', 'LISTENING', '2844', 'vmware-authd.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('48', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::]:49668', 'LISTENING', '2580', 'mqsvc.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('49', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::]:3306', 'LISTENING', '2860', 'mysqld.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('50', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::]:8080', 'LISTENING', '8092', 'java.exe', 'D:\\work\\tools\\Java\\jdk1.7.0_51\\bin\\java.exe', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('51', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::]:49664', 'LISTENING', '684', 'wininit.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('52', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::]:49667', 'LISTENING', '2076', 'spoolsv.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('53', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::]:49670', 'LISTENING', '756', 'services.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('54', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '[::]:49673', 'LISTENING', '764', 'lsass.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('55', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '192.168.31.213:65013', 'CLOSE_WAIT', '7036', 'QQ.exe', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQ.exe', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('56', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '127.0.0.1:53557', 'LISTENING', '9212', 'ssh-agent.exe', 'C:\\Users\\kate\\AppData\\Local\\GitHub\\PortableGit_c2ba306e536fdf878271f7fe636a147ff37326ad\\bin\\ssh-agent.exe', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('57', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '127.0.0.1:55259', 'LISTENING', '1380', null, null, '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('58', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '192.168.31.213:15255', 'LISTENING', '5352', 'SkypeHost.exe', 'C:\\Program Files\\WindowsApps\\Microsoft.Messaging_2.15.20002.0_x86__8wekyb3d8bbwe\\SkypeHost.exe', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('59', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '192.168.31.213:54031', 'ESTABLISHED', '1524', '360tray.exe', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('60', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '192.168.31.213:57299', 'ESTABLISHED', '5376', 'explorer.exe', 'C:\\WINDOWS\\Explorer.EXE', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('61', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '192.168.31.213:65018', 'TIME_WAIT', '0', 'System Idle Process', '', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('62', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '192.168.31.213:65042', 'SYN_SENT', '11248', '360chrome.exe', 'C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe', '2016-07-24 12:30:45');
INSERT INTO `portinfo` VALUES ('63', '192.168.31.213', '50:7B:9D:77:F0:62', 'TCP', '192.168.137.1:57240', 'LISTENING', '4024', 'alg.exe', '', '2016-07-24 12:30:45');

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
  `infostatus` varchar(100) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  `changeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of printinfo
-- ----------------------------
INSERT INTO `printinfo` VALUES ('1', 'asds', 'asdsad', 'asdsd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdsad', 'asdsad', 'asdasd', '2016-09-01 21:52:27', 'asdsaad', 'asdsd', 'asdsd', '111111', null, null, null);
INSERT INTO `printinfo` VALUES ('3', '房间', 'XH100', 'ZC100', '数据部', '张三', '名牌', 'XH100', '规格', 'XH0001', '100', '2016-10-29 19:10:12', '高级', '直连', null, '无', '0', '2016-10-30 20:56:53', '6fcd96b8-fc9f-4ed6-a112-1439341c87eb');
INSERT INTO `printinfo` VALUES ('4', '房间', 'BH001', 'ZC100', '数据部', '张三', '名牌', 'XH100', '规格', 'XH0001', '100', '2016-10-30 21:08:18', '高级', '直连', '无', '无', '0', '2016-10-30 21:08:31', '53f6ef96-e723-4ce4-88d7-79668b8e262c');
INSERT INTO `printinfo` VALUES ('5', '房间', 'BH001', 'ZC100', '数据部', '张三', '名牌', 'XH100', '规格', 'XH0001', '100', '2016-10-30 21:08:18', '高级', '直连', null, '无', '0', '2016-10-30 21:10:02', '90e7023b-8c37-40ba-96fb-dc1edb6dc595');

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
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8 COMMENT='资源';

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
INSERT INTO `resource` VALUES ('227', '台帐看板', '', null, 'icon-company', null, '4', '0', '0', '2016-08-17 21:09:27');
INSERT INTO `resource` VALUES ('228', '内网计算机台账', '/computerManage/manager', null, 'icon-folder', '227', '0', '0', '0', '2016-08-17 21:10:57');
INSERT INTO `resource` VALUES ('229', '列表', '/computerManage/dataGrid', null, 'icon-list', '228', '0', '0', '1', '2016-09-10 12:46:55');
INSERT INTO `resource` VALUES ('230', '文件上传', '/computerManage/fileUpload', null, 'icon-add', '228', '1', '0', '1', '2016-09-10 12:47:53');
INSERT INTO `resource` VALUES ('231', '详情', '/computerManage/queryDetail', null, 'icon-edit', '228', '2', '0', '1', '2016-09-10 12:49:28');
INSERT INTO `resource` VALUES ('232', '删除', '/computerManage/delete', null, 'icon-del', '228', '3', '0', '1', '2016-09-10 12:50:35');
INSERT INTO `resource` VALUES ('233', '服务器台账', '/serverManage/manager', null, 'icon-folder', '227', '1', '0', '0', '2016-09-10 12:52:36');
INSERT INTO `resource` VALUES ('234', '列表', '/serverManage/dataGrid', null, 'icon-list', '233', '0', '0', '1', '2016-09-10 12:53:22');
INSERT INTO `resource` VALUES ('235', '文件上传', '/serverManage/fileUpload', null, 'icon-add', '233', '1', '0', '1', '2016-09-10 12:53:53');
INSERT INTO `resource` VALUES ('236', '详情', '/serverManage/queryDetail', null, 'icon-edit', '233', '2', '0', '1', '2016-09-10 12:54:21');
INSERT INTO `resource` VALUES ('237', '删除', '/serverManage/delete', null, 'icon-del', '233', '3', '0', '1', '2016-09-10 12:55:11');
INSERT INTO `resource` VALUES ('238', '安全产品台帐', '/secProdInfoManage/manager', null, 'icon-folder', '227', '2', '0', '0', '2016-09-10 12:57:17');
INSERT INTO `resource` VALUES ('239', '列表', '/secProdInfoManage/dataGrid', null, 'icon-list', '238', '0', '0', '1', '2016-09-10 12:57:54');
INSERT INTO `resource` VALUES ('240', '文件上传', '/secProdInfoManage/fileUpload', null, 'icon-add', '238', '1', '0', '1', '2016-09-10 12:59:19');
INSERT INTO `resource` VALUES ('241', '详情', '/secProdInfoManage/queryDetail', null, 'icon-edit', '238', '2', '0', '1', '2016-09-10 13:00:02');
INSERT INTO `resource` VALUES ('242', '删除', '/secProdInfoManage/delete', null, 'icon-del', '238', '3', '0', '1', '2016-09-10 13:00:30');
INSERT INTO `resource` VALUES ('243', '交换机台帐', '/switchInfoManage/manager', null, 'icon-folder', '227', '3', '0', '0', '2016-09-10 13:01:44');
INSERT INTO `resource` VALUES ('244', '列表', '/switchInfoManage/dataGrid', null, 'icon-list', '243', '0', '0', '1', '2016-09-10 13:02:12');
INSERT INTO `resource` VALUES ('245', '文件上传', '/switchInfoManage/fileUpload', null, 'icon-add', '243', '1', '0', '1', '2016-09-10 13:02:34');
INSERT INTO `resource` VALUES ('246', '详情', '/switchInfoManage/queryDetail', null, 'icon-edit', '243', '2', '0', '1', '2016-09-10 13:02:58');
INSERT INTO `resource` VALUES ('247', '删除', '/switchInfoManage/delete', null, 'icon-del', '243', '3', '0', '1', '2016-09-10 13:03:23');
INSERT INTO `resource` VALUES ('248', '中间转换机台帐', '/convertInfoManage/manager', null, 'icon-folder', '227', '4', '0', '0', '2016-09-10 13:04:14');
INSERT INTO `resource` VALUES ('249', '列表', '/convertInfoManage/dataGrid', null, 'icon-list', '248', '0', '0', '1', '2016-09-10 13:06:22');
INSERT INTO `resource` VALUES ('250', '文件上传', '/convertInfoManage/fileUpload', null, 'icon-add', '248', '1', '0', '1', '2016-09-10 13:06:45');
INSERT INTO `resource` VALUES ('251', '详情', '/convertInfoManage/queryDetail', null, 'icon-edit', '248', '2', '0', '1', '2016-09-10 13:07:22');
INSERT INTO `resource` VALUES ('252', '删除', '/convertInfoManage/delete', null, 'icon-del', '248', '3', '0', '1', '2016-09-10 13:08:01');
INSERT INTO `resource` VALUES ('253', '涉密单机台帐', '/secHostInfoManage/manager', null, 'icon-folder', '227', '5', '0', '0', '2016-09-10 13:09:12');
INSERT INTO `resource` VALUES ('254', '列表', '/secHostInfoManage/dataGrid', null, 'icon-list', '253', '0', '0', '1', '2016-09-10 13:10:19');
INSERT INTO `resource` VALUES ('255', '文件上传', '/secHostInfoManage/fileUpload', null, 'icon-add', '253', '1', '0', '1', '2016-09-10 13:11:04');
INSERT INTO `resource` VALUES ('256', '详情', '/secHostInfoManage/queryDetail', null, 'icon-edit', '253', '2', '0', '1', '2016-09-10 13:12:04');
INSERT INTO `resource` VALUES ('257', '删除', '/secHostInfoManage/delete', null, 'icon-del', '253', '3', '0', '1', '2016-09-10 13:12:46');
INSERT INTO `resource` VALUES ('258', '非密单机台帐', '/unsecHostInfoManage/manager', null, 'icon-folder', '227', '6', '0', '0', '2016-09-10 13:14:11');
INSERT INTO `resource` VALUES ('259', '列表', '/unsecHostInfoManage/dataGrid', null, 'icon-list', '258', '0', '0', '1', '2016-09-10 13:15:39');
INSERT INTO `resource` VALUES ('260', '文件上传', '/unsecHostInfoManage/fileUpload', null, 'icon-add', '258', '1', '0', '1', '2016-09-10 13:16:21');
INSERT INTO `resource` VALUES ('261', '详情', '/unsecHostInfoManage/queryDetail', null, 'icon-edit', '258', '2', '0', '1', '2016-09-10 13:17:00');
INSERT INTO `resource` VALUES ('262', '删除', '/unsecHostInfoManage/delete', null, 'icon-del', '258', '3', '0', '1', '2016-09-10 13:17:34');
INSERT INTO `resource` VALUES ('263', '互联网计算机台帐', '/internetInfoManage/manager', null, 'icon-folder', '227', '7', '0', '0', '2016-09-10 13:18:25');
INSERT INTO `resource` VALUES ('264', '列表', '/internetInfoManage/dateGrid', null, 'icon-list', '263', '0', '0', '1', '2016-09-10 13:19:09');
INSERT INTO `resource` VALUES ('265', '文件上传', '/internetInfoManage/fileUpload', null, 'icon-add', '263', '1', '0', '1', '2016-09-10 13:19:31');
INSERT INTO `resource` VALUES ('266', '详情', '/internetInfoManage/queryDetail', null, 'icon-edit', '263', '2', '0', '1', '2016-09-10 13:20:07');
INSERT INTO `resource` VALUES ('267', '删除', '/internetInfoManage/delete', null, 'icon-del', '263', '3', '0', '1', '2016-09-10 13:20:31');
INSERT INTO `resource` VALUES ('268', '内网打印机台帐', '/printInfoManage/manager', null, 'icon-folder', '227', '7', '0', '0', '2016-09-10 13:21:25');
INSERT INTO `resource` VALUES ('269', '列表', '/printInfoManage/dataGrid', null, 'icon-list', '268', '0', '0', '1', '2016-09-10 13:22:39');
INSERT INTO `resource` VALUES ('270', '文件上传', '/printInfoManage/fileUpload', null, 'icon-add', '268', '1', '0', '1', '2016-09-10 13:23:02');
INSERT INTO `resource` VALUES ('271', '详情', '/printInfoManage/queryDetail', null, 'icon-edit', '268', '2', '0', '1', '2016-09-10 13:23:30');
INSERT INTO `resource` VALUES ('272', '删除', '/printInfoManage/delete', null, 'icon-del', '268', '3', '0', '1', '2016-09-10 13:23:55');
INSERT INTO `resource` VALUES ('273', '直连涉密打印设备台帐', '/secPrintInfoManage/manager', null, 'icon-folder', '227', '8', '0', '0', '2016-09-10 13:25:02');
INSERT INTO `resource` VALUES ('274', '列表', '/secPrintInfoManage/dataGrid', null, 'icon-list', '273', '0', '0', '1', '2016-09-10 13:25:37');
INSERT INTO `resource` VALUES ('275', '文件上传', '/secPrintInfoManage/fileUpload', null, 'icon-add', '273', '1', '0', '1', '2016-09-10 13:26:23');
INSERT INTO `resource` VALUES ('276', '详情', '/secPrintInfoManage/queryDetail', null, 'icon-edit', '273', '2', '0', '1', '2016-09-10 13:27:09');
INSERT INTO `resource` VALUES ('277', '删除', '/secPrintInfoManage/delete', null, 'icon-del', '273', '3', '0', '1', '2016-09-10 13:27:45');
INSERT INTO `resource` VALUES ('278', '非密直连打印机台帐', '/unSecPrintInfoManage/manager', null, 'icon-folder', '227', '9', '0', '0', '2016-09-10 13:28:37');
INSERT INTO `resource` VALUES ('279', '列表', '/unSecPrintInfoManage/dataGrid', null, 'icon-list', '278', '0', '0', '1', '2016-09-10 13:29:13');
INSERT INTO `resource` VALUES ('280', '文件上传', '/unSecPrintInfoManage/fileUpload', null, 'icon-add', '278', '1', '0', '1', '2016-09-10 13:29:58');
INSERT INTO `resource` VALUES ('281', '详情', '/unSecPrintInfoManage/queryDetail', null, 'icon-edit', '278', '2', '0', '1', '2016-09-10 13:30:27');
INSERT INTO `resource` VALUES ('282', '删除', '/unSecPrintInfoManage/delete', null, 'icon-del', '278', '3', '0', '1', '2016-09-10 13:31:05');
INSERT INTO `resource` VALUES ('283', '直连绘图仪台帐', '/plotterInfoManage/manager', null, 'icon-folder', '227', '10', '0', '0', '2016-09-10 13:32:25');
INSERT INTO `resource` VALUES ('284', '列表', '/plotterInfoManage/dataGrid', null, 'icon-list', '283', '0', '0', '1', '2016-09-10 13:32:55');
INSERT INTO `resource` VALUES ('285', '文件上传', '/plotterInfoManage/fileUpload', null, 'icon-add', '283', '1', '0', '1', '2016-09-10 13:33:19');
INSERT INTO `resource` VALUES ('286', '详情', '/plotterInfoManage/queryDetail', null, 'icon-edit', '283', '2', '0', '1', '2016-09-10 13:33:44');
INSERT INTO `resource` VALUES ('287', '删除', '/plotterInfoManage/delete', null, 'icon-del', '283', '3', '0', '1', '2016-09-10 13:34:11');
INSERT INTO `resource` VALUES ('288', '便携式计算机台帐', '/notePadInfoManage/manager', null, 'icon-folder', '227', '11', '0', '0', '2016-09-10 13:35:24');
INSERT INTO `resource` VALUES ('289', '列表', '/notePadInfoManage/dataGrid', null, 'icon-list', '288', '0', '0', '1', '2016-09-10 13:35:53');
INSERT INTO `resource` VALUES ('290', '文件上传', '/notePadInfoManage/fileUpload', null, 'icon-add', '288', '1', '0', '1', '2016-09-10 13:36:11');
INSERT INTO `resource` VALUES ('291', '详情', '/notePadInfoManage/queryDetail', null, 'icon-edit', '288', '2', '0', '1', '2016-09-10 13:36:33');
INSERT INTO `resource` VALUES ('292', '删除', '/notePadInfoManage/delete', null, 'icon-del', '288', '3', '0', '1', '2016-09-10 13:36:59');
INSERT INTO `resource` VALUES ('293', '考勤机台帐', '/plotterInfoManage/manager', null, 'icon-folder', '227', '12', '0', '0', '2016-09-10 13:37:37');
INSERT INTO `resource` VALUES ('294', '列表', '/plotterInfoManage/dataGrid', null, 'icon-list', '293', '0', '0', '1', '2016-09-10 13:38:05');
INSERT INTO `resource` VALUES ('295', '文件上传', '/plotterInfoManage/fileUpload', null, 'icon-add', '293', '1', '0', '1', '2016-09-10 13:38:28');
INSERT INTO `resource` VALUES ('296', '详情', '/plotterInfoManage/queryDetail', null, 'icon-edit', '293', '2', '0', '1', '2016-09-10 13:38:47');
INSERT INTO `resource` VALUES ('297', '删除', '/plotterInfoManage/delete', null, 'icon-del', '293', '3', '0', '1', '2016-09-10 13:39:12');
INSERT INTO `resource` VALUES ('298', '办公自动化设备台帐', '/oaAutoInfoManage/manager', null, 'icon-folder', '227', '13', '0', '0', '2016-09-10 13:40:24');
INSERT INTO `resource` VALUES ('299', '列表', '/oaAutoInfoManage/dataGrid', null, 'icon-list', '298', '0', '0', '1', '2016-09-10 13:41:04');
INSERT INTO `resource` VALUES ('300', '文件上传', '/oaAutoInfoManage/fileUpload', null, 'icon-add', '298', '1', '0', '1', '2016-09-10 13:41:25');
INSERT INTO `resource` VALUES ('301', '详情', '/oaAutoInfoManage/queryDetail', null, 'icon-edit', '298', '2', '0', '1', '2016-09-10 13:41:45');
INSERT INTO `resource` VALUES ('302', '删除', '/oaAutoInfoManage/delete', null, 'icon-del', '298', '3', '0', '1', '2016-09-10 13:42:19');
INSERT INTO `resource` VALUES ('303', '字典管理', '/dictionaryManager/manager', null, 'icon-folder', '221', '0', '0', '0', '2016-09-22 22:28:33');
INSERT INTO `resource` VALUES ('304', '列表', '/dictionaryManager/dataGrid', null, 'icon-list', '303', '1', '0', '1', '2016-09-22 22:31:18');
INSERT INTO `resource` VALUES ('305', '添加', '/dictionaryManager/add', null, 'icon-add', '303', '2', '0', '1', '2016-09-22 22:31:41');
INSERT INTO `resource` VALUES ('306', '编辑', '/dictionaryManager/edit', null, 'icon-edit', '303', '2', '0', '1', '2016-09-22 22:38:30');
INSERT INTO `resource` VALUES ('307', '删除', '/dictionaryManager/delete', null, 'icon-del', '303', '3', '0', '1', '2016-09-22 22:39:04');
INSERT INTO `resource` VALUES ('308', '台帐管理', '', null, 'icon-company', null, '5', '0', '0', '2016-09-24 15:26:43');
INSERT INTO `resource` VALUES ('309', '设备新增', '/changeOrder/managerAdd', null, 'icon-folder', '308', '0', '0', '0', '2016-09-24 15:29:10');
INSERT INTO `resource` VALUES ('310', '列表', '/changeOrder/dataGrid', null, 'icon-list', '309', '1', '0', '1', '2016-09-24 15:30:30');
INSERT INTO `resource` VALUES ('311', '添加', '/changeOrder/add', null, 'icon-add', '309', '2', '0', '1', '2016-09-24 15:31:18');
INSERT INTO `resource` VALUES ('312', '删除', '/changeOrder/delete', null, 'icon-del', '309', '3', '0', '1', '2016-09-24 15:32:19');
INSERT INTO `resource` VALUES ('316', '确定', '/changeOrder/confirm', null, 'icon-save', '309', '4', '0', '1', '2016-10-01 20:45:05');
INSERT INTO `resource` VALUES ('317', '设备变更', '/changeOrder/managerModify', null, 'icon-folder', '308', '1', '0', '0', '2016-10-12 20:34:59');
INSERT INTO `resource` VALUES ('318', '列表', '/changeOrder/dataGrid', null, 'icon-list', '317', '0', '0', '1', '2016-10-12 20:35:32');
INSERT INTO `resource` VALUES ('319', '修改', '/changeOrder/editPage', null, 'icon-edit', '317', '1', '0', '1', '2016-10-12 20:38:19');
INSERT INTO `resource` VALUES ('320', '设备清退', '/changeOrder/managerReturn', null, 'icon-folder', '308', '2', '0', '0', '2016-10-12 20:45:12');
INSERT INTO `resource` VALUES ('321', '列表', '/changeOrder/dataGrid', null, 'icon-list', '320', '0', '0', '1', '2016-10-12 20:46:10');
INSERT INTO `resource` VALUES ('322', '清退', '/changeOrder/returnPage', null, 'icon-edit', '320', '1', '0', '1', '2016-10-12 20:48:56');
INSERT INTO `resource` VALUES ('323', '待办事项', '/changeOrder/scheduleList', null, 'icon-folder', '308', '3', '0', '0', '2016-10-12 22:05:42');
INSERT INTO `resource` VALUES ('324', '列表', '/changeOrder/dataGrid', null, 'icon-list', '323', '0', '0', '1', '2016-10-12 22:06:07');
INSERT INTO `resource` VALUES ('325', '审核', '/changeOrder/confirm', null, 'icon-add', '323', '1', '0', '1', '2016-10-12 22:07:12');
INSERT INTO `resource` VALUES ('326', '台帐预警', '', null, 'icon-company', null, '6', '0', '0', '2016-10-18 23:10:39');
INSERT INTO `resource` VALUES ('327', 'U盘预警', '/combination/showWarnUsbPage', null, 'icon-folder', '326', '0', '0', '0', '2016-10-18 23:12:14');
INSERT INTO `resource` VALUES ('328', '列表', '/combination/warnUsbDataGrid', null, 'icon-list', '327', '0', '0', '1', '2016-10-18 23:13:00');
INSERT INTO `resource` VALUES ('329', '审核', '/combination/updateWarnUsbStatus', null, 'icon-add', '327', '1', '0', '1', '2016-10-19 21:06:13');
INSERT INTO `resource` VALUES ('330', '内网计算机台账预警', '/combination/showWarnComputerPage', null, 'icon-folder', '326', '1', '0', '0', '2016-10-19 21:07:42');
INSERT INTO `resource` VALUES ('331', '列表', '/combination/updateWarnUsbStatuswarnComputerDataGrid', null, 'icon-list', '330', '0', '0', '1', '2016-10-19 21:08:44');
INSERT INTO `resource` VALUES ('332', '忽略', '/combination/updateWarnComputerStatus', null, 'icon-del', '330', '1', '0', '1', '2016-10-19 22:23:55');
INSERT INTO `resource` VALUES ('333', '处理', '/combination/dealWarnComputer', null, 'icon-edit', '330', '2', '0', '1', '2016-10-19 22:24:36');
INSERT INTO `resource` VALUES ('334', 'USB白名单管理', '/combination/showUsbPage', null, 'icon-folder', '221', '1', '0', '0', '2016-10-20 22:18:19');
INSERT INTO `resource` VALUES ('335', '列表', '/combination/usbDataGrid', null, 'icon-list', '334', '0', '0', '1', '2016-10-20 22:19:17');
INSERT INTO `resource` VALUES ('336', '添加', '/combination/addUsbPage', null, 'icon-add', '334', '1', '0', '1', '2016-10-20 22:19:57');
INSERT INTO `resource` VALUES ('337', '删除', '/combination/usbDelete', null, 'icon-del', '334', '2', '0', '1', '2016-10-20 22:20:30');
INSERT INTO `resource` VALUES ('338', '编辑', '/combination/usbEditPage', null, 'icon-edit', '334', '0', '0', '1', '2016-10-20 22:20:51');
INSERT INTO `resource` VALUES ('339', '软件白名单', '/dictionaryManager/softwarePage', null, 'icon-folder', '308', '4', '0', '0', '2016-10-30 18:01:11');
INSERT INTO `resource` VALUES ('340', '列表', '/dictionaryManager/softwareDataGrid', null, 'icon-list', '339', '0', '0', '1', '2016-10-30 18:02:02');
INSERT INTO `resource` VALUES ('341', '添加', '/dictionaryManager/softwareAddPage', null, 'icon-add', '339', '1', '0', '1', '2016-10-30 18:02:49');
INSERT INTO `resource` VALUES ('342', '编辑', '/dictionaryManager/softwareEditPage', null, 'icon-edit', '339', '2', '0', '1', '2016-10-30 18:03:54');
INSERT INTO `resource` VALUES ('343', '删除', '/dictionaryManager/softwareDelete', null, 'icon-del', '339', '4', '0', '1', '2016-10-30 18:04:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=2021 DEFAULT CHARSET=utf8 COMMENT='角色资源';

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
INSERT INTO `role_resource` VALUES ('1884', '1', '1');
INSERT INTO `role_resource` VALUES ('1885', '1', '11');
INSERT INTO `role_resource` VALUES ('1886', '1', '111');
INSERT INTO `role_resource` VALUES ('1887', '1', '112');
INSERT INTO `role_resource` VALUES ('1888', '1', '113');
INSERT INTO `role_resource` VALUES ('1889', '1', '114');
INSERT INTO `role_resource` VALUES ('1890', '1', '12');
INSERT INTO `role_resource` VALUES ('1891', '1', '121');
INSERT INTO `role_resource` VALUES ('1892', '1', '122');
INSERT INTO `role_resource` VALUES ('1893', '1', '123');
INSERT INTO `role_resource` VALUES ('1894', '1', '124');
INSERT INTO `role_resource` VALUES ('1895', '1', '125');
INSERT INTO `role_resource` VALUES ('1896', '1', '13');
INSERT INTO `role_resource` VALUES ('1897', '1', '131');
INSERT INTO `role_resource` VALUES ('1898', '1', '132');
INSERT INTO `role_resource` VALUES ('1899', '1', '133');
INSERT INTO `role_resource` VALUES ('1900', '1', '134');
INSERT INTO `role_resource` VALUES ('1901', '1', '14');
INSERT INTO `role_resource` VALUES ('1902', '1', '141');
INSERT INTO `role_resource` VALUES ('1903', '1', '142');
INSERT INTO `role_resource` VALUES ('1904', '1', '143');
INSERT INTO `role_resource` VALUES ('1905', '1', '144');
INSERT INTO `role_resource` VALUES ('1906', '1', '221');
INSERT INTO `role_resource` VALUES ('1907', '1', '303');
INSERT INTO `role_resource` VALUES ('1908', '1', '304');
INSERT INTO `role_resource` VALUES ('1909', '1', '305');
INSERT INTO `role_resource` VALUES ('1910', '1', '306');
INSERT INTO `role_resource` VALUES ('1911', '1', '307');
INSERT INTO `role_resource` VALUES ('1912', '1', '334');
INSERT INTO `role_resource` VALUES ('1913', '1', '335');
INSERT INTO `role_resource` VALUES ('1914', '1', '338');
INSERT INTO `role_resource` VALUES ('1915', '1', '336');
INSERT INTO `role_resource` VALUES ('1916', '1', '337');
INSERT INTO `role_resource` VALUES ('1917', '1', '227');
INSERT INTO `role_resource` VALUES ('1918', '1', '228');
INSERT INTO `role_resource` VALUES ('1919', '1', '229');
INSERT INTO `role_resource` VALUES ('1920', '1', '230');
INSERT INTO `role_resource` VALUES ('1921', '1', '231');
INSERT INTO `role_resource` VALUES ('1922', '1', '232');
INSERT INTO `role_resource` VALUES ('1923', '1', '233');
INSERT INTO `role_resource` VALUES ('1924', '1', '234');
INSERT INTO `role_resource` VALUES ('1925', '1', '235');
INSERT INTO `role_resource` VALUES ('1926', '1', '236');
INSERT INTO `role_resource` VALUES ('1927', '1', '237');
INSERT INTO `role_resource` VALUES ('1928', '1', '238');
INSERT INTO `role_resource` VALUES ('1929', '1', '239');
INSERT INTO `role_resource` VALUES ('1930', '1', '240');
INSERT INTO `role_resource` VALUES ('1931', '1', '241');
INSERT INTO `role_resource` VALUES ('1932', '1', '242');
INSERT INTO `role_resource` VALUES ('1933', '1', '243');
INSERT INTO `role_resource` VALUES ('1934', '1', '244');
INSERT INTO `role_resource` VALUES ('1935', '1', '245');
INSERT INTO `role_resource` VALUES ('1936', '1', '246');
INSERT INTO `role_resource` VALUES ('1937', '1', '247');
INSERT INTO `role_resource` VALUES ('1938', '1', '248');
INSERT INTO `role_resource` VALUES ('1939', '1', '249');
INSERT INTO `role_resource` VALUES ('1940', '1', '250');
INSERT INTO `role_resource` VALUES ('1941', '1', '251');
INSERT INTO `role_resource` VALUES ('1942', '1', '252');
INSERT INTO `role_resource` VALUES ('1943', '1', '253');
INSERT INTO `role_resource` VALUES ('1944', '1', '254');
INSERT INTO `role_resource` VALUES ('1945', '1', '255');
INSERT INTO `role_resource` VALUES ('1946', '1', '256');
INSERT INTO `role_resource` VALUES ('1947', '1', '257');
INSERT INTO `role_resource` VALUES ('1948', '1', '258');
INSERT INTO `role_resource` VALUES ('1949', '1', '259');
INSERT INTO `role_resource` VALUES ('1950', '1', '260');
INSERT INTO `role_resource` VALUES ('1951', '1', '261');
INSERT INTO `role_resource` VALUES ('1952', '1', '262');
INSERT INTO `role_resource` VALUES ('1953', '1', '263');
INSERT INTO `role_resource` VALUES ('1954', '1', '264');
INSERT INTO `role_resource` VALUES ('1955', '1', '265');
INSERT INTO `role_resource` VALUES ('1956', '1', '266');
INSERT INTO `role_resource` VALUES ('1957', '1', '267');
INSERT INTO `role_resource` VALUES ('1958', '1', '268');
INSERT INTO `role_resource` VALUES ('1959', '1', '269');
INSERT INTO `role_resource` VALUES ('1960', '1', '270');
INSERT INTO `role_resource` VALUES ('1961', '1', '271');
INSERT INTO `role_resource` VALUES ('1962', '1', '272');
INSERT INTO `role_resource` VALUES ('1963', '1', '273');
INSERT INTO `role_resource` VALUES ('1964', '1', '274');
INSERT INTO `role_resource` VALUES ('1965', '1', '275');
INSERT INTO `role_resource` VALUES ('1966', '1', '276');
INSERT INTO `role_resource` VALUES ('1967', '1', '277');
INSERT INTO `role_resource` VALUES ('1968', '1', '278');
INSERT INTO `role_resource` VALUES ('1969', '1', '279');
INSERT INTO `role_resource` VALUES ('1970', '1', '280');
INSERT INTO `role_resource` VALUES ('1971', '1', '281');
INSERT INTO `role_resource` VALUES ('1972', '1', '282');
INSERT INTO `role_resource` VALUES ('1973', '1', '283');
INSERT INTO `role_resource` VALUES ('1974', '1', '284');
INSERT INTO `role_resource` VALUES ('1975', '1', '285');
INSERT INTO `role_resource` VALUES ('1976', '1', '286');
INSERT INTO `role_resource` VALUES ('1977', '1', '287');
INSERT INTO `role_resource` VALUES ('1978', '1', '288');
INSERT INTO `role_resource` VALUES ('1979', '1', '289');
INSERT INTO `role_resource` VALUES ('1980', '1', '290');
INSERT INTO `role_resource` VALUES ('1981', '1', '291');
INSERT INTO `role_resource` VALUES ('1982', '1', '292');
INSERT INTO `role_resource` VALUES ('1983', '1', '293');
INSERT INTO `role_resource` VALUES ('1984', '1', '294');
INSERT INTO `role_resource` VALUES ('1985', '1', '295');
INSERT INTO `role_resource` VALUES ('1986', '1', '296');
INSERT INTO `role_resource` VALUES ('1987', '1', '297');
INSERT INTO `role_resource` VALUES ('1988', '1', '298');
INSERT INTO `role_resource` VALUES ('1989', '1', '299');
INSERT INTO `role_resource` VALUES ('1990', '1', '300');
INSERT INTO `role_resource` VALUES ('1991', '1', '301');
INSERT INTO `role_resource` VALUES ('1992', '1', '302');
INSERT INTO `role_resource` VALUES ('1993', '1', '308');
INSERT INTO `role_resource` VALUES ('1994', '1', '309');
INSERT INTO `role_resource` VALUES ('1995', '1', '310');
INSERT INTO `role_resource` VALUES ('1996', '1', '311');
INSERT INTO `role_resource` VALUES ('1997', '1', '312');
INSERT INTO `role_resource` VALUES ('1998', '1', '316');
INSERT INTO `role_resource` VALUES ('1999', '1', '317');
INSERT INTO `role_resource` VALUES ('2000', '1', '318');
INSERT INTO `role_resource` VALUES ('2001', '1', '319');
INSERT INTO `role_resource` VALUES ('2002', '1', '320');
INSERT INTO `role_resource` VALUES ('2003', '1', '321');
INSERT INTO `role_resource` VALUES ('2004', '1', '322');
INSERT INTO `role_resource` VALUES ('2005', '1', '323');
INSERT INTO `role_resource` VALUES ('2006', '1', '324');
INSERT INTO `role_resource` VALUES ('2007', '1', '325');
INSERT INTO `role_resource` VALUES ('2008', '1', '339');
INSERT INTO `role_resource` VALUES ('2009', '1', '340');
INSERT INTO `role_resource` VALUES ('2010', '1', '341');
INSERT INTO `role_resource` VALUES ('2011', '1', '342');
INSERT INTO `role_resource` VALUES ('2012', '1', '343');
INSERT INTO `role_resource` VALUES ('2013', '1', '326');
INSERT INTO `role_resource` VALUES ('2014', '1', '327');
INSERT INTO `role_resource` VALUES ('2015', '1', '328');
INSERT INTO `role_resource` VALUES ('2016', '1', '329');
INSERT INTO `role_resource` VALUES ('2017', '1', '330');
INSERT INTO `role_resource` VALUES ('2018', '1', '331');
INSERT INTO `role_resource` VALUES ('2019', '1', '332');
INSERT INTO `role_resource` VALUES ('2020', '1', '333');

-- ----------------------------
-- Table structure for sechostinfo
-- ----------------------------
DROP TABLE IF EXISTS `sechostinfo`;
CREATE TABLE `sechostinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialno` varchar(100) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
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
  `infostatus` varchar(100) DEFAULT NULL,
  `roomid` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sechostinfo
-- ----------------------------
INSERT INTO `sechostinfo` VALUES ('3', 'XH0001', 'XH100', 'ZC10001', '数据部门', '张三', 'XH100', '配置', 'XSQ1001', 'ZJ0001', 'YP1001', '2016-10-28 23:31:52', '高级', '无', '50:7B:9D:77:F0:62', '2016-10-28 23:32:02', '无', 'FJ1001', '0', '2016-10-28 23:32:11', '5abf80d4-b53b-4c55-97da-b3df64909377');
INSERT INTO `sechostinfo` VALUES ('4', 'XH0001', 'XH100', 'ZC10001', '数据部门', '张三', 'XH100', '配置', 'XSQ1001', 'ZJ0001', 'YP1001', '2016-10-28 23:31:52', '高级', '无', '50:7B:9D:77:F0:62', '2016-10-28 23:32:02', '0', 'FJ1001', '0', '2016-10-30 21:12:30', '024b3f7d-83e8-4d0e-9615-500e15b30ba9');

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
  `infostatus` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secprintinfo
-- ----------------------------
INSERT INTO `secprintinfo` VALUES ('1', 'asdsa', 'asd', 'asd', 'asd', 'asd', 'asda', 'adsa', 'adsa', 'ads', 'asd', '2016-09-08 20:28:53', 'asadads', 'asdasd', 'asd', 'asda', 'asd', null, null, null);
INSERT INTO `secprintinfo` VALUES ('2', '北京', 'XH100', '房间号', 'ZC001', '阿萨德', '张三', '名牌', 'XH100', '规格', 'XH0001', '2016-10-29 19:26:24', '高级', '无', '直连', '无', '无', '1', '2016-10-29 19:26:38', 'a99d0312-5999-420d-9c6b-75f2c01871a5');
INSERT INTO `secprintinfo` VALUES ('3', '北京', 'BH001', '房间号', 'ZC001', '阿萨德', '张三', '名牌', 'XH100', '规格', 'XH0001', '2016-10-30 21:15:26', '高级', '无', '直连', '无', '无', '1', '2016-10-30 21:15:41', '9b634def-48f0-4a74-a748-7a5c60526493');

-- ----------------------------
-- Table structure for secproductinfo
-- ----------------------------
DROP TABLE IF EXISTS `secproductinfo`;
CREATE TABLE `secproductinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devno` varchar(100) DEFAULT NULL,
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
  `infostatus` varchar(200) DEFAULT NULL,
  `region` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secproductinfo
-- ----------------------------
INSERT INTO `secproductinfo` VALUES ('3', 'XH100', '数据部', '张三', '高级', '新命名', '联想', 'BH1001', '192.168.10.100', '50:7B:9D:77:F0:62', '北京', '8080', '三楼左三', '无', '无', '北京', '无', '0', '2016-10-28 20:51:13', 'd6aa467d-3010-4f1e-9ebf-b32288b29e11');
INSERT INTO `secproductinfo` VALUES ('4', 'XH100', '数据部', '张三', '高级', '新命名', '联想', 'BH1001', '192.168.10.100', '50:7B:9D:77:F0:62', '北京', '8080', '三楼左三', '无', '无', '北京', '无', '0', '2016-10-30 20:30:46', '72042d6c-d0dc-4e8e-96eb-3a580ee6070a');
INSERT INTO `secproductinfo` VALUES ('5', 'XH100', '数据部', '张三', '高级', '新命名', '联想', 'BH1001', '192.168.10.100', '50:7B:9D:77:F0:62', '北京', '8080', '三楼左三', '无', '无', '北京', '无', '0', '2016-10-30 21:26:49', 'bf528af0-bd00-4725-8eac-c1a8e6033661');

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
  `status` varchar(20) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `changeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servermanage
-- ----------------------------
INSERT INTO `servermanage` VALUES ('4', '11', '22', '33', '44', '55', '66', '77', '88', '99', '100', '2016-08-31 21:08:05', '111', '112', '113', '114', '115', '116', '117', '118', '119999', null, null, null);
INSERT INTO `servermanage` VALUES ('6', 'XH0001', 'BH100', 'SB1111', '数据部', '萧景姸', 'XH100', '配置', '设备序列号', 'S22XNXAGB49717', 'windows10', '2016-10-22 19:24:27', '高级', '50:7B:9D:77:F0:62', '169.254.139.125', '东宫', '良好', '无', '楼上楼', '台帐', '无', '1', '2016-10-22 19:25:45', '2b6b8682-920a-47aa-aaa6-6741c827a064');
INSERT INTO `servermanage` VALUES ('7', 'XH0001', 'BH100', 'SB1111', '数据部', '萧景姸', 'XH100', '配置', '设备序列号', 'S22XNXAGB49717', 'windows10', '2016-10-27 20:20:09', '高级', '50:7B:9D:77:F0:62', '169.254.139.125', '东宫', '良好', '无', '楼上楼', '台帐', '无', '0', '2016-10-27 20:20:52', 'aa24aacb-79b5-4733-a719-fd201d0faf74');
INSERT INTO `servermanage` VALUES ('8', 'XH0001', 'BH100', 'SB1111', '数据部', '萧景姸', 'XH100', '配置', '设备序列号', 'S22XNXAGB49717', 'windows10', '2016-10-27 20:20:09', '高级', '50:7B:9D:77:F0:62', '169.254.139.125', '东宫', '良好', '无', '楼上楼', '台帐', '无', '0', '2016-10-30 20:23:55', 'ed537819-f044-4928-9687-6153d4030766');

-- ----------------------------
-- Table structure for serviceinfo
-- ----------------------------
DROP TABLE IF EXISTS `serviceinfo`;
CREATE TABLE `serviceinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `Description` text COMMENT '服务描述',
  `Name` varchar(100) DEFAULT NULL COMMENT '服务名称',
  `ProcessId` varchar(100) DEFAULT NULL COMMENT '进程ID',
  `StartMode` varchar(100) DEFAULT NULL COMMENT '启动模式',
  `State` varchar(100) DEFAULT NULL COMMENT '状态',
  `PathName` varchar(300) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL COMMENT '现状',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1433 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serviceinfo
-- ----------------------------
INSERT INTO `serviceinfo` VALUES ('1235', '192.168.31.213', '50:7B:9D:77:F0:62', '本服务只用于加载360杀毒实时防护，请确保开机启动，系统启动后将退出。', '360rp', '1748', 'Auto', 'Running', '\"C:\\software\\360\\360sd\\360rps.exe\"', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1236', '192.168.31.213', '50:7B:9D:77:F0:62', '为 Internet 连接共享提供第三方协议插件的支持', 'ALG', '4024', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\alg.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1237', '192.168.31.213', '50:7B:9D:77:F0:62', '为 IIS 提供管理服务，例如配置历史记录和应用程序池帐户映射。如果停止此服务，则配置历史记录将无法工作，也无法用特定于应用程序池的访问控制项锁定文件或目录。', 'AppHostSvc', '2468', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k apphost', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1238', '169.254.139.125', '50:7B:9D:77:F0:62', '使用辅助管理权限便于交互式应用程序的运行。如果停止此服务，用户将无法使用辅助管理权限启动应用程序，而执行所需用户任务可能需要这些权限。', 'Appinfo', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1239', '169.254.139.125', '50:7B:9D:77:F0:62', '管理 Windows 音频服务的音频设备。如果停止了此服务，音频设备和效果将无法正常工作。如果禁用了此服务，任何明确依赖它的服务将无法启动', 'AudioEndpointBuilder', '832', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1240', '169.254.139.125', '50:7B:9D:77:F0:62', '管理基于 Windows 的程序的音频。如果此服务被停止，音频设备和效果将不能正常工作。如果此服务被禁用，任何依赖它的服务将无法启动', 'Audiosrv', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1241', '169.254.139.125', '50:7B:9D:77:F0:62', '基本筛选引擎(BFE)是一种管理防火墙和 Internet 协议安全(IPsec)策略以及实施用户模式筛选的服务。停止或禁用 BFE 服务将大大降低系统的安全。还将造成 IPsec 管理和防火墙应用程序产生不可预知的行为。', 'BFE', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1242', '169.254.139.125', '50:7B:9D:77:F0:62', '使用空闲网络带宽在后台传送文件。如果该服务被禁用，则依赖于 BITS 的任何应用程序(如 Windows 更新或 MSN Explorer)将无法自动下载程序和其他信息。', 'BITS', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1243', '169.254.139.125', '50:7B:9D:77:F0:62', '控制哪些后台任务可以在系统上运行的 Windows 基础结构服务。', 'BrokerInfrastructure', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1244', '169.254.139.125', '50:7B:9D:77:F0:62', '维护网络上计算机的更新列表，并将列表提供给计算机指定浏览。如果服务停止，列表不会被更新或维护。如果服务被禁用，任何直接依赖于此服务的服务将无法启动。', 'Browser', '484', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1245', '169.254.139.125', '50:7B:9D:77:F0:62', 'Manages communication between system components.', 'CoreMessagingRegistrar', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1246', '169.254.139.125', '50:7B:9D:77:F0:62', 'Intel(R) Content Protection HECI Service - enables communication with the Content Protection FW', 'cphs', '1836', 'Manual', 'Running', 'C:\\WINDOWS\\SysWow64\\IntelCpHeciSvc.exe', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1247', '169.254.139.125', '50:7B:9D:77:F0:62', '提供三种管理服务: 编录数据库服务，用于确认 Windows 文件的签名和允许安装新程序；受保护的根服务，它从此计算机添加和删除受信任的根证书颁发机构的证书；自动根证书更新服务，用于从 Windows 更新中检索根证书和启用 SSL 等方案。如果此服务已停止，这些管理服务将无法正常运行。如果此服务已禁用，任何明确依赖它的服务将无法启动。', 'CryptSvc', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkService', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1248', '169.254.139.125', '50:7B:9D:77:F0:62', 'DCOMLAUNCH 服务可启动 COM 和 DCOM 服务器，以响应对象激活请求。如果此服务被停用或禁用，则使用 COM 或 DCOM 的程序将无法正常工作。强烈建议你运行 DCOMLAUNCH 服务。', 'DcomLaunch', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1249', '169.254.139.125', '50:7B:9D:77:F0:62', '在系统与有线或无线设备之间启用匹配。', 'DeviceAssociationService', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1250', '169.254.139.125', '50:7B:9D:77:F0:62', '为此计算机注册并更新 IP 地址。如果此服务停止，计算机将不能接收动态 IP 地址和 DNS 更新。如果此服务被禁用，所有明确依赖它的服务都将不能启动。', 'Dhcp', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1251', '169.254.139.125', '50:7B:9D:77:F0:62', 'Connected User Experiences and Telemetry 服务所启用的功能支持应用程序中用户体验和连接的用户体验。此外，如果在“反馈和诊断”下启用诊断和使用情况隐私选项设置，则此服务可以根据事件来管理诊断和使用情况信息的收集和传输(用于改进 Windows 平台的体验和质量)。', 'DiagTrack', '2624', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k utcsvc', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1252', '169.254.139.125', '50:7B:9D:77:F0:62', 'DNS 客户端服务(dnscache)缓存域名系统(DNS)名称并注册该计算机的完整计算机名。如果该服务被停止，将继续解析 DNS 名称。然而，将不缓存 DNS 名称的查询结果，且不注册计算机名。如果该服务被禁用，则任何明确依赖于它的服务都将无法启动。', 'Dnscache', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkService', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1253', '169.254.139.125', '50:7B:9D:77:F0:62', '执行内容传递优化任务', 'DoSvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1254', '169.254.139.125', '50:7B:9D:77:F0:62', '诊断策略服务启用了 Windows 组件的问题检测、疑难解答和解决方案。如果该服务被停止，诊断将不再运行。', 'DPS', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1255', '169.254.139.125', '50:7B:9D:77:F0:62', '提供应用程序之间的数据代理。', 'DsSvc', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1256', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'ETDService', '2536', 'Auto', 'Running', '\"C:\\Program Files\\Elantech\\ETDService.exe\"', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1257', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务管理事件和事件日志。它支持日志记录事件、查询事件、订阅事件、归档事件日志以及管理事件元数据。它可以用 XML 和纯文本两种格式显示事件。停止该服务可能危及系统的安全性和可靠性。', 'EventLog', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1258', '169.254.139.125', '50:7B:9D:77:F0:62', '支持系统事件通知服务 (SENS)，此服务为订阅的组件对象模型 (COM) 组件提供自动分布事件功能。如果停止此服务，SENS 将关闭，而且不能提供登录和注销通知。如果禁用此服务，显式依赖此服务的其他服务都将无法启动。', 'EventSystem', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1259', '169.254.139.125', '50:7B:9D:77:F0:62', '通过缓存常用字体数据优化应用程序的性能。如果尚未运行该服务，则应用程序将启动该服务。也可以禁用该服务，但是这样做会降低应用程序性能。', 'FontCache', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1260', '169.254.139.125', '50:7B:9D:77:F0:62', '通过缓存常用的字体数据来优化 Windows Presentation Foundation (WPF) 应用程序的性能。WPF 应用程序将启动此服务(如果尚未启动)。可以禁用此服务，尽管这样做会降低 WPF 应用程序的性能。', 'FontCache3.0.0.0', '1828', 'Manual', 'Running', 'C:\\WINDOWS\\Microsoft.Net\\Framework64\\v3.0\\WPF\\PresentationFontCache.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1261', '169.254.139.125', '50:7B:9D:77:F0:62', '激活键盘、遥控器和其他多媒体设备上的热按钮并继续使用这些按钮。建议你让此服务一直运行。', 'hidserv', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1262', '169.254.139.125', '50:7B:9D:77:F0:62', 'Intel(R) Wireless Bluetooth(R) iBtSiva Service', 'ibtsiva', '2652', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\ibtsiva', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1263', '169.254.139.125', '50:7B:9D:77:F0:62', 'Service for Intel(R) HD Graphics Control Panel', 'igfxCUIService2.0.0.0', '1344', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\igfxCUIService.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1264', '169.254.139.125', '50:7B:9D:77:F0:62', 'IKEEXT 服务托管 Internet 密钥交换(IKE)和身份验证 Internet 协议(AuthIP)键控模块。这些键控模块用于 Internet 协议安全(IPSec)中的身份验证和密钥交换。停止或禁用 IKEEXT 服务将禁用与对等计算机的 IKE/AuthIP 密钥交换。通常将 IPSec 配置为使用 IKE 或 AuthIP，因此停止或禁用 IKEEXT 服务将导致 IPSec 故障并且危及系统的安全。强烈建议运行 IKEEXT 服务。', 'IKEEXT', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1265', '169.254.139.125', '50:7B:9D:77:F0:62', '使用 IPv6 转换技术(6to4、ISATAP、端口代理和 Teredo)和 IP-HTTPS 提供隧道连接。如果停止该服务，则计算机将不具备这些技术提供的增强连接优势。', 'iphlpsvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetSvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1266', '169.254.139.125', '50:7B:9D:77:F0:62', 'CNG 密钥隔离服务宿主在 LSA 进程中。如一般原则所要求，该服务为私钥和相关加密操作提供密钥进程隔离。该服务在与一般原则要求相一致的安全进程中存储和使用生存期长的密钥。', 'KeyIso', '764', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1267', '169.254.139.125', '50:7B:9D:77:F0:62', '支持此计算机通过网络的文件、打印、和命名管道共享。如果服务停止，这些功能不可用。如果服务被禁用，任何直接依赖于此服务的服务将无法启动。', 'LanmanServer', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1268', '169.254.139.125', '50:7B:9D:77:F0:62', '使用 SMB 协议创建并维护客户端网络与远程服务器之间的连接。如果此服务已停止，这些连接将无法使用。如果此服务已禁用，任何明确依赖它的服务将无法启动。', 'LanmanWorkstation', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetworkService', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1269', '169.254.139.125', '50:7B:9D:77:F0:62', '联想驱动管理服务，包括驱动升级、硬件检测以及质保查询服务。', 'LenovoDrvSv', '2692', 'Auto', 'Running', 'C:\\software\\Lenovo Drivers Management\\lenovodrvsrv.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1270', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务将监视系统的当前位置并管理地理围栏(具有关联事件的地理位置)。如果你禁用此服务，应用程序将无法使用或接收有关地理位置或地理围栏的通知。', 'lfsvc', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1271', '169.254.139.125', '50:7B:9D:77:F0:62', '为 Windows 应用商店提供基础结构支持。此服务按需启动，如果禁用此服务，则通过 Windows 应用商店获得的内容将无法正常运行。', 'LicenseManager', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1272', '169.254.139.125', '50:7B:9D:77:F0:62', '提供 TCP/IP (NetBT) 服务上的 NetBIOS 和网络上客户端的 NetBIOS 名称解析的支持，从而使用户能够共享文件、打印和登录到网络。如果此服务被停用，这些功能可能不可用。如果此服务被禁用，任何依赖它的服务将无法启动。', 'lmhosts', '1040', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1273', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'LSM', '864', 'Unknown', 'Running', '', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1274', '169.254.139.125', '50:7B:9D:77:F0:62', 'Windows 防火墙通过阻止未授权用户通过 Internet 或网络访问你的计算机来帮助保护计算机。', 'MpsSvc', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1275', '169.254.139.125', '50:7B:9D:77:F0:62', '提供消息结构和开发工具，用于创建基于 Windows 的网络和程序的分布式消息应用程序。如果停止该服务，那么分布式消息将无法使用，如果禁用该服务，那么任何直接依靠它的服务将无法启动。', 'MSMQ', '2580', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\mqsvc.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1276', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'MySQL', '2860', 'Auto', 'Running', '\"C:\\Program Files (x86)\\MySQL\\MySQL Server 5.5\\bin\\mysqld\" --defaults-file', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1277', '169.254.139.125', '50:7B:9D:77:F0:62', '允许 Windows 应用商店应用从 Internet 接收通知的代理连接。', 'NcbService', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1278', '169.254.139.125', '50:7B:9D:77:F0:62', '管理“网络和拨号连接”文件夹中对象，在其中你可以查看局域网和远程连接。', 'Netman', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1279', '169.254.139.125', '50:7B:9D:77:F0:62', '通过 net.msmq 和 msmq.formatname 协议接收到激活请求并将其传递给 Windows 进程激活服务。', 'NetMsmqActivator', '8', 'Auto', 'Running', '\"C:\\WINDOWS\\Microsoft.NET\\Framework64\\v4.0.30319\\SMSvcHost.exe\" -NetMsmqActivator', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1280', '169.254.139.125', '50:7B:9D:77:F0:62', '通过 net.pipe 协议接收激活请求并将其传递给 Windows 进程激活服务。', 'NetPipeActivator', '3492', 'Auto', 'Running', 'C:\\WINDOWS\\Microsoft.NET\\Framework64\\v4.0.30319\\SMSvcHost.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1281', '169.254.139.125', '50:7B:9D:77:F0:62', '识别计算机已连接的网络，收集和存储这些网络的属性，并在更改这些属性时通知应用程序。', 'netprofm', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1282', '169.254.139.125', '50:7B:9D:77:F0:62', '收集和存储网络的配置信息，并在此信息被修改时向程序发出通知。如果停止此服务，则配置信息可能不可用；如果禁用此服务，则显式依赖此服务的所有服务都将无法启动。', 'NlaSvc', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetworkService', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1283', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务向用户模式客户端发送网络通知(例如，添加/删除接口等)。停止此服务将导致丢失网络连接。如果禁用此服务，则显式依赖此服务的所有其他服务都将无法启动。', 'nsi', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1284', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务为程序兼容性助手(PCA)提供支持。PCA 监视由用户安装和运行的程序，并检测已知兼容性问题。如果停止此服务，PCA 将无法正常运行。', 'PcaSvc', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1285', '169.254.139.125', '50:7B:9D:77:F0:62', '使计算机在极少或没有用户输入的情况下能识别并适应硬件的更改。终止或禁用此服务会造成系统不稳定。', 'PlugPlay', '864', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1286', '169.254.139.125', '50:7B:9D:77:F0:62', 'Internet 协议安全(IPSec)支持网络级别的对等身份验证、数据原始身份验证、数据完整性、数据机密性(加密)以及重播保护。此服务强制执行通过 IP 安全策略管理单元或命令行工具 \"netsh ipsec\" 创建的 IPSec 策略。停止此服务时，如果策略需要连接使用 IPSec，可能会遇到网络连接问题。同样，此服务停止时，Windows 防火墙的远程管理也不再可用。', 'PolicyAgent', '3460', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkServiceNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1287', '169.254.139.125', '50:7B:9D:77:F0:62', '管理电源策略和电源策略通知传递。', 'Power', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1288', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务负责加载和卸载用户配置文件。如果已停止或禁用此服务，用户将无法再成功登录或注销，应用在获取用户数据时可能会出问题，而且为接收配置文件事件通知注册的组件将无法接收这些通知。', 'ProfSvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1289', '169.254.139.125', '50:7B:9D:77:F0:62', '腾讯安全服务', 'QPCore', '2668', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\Tencent\\QQProtect\\Bin\\QQProtect.exe\"', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1290', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'QQCertificateService', '2660', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\tencent\\paycenter\\TenpayServer.exe\"', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1291', '169.254.139.125', '50:7B:9D:77:F0:62', '解析 RPC 接口标识符以传输端点。如果此服务被停止或禁用，使用远程过程调用(RPC)服务的程序将无法正常运行。', 'RpcEptMapper', '972', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k RPCSS', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1292', '169.254.139.125', '50:7B:9D:77:F0:62', '在 Windows 2003 和 Windows 的早期版本中，远程过程调用(RPC)定位器服务可管理 RPC 名称服务数据库。在 Windows Vista 和 Windows 的更新版本中，此服务不提供任何功能，但可用于应用程序兼容性。', 'RpcLocator', '3884', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\locator.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1293', '169.254.139.125', '50:7B:9D:77:F0:62', 'RPCSS 服务是 COM 和 DCOM 服务器的服务控制管理器。它执行 COM 和 DCOM 服务器的对象激活请求、对象导出程序解析和分布式垃圾回收。如果此服务被停用或禁用，则使用 COM 或 DCOM 的程序将无法正常工作。强烈建议你运行 RPCSS 服务。', 'RpcSs', '972', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k rpcss', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1294', '169.254.139.125', '50:7B:9D:77:F0:62', '启动此服务将向其他服务发出信号: 安全帐户管理器(SAM)已准备就绪，可以接受请求。禁用此服务将导致在 SAM 准备就绪时，无法通知系统中的其他服务，从而可能导致这些服务无法正确启动。不应禁用此服务。', 'SamSs', '764', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1295', '169.254.139.125', '50:7B:9D:77:F0:62', '使用户可以在此计算机上配置和计划自动任务。此服务还托管多个 Windows 系统关键任务。如果此服务被停止或禁用，这些任务将无法在计划的时间运行。如果此服务被禁用，则明确依赖它的所有服务将无法启动。', 'Schedule', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1296', '169.254.139.125', '50:7B:9D:77:F0:62', '监视系统事件并通知订户这些事件的 COM+ 事件系统。', 'SENS', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1297', '169.254.139.125', '50:7B:9D:77:F0:62', '一项用于管理各种传感器的功能的传感器服务。管理传感器的简单设备方向(SDO)和历史记录。加载对设备方向变化进行报告的 SDO 传感器。如果停止或禁用了此服务，则将不会加载 SDO 传感器，因此不会发生自动旋转。来自传感器的历史记录收集也将停止。', 'SensorService', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1298', '169.254.139.125', '50:7B:9D:77:F0:62', '为家庭和小型办公网络提供网络地址转换、寻址、名称解析和/或入侵保护服务。', 'SharedAccess', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1299', '169.254.139.125', '50:7B:9D:77:F0:62', '为自动播放硬件事件提供通知。', 'ShellHWDetection', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1300', '169.254.139.125', '50:7B:9D:77:F0:62', '该服务在后台执行打印作业并处理与打印机的交互。如果关闭该服务，则无法进行打印或查看打印机。', 'Spooler', '2076', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\spoolsv.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1301', '169.254.139.125', '50:7B:9D:77:F0:62', '当发现了使用 SSDP 协议的网络设备和服务，如 UPnP 设备，同时还报告了运行在本地计算机上使用的 SSDP 设备和服务。如果停止此服务，基于 SSDP 的设备将不会被发现。如果禁用此服务，任何依赖此服务的服务都无法正常启动。', 'SSDPSRV', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1302', '169.254.139.125', '50:7B:9D:77:F0:62', '为应用程序模型提供所需的基础结构支持。', 'StateRepository', '2916', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k appmodel', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1303', '169.254.139.125', '50:7B:9D:77:F0:62', '维护和提高一段时间内的系统性能。', 'SysMain', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1304', '169.254.139.125', '50:7B:9D:77:F0:62', '协调执行 WinRT 应用程序的后台作业。如果停止或禁用此服务，则可能不会触发后台作业。', 'SystemEventsBroker', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1305', '169.254.139.125', '50:7B:9D:77:F0:62', '为用户提供使用主题管理的体验。', 'Themes', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1306', '169.254.139.125', '50:7B:9D:77:F0:62', '用于获取图块更新的图块服务器。', 'tiledatamodelsvc', '2916', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k appmodel', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1307', '169.254.139.125', '50:7B:9D:77:F0:62', '协调执行 WinRT 应用程序的后台作业。如果停止或禁用此服务，则可能不会触发后台作业。', 'TimeBroker', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1308', '169.254.139.125', '50:7B:9D:77:F0:62', '允许 UPnP 设备宿主在此计算机上。如果停止此服务，则所有宿主的 UPnP 设备都将停止工作，并且不能添加其他宿主设备。如果禁用此服务，则任何显式依赖于它的服务将都无法启动。', 'upnphost', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1309', '169.254.139.125', '50:7B:9D:77:F0:62', '用户管理器提供多用户交互所需要的运行时组件。如果停止此服务，某些应用程序可能无法正确运行。', 'UserManager', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1310', '169.254.139.125', '50:7B:9D:77:F0:62', '为用户、应用程序和安全服务包提供凭据的安全存储和检索。', 'VaultSvc', '764', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1311', '169.254.139.125', '50:7B:9D:77:F0:62', 'Authorization and authentication service for starting and accessing virtual machines.', 'VMAuthdService', '2844', 'Auto', 'Running', 'C:\\software\\VMWare\\vmware-authd.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1312', '169.254.139.125', '50:7B:9D:77:F0:62', 'DHCP service for virtual networks.', 'VMnetDHCP', '2788', 'Auto', 'Running', 'C:\\Windows\\SysWOW64\\vmnetdhcp.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1313', '169.254.139.125', '50:7B:9D:77:F0:62', 'Arbitration and enumeration of USB devices for virtual machines', 'VMUSBArbService', '2752', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\VMware\\USB\\vmware-usbarbitrator64.exe\"', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1314', '169.254.139.125', '50:7B:9D:77:F0:62', 'Network address translation for virtual networks.', 'VMware NAT Service', '2680', 'Auto', 'Running', 'C:\\Windows\\SysWOW64\\vmnat.exe', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1315', '169.254.139.125', '50:7B:9D:77:F0:62', 'Remote access service for registration and management of virtual machines.', 'VMwareHostd', '4152', 'Auto', 'Running', 'C:\\software\\VMWare\\vmware-hostd.exe -u \"C:\\ProgramData\\VMware\\hostd\\config.xml\"', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1316', '169.254.139.125', '50:7B:9D:77:F0:62', '通过 Internet Information Services 管理器提供 Web 连接和管理', 'W3SVC', '2484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k iissvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1317', '169.254.139.125', '50:7B:9D:77:F0:62', 'Windows Process Activation Service (WAS)为通过消息激活的应用程序提供进程激活、资源管理和运行状况管理服务。', 'WAS', '2484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k iissvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1318', '169.254.139.125', '50:7B:9D:77:F0:62', '根据电脑当前可用的网络连接选项做出自动连接/断开连接决策，并根据“组策略”设置启用网络连接管理。', 'Wcmsvc', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1319', '169.254.139.125', '50:7B:9D:77:F0:62', '诊断服务主机被诊断策略服务用来承载需要在本地服务上下文中运行的诊断。如果停止该服务，则依赖于该服务的任何诊断将不再运行。', 'WdiServiceHost', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1320', '169.254.139.125', '50:7B:9D:77:F0:62', '诊断系统主机被诊断策略服务用来承载需要在本地系统上下文中运行的诊断。如果停止该服务，则依赖于该服务的任何诊断将不再运行。', 'WdiSystemHost', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1321', '169.254.139.125', '50:7B:9D:77:F0:62', 'WinHTTP 实现了客户端 HTTP 堆栈并向开发人员提供 Win32 API 和 COM 自动化组件以供发送 HTTP 请求和接收响应。此外，通过执行 Web 代理自动发现(WPAD)协议，WinHTTP 还提供对自动发现代理服务器配置的支持。', 'WinHttpAutoProxySvc', '992', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1322', '169.254.139.125', '50:7B:9D:77:F0:62', '提供共同的界面和对象模式以便访问有关操作系统、设备、应用程序和服务的管理信息。如果此服务被终止，多数基于 Windows 的软件将无法正常运行。如果此服务被禁用，任何依赖它的服务将无法启动。', 'Winmgmt', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1323', '169.254.139.125', '50:7B:9D:77:F0:62', 'WLANSVC 服务提供配置、发现、连接、断开与 IEEE 802.11 标准定义的无线局域网(WLAN)的连接所需的逻辑。它还包含将计算机变成软件访问点的逻辑，以便其他设备或计算机可以使用支持它的 WLAN 适配器无线连接到计算机。停止或禁用 WLANSVC 服务将使得计算机上的所有 WLAN 适配器无法访问 Windows 网络连接 UI。强烈建议: 如果你的计算机具有 WLAN 适配器，则运行 WLANSVC 服务。', 'WlanSvc', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1324', '169.254.139.125', '50:7B:9D:77:F0:62', 'WSCSVC(Windows 安全中心)服务监视并报告计算机上的安全健康设置。健康设置包括防火墙(打开/关闭)、防病毒(打开/关闭/过期)、反间谍软件(打开/关闭/过期)、Windows 更新(自动/手动下载并安装更新)、用户帐户控制(打开/关闭)以及 Internet 设置(推荐/不推荐)。该服务为独立软件供应商提供 COM API 以便向安全中心服务注册并记录其产品的状态。安全性与维护 UI 使用该服务在“安全性与维护”控制面板中提供 systray 警报和安全健康状况的图形视图。网络访问保护(NAP)使用该服务向 NAP 网络策略服务器报告客户端的安全健康状况，以便进行网络隔离决策。该服务还提供一个公共 API，以允许外部客户以编程方式检索系统的聚合安全健康状况。', 'wscsvc', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1325', '169.254.139.125', '50:7B:9D:77:F0:62', '为文件、电子邮件和其他内容提供内容索引、属性缓存和搜索结果。', 'WSearch', '5088', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\SearchIndexer.exe /Embedding', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1326', '169.254.139.125', '50:7B:9D:77:F0:62', '创建并管理用户模式驱动程序进程。该服务不能被停止。', 'wudfsvc', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1327', '169.254.139.125', '50:7B:9D:77:F0:62', '迅雷基础服务，为迅雷下载软件的正常运行提供支持，保证迅雷下载软件能更稳定快速的运行。', 'XLServicePlatform', '2760', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost -k XLServicePlatform', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1328', '169.254.139.125', '50:7B:9D:77:F0:62', '360主动防御的服务项，提供实时保护、文件变化监控、智能扫描加速等功能。关闭此服务可能导致木马防不住、查不出，严重降低木马扫描速度。', 'ZhuDongFangYu', '1756', 'Auto', 'Running', '\"C:\\Program Files (x86)\\360\\360Safe\\deepscan\\zhudongfangyu.exe\"', null, '2016-07-24 12:31:34');
INSERT INTO `serviceinfo` VALUES ('1329', '192.168.31.213', '50:7B:9D:77:F0:62', '使用辅助管理权限便于交互式应用程序的运行。如果停止此服务，用户将无法使用辅助管理权限启动应用程序，而执行所需用户任务可能需要这些权限。', 'Appinfo', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1330', '192.168.31.213', '50:7B:9D:77:F0:62', '管理 Windows 音频服务的音频设备。如果停止了此服务，音频设备和效果将无法正常工作。如果禁用了此服务，任何明确依赖它的服务将无法启动', 'AudioEndpointBuilder', '832', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1331', '192.168.31.213', '50:7B:9D:77:F0:62', '管理基于 Windows 的程序的音频。如果此服务被停止，音频设备和效果将不能正常工作。如果此服务被禁用，任何依赖它的服务将无法启动', 'Audiosrv', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1332', '192.168.31.213', '50:7B:9D:77:F0:62', '基本筛选引擎(BFE)是一种管理防火墙和 Internet 协议安全(IPsec)策略以及实施用户模式筛选的服务。停止或禁用 BFE 服务将大大降低系统的安全。还将造成 IPsec 管理和防火墙应用程序产生不可预知的行为。', 'BFE', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1333', '192.168.31.213', '50:7B:9D:77:F0:62', '使用空闲网络带宽在后台传送文件。如果该服务被禁用，则依赖于 BITS 的任何应用程序(如 Windows 更新或 MSN Explorer)将无法自动下载程序和其他信息。', 'BITS', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1334', '192.168.31.213', '50:7B:9D:77:F0:62', '控制哪些后台任务可以在系统上运行的 Windows 基础结构服务。', 'BrokerInfrastructure', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1335', '192.168.31.213', '50:7B:9D:77:F0:62', '维护网络上计算机的更新列表，并将列表提供给计算机指定浏览。如果服务停止，列表不会被更新或维护。如果服务被禁用，任何直接依赖于此服务的服务将无法启动。', 'Browser', '484', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1336', '192.168.31.213', '50:7B:9D:77:F0:62', 'Manages communication between system components.', 'CoreMessagingRegistrar', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1337', '192.168.31.213', '50:7B:9D:77:F0:62', 'Intel(R) Content Protection HECI Service - enables communication with the Content Protection FW', 'cphs', '1836', 'Manual', 'Running', 'C:\\WINDOWS\\SysWow64\\IntelCpHeciSvc.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1338', '192.168.31.213', '50:7B:9D:77:F0:62', '提供三种管理服务: 编录数据库服务，用于确认 Windows 文件的签名和允许安装新程序；受保护的根服务，它从此计算机添加和删除受信任的根证书颁发机构的证书；自动根证书更新服务，用于从 Windows 更新中检索根证书和启用 SSL 等方案。如果此服务已停止，这些管理服务将无法正常运行。如果此服务已禁用，任何明确依赖它的服务将无法启动。', 'CryptSvc', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1339', '192.168.31.213', '50:7B:9D:77:F0:62', 'DCOMLAUNCH 服务可启动 COM 和 DCOM 服务器，以响应对象激活请求。如果此服务被停用或禁用，则使用 COM 或 DCOM 的程序将无法正常工作。强烈建议你运行 DCOMLAUNCH 服务。', 'DcomLaunch', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1340', '192.168.31.213', '50:7B:9D:77:F0:62', '在系统与有线或无线设备之间启用匹配。', 'DeviceAssociationService', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1341', '192.168.31.213', '50:7B:9D:77:F0:62', '为此计算机注册并更新 IP 地址。如果此服务停止，计算机将不能接收动态 IP 地址和 DNS 更新。如果此服务被禁用，所有明确依赖它的服务都将不能启动。', 'Dhcp', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1342', '192.168.31.213', '50:7B:9D:77:F0:62', 'Connected User Experiences and Telemetry 服务所启用的功能支持应用程序中用户体验和连接的用户体验。此外，如果在“反馈和诊断”下启用诊断和使用情况隐私选项设置，则此服务可以根据事件来管理诊断和使用情况信息的收集和传输(用于改进 Windows 平台的体验和质量)。', 'DiagTrack', '2624', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k utcsvc', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1343', '192.168.31.213', '50:7B:9D:77:F0:62', 'DNS 客户端服务(dnscache)缓存域名系统(DNS)名称并注册该计算机的完整计算机名。如果该服务被停止，将继续解析 DNS 名称。然而，将不缓存 DNS 名称的查询结果，且不注册计算机名。如果该服务被禁用，则任何明确依赖于它的服务都将无法启动。', 'Dnscache', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1344', '192.168.31.213', '50:7B:9D:77:F0:62', '执行内容传递优化任务', 'DoSvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1345', '192.168.31.213', '50:7B:9D:77:F0:62', '诊断策略服务启用了 Windows 组件的问题检测、疑难解答和解决方案。如果该服务被停止，诊断将不再运行。', 'DPS', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1346', '192.168.31.213', '50:7B:9D:77:F0:62', '提供应用程序之间的数据代理。', 'DsSvc', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1347', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'ETDService', '2536', 'Auto', 'Running', '\"C:\\Program Files\\Elantech\\ETDService.exe\"', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1348', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务管理事件和事件日志。它支持日志记录事件、查询事件、订阅事件、归档事件日志以及管理事件元数据。它可以用 XML 和纯文本两种格式显示事件。停止该服务可能危及系统的安全性和可靠性。', 'EventLog', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1349', '192.168.31.213', '50:7B:9D:77:F0:62', '支持系统事件通知服务 (SENS)，此服务为订阅的组件对象模型 (COM) 组件提供自动分布事件功能。如果停止此服务，SENS 将关闭，而且不能提供登录和注销通知。如果禁用此服务，显式依赖此服务的其他服务都将无法启动。', 'EventSystem', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1350', '192.168.31.213', '50:7B:9D:77:F0:62', '通过缓存常用字体数据优化应用程序的性能。如果尚未运行该服务，则应用程序将启动该服务。也可以禁用该服务，但是这样做会降低应用程序性能。', 'FontCache', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1351', '192.168.31.213', '50:7B:9D:77:F0:62', '通过缓存常用的字体数据来优化 Windows Presentation Foundation (WPF) 应用程序的性能。WPF 应用程序将启动此服务(如果尚未启动)。可以禁用此服务，尽管这样做会降低 WPF 应用程序的性能。', 'FontCache3.0.0.0', '1828', 'Manual', 'Running', 'C:\\WINDOWS\\Microsoft.Net\\Framework64\\v3.0\\WPF\\PresentationFontCache.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1352', '192.168.31.213', '50:7B:9D:77:F0:62', '激活键盘、遥控器和其他多媒体设备上的热按钮并继续使用这些按钮。建议你让此服务一直运行。', 'hidserv', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1353', '192.168.31.213', '50:7B:9D:77:F0:62', 'Intel(R) Wireless Bluetooth(R) iBtSiva Service', 'ibtsiva', '2652', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\ibtsiva', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1354', '192.168.31.213', '50:7B:9D:77:F0:62', 'Service for Intel(R) HD Graphics Control Panel', 'igfxCUIService2.0.0.0', '1344', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\igfxCUIService.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1355', '192.168.31.213', '50:7B:9D:77:F0:62', 'IKEEXT 服务托管 Internet 密钥交换(IKE)和身份验证 Internet 协议(AuthIP)键控模块。这些键控模块用于 Internet 协议安全(IPSec)中的身份验证和密钥交换。停止或禁用 IKEEXT 服务将禁用与对等计算机的 IKE/AuthIP 密钥交换。通常将 IPSec 配置为使用 IKE 或 AuthIP，因此停止或禁用 IKEEXT 服务将导致 IPSec 故障并且危及系统的安全。强烈建议运行 IKEEXT 服务。', 'IKEEXT', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1356', '192.168.31.213', '50:7B:9D:77:F0:62', '使用 IPv6 转换技术(6to4、ISATAP、端口代理和 Teredo)和 IP-HTTPS 提供隧道连接。如果停止该服务，则计算机将不具备这些技术提供的增强连接优势。', 'iphlpsvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetSvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1357', '192.168.31.213', '50:7B:9D:77:F0:62', 'CNG 密钥隔离服务宿主在 LSA 进程中。如一般原则所要求，该服务为私钥和相关加密操作提供密钥进程隔离。该服务在与一般原则要求相一致的安全进程中存储和使用生存期长的密钥。', 'KeyIso', '764', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1358', '192.168.31.213', '50:7B:9D:77:F0:62', '支持此计算机通过网络的文件、打印、和命名管道共享。如果服务停止，这些功能不可用。如果服务被禁用，任何直接依赖于此服务的服务将无法启动。', 'LanmanServer', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1359', '192.168.31.213', '50:7B:9D:77:F0:62', '使用 SMB 协议创建并维护客户端网络与远程服务器之间的连接。如果此服务已停止，这些连接将无法使用。如果此服务已禁用，任何明确依赖它的服务将无法启动。', 'LanmanWorkstation', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetworkService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1360', '192.168.31.213', '50:7B:9D:77:F0:62', '联想驱动管理服务，包括驱动升级、硬件检测以及质保查询服务。', 'LenovoDrvSv', '2692', 'Auto', 'Running', 'C:\\software\\Lenovo Drivers Management\\lenovodrvsrv.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1361', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务将监视系统的当前位置并管理地理围栏(具有关联事件的地理位置)。如果你禁用此服务，应用程序将无法使用或接收有关地理位置或地理围栏的通知。', 'lfsvc', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1362', '192.168.31.213', '50:7B:9D:77:F0:62', '为 Windows 应用商店提供基础结构支持。此服务按需启动，如果禁用此服务，则通过 Windows 应用商店获得的内容将无法正常运行。', 'LicenseManager', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1363', '192.168.31.213', '50:7B:9D:77:F0:62', '提供 TCP/IP (NetBT) 服务上的 NetBIOS 和网络上客户端的 NetBIOS 名称解析的支持，从而使用户能够共享文件、打印和登录到网络。如果此服务被停用，这些功能可能不可用。如果此服务被禁用，任何依赖它的服务将无法启动。', 'lmhosts', '1040', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1364', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'LSM', '864', 'Unknown', 'Running', '', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1365', '192.168.31.213', '50:7B:9D:77:F0:62', 'Windows 防火墙通过阻止未授权用户通过 Internet 或网络访问你的计算机来帮助保护计算机。', 'MpsSvc', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1366', '192.168.31.213', '50:7B:9D:77:F0:62', '提供消息结构和开发工具，用于创建基于 Windows 的网络和程序的分布式消息应用程序。如果停止该服务，那么分布式消息将无法使用，如果禁用该服务，那么任何直接依靠它的服务将无法启动。', 'MSMQ', '2580', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\mqsvc.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1367', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'MySQL', '2860', 'Auto', 'Running', '\"C:\\Program Files (x86)\\MySQL\\MySQL Server 5.5\\bin\\mysqld\" --defaults-file', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1368', '192.168.31.213', '50:7B:9D:77:F0:62', '允许 Windows 应用商店应用从 Internet 接收通知的代理连接。', 'NcbService', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1369', '192.168.31.213', '50:7B:9D:77:F0:62', '管理“网络和拨号连接”文件夹中对象，在其中你可以查看局域网和远程连接。', 'Netman', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1370', '192.168.31.213', '50:7B:9D:77:F0:62', '通过 net.msmq 和 msmq.formatname 协议接收到激活请求并将其传递给 Windows 进程激活服务。', 'NetMsmqActivator', '8', 'Auto', 'Running', '\"C:\\WINDOWS\\Microsoft.NET\\Framework64\\v4.0.30319\\SMSvcHost.exe\" -NetMsmqActivator', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1371', '192.168.31.213', '50:7B:9D:77:F0:62', '通过 net.pipe 协议接收激活请求并将其传递给 Windows 进程激活服务。', 'NetPipeActivator', '3492', 'Auto', 'Running', 'C:\\WINDOWS\\Microsoft.NET\\Framework64\\v4.0.30319\\SMSvcHost.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1372', '192.168.31.213', '50:7B:9D:77:F0:62', '识别计算机已连接的网络，收集和存储这些网络的属性，并在更改这些属性时通知应用程序。', 'netprofm', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1373', '192.168.31.213', '50:7B:9D:77:F0:62', '收集和存储网络的配置信息，并在此信息被修改时向程序发出通知。如果停止此服务，则配置信息可能不可用；如果禁用此服务，则显式依赖此服务的所有服务都将无法启动。', 'NlaSvc', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetworkService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1374', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务向用户模式客户端发送网络通知(例如，添加/删除接口等)。停止此服务将导致丢失网络连接。如果禁用此服务，则显式依赖此服务的所有其他服务都将无法启动。', 'nsi', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1375', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务为程序兼容性助手(PCA)提供支持。PCA 监视由用户安装和运行的程序，并检测已知兼容性问题。如果停止此服务，PCA 将无法正常运行。', 'PcaSvc', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1376', '192.168.31.213', '50:7B:9D:77:F0:62', '使计算机在极少或没有用户输入的情况下能识别并适应硬件的更改。终止或禁用此服务会造成系统不稳定。', 'PlugPlay', '864', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1377', '192.168.31.213', '50:7B:9D:77:F0:62', 'Internet 协议安全(IPSec)支持网络级别的对等身份验证、数据原始身份验证、数据完整性、数据机密性(加密)以及重播保护。此服务强制执行通过 IP 安全策略管理单元或命令行工具 \"netsh ipsec\" 创建的 IPSec 策略。停止此服务时，如果策略需要连接使用 IPSec，可能会遇到网络连接问题。同样，此服务停止时，Windows 防火墙的远程管理也不再可用。', 'PolicyAgent', '3460', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkServiceNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1378', '192.168.31.213', '50:7B:9D:77:F0:62', '管理电源策略和电源策略通知传递。', 'Power', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1379', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务负责加载和卸载用户配置文件。如果已停止或禁用此服务，用户将无法再成功登录或注销，应用在获取用户数据时可能会出问题，而且为接收配置文件事件通知注册的组件将无法接收这些通知。', 'ProfSvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1380', '192.168.31.213', '50:7B:9D:77:F0:62', '腾讯安全服务', 'QPCore', '2668', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\Tencent\\QQProtect\\Bin\\QQProtect.exe\"', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1381', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'QQCertificateService', '2660', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\tencent\\paycenter\\TenpayServer.exe\"', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1382', '192.168.31.213', '50:7B:9D:77:F0:62', '解析 RPC 接口标识符以传输端点。如果此服务被停止或禁用，使用远程过程调用(RPC)服务的程序将无法正常运行。', 'RpcEptMapper', '972', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k RPCSS', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1383', '192.168.31.213', '50:7B:9D:77:F0:62', '在 Windows 2003 和 Windows 的早期版本中，远程过程调用(RPC)定位器服务可管理 RPC 名称服务数据库。在 Windows Vista 和 Windows 的更新版本中，此服务不提供任何功能，但可用于应用程序兼容性。', 'RpcLocator', '3884', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\locator.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1384', '192.168.31.213', '50:7B:9D:77:F0:62', 'RPCSS 服务是 COM 和 DCOM 服务器的服务控制管理器。它执行 COM 和 DCOM 服务器的对象激活请求、对象导出程序解析和分布式垃圾回收。如果此服务被停用或禁用，则使用 COM 或 DCOM 的程序将无法正常工作。强烈建议你运行 RPCSS 服务。', 'RpcSs', '972', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k rpcss', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1385', '192.168.31.213', '50:7B:9D:77:F0:62', '启动此服务将向其他服务发出信号: 安全帐户管理器(SAM)已准备就绪，可以接受请求。禁用此服务将导致在 SAM 准备就绪时，无法通知系统中的其他服务，从而可能导致这些服务无法正确启动。不应禁用此服务。', 'SamSs', '764', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1386', '192.168.31.213', '50:7B:9D:77:F0:62', '使用户可以在此计算机上配置和计划自动任务。此服务还托管多个 Windows 系统关键任务。如果此服务被停止或禁用，这些任务将无法在计划的时间运行。如果此服务被禁用，则明确依赖它的所有服务将无法启动。', 'Schedule', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1387', '192.168.31.213', '50:7B:9D:77:F0:62', '监视系统事件并通知订户这些事件的 COM+ 事件系统。', 'SENS', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1388', '192.168.31.213', '50:7B:9D:77:F0:62', '一项用于管理各种传感器的功能的传感器服务。管理传感器的简单设备方向(SDO)和历史记录。加载对设备方向变化进行报告的 SDO 传感器。如果停止或禁用了此服务，则将不会加载 SDO 传感器，因此不会发生自动旋转。来自传感器的历史记录收集也将停止。', 'SensorService', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1389', '192.168.31.213', '50:7B:9D:77:F0:62', '为家庭和小型办公网络提供网络地址转换、寻址、名称解析和/或入侵保护服务。', 'SharedAccess', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1390', '192.168.31.213', '50:7B:9D:77:F0:62', '为自动播放硬件事件提供通知。', 'ShellHWDetection', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1391', '192.168.31.213', '50:7B:9D:77:F0:62', '该服务在后台执行打印作业并处理与打印机的交互。如果关闭该服务，则无法进行打印或查看打印机。', 'Spooler', '2076', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\spoolsv.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1392', '192.168.31.213', '50:7B:9D:77:F0:62', '当发现了使用 SSDP 协议的网络设备和服务，如 UPnP 设备，同时还报告了运行在本地计算机上使用的 SSDP 设备和服务。如果停止此服务，基于 SSDP 的设备将不会被发现。如果禁用此服务，任何依赖此服务的服务都无法正常启动。', 'SSDPSRV', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1393', '192.168.31.213', '50:7B:9D:77:F0:62', '为应用程序模型提供所需的基础结构支持。', 'StateRepository', '2916', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k appmodel', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1394', '192.168.31.213', '50:7B:9D:77:F0:62', '维护和提高一段时间内的系统性能。', 'SysMain', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1395', '192.168.31.213', '50:7B:9D:77:F0:62', '协调执行 WinRT 应用程序的后台作业。如果停止或禁用此服务，则可能不会触发后台作业。', 'SystemEventsBroker', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1396', '192.168.31.213', '50:7B:9D:77:F0:62', '为用户提供使用主题管理的体验。', 'Themes', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1397', '192.168.31.213', '50:7B:9D:77:F0:62', '用于获取图块更新的图块服务器。', 'tiledatamodelsvc', '2916', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k appmodel', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1398', '192.168.31.213', '50:7B:9D:77:F0:62', '协调执行 WinRT 应用程序的后台作业。如果停止或禁用此服务，则可能不会触发后台作业。', 'TimeBroker', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1399', '192.168.31.213', '50:7B:9D:77:F0:62', '允许 UPnP 设备宿主在此计算机上。如果停止此服务，则所有宿主的 UPnP 设备都将停止工作，并且不能添加其他宿主设备。如果禁用此服务，则任何显式依赖于它的服务将都无法启动。', 'upnphost', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1400', '192.168.31.213', '50:7B:9D:77:F0:62', '用户管理器提供多用户交互所需要的运行时组件。如果停止此服务，某些应用程序可能无法正确运行。', 'UserManager', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1401', '192.168.31.213', '50:7B:9D:77:F0:62', '为用户、应用程序和安全服务包提供凭据的安全存储和检索。', 'VaultSvc', '764', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1402', '192.168.31.213', '50:7B:9D:77:F0:62', 'Authorization and authentication service for starting and accessing virtual machines.', 'VMAuthdService', '2844', 'Auto', 'Running', 'C:\\software\\VMWare\\vmware-authd.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1403', '192.168.31.213', '50:7B:9D:77:F0:62', 'DHCP service for virtual networks.', 'VMnetDHCP', '2788', 'Auto', 'Running', 'C:\\Windows\\SysWOW64\\vmnetdhcp.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1404', '192.168.31.213', '50:7B:9D:77:F0:62', 'Arbitration and enumeration of USB devices for virtual machines', 'VMUSBArbService', '2752', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\VMware\\USB\\vmware-usbarbitrator64.exe\"', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1405', '192.168.31.213', '50:7B:9D:77:F0:62', 'Network address translation for virtual networks.', 'VMware NAT Service', '2680', 'Auto', 'Running', 'C:\\Windows\\SysWOW64\\vmnat.exe', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1406', '192.168.31.213', '50:7B:9D:77:F0:62', 'Remote access service for registration and management of virtual machines.', 'VMwareHostd', '4152', 'Auto', 'Running', 'C:\\software\\VMWare\\vmware-hostd.exe -u \"C:\\ProgramData\\VMware\\hostd\\config.xml\"', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1407', '192.168.31.213', '50:7B:9D:77:F0:62', '通过 Internet Information Services 管理器提供 Web 连接和管理', 'W3SVC', '2484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k iissvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1408', '192.168.31.213', '50:7B:9D:77:F0:62', 'Windows Process Activation Service (WAS)为通过消息激活的应用程序提供进程激活、资源管理和运行状况管理服务。', 'WAS', '2484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k iissvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1409', '192.168.31.213', '50:7B:9D:77:F0:62', '根据电脑当前可用的网络连接选项做出自动连接/断开连接决策，并根据“组策略”设置启用网络连接管理。', 'Wcmsvc', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1410', '192.168.31.213', '50:7B:9D:77:F0:62', '诊断服务主机被诊断策略服务用来承载需要在本地服务上下文中运行的诊断。如果停止该服务，则依赖于该服务的任何诊断将不再运行。', 'WdiServiceHost', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1411', '192.168.31.213', '50:7B:9D:77:F0:62', '诊断系统主机被诊断策略服务用来承载需要在本地系统上下文中运行的诊断。如果停止该服务，则依赖于该服务的任何诊断将不再运行。', 'WdiSystemHost', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1412', '192.168.31.213', '50:7B:9D:77:F0:62', 'WinHTTP 实现了客户端 HTTP 堆栈并向开发人员提供 Win32 API 和 COM 自动化组件以供发送 HTTP 请求和接收响应。此外，通过执行 Web 代理自动发现(WPAD)协议，WinHTTP 还提供对自动发现代理服务器配置的支持。', 'WinHttpAutoProxySvc', '992', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1413', '192.168.31.213', '50:7B:9D:77:F0:62', '提供共同的界面和对象模式以便访问有关操作系统、设备、应用程序和服务的管理信息。如果此服务被终止，多数基于 Windows 的软件将无法正常运行。如果此服务被禁用，任何依赖它的服务将无法启动。', 'Winmgmt', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1414', '192.168.31.213', '50:7B:9D:77:F0:62', 'WLANSVC 服务提供配置、发现、连接、断开与 IEEE 802.11 标准定义的无线局域网(WLAN)的连接所需的逻辑。它还包含将计算机变成软件访问点的逻辑，以便其他设备或计算机可以使用支持它的 WLAN 适配器无线连接到计算机。停止或禁用 WLANSVC 服务将使得计算机上的所有 WLAN 适配器无法访问 Windows 网络连接 UI。强烈建议: 如果你的计算机具有 WLAN 适配器，则运行 WLANSVC 服务。', 'WlanSvc', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1415', '192.168.31.213', '50:7B:9D:77:F0:62', 'WSCSVC(Windows 安全中心)服务监视并报告计算机上的安全健康设置。健康设置包括防火墙(打开/关闭)、防病毒(打开/关闭/过期)、反间谍软件(打开/关闭/过期)、Windows 更新(自动/手动下载并安装更新)、用户帐户控制(打开/关闭)以及 Internet 设置(推荐/不推荐)。该服务为独立软件供应商提供 COM API 以便向安全中心服务注册并记录其产品的状态。安全性与维护 UI 使用该服务在“安全性与维护”控制面板中提供 systray 警报和安全健康状况的图形视图。网络访问保护(NAP)使用该服务向 NAP 网络策略服务器报告客户端的安全健康状况，以便进行网络隔离决策。该服务还提供一个公共 API，以允许外部客户以编程方式检索系统的聚合安全健康状况。', 'wscsvc', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1416', '192.168.31.213', '50:7B:9D:77:F0:62', '为文件、电子邮件和其他内容提供内容索引、属性缓存和搜索结果。', 'WSearch', '5088', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\SearchIndexer.exe /Embedding', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1417', '192.168.31.213', '50:7B:9D:77:F0:62', '创建并管理用户模式驱动程序进程。该服务不能被停止。', 'wudfsvc', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1418', '192.168.31.213', '50:7B:9D:77:F0:62', '迅雷基础服务，为迅雷下载软件的正常运行提供支持，保证迅雷下载软件能更稳定快速的运行。', 'XLServicePlatform', '2760', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost -k XLServicePlatform', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1419', '192.168.31.213', '50:7B:9D:77:F0:62', '360主动防御的服务项，提供实时保护、文件变化监控、智能扫描加速等功能。关闭此服务可能导致木马防不住、查不出，严重降低木马扫描速度。', 'ZhuDongFangYu', '1756', 'Auto', 'Running', '\"C:\\Program Files (x86)\\360\\360Safe\\deepscan\\zhudongfangyu.exe\"', null, '2016-07-24 12:30:50');
INSERT INTO `serviceinfo` VALUES ('1420', '169.254.139.125', '50:7B:9D:77:F0:62', '本服务只用于加载360杀毒实时防护，请确保开机启动，系统启动后将退出。', '360rp', '1748', 'Auto', 'Running', '\"C:\\software\\360\\360sd\\360rps.exe\"', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1421', '169.254.139.125', '50:7B:9D:77:F0:62', '为 Internet 连接共享提供第三方协议插件的支持', 'ALG', '4024', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\alg.exe', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1422', '169.254.139.125', '50:7B:9D:77:F0:62', '为 IIS 提供管理服务，例如配置历史记录和应用程序池帐户映射。如果停止此服务，则配置历史记录将无法工作，也无法用特定于应用程序池的访问控制项锁定文件或目录。', 'AppHostSvc', '2468', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k apphost', null, '2016-07-24 12:31:33');
INSERT INTO `serviceinfo` VALUES ('1423', '169.254.139.125', '50:7B:9D:77:F0:62', '为部署应用商店应用程序提供基础结构支持。此服务根据需要启动，如果已禁用的应用商店应用程序未部署到系统，此服务可能无法正常工作。', 'AppXSvc', '180', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k wsappx', null, '2016-07-23 16:53:30');
INSERT INTO `serviceinfo` VALUES ('1424', '169.254.139.125', '50:7B:9D:77:F0:62', '提供对 Microsoft 商店的基础结构支持。此服务按需启动，并且如果禁用了此服务，则使用 Windows 应用商店购买的应用程序将无法正常运行。', 'ClipSVC', '180', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k wsappx', null, '2016-07-23 16:53:30');
INSERT INTO `serviceinfo` VALUES ('1425', '169.254.139.125', '50:7B:9D:77:F0:62', '支持用户通过 Microsoft 帐户标识服务登录。如果此服务已停止，用户将无法使用其 Microsoft 帐户登录到此计算机。', 'wlidsvc', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 16:53:31');
INSERT INTO `serviceinfo` VALUES ('1426', '169.254.139.125', '50:7B:9D:77:F0:62', '启用检测、下载和安装 Windows 和其他程序的更新。如果此服务被禁用，这台计算机的用户将无法使用 Windows 更新或其自动更新功能， 并且这些程序将无法使用 Windows 更新代理(WUA) API。', 'wuauserv', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 16:53:31');
INSERT INTO `serviceinfo` VALUES ('1427', '192.168.31.213', '50:7B:9D:77:F0:62', '为部署应用商店应用程序提供基础结构支持。此服务根据需要启动，如果已禁用的应用商店应用程序未部署到系统，此服务可能无法正常工作。', 'AppXSvc', '180', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k wsappx', null, '2016-07-23 16:53:20');
INSERT INTO `serviceinfo` VALUES ('1428', '192.168.31.213', '50:7B:9D:77:F0:62', '提供对 Microsoft 商店的基础结构支持。此服务按需启动，并且如果禁用了此服务，则使用 Windows 应用商店购买的应用程序将无法正常运行。', 'ClipSVC', '180', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k wsappx', null, '2016-07-23 16:53:20');
INSERT INTO `serviceinfo` VALUES ('1429', '192.168.31.213', '50:7B:9D:77:F0:62', '支持用户通过 Microsoft 帐户标识服务登录。如果此服务已停止，用户将无法使用其 Microsoft 帐户登录到此计算机。', 'wlidsvc', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:14:34');
INSERT INTO `serviceinfo` VALUES ('1430', '192.168.31.213', '50:7B:9D:77:F0:62', '启用检测、下载和安装 Windows 和其他程序的更新。如果此服务被禁用，这台计算机的用户将无法使用 Windows 更新或其自动更新功能， 并且这些程序将无法使用 Windows 更新代理(WUA) API。', 'wuauserv', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 16:53:21');
INSERT INTO `serviceinfo` VALUES ('1431', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'NetSetupSvc', '484', 'Unknown', 'Running', '', null, '2016-07-23 17:19:02');
INSERT INTO `serviceinfo` VALUES ('1432', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'NetSetupSvc', '484', 'Unknown', 'Running', '', null, '2016-07-23 17:18:32');

-- ----------------------------
-- Table structure for softwarefilterinfo
-- ----------------------------
DROP TABLE IF EXISTS `softwarefilterinfo`;
CREATE TABLE `softwarefilterinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softwareName` varchar(200) DEFAULT NULL,
  `softwareDesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of softwarefilterinfo
-- ----------------------------

-- ----------------------------
-- Table structure for soundinfo
-- ----------------------------
DROP TABLE IF EXISTS `soundinfo`;
CREATE TABLE `soundinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `Description` text COMMENT '音频设备描述',
  `Status` varchar(100) DEFAULT NULL COMMENT '状态',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of soundinfo
-- ----------------------------
INSERT INTO `soundinfo` VALUES ('1', '192.168.31.213', '50:7B:9D:77:F0:62', 'Realtek High Definition Audio', 'OK', '2016-07-24 12:30:48');
INSERT INTO `soundinfo` VALUES ('2', '192.168.31.213', '50:7B:9D:77:F0:62', '英特尔(R) 显示器音频', 'OK', '2016-07-24 12:30:48');
INSERT INTO `soundinfo` VALUES ('3', '169.254.139.125', '50:7B:9D:77:F0:62', 'Realtek High Definition Audio', 'OK', '2016-07-24 12:31:33');
INSERT INTO `soundinfo` VALUES ('4', '169.254.139.125', '50:7B:9D:77:F0:62', '英特尔(R) 显示器音频', 'OK', '2016-07-24 12:31:33');

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
  `ip` varchar(200) DEFAULT NULL,
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
  `infostatus` varchar(100) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of switchinfo
-- ----------------------------
INSERT INTO `switchinfo` VALUES ('1', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '2016-08-03 21:25:44', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25666', null, null, null);
INSERT INTO `switchinfo` VALUES ('2', '北京', 'ZHH1000', '数据部', '张三', '设备名称', '192.168.31.213', '50:7B:9D:77:F0:62', 'XH100', '配置', '无', 'PC', '无', 'XH100', 'WIN7', '2016-10-28 23:15:07', '高', '北京', 'S22XNXAGB49717', '360', '无', '无', '10.0.1.1', 'ssdsd', 'sadasd', '无', '无', '0', '2016-10-28 23:15:40', '9a1314a5-ccb2-45c8-b698-22e64bc24a11');
INSERT INTO `switchinfo` VALUES ('3', '北京', 'ZHH1000', '数据部', '张三', '设备名称', '192.168.31.213', '50:7B:9D:77:F0:62', 'XH100', '配置', '无', 'PC', '无', 'XH100', 'WIN7', '2016-10-28 23:15:07', '高', '北京', 'S22XNXAGB49717', '360', '无', '无', '10.0.1.1', 'ssdsd', 'sadasd', '无', '无', '0', '2016-10-30 21:27:49', 'f23153ac-bc8a-4f79-a4ce-e7632b497b46');

-- ----------------------------
-- Table structure for sysinfo
-- ----------------------------
DROP TABLE IF EXISTS `sysinfo`;
CREATE TABLE `sysinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `cpuEndian` varchar(100) DEFAULT NULL COMMENT '操作系统CpuEndian',
  `dataModel` varchar(100) DEFAULT NULL COMMENT '操作系统DataModel',
  `description` varchar(100) DEFAULT NULL COMMENT '操作系统的描述',
  `vendor` varchar(100) DEFAULT NULL COMMENT '操作系统的供应商',
  `vendorCodeName` varchar(100) DEFAULT NULL COMMENT '操作系统的供应商编号',
  `vendorName` varchar(100) DEFAULT NULL COMMENT '操作系统的供应商名称',
  `vendorVersion` varchar(100) DEFAULT NULL COMMENT '操作系统供应商类型',
  `version` varchar(100) DEFAULT NULL COMMENT '操作系统的版本号',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysinfo
-- ----------------------------
INSERT INTO `sysinfo` VALUES ('10', '192.168.31.213', '50:7B:9D:77:F0:62', 'x86', 'little', '32', 'Microsoft Windows Vista', 'Microsoft', '', 'Windows Vista', 'Vista', '6.2', '2016-07-17 10:34:21');
INSERT INTO `sysinfo` VALUES ('11', '169.254.139.125', '50:7B:9D:77:F0:62', 'x86', 'little', '32', 'Microsoft Windows Vista', 'Microsoft', '', 'Windows Vista', 'Vista', '6.2', '2016-07-23 17:18:30');

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
) ENGINE=InnoDB AUTO_INCREMENT=2038 DEFAULT CHARSET=utf8;

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
INSERT INTO `syslog` VALUES ('1432', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-10 20:15:28');
INSERT INTO `syslog` VALUES ('1433', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-10 20:15:31');
INSERT INTO `syslog` VALUES ('1434', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-12 20:25:54');
INSERT INTO `syslog` VALUES ('1435', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-12 20:25:56');
INSERT INTO `syslog` VALUES ('1436', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=309&_=1476275157193&', '127.0.0.1', '2016-10-12 20:33:20');
INSERT INTO `syslog` VALUES ('1437', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=309&name=台帐新增&resourcetype=0&url=/changeOrder/manager&seq=0&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 20:33:37');
INSERT INTO `syslog` VALUES ('1438', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-12 20:34:01');
INSERT INTO `syslog` VALUES ('1439', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=台帐变更&resourcetype=0&url=/changeOrder/manager&seq=1&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 20:34:59');
INSERT INTO `syslog` VALUES ('1440', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-12 20:35:15');
INSERT INTO `syslog` VALUES ('1441', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/changeOrder/dataGrid&seq=0&icon=icon-list&status=0&pid=317&', '127.0.0.1', '2016-10-12 20:35:32');
INSERT INTO `syslog` VALUES ('1442', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-12 20:37:44');
INSERT INTO `syslog` VALUES ('1443', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=修改&resourcetype=1&url=/changeOrder/editPage&seq=1&icon=icon-edit&status=0&pid=317&', '127.0.0.1', '2016-10-12 20:38:19');
INSERT INTO `syslog` VALUES ('1444', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=309&_=1476275157197&', '127.0.0.1', '2016-10-12 20:41:41');
INSERT INTO `syslog` VALUES ('1445', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=309&name=台帐新增&resourcetype=0&url=/changeOrder/managerAdd&seq=0&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 20:41:46');
INSERT INTO `syslog` VALUES ('1446', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=317&_=1476275157198&', '127.0.0.1', '2016-10-12 20:41:50');
INSERT INTO `syslog` VALUES ('1447', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=317&name=台帐变更&resourcetype=0&url=/changeOrder/managerModify&seq=1&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 20:41:58');
INSERT INTO `syslog` VALUES ('1448', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-12 20:44:21');
INSERT INTO `syslog` VALUES ('1449', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=台帐清退&resourcetype=0&url=/changeOrder/managerReturn&seq=2&icon=icon-folder&status=0&pid=317&', '127.0.0.1', '2016-10-12 20:45:12');
INSERT INTO `syslog` VALUES ('1450', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=320&_=1476275157200&', '127.0.0.1', '2016-10-12 20:45:23');
INSERT INTO `syslog` VALUES ('1451', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=320&name=台帐清退&resourcetype=0&url=/changeOrder/managerReturn&seq=2&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 20:45:29');
INSERT INTO `syslog` VALUES ('1452', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-12 20:45:40');
INSERT INTO `syslog` VALUES ('1453', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/changeOrder/dataGrid&seq=0&icon=icon-list&status=0&pid=320&', '127.0.0.1', '2016-10-12 20:46:10');
INSERT INTO `syslog` VALUES ('1454', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-12 20:46:48');
INSERT INTO `syslog` VALUES ('1455', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=清退&resourcetype=1&url=/changeOrder/returnPage&seq=1&icon=icon-edit&status=0&pid=320&', '127.0.0.1', '2016-10-12 20:48:56');
INSERT INTO `syslog` VALUES ('1456', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1476275157204&', '127.0.0.1', '2016-10-12 20:49:08');
INSERT INTO `syslog` VALUES ('1457', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316,317,318,319,320,321,322&', '127.0.0.1', '2016-10-12 20:49:14');
INSERT INTO `syslog` VALUES ('1458', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-12 21:20:16');
INSERT INTO `syslog` VALUES ('1459', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-12 21:20:20');
INSERT INTO `syslog` VALUES ('1460', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=320&_=1476278420983&', '127.0.0.1', '2016-10-12 21:21:08');
INSERT INTO `syslog` VALUES ('1461', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=320&name=台帐清退&resourcetype=0&url=/changeOrder/managerReturn&seq=2&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 21:21:14');
INSERT INTO `syslog` VALUES ('1462', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-12 21:26:15');
INSERT INTO `syslog` VALUES ('1463', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-12 21:26:27');
INSERT INTO `syslog` VALUES ('1464', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=227&_=1476278553403&', '127.0.0.1', '2016-10-12 21:35:02');
INSERT INTO `syslog` VALUES ('1465', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=227&name=台帐看板&resourcetype=0&url=&seq=4&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-10-12 21:35:12');
INSERT INTO `syslog` VALUES ('1466', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=309&_=1476278553404&', '127.0.0.1', '2016-10-12 21:36:25');
INSERT INTO `syslog` VALUES ('1467', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=309&name=设备新增&resourcetype=0&url=/changeOrder/managerAdd&seq=0&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 21:36:34');
INSERT INTO `syslog` VALUES ('1468', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=317&_=1476278553405&', '127.0.0.1', '2016-10-12 21:36:42');
INSERT INTO `syslog` VALUES ('1469', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=317&name=设备变更&resourcetype=0&url=/changeOrder/managerModify&seq=1&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 21:36:48');
INSERT INTO `syslog` VALUES ('1470', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=320&_=1476278553406&', '127.0.0.1', '2016-10-12 21:36:52');
INSERT INTO `syslog` VALUES ('1471', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=320&name=设备清退&resourcetype=0&url=/changeOrder/managerReturn&seq=2&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 21:37:01');
INSERT INTO `syslog` VALUES ('1472', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-12 22:04:53');
INSERT INTO `syslog` VALUES ('1473', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=待办事项&resourcetype=0&url=/changeOrder/scheduleList&seq=2&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-12 22:05:42');
INSERT INTO `syslog` VALUES ('1474', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-12 22:05:50');
INSERT INTO `syslog` VALUES ('1475', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/changeOrder/dataGrid&seq=0&icon=icon-list&status=0&pid=323&', '127.0.0.1', '2016-10-12 22:06:07');
INSERT INTO `syslog` VALUES ('1476', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-12 22:06:17');
INSERT INTO `syslog` VALUES ('1477', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=审核&resourcetype=1&url=/changeOrder/confirm&seq=1&icon=icon-add&status=0&pid=323&', '127.0.0.1', '2016-10-12 22:07:12');
INSERT INTO `syslog` VALUES ('1478', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1476281070966&', '127.0.0.1', '2016-10-12 22:07:24');
INSERT INTO `syslog` VALUES ('1479', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316,317,318,319,320,321,322,323,324,325&', '127.0.0.1', '2016-10-12 22:07:30');
INSERT INTO `syslog` VALUES ('1480', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-12 22:07:33');
INSERT INTO `syslog` VALUES ('1481', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-18 23:09:20');
INSERT INTO `syslog` VALUES ('1482', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=台帐预警&resourcetype=0&url=&seq=6&icon=icon-company&status=0&pid=&', '127.0.0.1', '2016-10-18 23:10:39');
INSERT INTO `syslog` VALUES ('1483', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-18 23:10:51');
INSERT INTO `syslog` VALUES ('1484', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=U盘预警&resourcetype=0&url=/combination/showWarnUsbPage&seq=0&icon=icon-folder&status=0&pid=326&', '127.0.0.1', '2016-10-18 23:12:14');
INSERT INTO `syslog` VALUES ('1485', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-18 23:12:22');
INSERT INTO `syslog` VALUES ('1486', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/combination/warnUsbDataGrid&seq=0&icon=icon-list&status=0&pid=327&', '127.0.0.1', '2016-10-18 23:13:00');
INSERT INTO `syslog` VALUES ('1487', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1476803349982&', '127.0.0.1', '2016-10-18 23:13:49');
INSERT INTO `syslog` VALUES ('1488', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316,317,318,319,320,321,322,323,324,325,326,327,328&', '127.0.0.1', '2016-10-18 23:13:54');
INSERT INTO `syslog` VALUES ('1489', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-18 23:13:57');
INSERT INTO `syslog` VALUES ('1490', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-19 21:04:46');
INSERT INTO `syslog` VALUES ('1491', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-19 21:04:48');
INSERT INTO `syslog` VALUES ('1492', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-19 21:05:10');
INSERT INTO `syslog` VALUES ('1493', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=审核&resourcetype=1&url=/combination/updateWarnUsbStatus&seq=1&icon=icon-add&status=0&pid=327&', '127.0.0.1', '2016-10-19 21:06:13');
INSERT INTO `syslog` VALUES ('1494', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-19 21:06:45');
INSERT INTO `syslog` VALUES ('1495', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=内网计算机台账预警&resourcetype=0&url=/combination/showWarnComputerPage&seq=1&icon=icon-folder&status=0&pid=326&', '127.0.0.1', '2016-10-19 21:07:42');
INSERT INTO `syslog` VALUES ('1496', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-19 21:07:57');
INSERT INTO `syslog` VALUES ('1497', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/combination/updateWarnUsbStatuswarnComputerDataGrid&seq=0&icon=icon-list&status=0&pid=330&', '127.0.0.1', '2016-10-19 21:08:44');
INSERT INTO `syslog` VALUES ('1498', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1476882288596&', '127.0.0.1', '2016-10-19 21:08:56');
INSERT INTO `syslog` VALUES ('1499', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331&', '127.0.0.1', '2016-10-19 21:08:58');
INSERT INTO `syslog` VALUES ('1500', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-19 21:09:01');
INSERT INTO `syslog` VALUES ('1501', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-19 21:19:17');
INSERT INTO `syslog` VALUES ('1502', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-19 21:19:19');
INSERT INTO `syslog` VALUES ('1503', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-19 22:22:26');
INSERT INTO `syslog` VALUES ('1504', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-19 22:22:28');
INSERT INTO `syslog` VALUES ('1505', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-19 22:22:48');
INSERT INTO `syslog` VALUES ('1506', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=忽略&resourcetype=1&url=/combination/updateWarnComputerStatus&seq=1&icon=icon-del&status=0&pid=330&', '127.0.0.1', '2016-10-19 22:23:55');
INSERT INTO `syslog` VALUES ('1507', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-19 22:23:58');
INSERT INTO `syslog` VALUES ('1508', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=处理&resourcetype=1&url=/combination/dealWarnComputer&seq=2&icon=icon-edit&status=0&pid=330&', '127.0.0.1', '2016-10-19 22:24:36');
INSERT INTO `syslog` VALUES ('1509', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1476886948807&', '127.0.0.1', '2016-10-19 22:24:40');
INSERT INTO `syslog` VALUES ('1510', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333&', '127.0.0.1', '2016-10-19 22:24:42');
INSERT INTO `syslog` VALUES ('1511', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-19 22:24:45');
INSERT INTO `syslog` VALUES ('1512', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-19 22:28:34');
INSERT INTO `syslog` VALUES ('1513', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-19 22:28:52');
INSERT INTO `syslog` VALUES ('1514', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-19 22:28:56');
INSERT INTO `syslog` VALUES ('1515', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-19 22:33:09');
INSERT INTO `syslog` VALUES ('1516', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-19 22:33:11');
INSERT INTO `syslog` VALUES ('1517', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-19 22:36:03');
INSERT INTO `syslog` VALUES ('1518', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-19 22:36:04');
INSERT INTO `syslog` VALUES ('1519', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-19 22:54:13');
INSERT INTO `syslog` VALUES ('1520', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-19 22:54:15');
INSERT INTO `syslog` VALUES ('1521', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-19 22:56:09');
INSERT INTO `syslog` VALUES ('1522', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-19 22:56:11');
INSERT INTO `syslog` VALUES ('1523', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-19 22:58:12');
INSERT INTO `syslog` VALUES ('1524', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-19 22:58:16');
INSERT INTO `syslog` VALUES ('1525', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-19 23:26:54');
INSERT INTO `syslog` VALUES ('1526', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-19 23:26:55');
INSERT INTO `syslog` VALUES ('1527', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-20 22:17:03');
INSERT INTO `syslog` VALUES ('1528', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=USB白名单管理&resourcetype=0&url=/combination/showUsbPage&seq=1&icon=icon-folder&status=0&pid=221&', '127.0.0.1', '2016-10-20 22:18:19');
INSERT INTO `syslog` VALUES ('1529', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-20 22:18:30');
INSERT INTO `syslog` VALUES ('1530', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/combination/usbDataGrid&seq=0&icon=icon-list&status=0&pid=334&', '127.0.0.1', '2016-10-20 22:19:17');
INSERT INTO `syslog` VALUES ('1531', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-20 22:19:23');
INSERT INTO `syslog` VALUES ('1532', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/combination/addUsbPage&seq=1&icon=icon-add&status=0&pid=334&', '127.0.0.1', '2016-10-20 22:19:57');
INSERT INTO `syslog` VALUES ('1533', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-20 22:20:00');
INSERT INTO `syslog` VALUES ('1534', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/combination/usbDelete&seq=2&icon=icon-del&status=0&pid=334&', '127.0.0.1', '2016-10-20 22:20:30');
INSERT INTO `syslog` VALUES ('1535', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-20 22:20:32');
INSERT INTO `syslog` VALUES ('1536', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/combination/usbEditPage&seq=0&icon=icon-edit&status=0&pid=334&', '127.0.0.1', '2016-10-20 22:20:51');
INSERT INTO `syslog` VALUES ('1537', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1476972988871&', '127.0.0.1', '2016-10-20 22:20:55');
INSERT INTO `syslog` VALUES ('1538', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,334,335,338,336,337,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333&', '127.0.0.1', '2016-10-20 22:20:59');
INSERT INTO `syslog` VALUES ('1539', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-20 22:21:01');
INSERT INTO `syslog` VALUES ('1540', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.collection.CombinationController,[方法]:addUsbPage,[参数]:', null, '2016-10-20 22:21:09');
INSERT INTO `syslog` VALUES ('1541', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.collection.CombinationController,[方法]:addUsb,[参数]:serialNumber=XXXX0001&other=描述&', '127.0.0.1', '2016-10-20 22:21:28');
INSERT INTO `syslog` VALUES ('1542', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-20 22:25:57');
INSERT INTO `syslog` VALUES ('1543', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-20 22:26:02');
INSERT INTO `syslog` VALUES ('1544', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-20 22:30:46');
INSERT INTO `syslog` VALUES ('1545', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-20 22:30:51');
INSERT INTO `syslog` VALUES ('1546', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-20 22:32:59');
INSERT INTO `syslog` VALUES ('1547', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.collection.CombinationController,[方法]:addUsbPage,[参数]:', null, '2016-10-22 10:44:58');
INSERT INTO `syslog` VALUES ('1548', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-22 10:45:24');
INSERT INTO `syslog` VALUES ('1549', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-22 18:54:53');
INSERT INTO `syslog` VALUES ('1550', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=服务器台账&keys_=servermanage&url=/serverManage/serverAddPage&description=新增&', '127.0.0.1', '2016-10-22 18:57:02');
INSERT INTO `syslog` VALUES ('1551', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-22 18:57:09');
INSERT INTO `syslog` VALUES ('1552', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=服务器台帐&keys_=servermanage&url=/serverManage/serverEditPage&description=修改&', '127.0.0.1', '2016-10-22 18:58:12');
INSERT INTO `syslog` VALUES ('1553', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-22 18:58:19');
INSERT INTO `syslog` VALUES ('1554', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=服务器台帐&keys_=servermanage&url=/serverManage/serverReturnPage&description=清退&', '127.0.0.1', '2016-10-22 18:58:58');
INSERT INTO `syslog` VALUES ('1555', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-22 18:59:21');
INSERT INTO `syslog` VALUES ('1556', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-22 19:23:57');
INSERT INTO `syslog` VALUES ('1557', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-22 19:28:43');
INSERT INTO `syslog` VALUES ('1558', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-22 19:36:45');
INSERT INTO `syslog` VALUES ('1559', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-22 19:36:47');
INSERT INTO `syslog` VALUES ('1560', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-22 20:33:24');
INSERT INTO `syslog` VALUES ('1561', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-22 20:33:26');
INSERT INTO `syslog` VALUES ('1562', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=236&_=1477139606604&', '127.0.0.1', '2016-10-22 20:34:19');
INSERT INTO `syslog` VALUES ('1563', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=236&name=详情&resourcetype=1&url=/serverManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=233&', '127.0.0.1', '2016-10-22 20:34:56');
INSERT INTO `syslog` VALUES ('1564', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1477139606605&', '127.0.0.1', '2016-10-22 20:35:31');
INSERT INTO `syslog` VALUES ('1565', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,334,335,338,336,337,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333&', '127.0.0.1', '2016-10-22 20:35:49');
INSERT INTO `syslog` VALUES ('1566', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-22 20:35:53');
INSERT INTO `syslog` VALUES ('1567', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-22 20:40:36');
INSERT INTO `syslog` VALUES ('1568', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-22 20:40:40');
INSERT INTO `syslog` VALUES ('1569', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-22 21:35:05');
INSERT INTO `syslog` VALUES ('1570', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-22 21:35:05');
INSERT INTO `syslog` VALUES ('1571', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-22 21:35:07');
INSERT INTO `syslog` VALUES ('1572', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-22 21:35:17');
INSERT INTO `syslog` VALUES ('1573', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-24 20:18:42');
INSERT INTO `syslog` VALUES ('1574', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-24 20:18:48');
INSERT INTO `syslog` VALUES ('1575', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-24 20:19:46');
INSERT INTO `syslog` VALUES ('1576', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-24 20:19:54');
INSERT INTO `syslog` VALUES ('1577', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-24 21:33:56');
INSERT INTO `syslog` VALUES ('1578', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-24 21:33:56');
INSERT INTO `syslog` VALUES ('1579', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-24 21:33:58');
INSERT INTO `syslog` VALUES ('1580', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-24 21:34:14');
INSERT INTO `syslog` VALUES ('1581', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-24 23:15:42');
INSERT INTO `syslog` VALUES ('1582', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-24 23:15:43');
INSERT INTO `syslog` VALUES ('1583', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-24 23:23:07');
INSERT INTO `syslog` VALUES ('1584', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=安全产品台帐&keys_=sechostinfo&url=/secHostInfoManage/secHostAddPage&description=新增&', '127.0.0.1', '2016-10-24 23:24:23');
INSERT INTO `syslog` VALUES ('1585', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-24 23:24:33');
INSERT INTO `syslog` VALUES ('1586', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=安全产品台帐&keys_=sechostinfo&url=/secHostInfoManage/secHostEditPage&description=修改&', '127.0.0.1', '2016-10-24 23:25:45');
INSERT INTO `syslog` VALUES ('1587', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-24 23:25:48');
INSERT INTO `syslog` VALUES ('1588', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=安全产品台帐&keys_=sechostinfo&url=/secHostInfoManage/secHostReturnPage&description=清退&', '127.0.0.1', '2016-10-24 23:26:30');
INSERT INTO `syslog` VALUES ('1589', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-24 23:33:34');
INSERT INTO `syslog` VALUES ('1590', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-24 23:35:07');
INSERT INTO `syslog` VALUES ('1591', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-24 23:35:21');
INSERT INTO `syslog` VALUES ('1592', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-25 20:49:09');
INSERT INTO `syslog` VALUES ('1593', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-25 20:49:11');
INSERT INTO `syslog` VALUES ('1594', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-25 20:49:44');
INSERT INTO `syslog` VALUES ('1595', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=中间转换机台帐&keys_=convertinfo&url=/convertInfoManage/convertAddPage&description=新增&', '127.0.0.1', '2016-10-25 20:50:46');
INSERT INTO `syslog` VALUES ('1596', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-25 20:50:57');
INSERT INTO `syslog` VALUES ('1597', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=中间转换机台帐&keys_=convertinfo&url=/convertInfoManage/convertEditPage&description=修改&', '127.0.0.1', '2016-10-25 20:51:44');
INSERT INTO `syslog` VALUES ('1598', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-25 20:51:56');
INSERT INTO `syslog` VALUES ('1599', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=中间转换机台帐&keys_=convertinfo&url=/convertInfoManage/convertReturnPage&description=清退&', '127.0.0.1', '2016-10-25 20:53:06');
INSERT INTO `syslog` VALUES ('1600', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-25 21:10:19');
INSERT INTO `syslog` VALUES ('1601', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-25 21:10:22');
INSERT INTO `syslog` VALUES ('1602', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=230&_=1477401023039&', '127.0.0.1', '2016-10-25 21:36:57');
INSERT INTO `syslog` VALUES ('1603', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=230&name=文件上传&resourcetype=1&url=/computerManage/add&seq=1&icon=icon-add&status=0&pid=228&', '127.0.0.1', '2016-10-25 21:38:35');
INSERT INTO `syslog` VALUES ('1604', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=230&name=文件上传&resourcetype=1&url=/computerManage/fileUpload&seq=1&icon=icon-add&status=0&pid=228&', '127.0.0.1', '2016-10-25 21:39:00');
INSERT INTO `syslog` VALUES ('1605', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=235&_=1477401023040&', '127.0.0.1', '2016-10-25 21:39:20');
INSERT INTO `syslog` VALUES ('1606', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=235&name=文件上传&resourcetype=1&url=/serverManage/fileUpload&seq=1&icon=icon-add&status=0&pid=233&', '127.0.0.1', '2016-10-25 21:39:31');
INSERT INTO `syslog` VALUES ('1607', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=240&_=1477401023041&', '127.0.0.1', '2016-10-25 21:39:41');
INSERT INTO `syslog` VALUES ('1608', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=240&name=文件上传&resourcetype=1&url=/secProdInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=238&', '127.0.0.1', '2016-10-25 21:39:57');
INSERT INTO `syslog` VALUES ('1609', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=245&_=1477401023042&', '127.0.0.1', '2016-10-25 21:40:04');
INSERT INTO `syslog` VALUES ('1610', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=245&name=文件上传&resourcetype=1&url=/switchInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=243&', '127.0.0.1', '2016-10-25 21:40:13');
INSERT INTO `syslog` VALUES ('1611', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=250&_=1477401023043&', '127.0.0.1', '2016-10-25 21:40:21');
INSERT INTO `syslog` VALUES ('1612', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=250&name=文件上传&resourcetype=1&url=/convertInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=248&', '127.0.0.1', '2016-10-25 21:40:34');
INSERT INTO `syslog` VALUES ('1613', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=241&_=1477401023044&', '127.0.0.1', '2016-10-25 21:41:13');
INSERT INTO `syslog` VALUES ('1614', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=241&name=详情&resourcetype=1&url=/secProdInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=238&', '127.0.0.1', '2016-10-25 21:41:29');
INSERT INTO `syslog` VALUES ('1615', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=246&_=1477401023045&', '127.0.0.1', '2016-10-25 21:41:38');
INSERT INTO `syslog` VALUES ('1616', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=246&name=详情&resourcetype=1&url=/switchInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=243&', '127.0.0.1', '2016-10-25 21:41:49');
INSERT INTO `syslog` VALUES ('1617', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=251&_=1477401023046&', '127.0.0.1', '2016-10-25 21:42:01');
INSERT INTO `syslog` VALUES ('1618', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=251&name=详情&resourcetype=1&url=/convertInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=248&', '127.0.0.1', '2016-10-25 21:42:12');
INSERT INTO `syslog` VALUES ('1619', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=255&_=1477401023047&', '127.0.0.1', '2016-10-25 21:42:32');
INSERT INTO `syslog` VALUES ('1620', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=255&name=文件上传&resourcetype=1&url=/secHostInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=253&', '127.0.0.1', '2016-10-25 21:42:46');
INSERT INTO `syslog` VALUES ('1621', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=260&_=1477401023048&', '127.0.0.1', '2016-10-25 21:42:51');
INSERT INTO `syslog` VALUES ('1622', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=260&name=文件上传&resourcetype=1&url=/unsecHostInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=258&', '127.0.0.1', '2016-10-25 21:43:03');
INSERT INTO `syslog` VALUES ('1623', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=265&_=1477401023049&', '127.0.0.1', '2016-10-25 21:44:27');
INSERT INTO `syslog` VALUES ('1624', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=265&_=1477401023050&', '127.0.0.1', '2016-10-25 21:44:45');
INSERT INTO `syslog` VALUES ('1625', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=265&_=1477401023051&', '127.0.0.1', '2016-10-25 21:47:00');
INSERT INTO `syslog` VALUES ('1626', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=265&name=文件上传&resourcetype=1&url=/internetInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=263&', '127.0.0.1', '2016-10-25 21:47:11');
INSERT INTO `syslog` VALUES ('1627', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=270&_=1477401023052&', '127.0.0.1', '2016-10-25 21:47:23');
INSERT INTO `syslog` VALUES ('1628', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=270&name=文件上传&resourcetype=1&url=/printInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=268&', '127.0.0.1', '2016-10-25 21:47:31');
INSERT INTO `syslog` VALUES ('1629', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=275&_=1477401023053&', '127.0.0.1', '2016-10-25 21:47:37');
INSERT INTO `syslog` VALUES ('1630', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=275&name=文件上传&resourcetype=1&url=/secPrintInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=273&', '127.0.0.1', '2016-10-25 21:47:45');
INSERT INTO `syslog` VALUES ('1631', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=280&_=1477401023054&', '127.0.0.1', '2016-10-25 21:47:51');
INSERT INTO `syslog` VALUES ('1632', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=280&name=文件上传&resourcetype=1&url=/unSecPrintInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=278&', '127.0.0.1', '2016-10-25 21:48:03');
INSERT INTO `syslog` VALUES ('1633', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=285&_=1477401023055&', '127.0.0.1', '2016-10-25 21:48:08');
INSERT INTO `syslog` VALUES ('1634', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=285&name=文件上传&resourcetype=1&url=/attendanceInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=283&', '127.0.0.1', '2016-10-25 21:48:20');
INSERT INTO `syslog` VALUES ('1635', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=290&_=1477401023056&', '127.0.0.1', '2016-10-25 21:48:26');
INSERT INTO `syslog` VALUES ('1636', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=290&name=文件上传&resourcetype=1&url=/notePadInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=288&', '127.0.0.1', '2016-10-25 21:48:34');
INSERT INTO `syslog` VALUES ('1637', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=295&_=1477401023057&', '127.0.0.1', '2016-10-25 21:48:41');
INSERT INTO `syslog` VALUES ('1638', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=295&name=文件上传&resourcetype=1&url=/plotterInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=293&', '127.0.0.1', '2016-10-25 21:48:50');
INSERT INTO `syslog` VALUES ('1639', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=300&_=1477401023058&', '127.0.0.1', '2016-10-25 21:48:54');
INSERT INTO `syslog` VALUES ('1640', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=300&name=文件上传&resourcetype=1&url=/oaAutoInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=298&', '127.0.0.1', '2016-10-25 21:49:02');
INSERT INTO `syslog` VALUES ('1641', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=256&_=1477401023059&', '127.0.0.1', '2016-10-25 21:49:44');
INSERT INTO `syslog` VALUES ('1642', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=256&name=详情&resourcetype=1&url=/secHostInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=253&', '127.0.0.1', '2016-10-25 21:49:53');
INSERT INTO `syslog` VALUES ('1643', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=261&_=1477401023060&', '127.0.0.1', '2016-10-25 21:49:58');
INSERT INTO `syslog` VALUES ('1644', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=261&name=详情&resourcetype=1&url=/unsecHostInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=258&', '127.0.0.1', '2016-10-25 21:50:07');
INSERT INTO `syslog` VALUES ('1645', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=266&_=1477401023061&', '127.0.0.1', '2016-10-25 21:50:11');
INSERT INTO `syslog` VALUES ('1646', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=266&name=详情&resourcetype=1&url=/internetInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=263&', '127.0.0.1', '2016-10-25 21:50:20');
INSERT INTO `syslog` VALUES ('1647', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=271&_=1477401023062&', '127.0.0.1', '2016-10-25 21:50:25');
INSERT INTO `syslog` VALUES ('1648', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=271&name=详情&resourcetype=1&url=/printInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=268&', '127.0.0.1', '2016-10-25 21:50:33');
INSERT INTO `syslog` VALUES ('1649', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=276&_=1477401023063&', '127.0.0.1', '2016-10-25 21:50:38');
INSERT INTO `syslog` VALUES ('1650', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=276&name=详情&resourcetype=1&url=/secPrintInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=273&', '127.0.0.1', '2016-10-25 21:50:46');
INSERT INTO `syslog` VALUES ('1651', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=281&_=1477401023064&', '127.0.0.1', '2016-10-25 21:50:51');
INSERT INTO `syslog` VALUES ('1652', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=281&name=详情&resourcetype=1&url=/unSecPrintInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=278&', '127.0.0.1', '2016-10-25 21:51:01');
INSERT INTO `syslog` VALUES ('1653', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=286&_=1477401023065&', '127.0.0.1', '2016-10-25 21:51:06');
INSERT INTO `syslog` VALUES ('1654', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=286&name=详情&resourcetype=1&url=/attendanceInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=283&', '127.0.0.1', '2016-10-25 21:51:13');
INSERT INTO `syslog` VALUES ('1655', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=291&_=1477401023066&', '127.0.0.1', '2016-10-25 21:51:18');
INSERT INTO `syslog` VALUES ('1656', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=291&name=详情&resourcetype=1&url=/notePadInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=288&', '127.0.0.1', '2016-10-25 21:51:26');
INSERT INTO `syslog` VALUES ('1657', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=296&_=1477401023067&', '127.0.0.1', '2016-10-25 21:51:33');
INSERT INTO `syslog` VALUES ('1658', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=296&name=详情&resourcetype=1&url=/plotterInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=293&', '127.0.0.1', '2016-10-25 21:51:42');
INSERT INTO `syslog` VALUES ('1659', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=301&_=1477401023068&', '127.0.0.1', '2016-10-25 21:51:47');
INSERT INTO `syslog` VALUES ('1660', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=301&name=详情&resourcetype=1&url=/oaAutoInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=298&', '127.0.0.1', '2016-10-25 21:51:55');
INSERT INTO `syslog` VALUES ('1661', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1477401023069&', '127.0.0.1', '2016-10-25 22:00:50');
INSERT INTO `syslog` VALUES ('1662', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,334,335,338,336,337,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333&', '127.0.0.1', '2016-10-25 22:01:03');
INSERT INTO `syslog` VALUES ('1663', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-25 22:01:06');
INSERT INTO `syslog` VALUES ('1664', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.collection.CombinationController,[方法]:addUsbPage,[参数]:', null, '2016-10-25 22:12:53');
INSERT INTO `syslog` VALUES ('1665', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.collection.CombinationController,[方法]:addUsb,[参数]:serialNumber=XXXX001&other=白名单&', '127.0.0.1', '2016-10-25 22:14:33');
INSERT INTO `syslog` VALUES ('1666', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-25 22:22:52');
INSERT INTO `syslog` VALUES ('1667', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=互联网计算机台帐&keys_=internetinfo&url=/internetInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-25 22:23:49');
INSERT INTO `syslog` VALUES ('1668', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-25 22:24:02');
INSERT INTO `syslog` VALUES ('1669', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=互联网计算机台帐&keys_=internetinfo&url=/internetInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-25 22:26:44');
INSERT INTO `syslog` VALUES ('1670', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-25 22:26:57');
INSERT INTO `syslog` VALUES ('1671', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=互联网计算机台帐&keys_=internetinfo&url=/internetInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-25 22:27:32');
INSERT INTO `syslog` VALUES ('1672', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-25 22:27:51');
INSERT INTO `syslog` VALUES ('1673', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:addPage,[参数]:', null, '2016-10-25 22:27:54');
INSERT INTO `syslog` VALUES ('1674', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:addPage,[参数]:', null, '2016-10-25 22:28:21');
INSERT INTO `syslog` VALUES ('1675', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 22:28:27');
INSERT INTO `syslog` VALUES ('1676', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=&', '127.0.0.1', '2016-10-25 22:29:01');
INSERT INTO `syslog` VALUES ('1677', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-25 22:29:03');
INSERT INTO `syslog` VALUES ('1678', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-25 22:29:46');
INSERT INTO `syslog` VALUES ('1679', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=便携式计算机台帐&keys_=notepadinfo&url=/notePadInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-25 22:30:26');
INSERT INTO `syslog` VALUES ('1680', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-25 22:30:33');
INSERT INTO `syslog` VALUES ('1681', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=便携式计算机台帐&keys_=notepadinfo&url=/notePadInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-25 22:31:13');
INSERT INTO `syslog` VALUES ('1682', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-25 22:31:16');
INSERT INTO `syslog` VALUES ('1683', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=便携式计算机台帐&keys_=notepadinfo&url=/notePadInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-25 22:31:39');
INSERT INTO `syslog` VALUES ('1684', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 22:33:25');
INSERT INTO `syslog` VALUES ('1685', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=&', '127.0.0.1', '2016-10-25 22:33:35');
INSERT INTO `syslog` VALUES ('1686', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-25 22:33:37');
INSERT INTO `syslog` VALUES ('1687', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-25 22:40:03');
INSERT INTO `syslog` VALUES ('1688', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 22:40:10');
INSERT INTO `syslog` VALUES ('1689', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=&', '127.0.0.1', '2016-10-25 22:41:53');
INSERT INTO `syslog` VALUES ('1690', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-25 22:41:55');
INSERT INTO `syslog` VALUES ('1691', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 22:57:09');
INSERT INTO `syslog` VALUES ('1692', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 22:58:48');
INSERT INTO `syslog` VALUES ('1693', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 22:59:31');
INSERT INTO `syslog` VALUES ('1694', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 23:00:03');
INSERT INTO `syslog` VALUES ('1695', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 23:01:46');
INSERT INTO `syslog` VALUES ('1696', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 23:02:38');
INSERT INTO `syslog` VALUES ('1697', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 23:09:29');
INSERT INTO `syslog` VALUES ('1698', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-25 23:12:15');
INSERT INTO `syslog` VALUES ('1699', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-26 20:32:59');
INSERT INTO `syslog` VALUES ('1700', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-26 20:33:07');
INSERT INTO `syslog` VALUES ('1701', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 20:34:40');
INSERT INTO `syslog` VALUES ('1702', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=办公自动化设备台帐&keys_=oaautoinfo&url=/oaAutoInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 20:35:34');
INSERT INTO `syslog` VALUES ('1703', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 20:35:48');
INSERT INTO `syslog` VALUES ('1704', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=办公自动化设备台帐&keys_=oaautoinfo&url=/oaAutoInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 20:36:16');
INSERT INTO `syslog` VALUES ('1705', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 20:36:20');
INSERT INTO `syslog` VALUES ('1706', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=办公自动化设备台帐&keys_=oaautoinfo&url=/oaAutoInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 20:36:48');
INSERT INTO `syslog` VALUES ('1707', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 20:37:25');
INSERT INTO `syslog` VALUES ('1708', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=直连绘图仪台帐&keys_=plotterinfo&url=/plotterInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 20:38:29');
INSERT INTO `syslog` VALUES ('1709', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 20:38:44');
INSERT INTO `syslog` VALUES ('1710', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=直连绘图仪台帐&keys_=plotterinfo&url=/plotterInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 20:39:12');
INSERT INTO `syslog` VALUES ('1711', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 20:39:16');
INSERT INTO `syslog` VALUES ('1712', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=直连绘图仪台帐&keys_=plotterinfo&url=/plotterInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 20:39:44');
INSERT INTO `syslog` VALUES ('1713', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 20:40:02');
INSERT INTO `syslog` VALUES ('1714', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=内网打印机台帐&keys_=printinfo&url=/printInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 20:40:51');
INSERT INTO `syslog` VALUES ('1715', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 20:40:56');
INSERT INTO `syslog` VALUES ('1716', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=内网打印机台帐&keys_=printinfo&url=/printInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 20:41:39');
INSERT INTO `syslog` VALUES ('1717', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=26&_=1477485187712&', '127.0.0.1', '2016-10-26 20:41:46');
INSERT INTO `syslog` VALUES ('1718', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:edit,[参数]:id=26&name=内网打印机台帐&keys_=printinfo&url=/printInfoManage/editPage&description=新增&', '127.0.0.1', '2016-10-26 20:42:02');
INSERT INTO `syslog` VALUES ('1719', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=26&_=1477485187713&', '127.0.0.1', '2016-10-26 20:56:33');
INSERT INTO `syslog` VALUES ('1720', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:edit,[参数]:id=26&name=内网打印机台帐&keys_=printinfo&url=/printInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 20:56:49');
INSERT INTO `syslog` VALUES ('1721', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=26&_=1477485187714&', '127.0.0.1', '2016-10-26 20:58:10');
INSERT INTO `syslog` VALUES ('1722', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=26&name=内网打印机台帐&keys_=printinfo&url=/printInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 20:58:27');
INSERT INTO `syslog` VALUES ('1723', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 20:59:00');
INSERT INTO `syslog` VALUES ('1724', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=内网打印机台帐&keys_=printinfo&url=/printInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 20:59:31');
INSERT INTO `syslog` VALUES ('1725', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:00:27');
INSERT INTO `syslog` VALUES ('1726', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密单机台帐&keys_=sechostinfo&url=/secHostInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 21:02:02');
INSERT INTO `syslog` VALUES ('1727', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:02:09');
INSERT INTO `syslog` VALUES ('1728', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密单机台帐&keys_=sechostinfo&url=/secHostInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 21:02:53');
INSERT INTO `syslog` VALUES ('1729', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:03:02');
INSERT INTO `syslog` VALUES ('1730', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=涉密单机台帐&keys_=sechostinfo&url=/secHostInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 21:03:33');
INSERT INTO `syslog` VALUES ('1731', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:04:10');
INSERT INTO `syslog` VALUES ('1732', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=直连涉密打印设备台帐&keys_=secprintinfo&url=/secPrintInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 21:05:16');
INSERT INTO `syslog` VALUES ('1733', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:05:35');
INSERT INTO `syslog` VALUES ('1734', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=直连涉密打印设备台帐&keys_=secprintinfo&url=/secPrintInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 21:06:09');
INSERT INTO `syslog` VALUES ('1735', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:06:15');
INSERT INTO `syslog` VALUES ('1736', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=直连涉密打印设备台帐&keys_=secprintinfo&url=/secPrintInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 21:06:59');
INSERT INTO `syslog` VALUES ('1737', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:07:47');
INSERT INTO `syslog` VALUES ('1738', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=安全产品台帐&keys_=secproductinfo&url=/secProdInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 21:08:21');
INSERT INTO `syslog` VALUES ('1739', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:08:29');
INSERT INTO `syslog` VALUES ('1740', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=安全产品台帐&keys_=secproductinfo&url=/secProdInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 21:09:01');
INSERT INTO `syslog` VALUES ('1741', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:09:11');
INSERT INTO `syslog` VALUES ('1742', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=安全产品台帐&keys_=secproductinfo&url=/secProdInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 21:09:47');
INSERT INTO `syslog` VALUES ('1743', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:11:04');
INSERT INTO `syslog` VALUES ('1744', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=交换机台帐&keys_=switchinfo&url=/switchInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 21:11:44');
INSERT INTO `syslog` VALUES ('1745', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:11:56');
INSERT INTO `syslog` VALUES ('1746', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=交换机台帐&keys_=switchinfo&url=/switchInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 21:12:57');
INSERT INTO `syslog` VALUES ('1747', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:13:09');
INSERT INTO `syslog` VALUES ('1748', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=交换机台帐&keys_=switchinfo&url=/switchInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 21:13:49');
INSERT INTO `syslog` VALUES ('1749', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:15:03');
INSERT INTO `syslog` VALUES ('1750', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=非密单机台帐&keys_=unsechostinfo&url=/unsecHostInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 21:15:38');
INSERT INTO `syslog` VALUES ('1751', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:15:44');
INSERT INTO `syslog` VALUES ('1752', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=非密单机台帐&keys_=unsechostinfo&url=/unsecHostInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 21:16:30');
INSERT INTO `syslog` VALUES ('1753', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:16:42');
INSERT INTO `syslog` VALUES ('1754', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=非密单机台帐&keys_=unsechostinfo&url=/unsecHostInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 21:17:17');
INSERT INTO `syslog` VALUES ('1755', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:17:53');
INSERT INTO `syslog` VALUES ('1756', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=非密直连打印机台帐&keys_=unsecprintinfo&url=/unSecPrintInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 21:18:23');
INSERT INTO `syslog` VALUES ('1757', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:18:32');
INSERT INTO `syslog` VALUES ('1758', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=非密直连打印机台帐&keys_=unsecprintinfo&url=/unSecPrintInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 21:19:35');
INSERT INTO `syslog` VALUES ('1759', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 21:19:42');
INSERT INTO `syslog` VALUES ('1760', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=非密直连打印机台帐&keys_=unsecprintinfo&url=/unSecPrintInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 21:20:23');
INSERT INTO `syslog` VALUES ('1761', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-26 21:20:36');
INSERT INTO `syslog` VALUES ('1762', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-26 21:20:47');
INSERT INTO `syslog` VALUES ('1763', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-26 21:22:12');
INSERT INTO `syslog` VALUES ('1764', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-26 21:22:17');
INSERT INTO `syslog` VALUES ('1765', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 22:57:49');
INSERT INTO `syslog` VALUES ('1766', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=考勤机台帐&keys_=attendanceinfo&url=/attendanceInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-26 22:58:35');
INSERT INTO `syslog` VALUES ('1767', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 22:58:41');
INSERT INTO `syslog` VALUES ('1768', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=考勤机台帐&keys_=attendanceinfo&url=/attendanceInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-26 22:59:07');
INSERT INTO `syslog` VALUES ('1769', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:addPage,[参数]:', null, '2016-10-26 22:59:14');
INSERT INTO `syslog` VALUES ('1770', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:add,[参数]:name=考勤机台帐&keys_=attendanceinfo&url=/attendanceInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-26 23:00:03');
INSERT INTO `syslog` VALUES ('1771', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.OrganizationController,[方法]:addPage,[参数]:', null, '2016-10-26 23:05:56');
INSERT INTO `syslog` VALUES ('1772', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-26 23:06:32');
INSERT INTO `syslog` VALUES ('1773', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:addPage,[参数]:', null, '2016-10-26 23:06:43');
INSERT INTO `syslog` VALUES ('1774', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-27 20:19:20');
INSERT INTO `syslog` VALUES ('1775', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-27 20:19:22');
INSERT INTO `syslog` VALUES ('1776', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:19:32');
INSERT INTO `syslog` VALUES ('1777', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:21:20');
INSERT INTO `syslog` VALUES ('1778', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:22:42');
INSERT INTO `syslog` VALUES ('1779', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=238&_=1477570762976&', '127.0.0.1', '2016-10-27 20:27:32');
INSERT INTO `syslog` VALUES ('1780', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=238&name=安全产品台帐&resourcetype=0&url=/secProdInfoManage/manager&seq=2&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-10-27 20:27:48');
INSERT INTO `syslog` VALUES ('1781', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-27 20:31:15');
INSERT INTO `syslog` VALUES ('1782', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-27 20:31:17');
INSERT INTO `syslog` VALUES ('1783', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:32:12');
INSERT INTO `syslog` VALUES ('1784', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-27 20:39:59');
INSERT INTO `syslog` VALUES ('1785', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-27 20:40:01');
INSERT INTO `syslog` VALUES ('1786', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:42:41');
INSERT INTO `syslog` VALUES ('1787', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-27 20:43:52');
INSERT INTO `syslog` VALUES ('1788', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-27 20:43:55');
INSERT INTO `syslog` VALUES ('1789', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:44:03');
INSERT INTO `syslog` VALUES ('1790', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:44:20');
INSERT INTO `syslog` VALUES ('1791', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:45:53');
INSERT INTO `syslog` VALUES ('1792', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-27 20:51:26');
INSERT INTO `syslog` VALUES ('1793', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-27 20:51:28');
INSERT INTO `syslog` VALUES ('1794', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=238&_=1477572688606&', '127.0.0.1', '2016-10-27 20:53:20');
INSERT INTO `syslog` VALUES ('1795', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:56:14');
INSERT INTO `syslog` VALUES ('1796', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 20:59:36');
INSERT INTO `syslog` VALUES ('1797', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=7&_=1477572688609&', '127.0.0.1', '2016-10-27 21:00:09');
INSERT INTO `syslog` VALUES ('1798', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=7&name=安全产品台帐&keys_=sechostinfo&url=/secProdInfoManage/addPage&description=新增&', '127.0.0.1', '2016-10-27 21:00:38');
INSERT INTO `syslog` VALUES ('1799', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=8&_=1477572688610&', '127.0.0.1', '2016-10-27 21:00:40');
INSERT INTO `syslog` VALUES ('1800', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=8&name=安全产品台帐&keys_=sechostinfo&url=/secProdInfoManage/editPage&description=修改&', '127.0.0.1', '2016-10-27 21:00:53');
INSERT INTO `syslog` VALUES ('1801', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=9&_=1477572688611&', '127.0.0.1', '2016-10-27 21:00:55');
INSERT INTO `syslog` VALUES ('1802', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=9&name=安全产品台帐&keys_=sechostinfo&url=/secProdInfoManage/returnPage&description=清退&', '127.0.0.1', '2016-10-27 21:01:08');
INSERT INTO `syslog` VALUES ('1803', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 21:01:37');
INSERT INTO `syslog` VALUES ('1804', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:addPage,[参数]:', null, '2016-10-27 21:01:40');
INSERT INTO `syslog` VALUES ('1805', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 21:08:18');
INSERT INTO `syslog` VALUES ('1806', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:addPage,[参数]:', null, '2016-10-27 21:08:21');
INSERT INTO `syslog` VALUES ('1807', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-27 21:10:37');
INSERT INTO `syslog` VALUES ('1808', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-27 21:11:59');
INSERT INTO `syslog` VALUES ('1809', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 21:12:31');
INSERT INTO `syslog` VALUES ('1810', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:addPage,[参数]:', null, '2016-10-27 21:12:33');
INSERT INTO `syslog` VALUES ('1811', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 21:41:28');
INSERT INTO `syslog` VALUES ('1812', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-27 22:20:27');
INSERT INTO `syslog` VALUES ('1813', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-27 22:30:02');
INSERT INTO `syslog` VALUES ('1814', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-27 22:30:04');
INSERT INTO `syslog` VALUES ('1815', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-28 20:46:47');
INSERT INTO `syslog` VALUES ('1816', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-28 20:46:50');
INSERT INTO `syslog` VALUES ('1817', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 20:47:05');
INSERT INTO `syslog` VALUES ('1818', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 20:47:46');
INSERT INTO `syslog` VALUES ('1819', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ConvertInfoController,[方法]:delete,[参数]:id=1&', '127.0.0.1', '2016-10-28 20:49:21');
INSERT INTO `syslog` VALUES ('1820', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ConvertInfoController,[方法]:delete,[参数]:id=2&', '127.0.0.1', '2016-10-28 20:49:24');
INSERT INTO `syslog` VALUES ('1821', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ConvertInfoController,[方法]:delete,[参数]:id=3&', '127.0.0.1', '2016-10-28 20:49:29');
INSERT INTO `syslog` VALUES ('1822', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:delete,[参数]:id=1&', '127.0.0.1', '2016-10-28 20:50:03');
INSERT INTO `syslog` VALUES ('1823', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:delete,[参数]:id=2&', '127.0.0.1', '2016-10-28 20:50:06');
INSERT INTO `syslog` VALUES ('1824', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 20:50:17');
INSERT INTO `syslog` VALUES ('1825', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:addPage,[参数]:', null, '2016-10-28 20:50:20');
INSERT INTO `syslog` VALUES ('1826', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 20:54:16');
INSERT INTO `syslog` VALUES ('1827', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:addPage,[参数]:', null, '2016-10-28 20:54:21');
INSERT INTO `syslog` VALUES ('1828', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-28 23:13:56');
INSERT INTO `syslog` VALUES ('1829', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-28 23:14:01');
INSERT INTO `syslog` VALUES ('1830', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 23:14:07');
INSERT INTO `syslog` VALUES ('1831', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 23:14:28');
INSERT INTO `syslog` VALUES ('1832', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:addPage,[参数]:', null, '2016-10-28 23:14:31');
INSERT INTO `syslog` VALUES ('1833', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:delete,[参数]:id=1&', '127.0.0.1', '2016-10-28 23:17:36');
INSERT INTO `syslog` VALUES ('1834', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecHostInfoController,[方法]:delete,[参数]:id=2&', '127.0.0.1', '2016-10-28 23:17:39');
INSERT INTO `syslog` VALUES ('1835', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 23:17:45');
INSERT INTO `syslog` VALUES ('1836', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 23:30:44');
INSERT INTO `syslog` VALUES ('1837', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:addPage,[参数]:', null, '2016-10-28 23:31:02');
INSERT INTO `syslog` VALUES ('1838', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 23:44:41');
INSERT INTO `syslog` VALUES ('1839', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecHostInfoController,[方法]:addPage,[参数]:', null, '2016-10-28 23:44:47');
INSERT INTO `syslog` VALUES ('1840', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-28 23:45:56');
INSERT INTO `syslog` VALUES ('1841', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecHostInfoController,[方法]:addPage,[参数]:', null, '2016-10-28 23:46:01');
INSERT INTO `syslog` VALUES ('1842', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 00:08:39');
INSERT INTO `syslog` VALUES ('1843', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 00:08:43');
INSERT INTO `syslog` VALUES ('1844', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 00:11:32');
INSERT INTO `syslog` VALUES ('1845', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 00:11:34');
INSERT INTO `syslog` VALUES ('1846', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 00:18:58');
INSERT INTO `syslog` VALUES ('1847', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 00:19:01');
INSERT INTO `syslog` VALUES ('1848', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 00:22:27');
INSERT INTO `syslog` VALUES ('1849', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 00:22:33');
INSERT INTO `syslog` VALUES ('1850', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 00:25:59');
INSERT INTO `syslog` VALUES ('1851', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 00:26:14');
INSERT INTO `syslog` VALUES ('1852', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-29 16:50:34');
INSERT INTO `syslog` VALUES ('1853', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-29 16:50:36');
INSERT INTO `syslog` VALUES ('1854', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-29 19:08:45');
INSERT INTO `syslog` VALUES ('1855', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-29 19:08:45');
INSERT INTO `syslog` VALUES ('1856', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-29 19:08:47');
INSERT INTO `syslog` VALUES ('1857', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:09:12');
INSERT INTO `syslog` VALUES ('1858', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:09:20');
INSERT INTO `syslog` VALUES ('1859', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:15:43');
INSERT INTO `syslog` VALUES ('1860', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:15:48');
INSERT INTO `syslog` VALUES ('1861', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:17:40');
INSERT INTO `syslog` VALUES ('1862', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:17:47');
INSERT INTO `syslog` VALUES ('1863', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:18:49');
INSERT INTO `syslog` VALUES ('1864', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:19:00');
INSERT INTO `syslog` VALUES ('1865', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:22:42');
INSERT INTO `syslog` VALUES ('1866', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:22:50');
INSERT INTO `syslog` VALUES ('1867', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-29 19:25:35');
INSERT INTO `syslog` VALUES ('1868', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-29 19:25:40');
INSERT INTO `syslog` VALUES ('1869', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:25:58');
INSERT INTO `syslog` VALUES ('1870', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:26:03');
INSERT INTO `syslog` VALUES ('1871', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:38:18');
INSERT INTO `syslog` VALUES ('1872', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:38:28');
INSERT INTO `syslog` VALUES ('1873', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:40:24');
INSERT INTO `syslog` VALUES ('1874', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:40:27');
INSERT INTO `syslog` VALUES ('1875', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:43:28');
INSERT INTO `syslog` VALUES ('1876', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:43:31');
INSERT INTO `syslog` VALUES ('1877', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-29 19:44:14');
INSERT INTO `syslog` VALUES ('1878', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-29 19:44:18');
INSERT INTO `syslog` VALUES ('1879', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:44:27');
INSERT INTO `syslog` VALUES ('1880', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:44:30');
INSERT INTO `syslog` VALUES ('1881', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-29 19:51:27');
INSERT INTO `syslog` VALUES ('1882', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-29 19:51:29');
INSERT INTO `syslog` VALUES ('1883', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:52:36');
INSERT INTO `syslog` VALUES ('1884', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:52:48');
INSERT INTO `syslog` VALUES ('1885', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 19:57:02');
INSERT INTO `syslog` VALUES ('1886', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 19:57:10');
INSERT INTO `syslog` VALUES ('1887', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 20:03:18');
INSERT INTO `syslog` VALUES ('1888', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:03:23');
INSERT INTO `syslog` VALUES ('1889', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 20:04:52');
INSERT INTO `syslog` VALUES ('1890', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:04:55');
INSERT INTO `syslog` VALUES ('1891', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 20:10:08');
INSERT INTO `syslog` VALUES ('1892', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PlotterInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:10:26');
INSERT INTO `syslog` VALUES ('1893', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 20:15:53');
INSERT INTO `syslog` VALUES ('1894', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PlotterInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:15:57');
INSERT INTO `syslog` VALUES ('1895', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=283&_=1477741889851&', '127.0.0.1', '2016-10-29 20:29:39');
INSERT INTO `syslog` VALUES ('1896', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=283&name=直连绘图仪台帐&resourcetype=0&url=/plotterInfoManage/manager&seq=10&icon=icon-folder&status=0&pid=227&', '127.0.0.1', '2016-10-29 20:30:04');
INSERT INTO `syslog` VALUES ('1897', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=284&_=1477741889852&', '127.0.0.1', '2016-10-29 20:30:10');
INSERT INTO `syslog` VALUES ('1898', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=284&name=列表&resourcetype=1&url=/plotterInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=283&', '127.0.0.1', '2016-10-29 20:30:18');
INSERT INTO `syslog` VALUES ('1899', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=285&_=1477741889853&', '127.0.0.1', '2016-10-29 20:30:22');
INSERT INTO `syslog` VALUES ('1900', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=285&name=文件上传&resourcetype=1&url=/plotterInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=283&', '127.0.0.1', '2016-10-29 20:30:29');
INSERT INTO `syslog` VALUES ('1901', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=286&_=1477741889854&', '127.0.0.1', '2016-10-29 20:30:34');
INSERT INTO `syslog` VALUES ('1902', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=286&name=详情&resourcetype=1&url=/plotterInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=283&', '127.0.0.1', '2016-10-29 20:30:40');
INSERT INTO `syslog` VALUES ('1903', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=287&_=1477741889855&', '127.0.0.1', '2016-10-29 20:30:42');
INSERT INTO `syslog` VALUES ('1904', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=287&name=删除&resourcetype=1&url=/plotterInfoManage/delete&seq=3&icon=icon-del&status=0&pid=283&', '127.0.0.1', '2016-10-29 20:30:50');
INSERT INTO `syslog` VALUES ('1905', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-29 20:33:16');
INSERT INTO `syslog` VALUES ('1906', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 20:34:22');
INSERT INTO `syslog` VALUES ('1907', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.NotePadInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:34:42');
INSERT INTO `syslog` VALUES ('1908', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:36:46');
INSERT INTO `syslog` VALUES ('1909', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.NotePadInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:37:34');
INSERT INTO `syslog` VALUES ('1910', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 20:38:43');
INSERT INTO `syslog` VALUES ('1911', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.NotePadInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:38:53');
INSERT INTO `syslog` VALUES ('1912', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 20:44:05');
INSERT INTO `syslog` VALUES ('1913', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:44:08');
INSERT INTO `syslog` VALUES ('1914', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 20:45:18');
INSERT INTO `syslog` VALUES ('1915', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:45:21');
INSERT INTO `syslog` VALUES ('1916', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-29 20:46:25');
INSERT INTO `syslog` VALUES ('1917', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:addPage,[参数]:', null, '2016-10-29 20:46:29');
INSERT INTO `syslog` VALUES ('1918', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 11:39:07');
INSERT INTO `syslog` VALUES ('1919', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 11:39:08');
INSERT INTO `syslog` VALUES ('1920', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 11:39:10');
INSERT INTO `syslog` VALUES ('1921', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 11:45:11');
INSERT INTO `syslog` VALUES ('1922', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 11:45:14');
INSERT INTO `syslog` VALUES ('1923', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 11:46:50');
INSERT INTO `syslog` VALUES ('1924', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 11:46:53');
INSERT INTO `syslog` VALUES ('1925', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 12:05:46');
INSERT INTO `syslog` VALUES ('1926', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 12:05:50');
INSERT INTO `syslog` VALUES ('1927', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 12:08:31');
INSERT INTO `syslog` VALUES ('1928', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 12:08:35');
INSERT INTO `syslog` VALUES ('1929', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 12:23:06');
INSERT INTO `syslog` VALUES ('1930', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 12:23:08');
INSERT INTO `syslog` VALUES ('1931', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:editPage,[参数]:id=2&_=1477801388511&', '127.0.0.1', '2016-10-30 12:25:37');
INSERT INTO `syslog` VALUES ('1932', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 12:30:11');
INSERT INTO `syslog` VALUES ('1933', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 12:30:15');
INSERT INTO `syslog` VALUES ('1934', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:editPage,[参数]:id=2&_=1477801815688&', '127.0.0.1', '2016-10-30 12:33:22');
INSERT INTO `syslog` VALUES ('1935', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 12:43:08');
INSERT INTO `syslog` VALUES ('1936', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 12:43:12');
INSERT INTO `syslog` VALUES ('1937', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 12:50:54');
INSERT INTO `syslog` VALUES ('1938', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 12:50:57');
INSERT INTO `syslog` VALUES ('1939', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 12:52:08');
INSERT INTO `syslog` VALUES ('1940', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 12:52:10');
INSERT INTO `syslog` VALUES ('1941', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 12:53:50');
INSERT INTO `syslog` VALUES ('1942', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 12:53:51');
INSERT INTO `syslog` VALUES ('1943', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 15:22:53');
INSERT INTO `syslog` VALUES ('1944', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 15:22:55');
INSERT INTO `syslog` VALUES ('1945', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 16:13:21');
INSERT INTO `syslog` VALUES ('1946', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 16:13:23');
INSERT INTO `syslog` VALUES ('1947', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 17:22:04');
INSERT INTO `syslog` VALUES ('1948', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 17:22:04');
INSERT INTO `syslog` VALUES ('1949', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 17:22:06');
INSERT INTO `syslog` VALUES ('1950', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 17:22:20');
INSERT INTO `syslog` VALUES ('1951', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:editPage,[参数]:id=10&', '127.0.0.1', '2016-10-30 17:22:25');
INSERT INTO `syslog` VALUES ('1952', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.ComputerManageController,[方法]:edit,[参数]:change_no=WH10001&change_content=涉密计算计算机台帐变更&bus_type=新增&id=10&devno=XH100&depname=数据部&resperson=张三&devseclevel=高级&propertyno=ZC001&propertyown=数据部&devorigno=CH100&infodevno=BH001&diskno=S22XNXAGB49717&devstandard=最好&starttime=2016-10-08 22:27:51&devname=拉丁&ipaddress=169.254.139.125&vlan=VLAN&mac=50:7B:9D:77:F0:62&switchport=8080&patchpanel=三楼左三&phylocation=三楼201&osversion=windows10&osinstime=2016-10-04 22:29:15&cakeyno=key100&networkmark=无&usedstatus=正常&leaveTime=2016-10-25 22:29:33&remark=无&isInstall=是&', '127.0.0.1', '2016-10-30 17:23:21');
INSERT INTO `syslog` VALUES ('1953', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 17:25:09');
INSERT INTO `syslog` VALUES ('1954', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=1&_=1477819326301&', '127.0.0.1', '2016-10-30 17:26:29');
INSERT INTO `syslog` VALUES ('1955', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=1&name=内网计算机台帐&keys_=computerManage&url=/computerManage/editPage&description=修改&', '127.0.0.1', '2016-10-30 17:26:43');
INSERT INTO `syslog` VALUES ('1956', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=2&_=1477819326302&', '127.0.0.1', '2016-10-30 17:26:45');
INSERT INTO `syslog` VALUES ('1957', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=2&name=内网计算机台帐&keys_=computerManage&url=/computerManage/changeAddPage&description=新增&', '127.0.0.1', '2016-10-30 17:26:51');
INSERT INTO `syslog` VALUES ('1958', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=3&_=1477819326303&', '127.0.0.1', '2016-10-30 17:26:53');
INSERT INTO `syslog` VALUES ('1959', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=3&name=内网计算机台帐&keys_=computerManage&url=/computerManage/returnPage&description=清退&', '127.0.0.1', '2016-10-30 17:26:56');
INSERT INTO `syslog` VALUES ('1960', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 17:59:06');
INSERT INTO `syslog` VALUES ('1961', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 17:59:08');
INSERT INTO `syslog` VALUES ('1962', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=323&_=1477821548784&', '127.0.0.1', '2016-10-30 17:59:36');
INSERT INTO `syslog` VALUES ('1963', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=323&name=待办事项&resourcetype=0&url=/changeOrder/scheduleList&seq=3&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-30 17:59:40');
INSERT INTO `syslog` VALUES ('1964', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-30 17:59:46');
INSERT INTO `syslog` VALUES ('1965', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=软件白名单&resourcetype=0&url=/dictionaryManager/softwarePage&seq=4&icon=icon-folder&status=0&pid=308&', '127.0.0.1', '2016-10-30 18:01:11');
INSERT INTO `syslog` VALUES ('1966', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-30 18:01:16');
INSERT INTO `syslog` VALUES ('1967', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=列表&resourcetype=1&url=/dictionaryManager/softwareDataGrid&seq=0&icon=icon-list&status=0&pid=339&', '127.0.0.1', '2016-10-30 18:02:02');
INSERT INTO `syslog` VALUES ('1968', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-30 18:02:06');
INSERT INTO `syslog` VALUES ('1969', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=添加&resourcetype=1&url=/dictionaryManager/softwareAddPage&seq=1&icon=icon-add&status=0&pid=339&', '127.0.0.1', '2016-10-30 18:02:49');
INSERT INTO `syslog` VALUES ('1970', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-30 18:03:01');
INSERT INTO `syslog` VALUES ('1971', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=编辑&resourcetype=1&url=/dictionaryManager/softwareEditPage&seq=2&icon=icon-edit&status=0&pid=339&', '127.0.0.1', '2016-10-30 18:03:54');
INSERT INTO `syslog` VALUES ('1972', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:addPage,[参数]:', null, '2016-10-30 18:04:00');
INSERT INTO `syslog` VALUES ('1973', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.ResourceController,[方法]:add,[参数]:name=删除&resourcetype=1&url=/dictionaryManager/softwareDelete&seq=4&icon=icon-del&status=0&pid=339&', '127.0.0.1', '2016-10-30 18:04:44');
INSERT INTO `syslog` VALUES ('1974', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grantPage,[参数]:id=1&_=1477821548790&', '127.0.0.1', '2016-10-30 18:05:03');
INSERT INTO `syslog` VALUES ('1975', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.RoleController,[方法]:grant,[参数]:id=1&resourceIds=1,11,111,112,113,114,12,121,122,123,124,125,13,131,132,133,134,14,141,142,143,144,221,303,304,305,306,307,334,335,338,336,337,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,308,309,310,311,312,316,317,318,319,320,321,322,323,324,325,339,340,341,342,343,326,327,328,329,330,331,332,333&', '127.0.0.1', '2016-10-30 18:05:06');
INSERT INTO `syslog` VALUES ('1976', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:', null, '2016-10-30 18:05:11');
INSERT INTO `syslog` VALUES ('1977', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 20:23:08');
INSERT INTO `syslog` VALUES ('1978', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 20:23:08');
INSERT INTO `syslog` VALUES ('1979', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 20:23:10');
INSERT INTO `syslog` VALUES ('1980', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:23:15');
INSERT INTO `syslog` VALUES ('1981', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 20:27:19');
INSERT INTO `syslog` VALUES ('1982', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 20:27:23');
INSERT INTO `syslog` VALUES ('1983', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:30:32');
INSERT INTO `syslog` VALUES ('1984', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:editPage,[参数]:id=3&', '127.0.0.1', '2016-10-30 20:30:38');
INSERT INTO `syslog` VALUES ('1985', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:33:09');
INSERT INTO `syslog` VALUES ('1986', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:33:16');
INSERT INTO `syslog` VALUES ('1987', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 20:36:03');
INSERT INTO `syslog` VALUES ('1988', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 20:36:05');
INSERT INTO `syslog` VALUES ('1989', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:36:58');
INSERT INTO `syslog` VALUES ('1990', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=2&', '127.0.0.1', '2016-10-30 20:37:08');
INSERT INTO `syslog` VALUES ('1991', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:38:35');
INSERT INTO `syslog` VALUES ('1992', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=2&', '127.0.0.1', '2016-10-30 20:38:40');
INSERT INTO `syslog` VALUES ('1993', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:40:49');
INSERT INTO `syslog` VALUES ('1994', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.InternetInfoController,[方法]:editPage,[参数]:id=2&', '127.0.0.1', '2016-10-30 20:40:53');
INSERT INTO `syslog` VALUES ('1995', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:42:26');
INSERT INTO `syslog` VALUES ('1996', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.NotePadInfoController,[方法]:editPage,[参数]:id=2&', '127.0.0.1', '2016-10-30 20:42:31');
INSERT INTO `syslog` VALUES ('1997', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:45:09');
INSERT INTO `syslog` VALUES ('1998', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.NotePadInfoController,[方法]:editPage,[参数]:id=2&', '127.0.0.1', '2016-10-30 20:45:13');
INSERT INTO `syslog` VALUES ('1999', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:46:29');
INSERT INTO `syslog` VALUES ('2000', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:editPage,[参数]:id=1&', '127.0.0.1', '2016-10-30 20:46:35');
INSERT INTO `syslog` VALUES ('2001', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 20:51:16');
INSERT INTO `syslog` VALUES ('2002', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 20:51:20');
INSERT INTO `syslog` VALUES ('2003', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 20:54:07');
INSERT INTO `syslog` VALUES ('2004', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 20:54:09');
INSERT INTO `syslog` VALUES ('2005', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:54:31');
INSERT INTO `syslog` VALUES ('2006', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PlotterInfoController,[方法]:editPage,[参数]:id=3&', '127.0.0.1', '2016-10-30 20:54:36');
INSERT INTO `syslog` VALUES ('2007', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 20:56:40');
INSERT INTO `syslog` VALUES ('2008', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:editPage,[参数]:id=2&', '127.0.0.1', '2016-10-30 20:56:44');
INSERT INTO `syslog` VALUES ('2009', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:delete,[参数]:id=2&', '127.0.0.1', '2016-10-30 21:07:19');
INSERT INTO `syslog` VALUES ('2010', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-30 21:07:48');
INSERT INTO `syslog` VALUES ('2011', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-30 21:07:56');
INSERT INTO `syslog` VALUES ('2012', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 21:09:18');
INSERT INTO `syslog` VALUES ('2013', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.PrintInfoController,[方法]:editPage,[参数]:id=4&', '127.0.0.1', '2016-10-30 21:09:26');
INSERT INTO `syslog` VALUES ('2014', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 21:12:18');
INSERT INTO `syslog` VALUES ('2015', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 21:14:33');
INSERT INTO `syslog` VALUES ('2016', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:editPage,[参数]:id=14&', '127.0.0.1', '2016-10-30 21:14:38');
INSERT INTO `syslog` VALUES ('2017', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-30 21:14:58');
INSERT INTO `syslog` VALUES ('2018', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-30 21:15:01');
INSERT INTO `syslog` VALUES ('2019', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 21:18:45');
INSERT INTO `syslog` VALUES ('2020', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:editPage,[参数]:id=14&', '127.0.0.1', '2016-10-30 21:18:53');
INSERT INTO `syslog` VALUES ('2021', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-30 21:21:36');
INSERT INTO `syslog` VALUES ('2022', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecPrintInfoController,[方法]:addPage,[参数]:', null, '2016-10-30 21:21:40');
INSERT INTO `syslog` VALUES ('2023', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 21:26:27');
INSERT INTO `syslog` VALUES ('2024', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:', null, '2016-10-30 21:26:28');
INSERT INTO `syslog` VALUES ('2025', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&', '127.0.0.1', '2016-10-30 21:26:31');
INSERT INTO `syslog` VALUES ('2026', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 21:26:37');
INSERT INTO `syslog` VALUES ('2027', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:editPage,[参数]:id=4&', '127.0.0.1', '2016-10-30 21:26:43');
INSERT INTO `syslog` VALUES ('2028', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 21:27:35');
INSERT INTO `syslog` VALUES ('2029', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.SwitchInfoController,[方法]:editPage,[参数]:id=2&', '127.0.0.1', '2016-10-30 21:27:42');
INSERT INTO `syslog` VALUES ('2030', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 21:28:28');
INSERT INTO `syslog` VALUES ('2031', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecHostInfoController,[方法]:editPage,[参数]:id=2&', '127.0.0.1', '2016-10-30 21:28:36');
INSERT INTO `syslog` VALUES ('2032', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 21:31:44');
INSERT INTO `syslog` VALUES ('2033', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.UnsecPrintInfoController,[方法]:editPage,[参数]:id=2&', '127.0.0.1', '2016-10-30 21:31:51');
INSERT INTO `syslog` VALUES ('2034', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:', null, '2016-10-30 21:32:26');
INSERT INTO `syslog` VALUES ('2035', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:editPage,[参数]:id=14&', '127.0.0.1', '2016-10-30 21:32:32');
INSERT INTO `syslog` VALUES ('2036', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:', null, '2016-10-30 21:32:46');
INSERT INTO `syslog` VALUES ('2037', 'admin', 'admin', '[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:addPage,[参数]:', null, '2016-10-30 21:32:48');

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
  `status` varchar(100) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unsechostinfo
-- ----------------------------
INSERT INTO `unsechostinfo` VALUES ('1', '2', '3', '4', '15', 'ad', 'sd', 'sd', 'sd', 'dfsd', 'sds', '2016-09-01 21:49:16', 'sddsd', 'sdsdfds', 'sdsdsd', 'sdsdsd', '2016-08-30 21:49:24', 'sdsdsd', 'sdssdsd', '123', null, null, null);
INSERT INTO `unsechostinfo` VALUES ('2', 'BH1001', '阿斯达斯', '张三', '高', 'ZC10001', '数据部', 'BH1001', 'XH100', 'S22XNXAGB49717', '规格', '2016-10-28 23:47:08', '192.168.31.213', '50:7B:9D:77:F0:62', '北京', 'Microsoft Windows 10 专业版', '2016-10-28 23:47:19', '许可证', '良好', '无', '0', '2016-10-28 23:47:34', '6b477f18-ae63-4efb-a1c1-1fe0e0ea783b');
INSERT INTO `unsechostinfo` VALUES ('3', 'BH1001', '阿斯达斯', '张三', '高', 'ZC10001', '数据部', 'BH1001', 'XH100', 'S22XNXAGB49717', '规格', '2016-10-28 23:47:08', '192.168.31.213', '50:7B:9D:77:F0:62', '北京', 'Microsoft Windows 10 专业版', '2016-10-28 23:47:19', '许可证', '良好', '无', '0', '2016-10-30 21:28:45', 'b253b402-a8e9-4dac-bc7a-4744fe987ef2');

-- ----------------------------
-- Table structure for unsecprintinfo
-- ----------------------------
DROP TABLE IF EXISTS `unsecprintinfo`;
CREATE TABLE `unsecprintinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequenceno` varchar(200) DEFAULT NULL,
  `roomno` varchar(200) DEFAULT NULL,
  `devno` varchar(200) DEFAULT NULL,
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
  `infostatus` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `accesspoint` varchar(200) DEFAULT NULL,
  `ipaddress` varchar(200) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `paycardinfo` varchar(200) DEFAULT NULL,
  `payhostip` varchar(100) DEFAULT NULL,
  `paymac` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `changeid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unsecprintinfo
-- ----------------------------
INSERT INTO `unsecprintinfo` VALUES ('1', 'sdf', 'sdf', 'sdf', ' dfsf', 'sdf', ' dsfsdf', 'sfd', 'sfd', 'sdf', 'sdf', '2016-09-07 20:30:18', ' sdfdf', 'ssdf', 'sdfsdf', 'sf', 'sdf', null, 'sdfsdf', 'sdfsdf', '内推网', '内推网内推网内推网', null, null, null);
INSERT INTO `unsecprintinfo` VALUES ('2', 'XH10000', '房间号', 'XH100', 'BH1000', '阿萨德', '张三', '名牌', 'XH100', '规格', 'XH0001', '2016-10-29 20:03:43', '高级', '直连', '无', '无', '楼上楼', null, '50:7B:9D:77:F0:62', '北京西城', '192.168.10.100', '50:7B:9D:77:F0:64', '0', '2016-10-29 20:04:05', 'd1694ab6-53c3-4cff-a6cd-eb38f44b83e8');
INSERT INTO `unsecprintinfo` VALUES ('3', 'XH10000', '房间号', 'XH100', 'BH1000', '阿萨德', '张三', '名牌', 'XH100', '规格', 'XH0001', '2016-10-29 20:03:43', '高级', '直连', '无', '无', '楼上楼', null, '50:7B:9D:77:F0:62', '北京西城', '192.168.10.100', '50:7B:9D:77:F0:64', '0', '2016-10-30 21:31:58', 'f0473481-d8b6-42df-9ffb-9f18997921e0');

-- ----------------------------
-- Table structure for usbfilterinfo
-- ----------------------------
DROP TABLE IF EXISTS `usbfilterinfo`;
CREATE TABLE `usbfilterinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialNumber` varchar(100) DEFAULT NULL,
  `other` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usbfilterinfo
-- ----------------------------
INSERT INTO `usbfilterinfo` VALUES ('1', 'XXXX001', '白名单');

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

-- ----------------------------
-- Table structure for warncomputerinfo
-- ----------------------------
DROP TABLE IF EXISTS `warncomputerinfo`;
CREATE TABLE `warncomputerinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) DEFAULT NULL,
  `mac` varchar(40) DEFAULT NULL,
  `serialNumber` varchar(200) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `changeField` varchar(200) DEFAULT NULL,
  `busType` varchar(100) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warncomputerinfo
-- ----------------------------
INSERT INTO `warncomputerinfo` VALUES ('6', '169.254.139.125', '50:7B:9D:77:F0:62', 'WD-WXE1A95RT8DX', 'Microsoft Windows 10 专业版', '新增', null, null, '2016-10-18 23:19:02');
INSERT INTO `warncomputerinfo` VALUES ('7', '169.254.139.125', '50:7B:9D:77:F0:62', 'S22XNXAGB49717', 'Microsoft Windows 10 专业版', '变更', '磁盘序列号', null, '2016-10-18 23:19:02');

-- ----------------------------
-- Table structure for warnusbinfo
-- ----------------------------
DROP TABLE IF EXISTS `warnusbinfo`;
CREATE TABLE `warnusbinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `mediaType` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `serialNumber` varchar(200) DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warnusbinfo
-- ----------------------------
INSERT INTO `warnusbinfo` VALUES ('1', '169.254.139.125', '50:7B:9D:77:F0:62', 'Fixed hard disk media', 'SAMSUNG MZNLN128HCGR-000L2', 'S22XNXAGB49717', '4261067042', '0', '2016-10-18 23:22:28');
