--
-- Table structure for table `gea_iramt_spc`
--

DROP TABLE IF EXISTS `gea_iramt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_iramt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dl_inrno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래통합번호',
  `iramt_seqno` decimal(5,0) NOT NULL COMMENT '부보순번',
  `ins_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보험가입금액',
  `cvr_bj` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '담보대상',
  `prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보험료',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_iramt_spc_00` (`dl_inrno`,`iramt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부보내역';
