--
-- Table structure for table `gea_scil_act_mmacc`
--

DROP TABLE IF EXISTS `gea_scil_act_mmacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_scil_act_mmacc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '본부기관코드',
  `srv_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '봉사기관코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `act_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '활동횟수',
  `act_hms` decimal(4,0) NOT NULL DEFAULT '0' COMMENT '활동시간',
  `cb_actct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '기부구좌수',
  `nbamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기부금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_scil_act_mmacc_00` (`st_yymm`,`hdqt_orgcd`,`srv_orgcd`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사회활동월계';
