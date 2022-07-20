--
-- Table structure for table `gea_cr_spc_ch`
--

DROP TABLE IF EXISTS `gea_cr_spc_ch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cr_spc_ch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cr_tndno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '계약입찰번호',
  `spc_seqno` decimal(5,0) NOT NULL COMMENT '내역순번',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `chdt` date NOT NULL COMMENT '변경일자',
  `bfgd_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전상품단가',
  `afgd_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '후상품단가',
  `bfgd_std` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '전상품규격',
  `afgd_std` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '후상품규격',
  `bfgd_qant` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '전상품수량',
  `afgd_qant` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '후상품수량',
  `bgamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전상품금액',
  `agamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '후상품금액',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_cr_spc_ch_00` (`cr_tndno`,`spc_seqno`,`ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약내역변경';
