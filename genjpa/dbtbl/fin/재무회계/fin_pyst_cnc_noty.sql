--
-- Table structure for table `fin_pyst_cnc_noty`
--

DROP TABLE IF EXISTS `fin_pyst_cnc_noty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_pyst_cnc_noty` (
  `tsdt` date NOT NULL COMMENT '전송일자',
  `deb_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '채무자식별번호',
  `ts_seqno` decimal(5,0) NOT NULL COMMENT '전송순번',
  `debnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '채무자명',
  `ts_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '전송여부',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `cnc_noty_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '해제알림내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tsdt`,`deb_dscno`,`ts_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급정지해제알림';
