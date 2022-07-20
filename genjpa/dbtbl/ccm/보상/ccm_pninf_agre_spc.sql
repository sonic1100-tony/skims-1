--
-- Table structure for table `ccm_pninf_agre_spc`
--

DROP TABLE IF EXISTS `ccm_pninf_agre_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_pninf_agre_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_relcc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고관련자유형코드',
  `psn_info_spc_seqno` decimal(3,0) NOT NULL COMMENT '개인정보내역순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `info_utagr_rq_dthms` datetime NOT NULL COMMENT '정보활용동의요청일시',
  `clm_relnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사고관련자명',
  `psn_info_utagr_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보활용동의결과코드',
  `info_utagr_rst_dthms` datetime DEFAULT NULL COMMENT '정보활용동의결과일시',
  `cntrt_ans_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉응답결과코드',
  `chrps_ta_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자이관여부',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `nagrt_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미동의사유',
  `nagrt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미동의사유코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `tmcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팀코드',
  `brof_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장소코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_pninf_agre_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_relcc_tpcd`,`psn_info_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보동의내역';
