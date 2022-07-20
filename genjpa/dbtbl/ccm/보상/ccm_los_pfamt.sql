--
-- Table structure for table `ccm_los_pfamt`
--

DROP TABLE IF EXISTS `ccm_los_pfamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_los_pfamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `optdc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '임의확정구분코드',
  `sel_obs_nv_seqno` decimal(3,0) NOT NULL COMMENT '후유장해조사순번',
  `cc_trm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기간구분코드',
  `los_pfamt_seqno` decimal(3,0) NOT NULL COMMENT '상실수익액순번',
  `appr_trm_st` date NOT NULL COMMENT '인정기간시기',
  `appr_trm_clstr` date NOT NULL COMMENT '인정기간종기',
  `appr_trm_mc` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '인정기간월수',
  `appr_mnth_avg_icamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '인정월평균소득금액',
  `ic_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소득기준구분코드',
  `ccpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직종코드',
  `sum_obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '합산장해율',
  `st_cfc` decimal(13,10) NOT NULL DEFAULT '0.0000000000' COMMENT '시기계수',
  `clstr_cfc` decimal(13,10) NOT NULL DEFAULT '0.0000000000' COMMENT '종기계수',
  `cfc_calvl` decimal(13,10) NOT NULL DEFAULT '0.0000000000' COMMENT '계수계산값',
  `ic_los_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '소득상실여부',
  `trm_los_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기간상실수익금액',
  `st_ic_seqno` decimal(3,0) NOT NULL COMMENT '기준소득순번',
  `rnd_mc` decimal(5,0) DEFAULT NULL COMMENT '경과월수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_los_pfamt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`optdc_flgcd`,`sel_obs_nv_seqno`,`cc_trm_flgcd`,`los_pfamt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상실수익액';
