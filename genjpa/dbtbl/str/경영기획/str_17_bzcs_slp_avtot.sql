--
-- Table structure for table `str_17_bzcs_slp_avtot`
--

DROP TABLE IF EXISTS `str_17_bzcs_slp_avtot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_17_bzcs_slp_avtot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `rdr_amt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '경상비여부',
  `acc_lclcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계정대분류코드',
  `bzcs_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비유형코드',
  `bzcs_tpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비유형명',
  `woncr_poamt` decimal(15,0) DEFAULT '0' COMMENT '원화계상금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_17_bzcs_slp_avtot_00` (`st_yymm`,`ntacc_cd`,`rdr_amt_yn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='IFRS17사업비전표내역집계';
