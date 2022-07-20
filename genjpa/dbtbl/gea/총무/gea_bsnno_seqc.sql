--
-- Table structure for table `gea_bsnno_seqc`
--

DROP TABLE IF EXISTS `gea_bsnno_seqc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_bsnno_seqc` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `tabcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '테이블코드',
  `bsns_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`tabcd`,`bsns_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업무번호채번';
