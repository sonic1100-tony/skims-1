--
-- Table structure for table `lse_inscr_clm_spqu_crst`
--

DROP TABLE IF EXISTS `lse_inscr_clm_spqu_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_inscr_clm_spqu_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객주민번호',
  `cr_ps_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약보유유형코드',
  `ps_crct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '보유계약건수',
  `ps_cr_avg_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보유계약평균보험료',
  `rvi_cr_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '부활계약건수',
  `cn_cr_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '해지계약건수',
  `injr_ddalw_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '상해일당건수',
  `injr_ddalw_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '상해일당보험금액',
  `dsas_ddalw_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '질병일당건수',
  `dsas_ddalw_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '질병일당보험금액',
  `et_ddalw_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '기타일당건수',
  `et_ddalw_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타일당보험금액',
  `aprh_clm_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '근접사고건수',
  `aprh_clm_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근접사고보험금액',
  `crt_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '계약자건수',
  `nrdps_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '피보험자건수',
  `crt_nrdps_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '계약자피보험자건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_inscr_clm_spqu_crst_00` (`ctm_rsno`,`cr_ps_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험계약사고특성현황';
