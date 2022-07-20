--
-- Table structure for table `cus_bz_fml_ctm_cntad`
--

DROP TABLE IF EXISTS `cus_bz_fml_ctm_cntad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bz_fml_ctm_cntad` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `bz_fml_ctm_seqno` decimal(10,0) NOT NULL COMMENT '영업가족고객순번',
  `cntad_seqno` decimal(10,0) NOT NULL COMMENT '연락처순번',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작전화일련번호',
  `end_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '끝전화일련번호',
  `nlnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내선번호',
  `brd_tl_ntnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외국전화국가번호',
  `brd_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외국전화번호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bz_fml_ctm_cntad_00` (`stfno`,`bz_fml_ctm_seqno`,`cntad_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족고객연락처';
