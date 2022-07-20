--
-- Table structure for table `com_ums_snd_rst`
--

DROP TABLE IF EXISTS `com_ums_snd_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_ums_snd_rst` (
  `ntclt_ss_admno` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '안내장발행관리번호',
  `ntclt_ss_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '안내장발행순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ntclt_ss_dthms` datetime DEFAULT NULL COMMENT '안내장발행일시',
  `ntclt_snd_mdmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내장발송매체코드',
  `ts_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송결과코드',
  `ums_ts_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'UMS전송결과코드',
  `ums_ts_rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'UMS전송결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ntclt_ss_admno`,`ntclt_ss_seqno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='UMS발송결과';
