--
-- Table structure for table `fin_scrt`
--

DROP TABLE IF EXISTS `fin_scrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_scrt` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `act_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '회계처리구분코드',
  `scrt_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '유가증권분류코드',
  `scrt_acc_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '유가증권계정분류코드',
  `scrt_dp_nt_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유가증권상각이자수익금액',
  `scrt_vl_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유가증권평가이익금액',
  `scrt_vl_lsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유가증권평가손실금액',
  `scrt_ruamt_lsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유가증권감액손실금액',
  `scrt_ruamt_examt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유가증권감액환입금액',
  `scrt_fc_cv_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유가증권외화환산이익금액',
  `scrt_fc_cv_lsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유가증권외화환산손실금액',
  `uc_pf_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미수수익계상금액',
  `uc_nt_cv_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미수이자환산이익금액',
  `uc_nt_cv_lsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미수이자환산손실금액',
  `uc_nt_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미수이자수익금액',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
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
  PRIMARY KEY (`st_yymm`,`cls_da_kndcd`,`cr_seqno`,`fndcd`,`act_dl_flgcd`,`scrt_csfcd`,`scrt_acc_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유가증권';
