--
-- Table structure for table `str_17_cscl_cvr_bsns_avtot`
--

DROP TABLE IF EXISTS `str_17_cscl_cvr_bsns_avtot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_17_cscl_cvr_bsns_avtot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `cvgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보군코드',
  `cr_dm_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '발생손해액',
  `pym_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '납입보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_17_cscl_cvr_bsns_avtot_00` (`st_yymm`,`ins_imcd`,`cvgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='IFRS17건별담보별 업무실적 집계';
