--
-- Table structure for table `com_is_seq_adm`
--

DROP TABLE IF EXISTS `com_is_seq_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_is_seq_adm` (
  `cmpu_is_seq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전산발급회차구분코드',
  `rq_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '신청년도',
  `rqno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cmpu_is_seq_flgcd`,`rq_yr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='발급회차관리';
