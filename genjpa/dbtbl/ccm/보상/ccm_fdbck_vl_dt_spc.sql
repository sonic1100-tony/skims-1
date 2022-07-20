--
-- Table structure for table `ccm_fdbck_vl_dt_spc`
--

DROP TABLE IF EXISTS `ccm_fdbck_vl_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fdbck_vl_dt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상년월',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `vlr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가자유형코드',
  `fdbck_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피드백평가항목코드',
  `hrd_rde_amt` decimal(15,0) DEFAULT '0' COMMENT '경성절감금액',
  `hrd_leak_amt` decimal(15,0) DEFAULT '0' COMMENT '경성누수금액',
  `sft_rde_poct` decimal(3,0) DEFAULT NULL COMMENT '연성절감점수',
  `sft_leak_poct` decimal(3,0) DEFAULT NULL COMMENT '연성누수점수',
  `vl_bjps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가대상자직원번호',
  `vl_bjps_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가대상자팀기관코드',
  `vl_bjps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가대상자기관코드',
  `vl_bjps_tmnd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가대상자팀장직원번호',
  `vlr_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가자의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_fdbck_vl_dt_spc_00` (`bj_yymm`,`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`vlr_tpcd`,`fdbck_vl_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피드백평가세부내역';
