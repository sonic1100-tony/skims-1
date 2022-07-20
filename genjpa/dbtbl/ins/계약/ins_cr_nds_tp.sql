--
-- Table structure for table `ins_cr_nds_tp`
--

DROP TABLE IF EXISTS `ins_cr_nds_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_nds_tp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `nds_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서유형코드',
  `ndscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_nds_tp_00` (`plyno`,`ndsno`,`nds_tpcd`,`ndscd`)
) ENGINE=InnoDB AUTO_INCREMENT=4114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약배서유형';
