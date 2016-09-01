/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2016-09-01 22:18:59
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `starttime` datetime DEFAULT NULL COMMENT '启用时间',
  `devname` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `ipaddress` varchar(200) DEFAULT NULL COMMENT 'IP地址',
  `vlan` varchar(200) DEFAULT NULL COMMENT 'VLAN',
  `mac` varchar(100) DEFAULT NULL,
  `switchport` varchar(10) DEFAULT NULL COMMENT '交换机端口号',
  `patchpanel` varchar(200) DEFAULT NULL COMMENT '配线架',
  `phylocation` varchar(200) DEFAULT NULL COMMENT '物理位置',
  `osversion` varchar(200) DEFAULT NULL COMMENT '操作系统版本',
  `osinstime` datetime DEFAULT NULL COMMENT '操作系统安装时间',
  `cakeyno` varchar(100) DEFAULT NULL COMMENT 'CAKEY编号',
  `networkmark` varchar(1000) DEFAULT NULL COMMENT '网管备注',
  `usedstatus` varchar(1000) DEFAULT NULL COMMENT '使用情况',
  `leaveTime` datetime DEFAULT NULL COMMENT '离网时间',
  `remark` varchar(1000) DEFAULT NULL,
  `isInstall` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of computermanage
-- ----------------------------
INSERT INTO `computermanage` VALUES ('1', '10', '20', 'asdasd', 'asdsaad', '50', '60', '70', 'asdsad', '90', '100', '2016-08-17 21:19:04', '110', '120', '130', '140', '150', '160', '170', '180', '2016-08-17 21:19:39', '190', '200', '210', '2016-08-17 21:19:39', '1111111', '是');
INSERT INTO `computermanage` VALUES ('7', '2', '3', '2', '2', '2', '2', '2', '2', '2', '2', '2016-08-12 15:51:41', '2', '2', '2', '2', '2', '2', '2', '2', '2016-08-18 15:51:58', '2', '2', '2', '2016-08-20 15:52:05', '2', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COMMENT='资源';

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
INSERT INTO `resource` VALUES ('221', '日志管理', '/sysLog/manager', null, 'icon-company', null, '2', '0', '0', '2015-12-01 11:44:20');
INSERT INTO `resource` VALUES ('226', '修改密码', '/user/editPwdPage', null, 'icon-edit', null, '3', '0', '1', '2015-12-07 20:23:06');
INSERT INTO `resource` VALUES ('227', '资产管理', '', null, 'icon-company', null, '0', '0', '0', '2016-08-17 21:09:27');
INSERT INTO `resource` VALUES ('228', '内网计算机台账', '/computerManage/manager', null, 'icon-folder', '227', '0', '0', '1', '2016-08-17 21:10:57');

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
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8 COMMENT='角色资源';

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
INSERT INTO `role_resource` VALUES ('409', '1', '1');
INSERT INTO `role_resource` VALUES ('410', '1', '11');
INSERT INTO `role_resource` VALUES ('411', '1', '111');
INSERT INTO `role_resource` VALUES ('412', '1', '112');
INSERT INTO `role_resource` VALUES ('413', '1', '113');
INSERT INTO `role_resource` VALUES ('414', '1', '114');
INSERT INTO `role_resource` VALUES ('415', '1', '12');
INSERT INTO `role_resource` VALUES ('416', '1', '121');
INSERT INTO `role_resource` VALUES ('417', '1', '122');
INSERT INTO `role_resource` VALUES ('418', '1', '123');
INSERT INTO `role_resource` VALUES ('419', '1', '124');
INSERT INTO `role_resource` VALUES ('420', '1', '125');
INSERT INTO `role_resource` VALUES ('421', '1', '13');
INSERT INTO `role_resource` VALUES ('422', '1', '131');
INSERT INTO `role_resource` VALUES ('423', '1', '132');
INSERT INTO `role_resource` VALUES ('424', '1', '133');
INSERT INTO `role_resource` VALUES ('425', '1', '134');
INSERT INTO `role_resource` VALUES ('426', '1', '14');
INSERT INTO `role_resource` VALUES ('427', '1', '141');
INSERT INTO `role_resource` VALUES ('428', '1', '142');
INSERT INTO `role_resource` VALUES ('429', '1', '143');
INSERT INTO `role_resource` VALUES ('430', '1', '144');
INSERT INTO `role_resource` VALUES ('431', '1', '227');
INSERT INTO `role_resource` VALUES ('432', '1', '221');

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
  `usedate` datetime DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servermanage
-- ----------------------------
INSERT INTO `servermanage` VALUES ('4', '11', '22', '33', '44', '55', '66', '77', '88', '99', '100', '2016-08-31 21:08:05', '111', '112', '113', '114', '115', '116', '117', '118', '119999');
INSERT INTO `servermanage` VALUES ('5', '1', null, null, null, null, '6', null, null, null, null, '2016-09-01 21:38:43', '12', '13', null, null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=521 DEFAULT CHARSET=utf8;

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
INSERT INTO `user` VALUES ('16', 'zkt', 'zkt', '202cb962ac59075b964b07152d234b70', '0', null, '0', '0', '1', '2016-08-15 22:20:59', '');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) NOT NULL,
  `role_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('53', '15', '8');
INSERT INTO `user_role` VALUES ('60', '1', '1');
INSERT INTO `user_role` VALUES ('61', '1', '2');
INSERT INTO `user_role` VALUES ('62', '1', '7');
INSERT INTO `user_role` VALUES ('63', '13', '2');
INSERT INTO `user_role` VALUES ('64', '14', '7');
INSERT INTO `user_role` VALUES ('65', '16', '1');
