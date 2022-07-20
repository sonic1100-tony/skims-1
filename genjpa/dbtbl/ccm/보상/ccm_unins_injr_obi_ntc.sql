--
-- Table structure for table `ccm_unins_injr_obi_ntc`
--

DROP TABLE IF EXISTS `ccm_unins_injr_obi_ntc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_unins_injr_obi_ntc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `ntc_seqno` decimal(3,0) NOT NULL COMMENT '안내순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `obi_clm_rcp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자손사고접수여부',
  `py_ntc_bjps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급안내대상자구분코드',
  `obi_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자손접수년월',
  `obi_rcp_nv_seqno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자손접수조사순번',
  `obi_clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자손사고담보코드',
  `obi_dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자손피해서열',
  `obi_ndm_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자손미청구사유코드',
  `py_ndm_et_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급미청구기타사유',
  `nbj_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비대상사유코드',
  `nbj_et_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비대상기타사유',
  `py_obi_ibnf` decimal(15,0) DEFAULT NULL COMMENT '지급자손보험금',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '등록직원번호',
  `rgt_dthms` datetime NOT NULL COMMENT '등록일시',
  `dmnst_da_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입증자료유무',
  `dmnst_da_tpcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입증자료유형코드',
  `ntc_dt` date DEFAULT NULL COMMENT '안내일자',
  `ntc_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_unins_injr_obi_ntc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`ntc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='무보험상해자손안내';
