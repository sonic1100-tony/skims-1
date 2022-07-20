--
-- Table structure for table `gea_ch_spc`
--

DROP TABLE IF EXISTS `gea_ch_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ch_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ldg_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장등록번호',
  `ch_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '변경대상구분코드',
  `chdt` date NOT NULL COMMENT '변경일자',
  `ch_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '변경종류코드',
  `cbamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경전금액',
  `caamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경후금액',
  `bfcr_strdt` date DEFAULT NULL COMMENT '전계약시작일자',
  `bfcr_nddt` date DEFAULT NULL COMMENT '전계약종료일자',
  `afcr_strdt` date DEFAULT NULL COMMENT '후계약시작일자',
  `afcr_nddt` date DEFAULT NULL COMMENT '후계약종료일자',
  `whare` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전면적',
  `afare` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '후면적',
  `bf_les_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전임대고객번호',
  `afles_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후임대고객번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ch_spc_00` (`ldg_rgtno`,`ch_bj_flgcd`,`chdt`,`ch_kndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='변경내역';
