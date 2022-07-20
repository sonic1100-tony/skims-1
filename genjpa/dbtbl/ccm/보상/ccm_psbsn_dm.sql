--
-- Table structure for table `ccm_psbsn_dm`
--

DROP TABLE IF EXISTS `ccm_psbsn_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_psbsn_dm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `cc_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기준구분코드',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `cc_trm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기간구분코드',
  `psbsn_dm_seqno` decimal(3,0) NOT NULL COMMENT '휴업손해순번',
  `appr_st` date NOT NULL COMMENT '인정시기',
  `appr_clstr` date NOT NULL COMMENT '인정종기',
  `appr_days` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '인정일수',
  `rl_next_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '실제향후구분코드',
  `appr_mnth_avg_icamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '인정월평균소득금액',
  `ddave_icamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일평균소득금액',
  `cal_icamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '계산소득금액',
  `ic_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득기준구분코드',
  `ccpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직종코드',
  `st_ic_seqno` decimal(3,0) DEFAULT NULL COMMENT '기준소득순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_psbsn_dm_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`cc_st_flgcd`,`cc_seq`,`cc_trm_flgcd`,`psbsn_dm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='휴업손해';
