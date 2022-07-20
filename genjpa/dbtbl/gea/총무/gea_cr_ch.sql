--
-- Table structure for table `gea_cr_ch`
--

DROP TABLE IF EXISTS `gea_cr_ch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cr_ch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cr_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '계약등록번호',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `chdt` date NOT NULL COMMENT '변경일자',
  `bfcr_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약업체고객번호',
  `afcr_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후계약업체고객번호',
  `bfcr_strdt` date DEFAULT NULL COMMENT '전계약시작일자',
  `bfcr_nddt` date DEFAULT NULL COMMENT '전계약종료일자',
  `afcr_strdt` date DEFAULT NULL COMMENT '후계약시작일자',
  `afcr_nddt` date DEFAULT NULL COMMENT '후계약종료일자',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_cr_ch_00` (`cr_rgtno`,`ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약변경';
