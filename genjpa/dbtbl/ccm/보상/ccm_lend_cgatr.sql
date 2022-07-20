--
-- Table structure for table `ccm_lend_cgatr`
--

DROP TABLE IF EXISTS `ccm_lend_cgatr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lend_cgatr` (
  `ctp_gpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종그룹코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `hms6` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '6시간',
  `hms10` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '10시간',
  `hms12` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '12시간',
  `d1di2` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1/2일',
  `d3di4` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '3/4일',
  `d5di6` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '5/6일',
  `ad7` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '7일이상',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctp_gpcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대여요금표';
