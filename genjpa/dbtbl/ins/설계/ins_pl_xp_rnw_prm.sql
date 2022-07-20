--
-- Table structure for table `ins_pl_xp_rnw_prm`
--

DROP TABLE IF EXISTS `ins_pl_xp_rnw_prm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_xp_rnw_prm` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `xp_incr_rt` decimal(12,6) NOT NULL COMMENT '예상증가율',
  `rnd_trm_yyct` decimal(5,2) NOT NULL COMMENT '경과기간년수',
  `rnw_prm` decimal(17,2) NOT NULL COMMENT '갱신보험료',
  `prm_incr_rt` decimal(12,6) NOT NULL COMMENT '보험료증가율',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`xp_incr_rt`,`rnd_trm_yyct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계예상갱신보험료';
