--
-- Table structure for table `str_bdg_ldg`
--

DROP TABLE IF EXISTS `str_bdg_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bdg_ldg` (
  `cy_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년월',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산기관코드',
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `bdg_yyfrs_asamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예산년초배정금액',
  `bdg_cmpu_asamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예산전산배정금액',
  `bdg_xcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예산집행금액',
  `bdg_st_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예산시기변경금액',
  `bdg_xuamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예산전용금액',
  `bdg_taamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예산이관금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cy_yymm`,`ntacc_cd`,`bdg_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산원장';
