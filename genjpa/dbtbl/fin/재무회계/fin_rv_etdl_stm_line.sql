--
-- Table structure for table `fin_rv_etdl_stm_line`
--

DROP TABLE IF EXISTS `fin_rv_etdl_stm_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rv_etdl_stm_line` (
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `apprs_seqno` decimal(3,0) NOT NULL COMMENT '승인자순번',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '승인직원번호',
  `ac_ap_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '경리승인여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dh_orgcd`,`vald_strdt`,`vald_nddt`,`apprs_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수납기타처리결제라인';
