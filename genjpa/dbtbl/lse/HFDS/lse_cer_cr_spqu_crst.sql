--
-- Table structure for table `lse_cer_cr_spqu_crst`
--

DROP TABLE IF EXISTS `lse_cer_cr_spqu_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cer_cr_spqu_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cer_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '모집자주민번호',
  `cr_ps_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약보유유형코드',
  `thcp_clm_ct` decimal(7,0) NOT NULL COMMENT '당사사고건수',
  `thcp_clm_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사사고보험금액',
  `aprh_clm_ct` decimal(7,0) NOT NULL COMMENT '근접사고건수',
  `aprh_clm_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근접사고보험금액',
  `ce_cr_clm_ct` decimal(7,0) NOT NULL COMMENT '모집계약사고건수',
  `ce_cr_clm_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '모집계약사고보험금액',
  `ce_cr_ct` decimal(7,0) NOT NULL COMMENT '모집계약건수',
  `ce_crt_ct` decimal(7,0) NOT NULL COMMENT '모집계약자건수',
  `ce_nrdps_ct` decimal(7,0) NOT NULL COMMENT '모집피보험자건수',
  `ce_crt_nrdps_ct` decimal(7,0) NOT NULL COMMENT '모집계약자피보험자건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cer_cr_spqu_crst_00` (`cer_rsno`,`cr_ps_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='모집자계약특성현황';
