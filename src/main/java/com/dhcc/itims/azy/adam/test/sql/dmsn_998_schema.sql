/*
Navicat MySQL Data Transfer

Source Server         : vmmysql55
Source Server Version : 50546
Source Host           : 192.168.0.104:3306
Source Database       : dmsn_998

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2015-11-26 10:55:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for azy_dev_power
-- ----------------------------
DROP TABLE IF EXISTS `azy_dev_power`;
CREATE TABLE `azy_dev_power` (
  `devid` int(11) NOT NULL AUTO_INCREMENT,
  `mosn` int(255) DEFAULT NULL,
  `va` float(6,2) DEFAULT NULL,
  `vb` float(6,2) DEFAULT NULL,
  `vc` float(6,2) DEFAULT NULL,
  `vab` float(6,2) DEFAULT NULL,
  `vbc` float(6,2) DEFAULT NULL,
  `vca` float(6,2) DEFAULT NULL,
  `hz` float(6,2) DEFAULT NULL,
  `state` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`devid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for azy_dev_temp_hum
-- ----------------------------
DROP TABLE IF EXISTS `azy_dev_temp_hum`;
CREATE TABLE `azy_dev_temp_hum` (
  `devid` int(11) NOT NULL AUTO_INCREMENT,
  `mosn` int(255) DEFAULT NULL,
  `teminsid` int(11) DEFAULT NULL,
  `huminsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`devid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for azy_dev_ups
-- ----------------------------
DROP TABLE IF EXISTS `azy_dev_ups`;
CREATE TABLE `azy_dev_ups` (
  `devid` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `mosn` int(11) DEFAULT NULL,
  `outputVolAInsid` int(11) DEFAULT NULL,
  `outputVolBInsid` int(11) DEFAULT NULL,
  `outputVolCInsid` int(11) DEFAULT NULL,
  `outputCurAInsid` int(11) DEFAULT NULL,
  `outputCurBInsid` int(11) DEFAULT NULL,
  `outputCurCInsid` int(11) DEFAULT NULL,
  `inputVolAInsid` int(11) DEFAULT NULL,
  `inputVolBInsid` int(11) DEFAULT NULL,
  `inputVolCInsid` int(11) DEFAULT NULL,
  `state` varchar(24) DEFAULT NULL,
  `upsSmartBatteryCapacity` int(11) DEFAULT NULL,
  `upsSmartBatteryTemperature` int(11) DEFAULT NULL,
  `upsSmartOutputLoad` int(11) DEFAULT NULL,
  PRIMARY KEY (`devid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for jfdevice
-- ----------------------------
DROP TABLE IF EXISTS `jfdevice`;
CREATE TABLE `jfdevice` (
  `devid` int(11) NOT NULL AUTO_INCREMENT,
  `jfid` int(11) DEFAULT NULL,
  `devname` varchar(50) DEFAULT NULL,
  `armid` varchar(10) DEFAULT NULL,
  `armld` varchar(50) DEFAULT NULL,
  `armjc` varchar(50) DEFAULT NULL,
  `acess` varchar(1000) DEFAULT NULL,
  `devtype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`devid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jfdevice
-- ----------------------------

-- ----------------------------
-- Table structure for jfdevins
-- ----------------------------
DROP TABLE IF EXISTS `jfdevins`;
CREATE TABLE `jfdevins` (
  `devname` varchar(255) DEFAULT NULL,
  `insid` varchar(255) NOT NULL,
  `devid` varchar(255) DEFAULT NULL,
  `insname` varchar(255) DEFAULT NULL,
  `insunit` varchar(255) DEFAULT NULL,
  `hvalue` varchar(255) DEFAULT NULL,
  `collectTime` datetime DEFAULT NULL,
  PRIMARY KEY (`insid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tptemhumperf
-- ----------------------------
DROP TABLE IF EXISTS `tptemhumperf`;
CREATE TABLE `tptemhumperf` (
  `MOSN` int(10) DEFAULT NULL,
  `fCollectTime` char(19) DEFAULT NULL,
  `fInterval` float(8,0) DEFAULT NULL,
  `fAggregateCnt` int(2) DEFAULT NULL,
  `fTemperature` float(5,2) DEFAULT NULL,
  `fHumidity` float(5,2) DEFAULT NULL,
  `DMSN` int(4) DEFAULT NULL,
  `fPartID` varchar(15) DEFAULT NULL,
  KEY `MOSN` (`MOSN`,`fCollectTime`,`fPartID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- View structure for v_azy_power
-- ----------------------------
DROP VIEW IF EXISTS `v_azy_power`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_azy_power` AS select `po`.`mosn` AS `mosn`,`va`.`collectTime` AS `collectTime`,`va`.`hvalue` AS `va`,`vb`.`hvalue` AS `vb`,`vc`.`hvalue` AS `vc`,`vab`.`hvalue` AS `vab`,`vbc`.`hvalue` AS `vbc`,`vca`.`hvalue` AS `vca`,`hz`.`hvalue` AS `hz`,`st`.`hvalue` AS `st` from ((((((((`azy_dev_power` `po` left join `jfdevins` `va` on((`po`.`va` = `va`.`insid`))) left join `jfdevins` `vb` on((`po`.`vb` = `vb`.`insid`))) left join `jfdevins` `vc` on((`po`.`vc` = `vc`.`insid`))) left join `jfdevins` `vab` on((`po`.`vab` = `vab`.`insid`))) left join `jfdevins` `vbc` on((`po`.`vbc` = `vbc`.`insid`))) left join `jfdevins` `vca` on((`po`.`vca` = `vca`.`insid`))) left join `jfdevins` `hz` on((`po`.`hz` = `hz`.`insid`))) left join `jfdevins` `st` on((`po`.`state` = `st`.`insid`))) ;

-- ----------------------------
-- View structure for v_azy_temp_hum
-- ----------------------------
DROP VIEW IF EXISTS `v_azy_temp_hum`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_azy_temp_hum` AS select `da`.`mosn` AS `mosn`,`de`.`collectTime` AS `collectTime`,`det`.`hvalue` AS `temperature`,`de`.`hvalue` AS `huminity` from ((`azy_dev_temp_hum` `da` left join `jfdevins` `de` on((`da`.`huminsid` = `de`.`insid`))) left join `jfdevins` `det` on((`da`.`teminsid` = `det`.`insid`))) ;

-- ----------------------------
-- View structure for v_azy_ups
-- ----------------------------
DROP VIEW IF EXISTS `v_azy_ups`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_azy_ups` AS select `ups`.`mosn` AS `mosn`,`oav`.`collectTime` AS `collectTime`,`oav`.`hvalue` AS `oav`,`obv`.`hvalue` AS `obv`,`ocv`.`hvalue` AS `ocv`,`oac`.`hvalue` AS `oac`,`obc`.`hvalue` AS `obc`,`occ`.`hvalue` AS `occ`,`iav`.`hvalue` AS `iav`,`ibv`.`hvalue` AS `ibv`,`icv`.`hvalue` AS `icv`,`sta`.`hvalue` AS `sta`,`oload`.`hvalue` AS `oload`,`battemp`.`hvalue` AS `battemp`,`batcap`.`hvalue` AS `batcap` from (((((((((((((`azy_dev_ups` `ups` left join `jfdevins` `oav` on((`ups`.`outputVolAInsid` = `oav`.`insid`))) left join `jfdevins` `obv` on((`ups`.`outputVolBInsid` = `obv`.`insid`))) left join `jfdevins` `ocv` on((`ups`.`outputVolCInsid` = `ocv`.`insid`))) left join `jfdevins` `oac` on((`ups`.`outputCurAInsid` = `oac`.`insid`))) left join `jfdevins` `obc` on((`ups`.`outputCurBInsid` = `obc`.`insid`))) left join `jfdevins` `occ` on((`ups`.`outputCurCInsid` = `occ`.`insid`))) left join `jfdevins` `iav` on((`ups`.`inputVolAInsid` = `iav`.`insid`))) left join `jfdevins` `ibv` on((`ups`.`inputVolBInsid` = `ibv`.`insid`))) left join `jfdevins` `icv` on((`ups`.`inputVolCInsid` = `icv`.`insid`))) left join `jfdevins` `sta` on((`ups`.`state` = `sta`.`insid`))) left join `jfdevins` `battemp` on((`ups`.`upsSmartBatteryTemperature` = `battemp`.`insid`))) left join `jfdevins` `oload` on((`ups`.`upsSmartOutputLoad` = `oload`.`insid`))) left join `jfdevins` `batcap` on((`ups`.`upsSmartBatteryCapacity` = `batcap`.`insid`))) ;
