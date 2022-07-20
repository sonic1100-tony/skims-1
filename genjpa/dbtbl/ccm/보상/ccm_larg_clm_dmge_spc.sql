--
-- Table structure for table `ccm_larg_clm_dmge_spc`
--

DROP TABLE IF EXISTS `ccm_larg_clm_dmge_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_larg_clm_dmge_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `larg_clm_spc_seqno` decimal(3,0) NOT NULL COMMENT '대사고내역순번',
  `larg_clm_dgspc_seqno` decimal(3,0) NOT NULL COMMENT '대사고피해내역순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `larg_clm_dmge_cncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대사고피해내용코드',
  `victm_gd_nm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자물명',
  `victm_sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자성별코드',
  `victm_age` decimal(3,0) DEFAULT NULL COMMENT '피해자연령',
  `victm_jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자직업명',
  `victm_st` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자상태',
  `cprt_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체고객번호',
  `cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체순번',
  `prs_dgnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표진단명',
  `rpbl_xp_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '책임예상손해금액',
  `optn_xp_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '임의예상손해금액',
  `xp_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예상손해금액',
  `moff_ordr_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본점지시의견',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `dmge_crccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해정도코드',
  `dmgit_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해물유형코드',
  `dcn_fltrt` decimal(3,0) DEFAULT NULL COMMENT '확정과실율',
  `inj_rnk` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부상급수',
  `inj_it` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부상항목',
  `dmgit_carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해물차명',
  `mvamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상가액구분코드',
  `rl_cramt_sm` decimal(15,0) DEFAULT NULL COMMENT '실차량가액합계',
  `dflcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해구분코드',
  `noflt_dmamt` decimal(15,0) DEFAULT NULL COMMENT '무과실손해금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_larg_clm_dmge_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`larg_clm_spc_seqno`,`larg_clm_dgspc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대사고피해내역';
