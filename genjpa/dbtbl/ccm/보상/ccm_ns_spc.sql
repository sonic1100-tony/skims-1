--
-- Table structure for table `ccm_ns_spc`
--

DROP TABLE IF EXISTS `ccm_ns_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ns_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `cc_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기준구분코드',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `appr_trm_st` date NOT NULL COMMENT '인정기간시기',
  `appr_trm_clstr` date NOT NULL COMMENT '인정기간종기',
  `ns_mc` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '개호월수',
  `amvt_ever_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '한시영구구분코드',
  `ns_quf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개호자격구분코드',
  `dy1_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1일단가',
  `nspct` decimal(2,0) NOT NULL DEFAULT '0' COMMENT '개호인수',
  `ns_hms` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '개호시간',
  `sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '성별코드',
  `mnth_nsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월개호비',
  `trm_nsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기간개호비',
  `hl_cfc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'HL계수구분코드',
  `st_cfc` decimal(13,10) NOT NULL DEFAULT '0.0000000000' COMMENT '시기계수',
  `clstr_cfc` decimal(13,10) NOT NULL DEFAULT '0.0000000000' COMMENT '종기계수',
  `cfc_calvl` decimal(13,10) NOT NULL DEFAULT '0.0000000000' COMMENT '계수계산값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ns_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`cc_st_flgcd`,`cc_seq`,`appr_trm_st`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개호내역';
