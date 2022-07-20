--
-- Table structure for table `ins_pl_nds_seq_prm_xc`
--

DROP TABLE IF EXISTS `ins_pl_nds_seq_prm_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_nds_seq_prm_xc` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `xc_prm_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산보험료순번',
  `pym_prm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '납입보험료구분코드',
  `chbf_ba_prm` decimal(15,0) NOT NULL COMMENT '변경전기본보험료',
  `chaf_ba_prm` decimal(15,0) NOT NULL COMMENT '변경후기본보험료',
  `chbf_ap_prm` decimal(15,0) NOT NULL COMMENT '변경전적용보험료',
  `chaf_ap_prm` decimal(15,0) NOT NULL COMMENT '변경후적용보험료',
  `chbf_prm_nt` decimal(15,0) NOT NULL COMMENT '변경전보험료이자',
  `ch_prmaf_nt` decimal(15,0) NOT NULL COMMENT '변경후보험료이자',
  `incm_prm_cr_seqno` decimal(5,0) DEFAULT NULL COMMENT '수입보험료발생순번',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_pl_nds_seq_prm_xc_00` (`plno`,`cgaf_ch_seqno`,`pym_seq`,`xc_prm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=854 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계배서회차보험료정산';
