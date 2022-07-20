--
-- Table structure for table `ccm_md_cnst_spc`
--

DROP TABLE IF EXISTS `ccm_md_cnst_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_md_cnst_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `md_cnst_spc_seqno` decimal(3,0) NOT NULL COMMENT '의료자문내역순번',
  `md_cnst_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '의료자문접수년도',
  `md_cnst_sno` decimal(5,0) NOT NULL COMMENT '의료자문일련번호',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `rq_dthms` datetime NOT NULL COMMENT '요청일시',
  `pst_clm_crr_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과거사고경력내용',
  `main_rmdy_crs_cn` varchar(3000) COLLATE utf8mb4_bin NOT NULL COMMENT '주요치료과정내용',
  `md_cnst_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '의료자문내용',
  `adx_da_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '첨부자료내용',
  `md_cnst_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료자문상태코드',
  `md_cnst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료자문구분코드',
  `udwr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사자직원번호',
  `ud_rqudt` date DEFAULT NULL COMMENT '심사의뢰일자',
  `udwdt` date DEFAULT NULL COMMENT '심사일자',
  `cnsdr_rqudt` date DEFAULT NULL COMMENT '자문의의뢰일자',
  `cnsdr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자문의성명',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체순번',
  `intns_seqno` decimal(3,0) DEFAULT NULL COMMENT '의사순번',
  `cnsdr_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자문의병원명',
  `cnsdr_hsp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자문의병원고객번호',
  `cnsdr_hsp_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '자문의병원협력업체순번',
  `asr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신여부',
  `cnsdr_asrdt` date DEFAULT NULL COMMENT '자문의회신일자',
  `cnst_asr_rst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자문회신결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_md_cnst_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`md_cnst_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료자문내역';
