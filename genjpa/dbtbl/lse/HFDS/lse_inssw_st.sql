--
-- Table structure for table `lse_inssw_st`
--

DROP TABLE IF EXISTS `lse_inssw_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_inssw_st` (
  `inssw_rank` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '보험사기순위',
  `sjtdn_ps_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '적발자성명',
  `spcn_ndx` decimal(7,2) NOT NULL COMMENT '혐의지수',
  `inssw_tpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '보험사기유형명',
  `bscrl_ps_crct` decimal(7,0) NOT NULL COMMENT '업계보유계약건수',
  `bscrl_clmct` decimal(7,0) NOT NULL COMMENT '업계사고건수',
  `thcp_clm_ct` decimal(7,0) NOT NULL COMMENT '당사사고건수',
  `injr_clm_tpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해사고유형명',
  `dsas_clm_tpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병사고유형명',
  `thcp_same_tp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사동일유형여부',
  `thcp_t_hsp_ct` decimal(10,0) NOT NULL COMMENT '당사총입원건수',
  `thcp_fp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사FP여부',
  `xc_suamt_ct` decimal(7,0) DEFAULT NULL COMMENT '할증지원금건수',
  `aprh_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근접사고여부',
  `thcp_dramt` decimal(15,0) NOT NULL COMMENT '당사편취금액',
  `bscrl_dramt` decimal(15,0) NOT NULL COMMENT '업계편취금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`inssw_rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험사기기준';
