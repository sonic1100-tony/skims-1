--
-- Table structure for table `ins_pl_nds_xc`
--

DROP TABLE IF EXISTS `ins_pl_nds_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_nds_xc` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `ccamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출금액구분코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `cvr_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보대상구분코드',
  `relpc_oj_seqno` decimal(10,0) NOT NULL COMMENT '관계자목적물순번',
  `chbf_ba_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경전기본보험료',
  `chaf_ba_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경후기본보험료',
  `chbf_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경전적용보험료',
  `chaf_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경후적용보험료',
  `chbf_rk_prm_ban_xm` decimal(15,0) NOT NULL COMMENT '변경전위험보험료반환금',
  `chaf_rk_prm_ban_xm` decimal(15,0) NOT NULL COMMENT '변경후위험보험료반환금',
  `chbf_cn_rtamt` decimal(15,0) NOT NULL COMMENT '변경전해지환급금',
  `chaf_cn_rtamt` decimal(15,0) NOT NULL COMMENT '변경후해지환급금',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_pl_nds_xc_00` (`plno`,`cgaf_ch_seqno`,`ccamt_flgcd`,`cvrcd`,`cvr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3333 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계배서정산';
