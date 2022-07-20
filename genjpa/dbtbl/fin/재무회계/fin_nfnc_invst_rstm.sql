--
-- Table structure for table `fin_nfnc_invst_rstm`
--

DROP TABLE IF EXISTS `fin_nfnc_invst_rstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_nfnc_invst_rstm` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `land_bld_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '토지건물구분코드',
  `rstnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부동산명',
  `cq_cstam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '취득원가금액',
  `dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '처분가액',
  `bs_dmgnj_lfdoq_acamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'BS손상차손누계금액',
  `bs_rdt_dpcs_acamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'BS감가상각비누계금액',
  `ndt_abamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기말장부가액',
  `cm_dpsl_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월처분이익금액',
  `cm_dpsl_lsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월처분손실금액',
  `cm_dmgnj_lfqam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월손상차손금액',
  `cm_dmgnj_lfdoq_examt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월손상차손환입금액',
  `cm_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월감가상각비',
  `cm_les_rt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '당월임대비율',
  `accm_dpsl_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누계처분이익금액',
  `accm_dpsl_lsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누계처분손실금액',
  `accm_dmgnj_lfqam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누계손상차손금액',
  `accm_dmgnj_lfdoq_examt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누계손상차손환입금액',
  `accm_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누계감가상각비',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반특별구분코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생시스템코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형2차분류코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '펀드코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `aseno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자산번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cls_da_kndcd`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비금융투자부동산';
