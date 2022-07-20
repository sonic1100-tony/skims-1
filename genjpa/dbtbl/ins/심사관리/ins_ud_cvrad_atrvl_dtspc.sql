--
-- Table structure for table `ins_ud_cvrad_atrvl_dtspc`
--

DROP TABLE IF EXISTS `ins_ud_cvrad_atrvl_dtspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_cvrad_atrvl_dtspc` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `gpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '그룹번호',
  `rowno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '행번호',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `atr_seqno` decimal(5,0) NOT NULL COMMENT '속성순번',
  `atrvl` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성값',
  `rtno` varchar(18) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율번호',
  `chaf_atrvl` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후속성값',
  `chaf_rtno` varchar(18) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후요율번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_seqno`,`gpno`,`rowno`,`atrcd`,`atr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사담보추가속성값세부내역';
