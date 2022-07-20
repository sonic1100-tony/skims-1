--
-- Table structure for table `gea_ase_dl_spc`
--

DROP TABLE IF EXISTS `gea_ase_dl_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_dl_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dl_inrno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래통합번호',
  `dsqno` decimal(5,0) NOT NULL COMMENT '거래순번',
  `aseno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자산번호',
  `dnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '거래금액',
  `pter_pvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말충당금액',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ase_dl_spc_00` (`dl_inrno`,`dsqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산거래내역';
