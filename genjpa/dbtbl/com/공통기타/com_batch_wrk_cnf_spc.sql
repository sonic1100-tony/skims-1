--
-- Table structure for table `com_batch_wrk_cnf_spc`
--

DROP TABLE IF EXISTS `com_batch_wrk_cnf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_wrk_cnf_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `batch_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치관리번호',
  `batch_wrk_reqdt` date NOT NULL COMMENT '배치작업요청일자',
  `batch_wrk_seqno` decimal(3,0) NOT NULL COMMENT '배치작업순번',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `cnf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인직원번호',
  `es_vl_cnf_dthms` datetime DEFAULT NULL COMMENT '설정값확인일시',
  `es_vl_cnf_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설정값확인결과코드',
  `vrf_rst_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검증결과사유',
  `batch_wrk_exec_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배치작업수행여부',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_batch_wrk_cnf_spc_00` (`batch_admno`,`batch_wrk_reqdt`,`batch_wrk_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치작업확인내역';
