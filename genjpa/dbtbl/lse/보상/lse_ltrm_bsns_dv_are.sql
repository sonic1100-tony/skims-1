--
-- Table structure for table `lse_ltrm_bsns_dv_are`
--

DROP TABLE IF EXISTS `lse_ltrm_bsns_dv_are`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_bsns_dv_are` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `lsetm_dv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사배당유형코드',
  `are_seqno` decimal(10,0) NOT NULL COMMENT '지역순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지역코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_bsns_dv_are_00` (`stfno`,`lsetm_dv_tpcd`,`are_seqno`,`ap_str_dthms`,`ap_nd_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기업무배당지역';
