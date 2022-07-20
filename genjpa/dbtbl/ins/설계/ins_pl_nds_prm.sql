--
-- Table structure for table `ins_pl_nds_prm`
--

DROP TABLE IF EXISTS `ins_pl_nds_prm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_nds_prm` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `chbf_rk_prm_ban_xm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경전위험보험료반환금',
  `chaf_rk_prm_ban_xm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경후위험보험료반환금',
  `rk_prm_ban_xm_diamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '위험보험료반환금차액',
  `chbf_cn_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경전해지환급금',
  `chaf_cn_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경후해지환급금',
  `cn_rtamt_diamt` decimal(15,0) NOT NULL COMMENT '해지환급금차액',
  `chbf_ap_prm` decimal(15,0) NOT NULL COMMENT '변경전적용보험료',
  `chaf_ap_prm` decimal(15,0) NOT NULL COMMENT '변경후적용보험료',
  `apprm_diamt` decimal(15,0) NOT NULL COMMENT '적용보험료차액',
  `rtn_ppy_str_seq` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '환급선납시작회차',
  `rtn_ppy_nd_seq` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '환급선납종료회차',
  `rtn_ppy_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환급선납보험료',
  `rtn_ppy_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환급선납이자',
  `dp_ppy_str_seq` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '입금선납시작회차',
  `dp_ppy_nd_seq` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '입금선납종료회차',
  `dp_ppy_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입금선납보험료',
  `dp_ppy_dc_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입금선납할인보험료',
  `ppy_prm_diamt` decimal(15,0) NOT NULL COMMENT '선납보험료차액',
  `ppy_dc_prm_diamt` decimal(15,0) NOT NULL COMMENT '선납할인보험료차액',
  `rvi_pym_str_seq` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '부활납입시작회차',
  `rvi_pym_nd_seq` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '부활납입종료회차',
  `rvi_ba_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부활기본보험료',
  `rvi_apprm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '부활적용보험료',
  `rvi_ar_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부활연체이자',
  `ch_xaamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경정산금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_pl_nds_prm_00` (`plno`,`cgaf_ch_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계배서보험료';
