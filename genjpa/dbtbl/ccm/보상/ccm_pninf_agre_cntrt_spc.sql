--
-- Table structure for table `ccm_pninf_agre_cntrt_spc`
--

DROP TABLE IF EXISTS `ccm_pninf_agre_cntrt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_pninf_agre_cntrt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_relcc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고관련자유형코드',
  `psn_info_spc_seqno` decimal(3,0) NOT NULL COMMENT '개인정보내역순번',
  `cntrt_spc_seqno` decimal(3,0) NOT NULL COMMENT '접촉내역순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `utagr_cntrt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '활용동의접촉유형코드',
  `utagr_cntrt_dthms` datetime NOT NULL COMMENT '활용동의접촉일시',
  `utagr_rst_dthms` datetime DEFAULT NULL COMMENT '활용동의결과일시',
  `psn_info_utagr_rstcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보활용동의결과코드',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `outs_rltno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외부연계번호',
  `cntrt_ans_rstcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '접촉응답결과코드',
  `tl_sd_ct` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '전화시도횟수',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_pninf_agre_cntrt_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_relcc_tpcd`,`psn_info_spc_seqno`,`cntrt_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보동의접촉내역';
