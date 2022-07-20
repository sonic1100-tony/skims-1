--
-- Table structure for table `com_cptrb_rcpcr`
--

DROP TABLE IF EXISTS `com_cptrb_rcpcr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_cptrb_rcpcr` (
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rcp_seqno` decimal(5,0) NOT NULL COMMENT '접수순번',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `rcp_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수사항',
  `dl_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcpdt`,`rcp_seqno`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전산장애접수이력';
