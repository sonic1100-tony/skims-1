--
-- Table structure for table `gea_rtxno_seqc`
--

DROP TABLE IF EXISTS `gea_rtxno_seqc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rtxno_seqc` (
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증종류코드',
  `rtxno_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증번호순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yr`,`rtx_kndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증번호채번';
