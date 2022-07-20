--
-- Table structure for table `gea_fnd_ch`
--

DROP TABLE IF EXISTS `gea_fnd_ch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_fnd_ch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `chdt` date NOT NULL COMMENT '변경일자',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `orgn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '조직기관코드',
  `fnd_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기금종류코드',
  `dp_wdrc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입금출금구분코드',
  `chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경금액',
  `fnd_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기금잔액',
  `ctvno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '활동번호',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_fnd_ch_00` (`chdt`,`ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기금변경';
