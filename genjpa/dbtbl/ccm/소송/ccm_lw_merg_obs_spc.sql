--
-- Table structure for table `ccm_lw_merg_obs_spc`
--

DROP TABLE IF EXISTS `ccm_lw_merg_obs_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lw_merg_obs_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `lw_obs_mtt_seqno` decimal(3,0) NOT NULL COMMENT '소송장해사항순번',
  `appr_trm_st` date NOT NULL COMMENT '인정기간시기',
  `appr_trm_clstr` date NOT NULL COMMENT '인정기간종기',
  `appr_trm_yyct` decimal(3,0) NOT NULL COMMENT '인정기간년수',
  `appr_trm_mc` decimal(5,0) NOT NULL COMMENT '인정기간월수',
  `merg_obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '병합장해율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lw_merg_obs_spc_00` (`lw_prg_sno`,`lw_obs_mtt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송병합장해내역';
