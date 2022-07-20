--
-- Table structure for table `sam_org_tlno`
--

DROP TABLE IF EXISTS `sam_org_tlno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_org_tlno` (
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `org_tlno_seqno` decimal(3,0) NOT NULL COMMENT '기관전화번호순번',
  `tlno_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전화번호구분코드',
  `tlno_us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '전화번호사용여부',
  `org_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관전화지역번호',
  `org_tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기관전화국번',
  `org_tlsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기관전화일련번호',
  `nlnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내선번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`orgcd`,`org_tlno_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기관전화번호';
