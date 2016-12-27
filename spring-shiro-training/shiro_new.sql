-- MySQL dump 10.13  Distrib 5.7.16, for osx10.11 (x86_64)
--
-- Host: localhost    Database: shiro
-- ------------------------------------------------------
-- Server version	5.7.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendanceinfo`
--

DROP TABLE IF EXISTS `attendanceinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendanceinfo`
--

LOCK TABLES `attendanceinfo` WRITE;
/*!40000 ALTER TABLE `attendanceinfo` DISABLE KEYS */;
INSERT INTO `attendanceinfo` VALUES (1,'2','2','6','2','1','2','2','1','2',NULL,'2','2016-12-27 18:58:39','2','2','0','2016-12-27 18:58:45','8814ebac-1111-4c23-b6a0-f9c22368eec4');
/*!40000 ALTER TABLE `attendanceinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biosinfo`
--

DROP TABLE IF EXISTS `biosinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biosinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `BIOSVersion` varchar(100) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biosinfo`
--

LOCK TABLES `biosinfo` WRITE;
/*!40000 ALTER TABLE `biosinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `biosinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_history`
--

DROP TABLE IF EXISTS `change_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_history`
--

LOCK TABLES `change_history` WRITE;
/*!40000 ALTER TABLE `change_history` DISABLE KEYS */;
INSERT INTO `change_history` VALUES (1,NULL,'1','2016-12-27 18:58:45','新增考勤机台帐变更单',NULL,'2','8814ebac-1111-4c23-b6a0-f9c22368eec4','新增','0','null','attendanceinfo');
/*!40000 ALTER TABLE `change_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computermanage`
--

DROP TABLE IF EXISTS `computermanage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computermanage`
--

LOCK TABLES `computermanage` WRITE;
/*!40000 ALTER TABLE `computermanage` DISABLE KEYS */;
/*!40000 ALTER TABLE `computermanage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convertinfo`
--

DROP TABLE IF EXISTS `convertinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convertinfo`
--

LOCK TABLES `convertinfo` WRITE;
/*!40000 ALTER TABLE `convertinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `convertinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpuinfo`
--

DROP TABLE IF EXISTS `cpuinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpuinfo`
--

LOCK TABLES `cpuinfo` WRITE;
/*!40000 ALTER TABLE `cpuinfo` DISABLE KEYS */;
INSERT INTO `cpuinfo` VALUES (100,'169.254.139.125','50:7B:9D:77:F0:62','1','2592','Intel','Core(TM) i7-6700HQ CPU @ 2.60GHz','-1','8','8','1','0.0%','6.2%','0.0%','0.0%','93.7%','6.2%','2016-12-16 11:30:02'),(101,'169.254.139.125','50:7B:9D:77:F0:62','2','2592','Intel','Core(TM) i7-6700HQ CPU @ 2.60GHz','-1','8','8','1','0.0%','0.0%','0.0%','0.0%','100.0%','0.0%','2016-12-16 11:30:02'),(102,'169.254.139.125','50:7B:9D:77:F0:62','3','2592','Intel','Core(TM) i7-6700HQ CPU @ 2.60GHz','-1','8','8','1','0.0%','3.0%','0.0%','0.0%','96.9%','3.0%','2016-12-16 11:30:02'),(103,'169.254.139.125','50:7B:9D:77:F0:62','4','2592','Intel','Core(TM) i7-6700HQ CPU @ 2.60GHz','-1','8','8','1','0.0%','0.0%','0.0%','0.0%','100.0%','0.0%','2016-12-16 11:30:02'),(104,'169.254.139.125','50:7B:9D:77:F0:62','5','2592','Intel','Core(TM) i7-6700HQ CPU @ 2.60GHz','-1','8','8','1','0.0%','3.0%','0.0%','0.0%','97.0%','3.0%','2016-12-16 11:30:02'),(105,'169.254.139.125','50:7B:9D:77:F0:62','6','2592','Intel','Core(TM) i7-6700HQ CPU @ 2.60GHz','-1','8','8','1','0.0%','0.0%','0.0%','0.0%','100.0%','0.0%','2016-12-16 11:30:02'),(106,'169.254.139.125','50:7B:9D:77:F0:62','7','2592','Intel','Core(TM) i7-6700HQ CPU @ 2.60GHz','-1','8','8','1','3.0%','0.0%','0.0%','0.0%','96.9%','3.0%','2016-12-16 11:30:02'),(107,'169.254.139.125','50:7B:9D:77:F0:62','8','2592','Intel','Core(TM) i7-6700HQ CPU @ 2.60GHz','-1','8','8','1','9.4%','3.2%','0.0%','0.0%','87.4%','12.6%','2016-12-16 11:30:02');
/*!40000 ALTER TABLE `cpuinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `keys_` varchar(200) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionary`
--

LOCK TABLES `dictionary` WRITE;
/*!40000 ALTER TABLE `dictionary` DISABLE KEYS */;
INSERT INTO `dictionary` VALUES (1,'内网计算机台帐','computerManage','/computerManage/editPage','修改'),(2,'内网计算机台帐','computerManage','/computerManage/changeAddPage','新增'),(3,'内网计算机台帐','computerManage','/computerManage/returnPage','清退'),(4,'服务器台账','servermanage','/serverManage/serverAddPage','新增'),(5,'服务器台帐','servermanage','/serverManage/serverEditPage','修改'),(6,'服务器台帐','servermanage','/serverManage/serverReturnPage','清退'),(7,'安全产品台帐','sechostinfo','/secProdInfoManage/addPage','新增'),(8,'安全产品台帐','sechostinfo','/secProdInfoManage/editPage','修改'),(9,'安全产品台帐','sechostinfo','/secProdInfoManage/returnPage','清退'),(10,'中间转换机台帐','convertinfo','/convertInfoManage/convertAddPage','新增'),(11,'中间转换机台帐','convertinfo','/convertInfoManage/convertEditPage','修改'),(12,'中间转换机台帐','convertinfo','/convertInfoManage/convertReturnPage','清退'),(13,'互联网计算机台帐','internetinfo','/internetInfoManage/addPage','新增'),(14,'互联网计算机台帐','internetinfo','/internetInfoManage/editPage','修改'),(15,'互联网计算机台帐','internetinfo','/internetInfoManage/returnPage','清退'),(16,'便携式计算机台帐','notepadinfo','/notePadInfoManage/addPage','新增'),(17,'便携式计算机台帐','notepadinfo','/notePadInfoManage/editPage','修改'),(18,'便携式计算机台帐','notepadinfo','/notePadInfoManage/returnPage','清退'),(19,'办公自动化设备台帐','oaautoinfo','/oaAutoInfoManage/addPage','新增'),(20,'办公自动化设备台帐','oaautoinfo','/oaAutoInfoManage/editPage','修改'),(21,'办公自动化设备台帐','oaautoinfo','/oaAutoInfoManage/returnPage','清退'),(22,'直连绘图仪台帐','plotterinfo','/plotterInfoManage/addPage','新增'),(23,'直连绘图仪台帐','plotterinfo','/plotterInfoManage/editPage','修改'),(24,'直连绘图仪台帐','plotterinfo','/plotterInfoManage/returnPage','清退'),(25,'内网打印机台帐','printinfo','/printInfoManage/addPage','新增'),(26,'内网打印机台帐','printinfo','/printInfoManage/editPage','修改'),(27,'内网打印机台帐','printinfo','/printInfoManage/returnPage','清退'),(28,'涉密单机台帐','sechostinfo','/secHostInfoManage/addPage','新增'),(29,'涉密单机台帐','sechostinfo','/secHostInfoManage/editPage','修改'),(30,'涉密单机台帐','sechostinfo','/secHostInfoManage/returnPage','清退'),(31,'直连涉密打印设备台帐','secprintinfo','/secPrintInfoManage/addPage','新增'),(32,'直连涉密打印设备台帐','secprintinfo','/secPrintInfoManage/editPage','修改'),(33,'直连涉密打印设备台帐','secprintinfo','/secPrintInfoManage/returnPage','清退'),(34,'安全产品台帐','secproductinfo','/secProdInfoManage/addPage','新增'),(35,'安全产品台帐','secproductinfo','/secProdInfoManage/editPage','修改'),(36,'安全产品台帐','secproductinfo','/secProdInfoManage/returnPage','清退'),(37,'交换机台帐','switchinfo','/switchInfoManage/addPage','新增'),(38,'交换机台帐','switchinfo','/switchInfoManage/editPage','修改'),(39,'交换机台帐','switchinfo','/switchInfoManage/returnPage','清退'),(40,'非密单机台帐','unsechostinfo','/unsecHostInfoManage/addPage','新增'),(41,'非密单机台帐','unsechostinfo','/unsecHostInfoManage/editPage','修改'),(42,'非密单机台帐','unsechostinfo','/unsecHostInfoManage/returnPage','清退'),(43,'非密直连打印机台帐','unsecprintinfo','/unSecPrintInfoManage/addPage','新增'),(44,'非密直连打印机台帐','unsecprintinfo','/unSecPrintInfoManage/editPage','修改'),(45,'非密直连打印机台帐','unsecprintinfo','/unSecPrintInfoManage/returnPage','清退'),(46,'考勤机台帐','attendanceinfo','/attendanceInfoManage/addPage','新增'),(47,'考勤机台帐','attendanceinfo','/attendanceInfoManage/editPage','修改'),(48,'考勤机台帐','attendanceinfo','/attendanceInfoManage/returnPage','清退');
/*!40000 ALTER TABLE `dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diskdriverinfo`
--

DROP TABLE IF EXISTS `diskdriverinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diskdriverinfo`
--

LOCK TABLES `diskdriverinfo` WRITE;
/*!40000 ALTER TABLE `diskdriverinfo` DISABLE KEYS */;
INSERT INTO `diskdriverinfo` VALUES (16,'169.254.139.125','50:7B:9D:77:F0:62','Fixed hard disk media','WDC WD10SPCX-24HWST1','WD-WXE1A95RT8DX','','2016-12-16 16:16:01'),(17,'169.254.139.125','50:7B:9D:77:F0:62','Fixed hard disk media','SAMSUNG MZNLN128HCGR-000L2','S22XNXAGB49717','4261067042','2016-12-16 16:16:01');
/*!40000 ALTER TABLE `diskdriverinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diskinfo`
--

DROP TABLE IF EXISTS `diskinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diskinfo`
--

LOCK TABLES `diskinfo` WRITE;
/*!40000 ALTER TABLE `diskinfo` DISABLE KEYS */;
INSERT INTO `diskinfo` VALUES (13,'169.254.139.125','50:7B:9D:77:F0:62','0','C:\\','C:\\','0','NTFS','local','2','120771','75731','75731','45040','38.0%','832580','1820130','2016-12-16 11:30:02'),(14,'169.254.139.125','50:7B:9D:77:F0:62','1','D:\\','D:\\','0','NTFS','local','2','476991','445393','445393','31598','7.000000000000001%','205361','214702','2016-12-16 11:30:02'),(15,'169.254.139.125','50:7B:9D:77:F0:62','2','E:\\','E:\\','0','NTFS','local','2','476877','466700','466700','10176','3.0%','18261','23140','2016-12-16 11:30:02');
/*!40000 ALTER TABLE `diskinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internetinfo`
--

DROP TABLE IF EXISTS `internetinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internetinfo`
--

LOCK TABLES `internetinfo` WRITE;
/*!40000 ALTER TABLE `internetinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `internetinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meminfo`
--

DROP TABLE IF EXISTS `meminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meminfo`
--

LOCK TABLES `meminfo` WRITE;
/*!40000 ALTER TABLE `meminfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `meminfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netinfo`
--

DROP TABLE IF EXISTS `netinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netinfo`
--

LOCK TABLES `netinfo` WRITE;
/*!40000 ALTER TABLE `netinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `netinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nicinfo`
--

DROP TABLE IF EXISTS `nicinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nicinfo`
--

LOCK TABLES `nicinfo` WRITE;
/*!40000 ALTER TABLE `nicinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `nicinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notepadinfo`
--

DROP TABLE IF EXISTS `notepadinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notepadinfo`
--

LOCK TABLES `notepadinfo` WRITE;
/*!40000 ALTER TABLE `notepadinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `notepadinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oaautoinfo`
--

DROP TABLE IF EXISTS `oaautoinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oaautoinfo`
--

LOCK TABLES `oaautoinfo` WRITE;
/*!40000 ALTER TABLE `oaautoinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `oaautoinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'总经办','','01','icon-company',NULL,0,'2014-02-19 01:00:00'),(3,'技术部','','02','icon-company',NULL,1,'2015-10-01 13:10:42'),(5,'产品部','','03','icon-company',NULL,2,'2015-12-06 12:15:30'),(6,'测试组','','04','icon-folder',3,0,'2015-12-06 13:12:18');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osinfo`
--

DROP TABLE IF EXISTS `osinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osinfo`
--

LOCK TABLES `osinfo` WRITE;
/*!40000 ALTER TABLE `osinfo` DISABLE KEYS */;
INSERT INTO `osinfo` VALUES (2,'169.254.139.125','50:7B:9D:77:F0:62','Microsoft Windows 10 专业版','64 位','20160810035517.000000+480','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','Microsoft','10.0.14393','00330-80000-00000-AA715','2016-12-16 11:30:04');
/*!40000 ALTER TABLE `osinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameter`
--

DROP TABLE IF EXISTS `parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parameter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  `busType` varchar(200) DEFAULT NULL,
  `remarks` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameter`
--

LOCK TABLES `parameter` WRITE;
/*!40000 ALTER TABLE `parameter` DISABLE KEYS */;
INSERT INTO `parameter` VALUES (1,'1','低级','Level',''),(2,'2','高级','Level',NULL);
/*!40000 ALTER TABLE `parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plotterinfo`
--

DROP TABLE IF EXISTS `plotterinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plotterinfo`
--

LOCK TABLES `plotterinfo` WRITE;
/*!40000 ALTER TABLE `plotterinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `plotterinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portinfo`
--

DROP TABLE IF EXISTS `portinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portinfo`
--

LOCK TABLES `portinfo` WRITE;
/*!40000 ALTER TABLE `portinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `portinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printinfo`
--

DROP TABLE IF EXISTS `printinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printinfo`
--

LOCK TABLES `printinfo` WRITE;
/*!40000 ALTER TABLE `printinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `printinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processinfo`
--

DROP TABLE IF EXISTS `processinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processinfo`
--

LOCK TABLES `processinfo` WRITE;
/*!40000 ALTER TABLE `processinfo` DISABLE KEYS */;
INSERT INTO `processinfo` VALUES (322,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','System Idle Process','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','0','0','8','65536','10.0.14393','4096',NULL,'2016-12-16 11:30:03'),(323,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','System','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','4','0','234','5140480','10.0.14393','716800',NULL,'2016-12-16 11:30:03'),(324,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','smss.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','412','0','2','2199029960704','10.0.14393','950272',NULL,'2016-12-16 11:30:03'),(325,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','csrss.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','584','0','11','2199116103680','10.0.14393','3612672',NULL,'2016-12-16 11:30:03'),(326,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','wininit.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','684','0','1','2199087943680','10.0.14393','4337664',NULL,'2016-12-16 11:30:03'),(327,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','csrss.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','692','1','14','2199356026880','10.0.14393','40480768',NULL,'2016-12-16 11:30:03'),(328,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','services.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','756','0','5','2199066308608','10.0.14393','9265152',NULL,'2016-12-16 11:30:03'),(329,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','lsass.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','764','0','9','2199080472576','10.0.14393','17993728',NULL,'2016-12-16 11:30:03'),(330,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','848','0','26','2199156355072','10.0.14393','25280512',NULL,'2016-12-16 11:30:03'),(331,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','924','0','14','2199118569472','10.0.14393','15196160',NULL,'2016-12-16 11:30:03'),(332,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','winlogon.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','964','1','2','2199101747200','10.0.14393','7983104',NULL,'2016-12-16 11:30:03'),(333,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','548','0','33','2199190908928','10.0.14393','39333888',NULL,'2016-12-16 11:30:03'),(334,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','552','0','23','2199127048192','10.0.14393','26796032',NULL,'2016-12-16 11:30:03'),(335,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1032','0','21','2203644403712','10.0.14393','23871488',NULL,'2016-12-16 11:30:03'),(336,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','dwm.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1060','1','10','2199600214016','10.0.14393','83759104',NULL,'2016-12-16 11:30:03'),(337,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1116','0','20','2199188344832','10.0.14393','19017728',NULL,'2016-12-16 11:30:03'),(338,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1176','0','20','2199094718464','10.0.14393','10936320',NULL,'2016-12-16 11:30:03'),(339,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1188','0','68','2199741751296','10.0.14393','63320064',NULL,'2016-12-16 11:30:03'),(340,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','dasHost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1340','0','2','2199048855552','10.0.14393','4669440',NULL,'2016-12-16 11:30:03'),(341,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1488','0','26','2199215030272','10.0.14393','30937088',NULL,'2016-12-16 11:30:03'),(342,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','nvvsvc.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1524','0','2','77963264','10.0.14393','8237056',NULL,'2016-12-16 11:30:03'),(343,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','nvxdsync.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1752','1','11','189636608','10.0.14393','19103744',NULL,'2016-12-16 11:30:03'),(344,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','igfxCUIService.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1776','0','4','49508352','10.0.14393','7901184',NULL,'2016-12-16 11:30:03'),(345,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2016','0','8','2199073439744','10.0.14393','10043392',NULL,'2016-12-16 11:30:03'),(346,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','ZhuDongFangYu.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2000','0','15','116207616','10.0.14393','15904768',NULL,'2016-12-16 11:30:03'),(347,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2052','0','14','2199087898624','10.0.14393','10993664',NULL,'2016-12-16 11:30:03'),(348,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2176','0','11','2199128686592','10.0.14393','14008320',NULL,'2016-12-16 11:30:03'),(349,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','spoolsv.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2544','0','12','2199093469184','10.0.14393','12713984',NULL,'2016-12-16 11:30:03'),(350,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1936','0','7','2199071809536','10.0.14393','8527872',NULL,'2016-12-16 11:30:03'),(351,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','vmware-usbarbitrator64.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2216','0','3','82866176','10.0.14393','8650752',NULL,'2016-12-16 11:30:03'),(352,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','mysqld.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','512','0','25','166576128','10.0.14393','11247616',NULL,'2016-12-16 11:30:03'),(353,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2600','0','8','184131584','10.0.14393','23924736',NULL,'2016-12-16 11:30:03'),(354,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','ETDService.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2620','0','2','31260672','10.0.14393','4927488',NULL,'2016-12-16 11:30:03'),(355,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','ibtsiva.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2608','0','1','25890816','10.0.14393','3866624',NULL,'2016-12-16 11:30:03'),(356,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','mqsvc.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2892','0','32','2199121096704','10.0.14393','9814016',NULL,'2016-12-16 11:30:03'),(357,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','TenpayServer.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3100','0','4','69836800','10.0.14393','6549504',NULL,'2016-12-16 11:30:03'),(358,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','QQProtect.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3108','0','23','136482816','10.0.14393','18685952',NULL,'2016-12-16 11:30:03'),(359,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3120','0','8','2199184261120','10.0.14393','20549632',NULL,'2016-12-16 11:30:03'),(360,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','lenovodrvsrv.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3132','0','3','121147392','10.0.14393','14372864',NULL,'2016-12-16 11:30:03'),(361,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3156','0','19','2199084703744','10.0.14393','9453568',NULL,'2016-12-16 11:30:03'),(362,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','vmnetdhcp.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3164','0','2','32043008','10.0.14393','4444160',NULL,'2016-12-16 11:30:03'),(363,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','UPService.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3172','0','5','38944768','10.0.14393','7098368',NULL,'2016-12-16 11:30:04'),(364,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3180','0','23','142647296','10.0.14393','14663680',NULL,'2016-12-16 11:30:04'),(365,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','vmnat.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3192','0','4','63881216','10.0.14393','6193152',NULL,'2016-12-16 11:30:04'),(366,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3328','0','13','2199159263232','10.0.14393','25436160',NULL,'2016-12-16 11:30:04'),(367,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','vmware-authd.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3344','0','6','118972416','10.0.14393','10805248',NULL,'2016-12-16 11:30:04'),(368,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','Memory Compression','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3436','0','64','1035599872','10.0.14393','800890880',NULL,'2016-12-16 11:30:04'),(369,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','Locator.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3844','0','2','2199037267968','10.0.14393','2248704',NULL,'2016-12-16 11:30:04'),(370,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','SMSvcHost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3996','0','6','549814272','10.0.14393','15810560',NULL,'2016-12-16 11:30:04'),(371,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','4108','0','5','2199059533824','10.0.14393','6901760',NULL,'2016-12-16 11:30:04'),(372,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','SMSvcHost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','4220','0','5','542810112','10.0.14393','13250560',NULL,'2016-12-16 11:30:04'),(373,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','vmware-hostd.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','4468','0','24','186654720','10.0.14393','20914176',NULL,'2016-12-16 11:30:04'),(374,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','WmiPrvSE.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','4768','0','6','2199080067072','10.0.14393','15978496',NULL,'2016-12-16 11:30:04'),(375,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\Elantech\\ETDCtrl.exe','ETDCtrl.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5108','1','13','141066240','10.0.14393','15286272',NULL,'2016-12-16 11:30:04'),(376,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\sihost.exe','sihost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','4856','1','8','2199161356288','10.0.14393','26943488',NULL,'2016-12-16 11:30:04'),(377,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\svchost.exe','svchost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','4896','1','11','2199290216448','10.0.14393','31174656',NULL,'2016-12-16 11:30:04'),(378,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','PresentationFontCache.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','4656','0','4','550699008','10.0.14393','8392704',NULL,'2016-12-16 11:30:04'),(379,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\taskhostw.exe','taskhostw.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5144','1','17','2199239139328','10.0.14393','21618688',NULL,'2016-12-16 11:30:04'),(380,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\SysWoW64\\UPEditNew\\UPSecurityInput.exe','UPSecurityInput.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5152','1','27','131166208','10.0.14393','6590464',NULL,'2016-12-16 11:30:04'),(381,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\System32\\RuntimeBroker.exe','RuntimeBroker.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5408','1','50','2199326998528','10.0.14393','59305984',NULL,'2016-12-16 11:30:04'),(382,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\Explorer.EXE','explorer.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5692','1','186','2200076173312','10.0.14393','205230080',NULL,'2016-12-16 11:30:04'),(383,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','ETDCtrlHelper.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5832','1','1','103833600','10.0.14393','8040448',NULL,'2016-12-16 11:30:04'),(384,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\Elantech\\ETDIntelligent.exe','ETDIntelligent.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5892','1','2','97067008','10.0.14393','7446528',NULL,'2016-12-16 11:30:04'),(385,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\igfxEM.exe','igfxEM.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5924','1','4','114266112','10.0.14393','12062720',NULL,'2016-12-16 11:30:04'),(386,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\igfxHK.exe','igfxHK.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5932','1','2','66465792','10.0.14393','8028160',NULL,'2016-12-16 11:30:04'),(387,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\SystemApps\\ShellExperienceHost_cw5n1h2txyewy\\ShellExperienceHost.exe','ShellExperienceHost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5996','1','72','2199611158528','10.0.14393','72314880',NULL,'2016-12-16 11:30:04'),(388,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','SearchIndexer.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','6172','0','25','2199332216832','10.0.14393','49565696',NULL,'2016-12-16 11:30:04'),(389,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\SystemApps\\Microsoft.Windows.Cortana_cw5n1h2txyewy\\RemindersServer.exe','RemindersServer.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','6664','1','22','2199267692544','10.0.14393','16248832',NULL,'2016-12-16 11:30:04'),(390,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\ApplicationFrameHost.exe','ApplicationFrameHost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','7364','1','10','2199228887040','10.0.14393','33267712',NULL,'2016-12-16 11:30:04'),(391,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\SystemApps\\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\\MicrosoftEdge.exe','MicrosoftEdge.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','7512','1','25','2199534317568','10.0.14393','68427776',NULL,'2016-12-16 11:30:04'),(392,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\browser_broker.exe','browser_broker.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','7580','1','5','2233527095296','10.0.14393','20467712',NULL,'2016-12-16 11:30:04'),(393,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\SystemApps\\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\\microsoftedgecp.exe','MicrosoftEdgeCP.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','7736','1','49','2234397274112','10.0.14393','76840960',NULL,'2016-12-16 11:30:04'),(394,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\System32\\smartscreen.exe','smartscreen.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','7936','1','13','2234040225792','10.0.14393','22323200',NULL,'2016-12-16 11:30:04'),(395,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\Realtek\\Audio\\HDA\\RAVCpl64.exe','RAVCpl64.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','8072','1','6','133906432','10.0.14393','10883072',NULL,'2016-12-16 11:30:04'),(396,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\Realtek\\Audio\\HDA\\RAVBg64.exe','RAVBg64.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','7248','1','4','121491456','10.0.14393','10244096',NULL,'2016-12-16 11:30:04'),(397,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\Realtek\\Audio\\HDA\\RAVBg64.exe','RAVBg64.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','7872','1','4','121491456','10.0.14393','10342400',NULL,'2016-12-16 11:30:04'),(398,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\SystemApps\\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\\microsoftedgecp.exe','MicrosoftEdgeCP.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','8196','1','36','2233873403904','10.0.14393','32006144',NULL,'2016-12-16 11:30:04'),(399,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\Realtek\\Audio\\HDA\\RAVBg64.exe','RAVBg64.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','8408','1','4','121491456','10.0.14393','10186752',NULL,'2016-12-16 11:30:04'),(400,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\System32\\Macromed\\Flash\\FlashUtil_ActiveX.exe','FlashUtil_ActiveX.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','8560','1','1','2199138832384','10.0.14393','10493952',NULL,'2016-12-16 11:30:04'),(401,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files (x86)\\Lenovo\\Energy Manager\\Energy Manager.exe','Energy Manager.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','8612','1','5','241102848','10.0.14393','20189184',NULL,'2016-12-16 11:30:04'),(402,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files (x86)\\Lenovo\\Energy Manager\\utility.exe','utility.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','8876','1','4','132173824','10.0.14393','14835712',NULL,'2016-12-16 11:30:04'),(403,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','360tray.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','9432','1','90','936652800','10.0.14393','38596608',NULL,'2016-12-16 11:30:04'),(404,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\VMWare\\vmware-tray.exe','vmware-tray.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','9484','1','3','91697152','10.0.14393','7430144',NULL,'2016-12-16 11:30:04'),(405,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','fontdrvhost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','10772','1','5','2199086137344','10.0.14393','3493888',NULL,'2016-12-16 11:30:04'),(406,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\SettingSyncHost.exe','SettingSyncHost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','11224','1','4','2199203397632','10.0.14393','4284416',NULL,'2016-12-16 11:30:04'),(407,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','D:\\Program Files\\Foxmail 7.2\\Foxmail.exe','Foxmail.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','13012','1','37','557621248','10.0.14393','29773824',NULL,'2016-12-16 11:30:04'),(408,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','D:\\Program Files\\Foxmail 7.2\\Foxmail.exe','Foxmail.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','13232','1','12','274141184','10.0.14393','51572736',NULL,'2016-12-16 11:30:04'),(409,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe','360chrome.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','9652','1','43','1183567872','10.0.14393','77516800',NULL,'2016-12-16 11:30:04'),(410,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe','360chrome.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','11292','1','30','398626816','10.0.14393','20500480',NULL,'2016-12-16 11:30:04'),(411,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe','360chrome.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','11528','1','11','309489664','10.0.14393','32124928',NULL,'2016-12-16 11:30:04'),(412,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\ide\\IntelliJ IDEA 2016.3\\bin\\idea.exe','idea.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','8052','1','51','1758224384','10.0.14393','857399296',NULL,'2016-12-16 11:30:04'),(413,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\ide\\IntelliJ IDEA 2016.3\\bin\\fsnotifier.exe','fsnotifier.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','11064','1','4','20602880','10.0.14393','5865472',NULL,'2016-12-16 11:30:04'),(414,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\conhost.exe','conhost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','2396','1','1','2199104364544','10.0.14393','5103616',NULL,'2016-12-16 11:30:04'),(415,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\DllHost.exe','dllhost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','12592','1','4','2199168139264','10.0.14393','8896512',NULL,'2016-12-16 11:30:04'),(416,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe','360chrome.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','9904','1','12','368828416','10.0.14393','31227904',NULL,'2016-12-16 11:30:04'),(417,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe','360chrome.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5260','1','11','323735552','10.0.14393','12173312',NULL,'2016-12-16 11:30:04'),(418,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe','360chrome.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','11168','1','11','282374144','10.0.14393','12578816',NULL,'2016-12-16 11:30:04'),(419,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe','360chrome.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','12584','1','11','494100480','10.0.14393','197562368',NULL,'2016-12-16 11:30:04'),(420,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\ImmersiveControlPanel\\SystemSettings.exe','SystemSettings.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','13384','1','23','2199443210240','10.0.14393','45383680',NULL,'2016-12-16 11:30:04'),(421,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\WindowsApps\\Microsoft.Windows.Photos_16.1118.10000.0_x64__8wekyb3d8bbwe\\Microsoft.Photos.exe','Microsoft.Photos.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','11712','1','36','1006133248','10.0.14393','69279744',NULL,'2016-12-16 11:30:04'),(422,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','audiodg.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','13832','0','31','2199157460992','10.0.14393','22745088',NULL,'2016-12-16 11:30:04'),(423,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\WindowsApps\\Microsoft.WindowsAlarms_10.1612.3343.0_x64__8wekyb3d8bbwe\\Time.exe','Time.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','10348','1','31','356728832','10.0.14393','35799040',NULL,'2016-12-16 11:30:04'),(424,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','taskhostw.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','10640','1','4','2199164682240','10.0.14393','19648512',NULL,'2016-12-16 11:30:04'),(425,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','D:\\Program Files\\Foxmail 7.2\\Foxmail.exe','Foxmail.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','9800','1','11','226308096','10.0.14393','36737024',NULL,'2016-12-16 11:30:04'),(426,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\SystemApps\\Microsoft.Windows.Cortana_cw5n1h2txyewy\\SearchUI.exe','SearchUI.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1072','1','38','2234184323072','10.0.14393','65204224',NULL,'2016-12-16 11:30:04'),(427,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\System32\\SystemSettingsBroker.exe','SystemSettingsBroker.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1976','1','3','2199142055936','10.0.14393','17461248',NULL,'2016-12-16 11:30:04'),(428,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\WindowsApps\\Microsoft.SkypeApp_11.10.145.0_x64__kzf8qxf38zg5c\\SkypeHost.exe','SkypeHost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','12652','1','63','332517376','10.0.14393','27602944',NULL,'2016-12-16 11:30:04'),(429,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\WindowsApps\\Microsoft.WindowsCalculator_10.1612.3341.0_x64__8wekyb3d8bbwe\\Calculator.exe','Calculator.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','13824','1','30','355024896','10.0.14393','33779712',NULL,'2016-12-16 11:30:04'),(430,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\WindowsApps\\Microsoft.SkypeApp_11.10.145.0_x64__kzf8qxf38zg5c\\SkypeApp.exe','SkypeApp.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','11216','1','34','810823680','10.0.14393','43655168',NULL,'2016-12-16 11:30:04'),(431,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\WindowsApps\\Microsoft.WindowsMaps_5.1611.3342.0_x64__8wekyb3d8bbwe\\Maps.exe','Maps.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1220','1','67','1372139520','10.0.14393','71639040',NULL,'2016-12-16 11:30:04'),(432,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','SecureCRTPortable.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','6584','1','1','138260480','10.0.14393','10768384',NULL,'2016-12-16 11:30:04'),(433,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\ide\\IntelliJ IDEA 2016.3\\lib\\libpty\\win\\x86\\winpty-agent.exe','winpty-agent.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1496','1','1','75251712','10.0.14393','5738496',NULL,'2016-12-16 11:30:04'),(434,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\conhost.exe','conhost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','11756','1','3','2199113465856','10.0.14393','7544832',NULL,'2016-12-16 11:30:04'),(435,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\SysWoW64\\cmd.exe','cmd.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1300','1','1','53334016','10.0.14393','3932160',NULL,'2016-12-16 11:30:04'),(436,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','SecureFX.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','15692','1','13','205426688','10.0.14393','34250752',NULL,'2016-12-16 11:30:04'),(437,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Users\\kate\\AppData\\Local\\GitHub\\PortableGit_c2ba306e536fdf878271f7fe636a147ff37326ad\\bin\\ssh-agent.exe','ssh-agent.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','7220','1','3','297984000','10.0.14393','4382720',NULL,'2016-12-16 11:30:04'),(438,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\Youdao\\YoudaoNote\\YoudaoNote.exe','YoudaoNote.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','14872','1','38','371793920','10.0.14393','40456192',NULL,'2016-12-16 11:30:04'),(439,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\Youdao\\YoudaoNote\\YNoteCefRender.exe','YNoteCefRender.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5500','1','22','329342976','10.0.14393','20037632',NULL,'2016-12-16 11:30:04'),(440,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\Youdao\\YoudaoNote\\YNoteCefRender.exe','YNoteCefRender.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','9280','1','11','407572480','10.0.14393','29368320',NULL,'2016-12-16 11:30:04'),(441,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\Youdao\\YoudaoNote\\YNoteCefRender.exe','YNoteCefRender.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1772','1','11','357609472','10.0.14393','29413376',NULL,'2016-12-16 11:30:04'),(442,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\Youdao\\YoudaoNote\\DocToPDF.exe','DocToPDF.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1356','1','3','121585664','10.0.14393','12664832',NULL,'2016-12-16 11:30:04'),(443,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe','360chrome.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','1908','1','11','560803840','10.0.14393','275136512',NULL,'2016-12-16 11:30:04'),(444,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\Notepad++\\notepad++.exe','notepad++.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5528','1','3','283283456','10.0.14393','44072960',NULL,'2016-12-16 11:30:04'),(445,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\WeChat\\WeChat.exe','WeChat.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','19760','1','36','479780864','10.0.14393','107843584',NULL,'2016-12-16 11:30:04'),(446,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\WeChat\\WeChatWeb.exe','WeChatWeb.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5960','1','30','253689856','10.0.14393','17178624',NULL,'2016-12-16 11:30:04'),(447,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','SecureCRTPortable.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','19340','1','1','138489856','10.0.14393','11636736',NULL,'2016-12-16 11:30:04'),(448,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Windows\\SystemApps\\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\\microsoftedgecp.exe','MicrosoftEdgeCP.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','19584','1','108','2237400543232','10.0.14393','70758400',NULL,'2016-12-16 11:30:04'),(449,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','DiagnosticsHub.StandardCollector.Service.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','19276','0','8','2199130263552','10.0.14393','11948032',NULL,'2016-12-16 11:30:04'),(450,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\navicate\\navicat.exe','navicat.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','16748','1','4','490213376','10.0.14393','49995776',NULL,'2016-12-16 11:30:04'),(451,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','SearchProtocolHost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','18912','0','6','2199105867776','10.0.14393','10571776',NULL,'2016-12-16 11:30:04'),(452,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\wps\\WPS Office\\10.1.0.6065\\office6\\wpscloudsvr.exe','wpscloudsvr.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','15740','1','35','324665344','10.0.14393','69562368',NULL,'2016-12-16 11:30:04'),(453,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\wps\\WPS Office\\10.1.0.6065\\office6\\wps.exe','wps.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','15876','1','34','569630720','10.0.14393','80048128',NULL,'2016-12-16 11:30:04'),(454,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\Mozilla Firefox\\firefox.exe','firefox.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','19668','1','130','1286963200','10.0.14393','405360640',NULL,'2016-12-16 11:30:04'),(455,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\wps\\WPSOFF~1\\1010~1.606\\office6\\wpsrenderer.exe','wpsrenderer.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','17376','1','12','370200576','10.0.14393','38002688',NULL,'2016-12-16 11:30:04'),(456,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\wps\\WPS Office\\10.1.0.6065\\office6\\cefpluginhost.exe','cefpluginhost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','3228','1','4','243011584','10.0.14393','17629184',NULL,'2016-12-16 11:30:04'),(457,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQ.exe','QQ.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','19704','1','95','859664384','10.0.14393','268234752',NULL,'2016-12-16 11:30:04'),(458,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\TXPlatform.exe','TXPlatform.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','15364','1','2','94736384','10.0.14393','1982464',NULL,'2016-12-16 11:30:04'),(459,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files\\WindowsApps\\Microsoft.Office.OneNote_17.7668.57601.0_x64__8wekyb3d8bbwe\\onenoteim.exe','onenoteim.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','15668','1','45','2199669268480','10.0.14393','64864256',NULL,'2016-12-16 11:30:04'),(460,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\360Chrome\\Chrome\\Application\\360chrome.exe','360chrome.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','8124','1','13','318939136','10.0.14393','87724032',NULL,'2016-12-16 11:30:04'),(461,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQExternal.exe','QQExternal.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','19640','1','11','190496768','10.0.14393','19615744',NULL,'2016-12-16 11:30:04'),(462,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\software\\Tencent\\QQPinyin\\4.7.2065.400\\QQPYCloud.exe','QQPYCloud.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','5556','1','6','98127872','10.0.14393','11710464',NULL,'2016-12-16 11:30:04'),(463,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\cmd.exe','cmd.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','21648','1','1','2199040073728','10.0.14393','3502080',NULL,'2016-12-16 11:30:04'),(464,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\conhost.exe','conhost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','17436','1','8','2199270109184','10.0.14393','31518720',NULL,'2016-12-16 11:30:04'),(465,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','D:\\work\\tools\\Java\\jdk1.7.0_51\\bin\\java.exe','java.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','10476','1','28','544030720','10.0.14393','111755264',NULL,'2016-12-16 11:30:04'),(466,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','dllhost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','20812','1','8','2199094022144','10.0.14393','12447744',NULL,'2016-12-16 11:30:04'),(467,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','','SearchFilterHost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','20444','0','7','2199060197376','10.0.14393','6971392',NULL,'2016-12-16 11:30:04'),(468,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\SysWoW64\\cmd.exe','cmd.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','16016','1','2','51531776','10.0.14393','3723264',NULL,'2016-12-16 11:30:04'),(469,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\system32\\conhost.exe','conhost.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','17200','1','4','2199108521984','10.0.14393','7045120',NULL,'2016-12-16 11:30:04'),(470,'169.254.139.125','50:7B:9D:77:F0:62','Win32_Process','ZHANGKAITE-PC','C:\\WINDOWS\\SysWoW64\\Wbem\\WMIC.exe','WMIC.exe','Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1','20036','1','7','106237952','10.0.14393','11603968',NULL,'2016-12-16 11:30:04');
/*!40000 ALTER TABLE `processinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'系统管理','','系统管理','icon-company',NULL,0,0,0,'2014-02-19 01:00:00'),(11,'资源管理','/resource/manager','资源管理','icon-folder',1,1,0,0,'2014-02-19 01:00:00'),(12,'角色管理','/role/manager','角色管理','icon-folder',1,2,0,0,'2014-02-19 01:00:00'),(13,'用户管理','/user/manager','用户管理','icon-folder',1,3,0,0,'2014-02-19 01:00:00'),(14,'部门管理','/organization/manager','部门管理','icon-folder',1,4,0,0,'2014-02-19 01:00:00'),(111,'列表','/resource/treeGrid','资源列表','icon-list',11,0,0,1,'2014-02-19 01:00:00'),(112,'添加','/resource/add','资源添加','icon-add',11,0,0,1,'2014-02-19 01:00:00'),(113,'编辑','/resource/edit','资源编辑','icon-edit',11,0,0,1,'2014-02-19 01:00:00'),(114,'删除','/resource/delete','资源删除','icon-del',11,0,0,1,'2014-02-19 01:00:00'),(121,'列表','/role/dataGrid','角色列表','icon-list',12,0,0,1,'2014-02-19 01:00:00'),(122,'添加','/role/add','角色添加','icon-add',12,0,0,1,'2014-02-19 01:00:00'),(123,'编辑','/role/edit','角色编辑','icon-edit',12,0,0,1,'2014-02-19 01:00:00'),(124,'删除','/role/delete','角色删除','icon-del',12,0,0,1,'2014-02-19 01:00:00'),(125,'授权','/role/grant','角色授权','icon-ok',12,0,0,1,'2014-02-19 01:00:00'),(131,'列表','/user/dataGrid','用户列表','icon-list',13,0,0,1,'2014-02-19 01:00:00'),(132,'添加','/user/add','用户添加','icon-add',13,0,0,1,'2014-02-19 01:00:00'),(133,'编辑','/user/edit','用户编辑','icon-edit',13,0,0,1,'2014-02-19 01:00:00'),(134,'删除','/user/delete','用户删除','icon-del',13,0,0,1,'2014-02-19 01:00:00'),(141,'列表','/organization/treeGrid','用户列表','icon-list',14,0,0,1,'2014-02-19 01:00:00'),(142,'添加','/organization/add','部门添加','icon-add',14,0,0,1,'2014-02-19 01:00:00'),(143,'编辑','/organization/edit','部门编辑','icon-edit',14,0,0,1,'2014-02-19 01:00:00'),(144,'删除','/organization/delete','部门删除','icon-del',14,0,0,1,'2014-02-19 01:00:00'),(221,'参数管理','',NULL,'icon-company',NULL,2,0,0,'2015-12-01 11:44:20'),(226,'修改密码','/user/editPwdPage',NULL,'icon-edit',NULL,3,0,1,'2015-12-07 20:23:06'),(227,'台帐看板','',NULL,'icon-company',NULL,4,0,0,'2016-08-17 21:09:27'),(228,'内网计算机台账','/computerManage/manager',NULL,'icon-folder',227,0,0,0,'2016-08-17 21:10:57'),(229,'列表','/computerManage/dataGrid',NULL,'icon-list',228,0,0,1,'2016-09-10 12:46:55'),(230,'文件上传','/computerManage/fileUpload',NULL,'icon-add',228,1,0,1,'2016-09-10 12:47:53'),(231,'详情','/computerManage/queryDetail',NULL,'icon-edit',228,2,0,1,'2016-09-10 12:49:28'),(232,'删除','/computerManage/delete',NULL,'icon-del',228,3,0,1,'2016-09-10 12:50:35'),(233,'服务器台账','/serverManage/manager',NULL,'icon-folder',227,1,0,0,'2016-09-10 12:52:36'),(234,'列表','/serverManage/dataGrid',NULL,'icon-list',233,0,0,1,'2016-09-10 12:53:22'),(235,'文件上传','/serverManage/fileUpload',NULL,'icon-add',233,1,0,1,'2016-09-10 12:53:53'),(236,'详情','/serverManage/queryDetail',NULL,'icon-edit',233,2,0,1,'2016-09-10 12:54:21'),(237,'删除','/serverManage/delete',NULL,'icon-del',233,3,0,1,'2016-09-10 12:55:11'),(238,'安全产品台帐','/secProdInfoManage/manager',NULL,'icon-folder',227,2,0,0,'2016-09-10 12:57:17'),(239,'列表','/secProdInfoManage/dataGrid',NULL,'icon-list',238,0,0,1,'2016-09-10 12:57:54'),(240,'文件上传','/secProdInfoManage/fileUpload',NULL,'icon-add',238,1,0,1,'2016-09-10 12:59:19'),(241,'详情','/secProdInfoManage/queryDetail',NULL,'icon-edit',238,2,0,1,'2016-09-10 13:00:02'),(242,'删除','/secProdInfoManage/delete',NULL,'icon-del',238,3,0,1,'2016-09-10 13:00:30'),(243,'交换机台帐','/switchInfoManage/manager',NULL,'icon-folder',227,3,0,0,'2016-09-10 13:01:44'),(244,'列表','/switchInfoManage/dataGrid',NULL,'icon-list',243,0,0,1,'2016-09-10 13:02:12'),(245,'文件上传','/switchInfoManage/fileUpload',NULL,'icon-add',243,1,0,1,'2016-09-10 13:02:34'),(246,'详情','/switchInfoManage/queryDetail',NULL,'icon-edit',243,2,0,1,'2016-09-10 13:02:58'),(247,'删除','/switchInfoManage/delete',NULL,'icon-del',243,3,0,1,'2016-09-10 13:03:23'),(248,'中间转换机台帐','/convertInfoManage/manager',NULL,'icon-folder',227,4,0,0,'2016-09-10 13:04:14'),(249,'列表','/convertInfoManage/dataGrid',NULL,'icon-list',248,0,0,1,'2016-09-10 13:06:22'),(250,'文件上传','/convertInfoManage/fileUpload',NULL,'icon-add',248,1,0,1,'2016-09-10 13:06:45'),(251,'详情','/convertInfoManage/queryDetail',NULL,'icon-edit',248,2,0,1,'2016-09-10 13:07:22'),(252,'删除','/convertInfoManage/delete',NULL,'icon-del',248,3,0,1,'2016-09-10 13:08:01'),(253,'涉密单机台帐','/secHostInfoManage/manager',NULL,'icon-folder',227,5,0,0,'2016-09-10 13:09:12'),(254,'列表','/secHostInfoManage/dataGrid',NULL,'icon-list',253,0,0,1,'2016-09-10 13:10:19'),(255,'文件上传','/secHostInfoManage/fileUpload',NULL,'icon-add',253,1,0,1,'2016-09-10 13:11:04'),(256,'详情','/secHostInfoManage/queryDetail',NULL,'icon-edit',253,2,0,1,'2016-09-10 13:12:04'),(257,'删除','/secHostInfoManage/delete',NULL,'icon-del',253,3,0,1,'2016-09-10 13:12:46'),(258,'非密单机台帐','/unsecHostInfoManage/manager',NULL,'icon-folder',227,6,0,0,'2016-09-10 13:14:11'),(259,'列表','/unsecHostInfoManage/dataGrid',NULL,'icon-list',258,0,0,1,'2016-09-10 13:15:39'),(260,'文件上传','/unsecHostInfoManage/fileUpload',NULL,'icon-add',258,1,0,1,'2016-09-10 13:16:21'),(261,'详情','/unsecHostInfoManage/queryDetail',NULL,'icon-edit',258,2,0,1,'2016-09-10 13:17:00'),(262,'删除','/unsecHostInfoManage/delete',NULL,'icon-del',258,3,0,1,'2016-09-10 13:17:34'),(263,'互联网计算机台帐','/internetInfoManage/manager',NULL,'icon-folder',227,7,0,0,'2016-09-10 13:18:25'),(264,'列表','/internetInfoManage/dateGrid',NULL,'icon-list',263,0,0,1,'2016-09-10 13:19:09'),(265,'文件上传','/internetInfoManage/fileUpload',NULL,'icon-add',263,1,0,1,'2016-09-10 13:19:31'),(266,'详情','/internetInfoManage/queryDetail',NULL,'icon-edit',263,2,0,1,'2016-09-10 13:20:07'),(267,'删除','/internetInfoManage/delete',NULL,'icon-del',263,3,0,1,'2016-09-10 13:20:31'),(268,'内网打印机台帐','/printInfoManage/manager',NULL,'icon-folder',227,7,0,0,'2016-09-10 13:21:25'),(269,'列表','/printInfoManage/dataGrid',NULL,'icon-list',268,0,0,1,'2016-09-10 13:22:39'),(270,'文件上传','/printInfoManage/fileUpload',NULL,'icon-add',268,1,0,1,'2016-09-10 13:23:02'),(271,'详情','/printInfoManage/queryDetail',NULL,'icon-edit',268,2,0,1,'2016-09-10 13:23:30'),(272,'删除','/printInfoManage/delete',NULL,'icon-del',268,3,0,1,'2016-09-10 13:23:55'),(273,'直连涉密打印设备台帐','/secPrintInfoManage/manager',NULL,'icon-folder',227,8,0,0,'2016-09-10 13:25:02'),(274,'列表','/secPrintInfoManage/dataGrid',NULL,'icon-list',273,0,0,1,'2016-09-10 13:25:37'),(275,'文件上传','/secPrintInfoManage/fileUpload',NULL,'icon-add',273,1,0,1,'2016-09-10 13:26:23'),(276,'详情','/secPrintInfoManage/queryDetail',NULL,'icon-edit',273,2,0,1,'2016-09-10 13:27:09'),(277,'删除','/secPrintInfoManage/delete',NULL,'icon-del',273,3,0,1,'2016-09-10 13:27:45'),(278,'非密直连打印机台帐','/unSecPrintInfoManage/manager',NULL,'icon-folder',227,9,0,0,'2016-09-10 13:28:37'),(279,'列表','/unSecPrintInfoManage/dataGrid',NULL,'icon-list',278,0,0,1,'2016-09-10 13:29:13'),(280,'文件上传','/unSecPrintInfoManage/fileUpload',NULL,'icon-add',278,1,0,1,'2016-09-10 13:29:58'),(281,'详情','/unSecPrintInfoManage/queryDetail',NULL,'icon-edit',278,2,0,1,'2016-09-10 13:30:27'),(282,'删除','/unSecPrintInfoManage/delete',NULL,'icon-del',278,3,0,1,'2016-09-10 13:31:05'),(283,'直连绘图仪台帐','/plotterInfoManage/manager',NULL,'icon-folder',227,10,0,0,'2016-09-10 13:32:25'),(284,'列表','/plotterInfoManage/dataGrid',NULL,'icon-list',283,0,0,1,'2016-09-10 13:32:55'),(285,'文件上传','/plotterInfoManage/fileUpload',NULL,'icon-add',283,1,0,1,'2016-09-10 13:33:19'),(286,'详情','/plotterInfoManage/queryDetail',NULL,'icon-edit',283,2,0,1,'2016-09-10 13:33:44'),(287,'删除','/plotterInfoManage/delete',NULL,'icon-del',283,3,0,1,'2016-09-10 13:34:11'),(288,'便携式计算机台帐','/notePadInfoManage/manager',NULL,'icon-folder',227,11,0,0,'2016-09-10 13:35:24'),(289,'列表','/notePadInfoManage/dataGrid',NULL,'icon-list',288,0,0,1,'2016-09-10 13:35:53'),(290,'文件上传','/notePadInfoManage/fileUpload',NULL,'icon-add',288,1,0,1,'2016-09-10 13:36:11'),(291,'详情','/notePadInfoManage/queryDetail',NULL,'icon-edit',288,2,0,1,'2016-09-10 13:36:33'),(292,'删除','/notePadInfoManage/delete',NULL,'icon-del',288,3,0,1,'2016-09-10 13:36:59'),(293,'考勤机台帐','/attendanceInfoManage/manager',NULL,'icon-folder',227,12,0,0,'2016-09-10 13:37:37'),(294,'列表','/attendanceInfoManage/dataGrid',NULL,'icon-list',293,0,0,1,'2016-09-10 13:38:05'),(295,'文件上传','/attendanceInfoManage/fileUpload',NULL,'icon-add',293,1,0,1,'2016-09-10 13:38:28'),(296,'详情','/attendanceInfoManage/queryDetail',NULL,'icon-edit',293,2,0,1,'2016-09-10 13:38:47'),(297,'删除','/attendanceInfoManage/delete',NULL,'icon-del',293,3,0,1,'2016-09-10 13:39:12'),(298,'办公自动化设备台帐','/oaAutoInfoManage/manager',NULL,'icon-folder',227,13,0,0,'2016-09-10 13:40:24'),(299,'列表','/oaAutoInfoManage/dataGrid',NULL,'icon-list',298,0,0,1,'2016-09-10 13:41:04'),(300,'文件上传','/oaAutoInfoManage/fileUpload',NULL,'icon-add',298,1,0,1,'2016-09-10 13:41:25'),(301,'详情','/oaAutoInfoManage/queryDetail',NULL,'icon-edit',298,2,0,1,'2016-09-10 13:41:45'),(302,'删除','/oaAutoInfoManage/delete',NULL,'icon-del',298,3,0,1,'2016-09-10 13:42:19'),(303,'字典管理','/dictionaryManager/manager',NULL,'icon-folder',221,0,0,0,'2016-09-22 22:28:33'),(304,'列表','/dictionaryManager/dataGrid',NULL,'icon-list',303,1,0,1,'2016-09-22 22:31:18'),(305,'添加','/dictionaryManager/add',NULL,'icon-add',303,2,0,1,'2016-09-22 22:31:41'),(306,'编辑','/dictionaryManager/edit',NULL,'icon-edit',303,2,0,1,'2016-09-22 22:38:30'),(307,'删除','/dictionaryManager/delete',NULL,'icon-del',303,3,0,1,'2016-09-22 22:39:04'),(308,'台帐管理','',NULL,'icon-company',NULL,5,0,0,'2016-09-24 15:26:43'),(309,'设备新增','/changeOrder/managerAdd',NULL,'icon-folder',308,0,0,0,'2016-09-24 15:29:10'),(310,'列表','/changeOrder/dataGrid',NULL,'icon-list',309,1,0,1,'2016-09-24 15:30:30'),(311,'添加','/changeOrder/add',NULL,'icon-add',309,2,0,1,'2016-09-24 15:31:18'),(312,'删除','/changeOrder/delete',NULL,'icon-del',309,3,0,1,'2016-09-24 15:32:19'),(316,'确定','/changeOrder/confirm',NULL,'icon-save',309,4,0,1,'2016-10-01 20:45:05'),(317,'设备变更','/changeOrder/managerModify',NULL,'icon-folder',308,1,0,0,'2016-10-12 20:34:59'),(318,'列表','/changeOrder/dataGrid',NULL,'icon-list',317,0,0,1,'2016-10-12 20:35:32'),(319,'修改','/changeOrder/editPage',NULL,'icon-edit',317,1,0,1,'2016-10-12 20:38:19'),(320,'设备清退','/changeOrder/managerReturn',NULL,'icon-folder',308,2,0,0,'2016-10-12 20:45:12'),(321,'列表','/changeOrder/dataGrid',NULL,'icon-list',320,0,0,1,'2016-10-12 20:46:10'),(322,'清退','/changeOrder/returnPage',NULL,'icon-edit',320,1,0,1,'2016-10-12 20:48:56'),(323,'待办事项','/changeOrder/scheduleList',NULL,'icon-folder',308,3,0,0,'2016-10-12 22:05:42'),(324,'列表','/changeOrder/dataGrid',NULL,'icon-list',323,0,0,1,'2016-10-12 22:06:07'),(325,'审核','/changeOrder/confirm',NULL,'icon-add',323,1,0,1,'2016-10-12 22:07:12'),(326,'台帐预警','',NULL,'icon-company',NULL,6,0,0,'2016-10-18 23:10:39'),(327,'U盘预警','/combination/showWarnUsbPage',NULL,'icon-folder',326,0,0,0,'2016-10-18 23:12:14'),(328,'列表','/combination/warnUsbDataGrid',NULL,'icon-list',327,0,0,1,'2016-10-18 23:13:00'),(329,'审核','/combination/updateWarnUsbStatus',NULL,'icon-add',327,1,0,1,'2016-10-19 21:06:13'),(330,'内网计算机台账预警','/combination/showWarnComputerPage',NULL,'icon-folder',326,1,0,0,'2016-10-19 21:07:42'),(331,'列表','/combination/updateWarnUsbStatuswarnComputerDataGrid',NULL,'icon-list',330,0,0,1,'2016-10-19 21:08:44'),(332,'忽略','/combination/updateWarnComputerStatus',NULL,'icon-del',330,1,0,1,'2016-10-19 22:23:55'),(333,'处理','/combination/dealWarnComputer',NULL,'icon-edit',330,2,0,1,'2016-10-19 22:24:36'),(334,'USB白名单管理','/combination/showUsbPage',NULL,'icon-folder',221,1,0,0,'2016-10-20 22:18:19'),(335,'列表','/combination/usbDataGrid',NULL,'icon-list',334,0,0,1,'2016-10-20 22:19:17'),(336,'添加','/combination/addUsbPage',NULL,'icon-add',334,1,0,1,'2016-10-20 22:19:57'),(337,'删除','/combination/usbDelete',NULL,'icon-del',334,2,0,1,'2016-10-20 22:20:30'),(338,'编辑','/combination/usbEditPage',NULL,'icon-edit',334,0,0,1,'2016-10-20 22:20:51'),(339,'软件白名单','/dictionaryManager/softwarePage',NULL,'icon-folder',308,4,0,0,'2016-10-30 18:01:11'),(340,'列表','/dictionaryManager/softwareDataGrid',NULL,'icon-list',339,0,0,1,'2016-10-30 18:02:02'),(341,'添加','/dictionaryManager/softwareAddPage',NULL,'icon-add',339,1,0,1,'2016-10-30 18:02:49'),(342,'编辑','/dictionaryManager/softwareEditPage',NULL,'icon-edit',339,2,0,1,'2016-10-30 18:03:54'),(343,'删除','/dictionaryManager/softwareDelete',NULL,'icon-del',339,4,0,1,'2016-10-30 18:04:44');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `seq` tinyint(2) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'超级管理员',0,'超级管理员',0),(2,'技术部经理',0,'技术部经理',0),(7,'产品部经理',0,'产品部经理',0),(8,'测试账户',0,'测试账户',0);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_resource`
--

DROP TABLE IF EXISTS `role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(19) NOT NULL,
  `resource_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2021 DEFAULT CHARSET=utf8 COMMENT='角色资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_resource`
--

LOCK TABLES `role_resource` WRITE;
/*!40000 ALTER TABLE `role_resource` DISABLE KEYS */;
INSERT INTO `role_resource` VALUES (158,3,1),(159,3,11),(160,3,111),(161,3,112),(162,3,113),(163,3,114),(164,3,12),(165,3,121),(166,3,122),(167,3,123),(168,3,124),(169,3,125),(170,3,13),(171,3,131),(172,3,132),(173,3,133),(174,3,134),(175,3,14),(176,3,141),(177,3,142),(178,3,143),(179,3,144),(349,2,1),(350,2,13),(351,2,131),(352,2,132),(353,2,133),(354,2,222),(355,2,223),(356,2,224),(357,2,221),(358,2,226),(359,7,1),(360,7,14),(361,7,141),(362,7,142),(363,7,143),(364,7,222),(365,7,223),(366,7,224),(367,7,221),(368,7,226),(396,8,1),(397,8,11),(398,8,111),(399,8,12),(400,8,121),(401,8,13),(402,8,131),(403,8,14),(404,8,141),(405,8,222),(406,8,223),(407,8,224),(408,8,221),(1884,1,1),(1885,1,11),(1886,1,111),(1887,1,112),(1888,1,113),(1889,1,114),(1890,1,12),(1891,1,121),(1892,1,122),(1893,1,123),(1894,1,124),(1895,1,125),(1896,1,13),(1897,1,131),(1898,1,132),(1899,1,133),(1900,1,134),(1901,1,14),(1902,1,141),(1903,1,142),(1904,1,143),(1905,1,144),(1906,1,221),(1907,1,303),(1908,1,304),(1909,1,305),(1910,1,306),(1911,1,307),(1912,1,334),(1913,1,335),(1914,1,338),(1915,1,336),(1916,1,337),(1917,1,227),(1918,1,228),(1919,1,229),(1920,1,230),(1921,1,231),(1922,1,232),(1923,1,233),(1924,1,234),(1925,1,235),(1926,1,236),(1927,1,237),(1928,1,238),(1929,1,239),(1930,1,240),(1931,1,241),(1932,1,242),(1933,1,243),(1934,1,244),(1935,1,245),(1936,1,246),(1937,1,247),(1938,1,248),(1939,1,249),(1940,1,250),(1941,1,251),(1942,1,252),(1943,1,253),(1944,1,254),(1945,1,255),(1946,1,256),(1947,1,257),(1948,1,258),(1949,1,259),(1950,1,260),(1951,1,261),(1952,1,262),(1953,1,263),(1954,1,264),(1955,1,265),(1956,1,266),(1957,1,267),(1958,1,268),(1959,1,269),(1960,1,270),(1961,1,271),(1962,1,272),(1963,1,273),(1964,1,274),(1965,1,275),(1966,1,276),(1967,1,277),(1968,1,278),(1969,1,279),(1970,1,280),(1971,1,281),(1972,1,282),(1973,1,283),(1974,1,284),(1975,1,285),(1976,1,286),(1977,1,287),(1978,1,288),(1979,1,289),(1980,1,290),(1981,1,291),(1982,1,292),(1983,1,293),(1984,1,294),(1985,1,295),(1986,1,296),(1987,1,297),(1988,1,298),(1989,1,299),(1990,1,300),(1991,1,301),(1992,1,302),(1993,1,308),(1994,1,309),(1995,1,310),(1996,1,311),(1997,1,312),(1998,1,316),(1999,1,317),(2000,1,318),(2001,1,319),(2002,1,320),(2003,1,321),(2004,1,322),(2005,1,323),(2006,1,324),(2007,1,325),(2008,1,339),(2009,1,340),(2010,1,341),(2011,1,342),(2012,1,343),(2013,1,326),(2014,1,327),(2015,1,328),(2016,1,329),(2017,1,330),(2018,1,331),(2019,1,332),(2020,1,333);
/*!40000 ALTER TABLE `role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sechostinfo`
--

DROP TABLE IF EXISTS `sechostinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sechostinfo`
--

LOCK TABLES `sechostinfo` WRITE;
/*!40000 ALTER TABLE `sechostinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `sechostinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secprintinfo`
--

DROP TABLE IF EXISTS `secprintinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secprintinfo`
--

LOCK TABLES `secprintinfo` WRITE;
/*!40000 ALTER TABLE `secprintinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `secprintinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secproductinfo`
--

DROP TABLE IF EXISTS `secproductinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secproductinfo`
--

LOCK TABLES `secproductinfo` WRITE;
/*!40000 ALTER TABLE `secproductinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `secproductinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servermanage`
--

DROP TABLE IF EXISTS `servermanage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servermanage`
--

LOCK TABLES `servermanage` WRITE;
/*!40000 ALTER TABLE `servermanage` DISABLE KEYS */;
/*!40000 ALTER TABLE `servermanage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceinfo`
--

DROP TABLE IF EXISTS `serviceinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceinfo`
--

LOCK TABLES `serviceinfo` WRITE;
/*!40000 ALTER TABLE `serviceinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softwarefilterinfo`
--

DROP TABLE IF EXISTS `softwarefilterinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `softwarefilterinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softwareName` varchar(200) DEFAULT NULL,
  `softwareDesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softwarefilterinfo`
--

LOCK TABLES `softwarefilterinfo` WRITE;
/*!40000 ALTER TABLE `softwarefilterinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `softwarefilterinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soundinfo`
--

DROP TABLE IF EXISTS `soundinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soundinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `Description` text COMMENT '音频设备描述',
  `Status` varchar(100) DEFAULT NULL COMMENT '状态',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soundinfo`
--

LOCK TABLES `soundinfo` WRITE;
/*!40000 ALTER TABLE `soundinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `soundinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switchinfo`
--

DROP TABLE IF EXISTS `switchinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switchinfo`
--

LOCK TABLES `switchinfo` WRITE;
/*!40000 ALTER TABLE `switchinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `switchinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysinfo`
--

DROP TABLE IF EXISTS `sysinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysinfo`
--

LOCK TABLES `sysinfo` WRITE;
/*!40000 ALTER TABLE `sysinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog`
--

DROP TABLE IF EXISTS `syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `opt_content` varchar(1024) DEFAULT NULL,
  `client_ip` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog`
--

LOCK TABLES `syslog` WRITE;
/*!40000 ALTER TABLE `syslog` DISABLE KEYS */;
INSERT INTO `syslog` VALUES (1,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:',NULL,'2016-12-27 13:37:14'),(2,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&','127.0.0.1','2016-12-27 13:37:15'),(3,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:',NULL,'2016-12-27 13:37:37'),(4,'admin','admin','[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:addPage,[参数]:',NULL,'2016-12-27 13:38:34'),(5,'admin','admin','[类名]:com.wangzhixuan.controller.bus.SecProductInfoController,[方法]:addPage,[参数]:',NULL,'2016-12-27 13:41:34'),(6,'admin','admin','[类名]:com.wangzhixuan.controller.bus.OaAutoInfoController,[方法]:addPage,[参数]:',NULL,'2016-12-27 13:41:50'),(7,'admin','admin','[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:addPage,[参数]:',NULL,'2016-12-27 13:42:03'),(8,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:',NULL,'2016-12-27 13:48:34'),(9,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&','127.0.0.1','2016-12-27 13:48:56'),(10,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:',NULL,'2016-12-27 13:49:01'),(11,'admin','admin','[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:addPage,[参数]:',NULL,'2016-12-27 13:49:08'),(12,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:',NULL,'2016-12-27 18:57:01'),(13,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&','127.0.0.1','2016-12-27 18:57:03'),(14,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:',NULL,'2016-12-27 18:58:12'),(15,'admin','admin','[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:addPage,[参数]:',NULL,'2016-12-27 18:58:15'),(16,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 18:59:03'),(17,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:',NULL,'2016-12-27 19:02:42'),(18,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&','127.0.0.1','2016-12-27 19:02:47'),(19,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 19:02:53'),(20,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 19:04:48'),(21,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:',NULL,'2016-12-27 19:08:15'),(22,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&','127.0.0.1','2016-12-27 19:08:16'),(23,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 19:09:46'),(24,'admin','admin','[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=47&_=1482836897549&','127.0.0.1','2016-12-27 19:12:05'),(25,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 19:13:36'),(26,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 19:14:03'),(27,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 19:17:03'),(28,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:',NULL,'2016-12-27 20:23:32'),(29,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&','0:0:0:0:0:0:0:1','2016-12-27 20:23:41'),(30,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 20:23:48'),(31,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 20:29:06'),(32,'admin','admin','[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=47&_=1482841421548&','0:0:0:0:0:0:0:1','2016-12-27 20:31:40'),(33,'admin','admin','[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:editPage,[参数]:id=47&_=1482841421549&','0:0:0:0:0:0:0:1','2016-12-27 20:32:08'),(34,'admin','admin','[类名]:com.wangzhixuan.controller.manager.DictionaryController,[方法]:edit,[参数]:id=47&name=考勤机台帐&keys_=attendanceinfo&url=/attendanceInfoManage/editPage&description=修改&','0:0:0:0:0:0:0:1','2016-12-27 20:32:38'),(35,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 20:33:41'),(36,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 20:35:40'),(37,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=293&_=1482841421552&','0:0:0:0:0:0:0:1','2016-12-27 20:38:50'),(38,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=293&name=考勤机台帐&resourcetype=0&url=/attendanceInfoManage/manager&seq=12&icon=icon-folder&status=0&pid=227&','0:0:0:0:0:0:0:1','2016-12-27 20:39:36'),(39,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=294&_=1482841421553&','0:0:0:0:0:0:0:1','2016-12-27 20:39:39'),(40,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=294&name=列表&resourcetype=1&url=/attendanceInfoManage/dataGrid&seq=0&icon=icon-list&status=0&pid=293&','0:0:0:0:0:0:0:1','2016-12-27 20:39:46'),(41,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=295&_=1482841421554&','0:0:0:0:0:0:0:1','2016-12-27 20:39:50'),(42,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=295&name=文件上传&resourcetype=1&url=/attendanceInfoManage/fileUpload&seq=1&icon=icon-add&status=0&pid=293&','0:0:0:0:0:0:0:1','2016-12-27 20:39:56'),(43,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=296&_=1482841421555&','0:0:0:0:0:0:0:1','2016-12-27 20:40:00'),(44,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=296&name=详情&resourcetype=1&url=/attendanceInfoManage/queryDetail&seq=2&icon=icon-edit&status=0&pid=293&','0:0:0:0:0:0:0:1','2016-12-27 20:40:06'),(45,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:editPage,[参数]:id=297&_=1482841421556&','0:0:0:0:0:0:0:1','2016-12-27 20:40:08'),(46,'admin','admin','[类名]:com.wangzhixuan.controller.ResourceController,[方法]:edit,[参数]:id=297&name=删除&resourcetype=1&url=/attendanceInfoManage/delete&seq=3&icon=icon-del&status=0&pid=293&','0:0:0:0:0:0:0:1','2016-12-27 20:40:16'),(47,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:',NULL,'2016-12-27 20:40:23'),(48,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 20:43:59'),(49,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:',NULL,'2016-12-27 20:48:57'),(50,'admin','admin','[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:addPage,[参数]:',NULL,'2016-12-27 20:49:01'),(51,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:',NULL,'2016-12-27 20:52:30'),(52,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&','0:0:0:0:0:0:0:1','2016-12-27 20:52:41'),(53,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 20:52:48'),(54,'admin','admin','[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:editPage,[参数]:id=1&','0:0:0:0:0:0:0:1','2016-12-27 20:52:54'),(55,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:login,[参数]:',NULL,'2016-12-27 22:54:34'),(56,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:loginPost,[参数]:username=admin&password=123&','0:0:0:0:0:0:0:1','2016-12-27 22:54:47'),(57,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:add,[参数]:',NULL,'2016-12-27 22:54:54'),(58,'admin','admin','[类名]:com.wangzhixuan.controller.bus.AttendanceInfoController,[方法]:editPage,[参数]:id=1&','0:0:0:0:0:0:0:1','2016-12-27 22:54:59'),(59,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:',NULL,'2016-12-27 22:55:43'),(60,'admin','admin','[类名]:com.wangzhixuan.controller.manager.ChangeOrderController,[方法]:addOrderPage,[参数]:',NULL,'2016-12-27 22:56:07'),(61,'admin','admin','[类名]:com.wangzhixuan.controller.LoginController,[方法]:logout,[参数]:',NULL,'2016-12-27 22:56:53');
/*!40000 ALTER TABLE `syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unsechostinfo`
--

DROP TABLE IF EXISTS `unsechostinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unsechostinfo`
--

LOCK TABLES `unsechostinfo` WRITE;
/*!40000 ALTER TABLE `unsechostinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsechostinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unsecprintinfo`
--

DROP TABLE IF EXISTS `unsecprintinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unsecprintinfo`
--

LOCK TABLES `unsecprintinfo` WRITE;
/*!40000 ALTER TABLE `unsecprintinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsecprintinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usbfilterinfo`
--

DROP TABLE IF EXISTS `usbfilterinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usbfilterinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialNumber` varchar(100) DEFAULT NULL,
  `other` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usbfilterinfo`
--

LOCK TABLES `usbfilterinfo` WRITE;
/*!40000 ALTER TABLE `usbfilterinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `usbfilterinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','202cb962ac59075b964b07152d234b70',0,25,0,0,1,'2016-08-15 22:13:42','18707173376'),(13,'snoopy','snoopy','098f6bcd4621d373cade4e832627b4f6',0,25,1,0,3,'2015-10-01 13:12:07','18707173376'),(14,'dreamlu','dreamlu','098f6bcd4621d373cade4e832627b4f6',0,25,1,0,5,'2015-10-11 23:12:58','18707173376'),(15,'test','test','098f6bcd4621d373cade4e832627b4f6',0,25,1,0,6,'2015-12-06 13:13:03','18707173376'),(16,'zkt','zkt','d41d8cd98f00b204e9800998ecf8427e',0,NULL,0,0,6,'2016-08-15 22:20:59','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) NOT NULL,
  `role_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='用户角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (53,15,8),(60,1,1),(61,1,2),(62,1,7),(63,13,2),(64,14,7),(68,16,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warncomputerinfo`
--

DROP TABLE IF EXISTS `warncomputerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warncomputerinfo`
--

LOCK TABLES `warncomputerinfo` WRITE;
/*!40000 ALTER TABLE `warncomputerinfo` DISABLE KEYS */;
INSERT INTO `warncomputerinfo` VALUES (8,'169.254.139.125','50:7B:9D:77:F0:62','WD-WXE1A95RT8DX','10.0.14393','0','无变更','新增','2016-12-16 16:16:01'),(9,'169.254.139.125','50:7B:9D:77:F0:62','S22XNXAGB49717','10.0.14393','0','磁盘序列号','变更','2016-12-16 16:16:01');
/*!40000 ALTER TABLE `warncomputerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warnusbinfo`
--

DROP TABLE IF EXISTS `warnusbinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warnusbinfo`
--

LOCK TABLES `warnusbinfo` WRITE;
/*!40000 ALTER TABLE `warnusbinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `warnusbinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-27 23:02:13
