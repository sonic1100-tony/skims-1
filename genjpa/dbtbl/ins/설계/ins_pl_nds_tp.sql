--
-- Table structure for table `ins_pl_nds_tp`
--

DROP TABLE IF EXISTS `ins_pl_nds_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_nds_tp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `nds_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서유형코드',
  `ndscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_nds_tp_00` (`plno`,`cgaf_ch_seqno`,`nds_tpcd`,`ndscd`)
) ENGINE=InnoDB AUTO_INCREMENT=2639 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계배서유형';
