--
-- Table structure for table `str_hwml_bdg_ch_spc`
--

DROP TABLE IF EXISTS `str_hwml_bdg_ch_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_hwml_bdg_ch_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cy_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년월',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산기관코드',
  `bdg_chdt` date NOT NULL COMMENT '예산변경일자',
  `bdg_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예산변경금액',
  `bdg_chaf_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예산변경후잔액',
  `da_tsdt` date DEFAULT NULL COMMENT '자료전송일자',
  `ts_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_hwml_bdg_ch_spc_00` (`cy_yymm`,`ntacc_cd`,`bdg_orgcd`,`bdg_chdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='한화몰예산변경내역';
