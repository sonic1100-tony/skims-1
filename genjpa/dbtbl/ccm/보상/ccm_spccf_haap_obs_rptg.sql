--
-- Table structure for table `ccm_spccf_haap_obs_rptg`
--

DROP TABLE IF EXISTS `ccm_spccf_haap_obs_rptg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_spccf_haap_obs_rptg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `spccf_hamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특인고액구분코드',
  `spccf_hamt_spc_seqno` decimal(3,0) NOT NULL COMMENT '특인고액내역순번',
  `mnrmd_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주치료병원명',
  `obs_is_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해발급병원명',
  `rmdy_end_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치료종결구분코드',
  `pvpy_mdcf_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기지급치료비금액',
  `xp_mdcf_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예상치료비금액',
  `md_rqst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료질의여부',
  `fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '과실율',
  `crnt_st_spc` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현상태내역',
  `next_mdcf_spc` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '향후치료비내역',
  `t_obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '총장해율',
  `chrps_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자의견',
  `rppsc_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임자의견',
  `dgnnm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단명내용',
  `rmspc_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치료내역사항',
  `tlm_intns_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문의사의견',
  `victm_st_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자상태내용',
  `md_udwr_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사자의견',
  `obs_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_spccf_haap_obs_rptg_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`spccf_hamt_flgcd`,`spccf_hamt_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특인고액승인장해보고서';
