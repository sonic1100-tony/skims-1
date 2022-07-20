--
-- Table structure for table `com_hdcft_da_dat`
--

DROP TABLE IF EXISTS `com_hdcft_da_dat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_hdcft_da_dat` (
  `hdcft_dano` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '수기자료번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `da_seqno` decimal(7,0) NOT NULL COMMENT '자료순번',
  `da_cn` varchar(1500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`hdcft_dano`,`sno`,`da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수기자료데이터';
