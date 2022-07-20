--
-- Table structure for table `ccm_gn_ltrm_pgamt_spc`
--

DROP TABLE IF EXISTS `ccm_gn_ltrm_pgamt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_gn_ltrm_pgamt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `lw_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송업무구분코드',
  `amt_spc_seqno` decimal(5,0) NOT NULL COMMENT '금액내역순번',
  `pgamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '진행금액',
  `py_stamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급기준액',
  `lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소송접수년도',
  `lw_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '소송일련번호',
  `lw_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '소송서열',
  `lw_cvr_seqno` decimal(3,0) NOT NULL COMMENT '소송담보순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_gn_ltrm_pgamt_spc_00` (`lw_prg_sno`,`lw_bsns_flgcd`,`amt_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반장기진행금액내역';
