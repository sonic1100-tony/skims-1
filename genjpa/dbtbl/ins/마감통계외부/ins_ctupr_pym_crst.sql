--
-- Table structure for table `ins_ctupr_pym_crst`
--

DROP TABLE IF EXISTS `ins_ctupr_pym_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ctupr_pym_crst` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cm_bj_ar_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수금대상연체구분코드',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `pym_prdt` date DEFAULT NULL COMMENT '납입예정일자',
  `apldt` date DEFAULT NULL COMMENT '청약일자',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `tf_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체유형코드',
  `tf_hpdy_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체희망일코드',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `extr_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추출계약상태코드',
  `fnl_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약상태코드',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '최종납입회차',
  `incm_prm_cr_seqno` decimal(5,0) DEFAULT NULL COMMENT '수입보험료발생순번',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `ap_prm` decimal(17,2) DEFAULT NULL COMMENT '적용보험료',
  `rp_prm` decimal(15,0) DEFAULT NULL COMMENT '영수보험료',
  `pym_prm` decimal(17,2) DEFAULT NULL COMMENT '납입보험료',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_ctupr_pym_crst_00` (`st_yymm`,`plyno`,`cm_bj_ar_flgcd`,`pym_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계속보험료납입현황';
