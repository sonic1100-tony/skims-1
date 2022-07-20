--
-- Table structure for table `fin_nfnc_rtm_slr`
--

DROP TABLE IF EXISTS `fin_nfnc_rtm_slr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_nfnc_rtm_slr` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `ba_dcn_slr_deamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기초확정급여채무금액',
  `ba_otcm_cu_asamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기초사외적립자산금액',
  `cut_wrk_cstam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기근무원가금액',
  `pst_wrk_cstam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '과거근무원가금액',
  `exp_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기대수익금액',
  `nt_cstam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이자원가금액',
  `usr_cnb_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사용자기여금액',
  `sys_isps_cnb_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '제도가입자기여금액',
  `atrl_plamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보험수리적손익금액',
  `bz_ueamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업결합금액',
  `rtm_slr_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '퇴직급여지급액',
  `ndt_dcn_slr_deamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기말확정급여채무금액',
  `ndt_otcm_cu_asamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기말사외적립자산금액',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비금융퇴직급여';
