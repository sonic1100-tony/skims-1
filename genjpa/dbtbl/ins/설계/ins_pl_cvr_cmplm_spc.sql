--
-- Table structure for table `ins_pl_cvr_cmplm_spc`
--

DROP TABLE IF EXISTS `ins_pl_cvr_cmplm_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cvr_cmplm_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `lb_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배상구분코드',
  `isamt_prm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입금액보험료구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `cmp_lmamt_untcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보상한도금액단위코드',
  `cmp_lmamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보상한도금액',
  `woncr_cv_cmp_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산보상한도금액',
  `self_chamt_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT '*' COMMENT '자기부담금액발생구분코드',
  `self_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자기부담금액',
  `woncr_cv_self_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산자기부담금액',
  `nds_cmp_lmamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배서보상한도금액',
  `nds_woncv_cmp_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배서원화환산보상한도금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_cvr_cmplm_spc_00` (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_seqno`,`lb_flgcd`,`isamt_prm_flgcd`,`mncd`,`cmp_lmamt_untcd`)
) ENGINE=InnoDB AUTO_INCREMENT=498054 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계담보보상한도내역';
