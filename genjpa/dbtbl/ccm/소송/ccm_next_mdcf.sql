--
-- Table structure for table `ccm_next_mdcf`
--

DROP TABLE IF EXISTS `ccm_next_mdcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_next_mdcf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `next_mdcf_py_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '향후치료비지급구분코드',
  `next_mdcf_seqno` decimal(2,0) NOT NULL COMMENT '향후치료비순번',
  `rmdy_itnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '치료항목명',
  `t1_per_pyamt` decimal(17,2) NOT NULL COMMENT '1회당지급금액',
  `mdcf_ccamt` decimal(15,0) NOT NULL COMMENT '치료비산출금액',
  `clm_ptp_rt` decimal(5,2) DEFAULT NULL COMMENT '사고관여율',
  `clmtm_prvl` decimal(15,0) DEFAULT NULL COMMENT '사고시현가',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `appr_trm_mc` decimal(5,0) DEFAULT NULL COMMENT '인정기간월수',
  `appr_trm_st` date DEFAULT NULL COMMENT '인정기간시기',
  `appr_trm_clstr` date DEFAULT NULL COMMENT '인정기간종기',
  `fsti_incld_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '초회포함여부',
  `trmin_py_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간내지급주기코드',
  `incyc_py_ct` decimal(2,0) DEFAULT NULL COMMENT '주기내지급횟수',
  `appr_cfc_trm` decimal(13,10) DEFAULT NULL COMMENT '인정계수기간',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_next_mdcf_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`cc_seq`,`next_mdcf_py_flgcd`,`next_mdcf_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='향후치료비';
