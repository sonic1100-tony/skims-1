--
-- Table structure for table `ins_dvpns_inq_requ_rsv`
--

DROP TABLE IF EXISTS `ins_dvpns_inq_requ_rsv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_inq_requ_rsv` (
  `requ_rsvdt` date NOT NULL COMMENT '의뢰예약일자',
  `dvpns_inq_requ_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원조회의뢰유형코드',
  `plno_or_plyno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호/증권번호',
  `dvpns_requ_sclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원의뢰범위코드',
  `dvpns_inq_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원조회상태코드',
  `rqtno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`requ_rsvdt`,`dvpns_inq_requ_tpcd`,`plno_or_plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원조회의뢰예약';
