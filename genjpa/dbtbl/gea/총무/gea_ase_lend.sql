--
-- Table structure for table `gea_ase_lend`
--

DROP TABLE IF EXISTS `gea_ase_lend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_lend` (
  `aseno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자산번호',
  `lend_nddt` date NOT NULL COMMENT '대여종료일자',
  `lend_strdt` date NOT NULL COMMENT '대여시작일자',
  `brer_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '피대여자기관코드',
  `brer_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '피대여자직원번호',
  `brer_mv_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피대여자이동전화지역번호',
  `brer_mv_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피대여자이동전화국번',
  `brer_mv_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피대여자이동전화일련번호',
  `rtndt` date DEFAULT NULL COMMENT '반납일자',
  `reqno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청번호',
  `rq_bj_seqno` decimal(3,0) DEFAULT NULL COMMENT '요청대상순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aseno`,`lend_nddt`,`lend_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산대여';
