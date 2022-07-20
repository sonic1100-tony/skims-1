--
-- Table structure for table `ccm_pnd_adm_bj`
--

DROP TABLE IF EXISTS `ccm_pnd_adm_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_pnd_adm_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mnbj_yymd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '관리대상년월일',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `ppr_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관명',
  `ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관코드',
  `crnt_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재기관명',
  `crnt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재기관코드',
  `adm_chrps_stf_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리담당자직원성명',
  `adm_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리담당자직원번호',
  `orghd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관장직원번호',
  `vicnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자명',
  `dmgnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해물명',
  `injr_rnk` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수',
  `ag_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '합의여부',
  `py_mdcf` decimal(15,0) DEFAULT NULL COMMENT '지급치료비',
  `ag_amt` decimal(17,2) DEFAULT NULL COMMENT '합의금액',
  `mntn_fctnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정비공장명',
  `rnt_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트사용여부',
  `drct_dmamt` decimal(17,2) DEFAULT NULL COMMENT '직접손해금액',
  `drt_dmamt` decimal(17,2) DEFAULT NULL COMMENT '간접손해금액',
  `ds_ibamt` decimal(15,0) DEFAULT NULL COMMENT '결정보험금액',
  `xiamt` decimal(15,0) DEFAULT NULL COMMENT '추산보험금액',
  `remn_xiamt` decimal(15,0) DEFAULT NULL COMMENT '잔여추산보험금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_pnd_adm_bj_00` (`mnbj_yymd`,`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='미결관리대상';
