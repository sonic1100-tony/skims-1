--
-- Table structure for table `fin_nfnc_aro`
--

DROP TABLE IF EXISTS `fin_nfnc_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_nfnc_aro` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `bfmm_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월원화잔액',
  `nw_naamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신규계약금액',
  `rnt_fcls_rdt_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '임차시설물감가상각금액',
  `aro_dspvc_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'ARO현할차상각금액',
  `aro_elamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'ARO제거금액',
  `dscrt_re_ifamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '할인율재추정금액',
  `cash_flw_re_ifamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '현금흐름재추정금액',
  `cm_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월원화잔액',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반특별구분코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생시스템코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형2차분류코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '펀드코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cls_da_kndcd`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비금융ARO';
