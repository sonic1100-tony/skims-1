--
-- Table structure for table `ccm_ba_flt_mdf_spc`
--

DROP TABLE IF EXISTS `ccm_ba_flt_mdf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ba_flt_mdf_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `onw_flt_apgr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신구과실적용도구분코드',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `rcp_nv_flt_seqno` decimal(3,0) NOT NULL COMMENT '접수조사과실순번',
  `flt_apgr` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '과실적용도',
  `mdf_elmno` decimal(3,0) NOT NULL COMMENT '수정요소번호',
  `atms_mdfrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT 'A차수정율',
  `btms_mdfrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT 'B차수정율',
  `mdf_elmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정요소명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ba_flt_mdf_spc_00` (`onw_flt_apgr_flgcd`,`rcp_yymm`,`rcp_nv_seqno`,`rcp_nv_flt_seqno`,`flt_apgr`,`mdf_elmno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기본과실수정내역';
