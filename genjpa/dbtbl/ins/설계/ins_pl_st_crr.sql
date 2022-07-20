--
-- Table structure for table `ins_pl_st_crr`
--

DROP TABLE IF EXISTS `ins_pl_st_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_st_crr` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `chn_id` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '채널ID',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `pl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계상태코드',
  `pl_st_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계상태세부코드',
  `pl_st_chdt` date DEFAULT NULL COMMENT '설계상태변경일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`chn_id`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계상태이력';
