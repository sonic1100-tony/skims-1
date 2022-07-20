--
-- Table structure for table `ins_pl_re_rk_rnamt`
--

DROP TABLE IF EXISTS `ins_pl_re_rk_rnamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_re_rk_rnamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `re_rnkno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '출재단계번호',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `isamt_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '가입금액비율',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `fc_ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화적용보험료',
  `woncr_cv_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산적용보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_re_rk_rnamt_00` (`plno`,`cgaf_ch_seqno`,`re_rnkno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계출재단계원수금액';
