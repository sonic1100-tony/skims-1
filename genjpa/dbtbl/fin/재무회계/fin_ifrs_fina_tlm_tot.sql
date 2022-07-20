--
-- Table structure for table `fin_ifrs_fina_tlm_tot`
--

DROP TABLE IF EXISTS `fin_ifrs_fina_tlm_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ifrs_fina_tlm_tot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `invln_gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '투융자상품코드',
  `lnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대출금액',
  `cm_cwamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월이연금액',
  `cm_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월상각금액',
  `acm_cwamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누적이연금액',
  `acm_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누적상각금액',
  `remn_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '잔여상각금액',
  `cm_dspvc_incr_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월현할차증가금액',
  `acm_dspvc_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누적현할차금액',
  `cm_dspvc_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월현할차상각금액',
  `acm_dspvc_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누적현할차상각금액',
  `remn_dspvc_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '잔여현할차상각금액',
  `cm_pp_cs_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월선급비용상각금액',
  `prop_adm_rt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '재산관리비율',
  `acm_pp_cs_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '누적선급비용상각금액',
  `remn_pp_cs_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '잔여선급비용상각금액',
  `ifrs_badbt_pvamt_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'IFRS대손충당금잔액',
  `cm_badbt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월대손상각비',
  `cm_ue_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월UE금액',
  `sof_badbt_pvamt_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '감독원대손충당금잔액',
  `crd_ls_rfd_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신용손실준비금잔액',
  `cm_crd_ls_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월신용손실준비금액',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반특별구분코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생시스템코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형2차분류코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_ifrs_fina_tlm_tot_00` (`st_yymm`,`cls_da_kndcd`,`cr_seqno`,`ntacc_cd`,`fndcd`,`invln_gdcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='IFRS재무전문집계';
