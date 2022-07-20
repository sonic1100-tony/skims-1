--
-- Table structure for table `com_batch_pmtr_es_vl`
--

DROP TABLE IF EXISTS `com_batch_pmtr_es_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_pmtr_es_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `batch_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치관리번호',
  `batch_wrk_reqdt` date NOT NULL COMMENT '배치작업요청일자',
  `batch_wrk_seqno` decimal(3,0) NOT NULL COMMENT '배치작업순번',
  `pmtr_seqno` decimal(3,0) NOT NULL COMMENT '파라미터순번',
  `pmtr_vl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '파라미터값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_batch_pmtr_es_vl_00` (`batch_admno`,`batch_wrk_reqdt`,`batch_wrk_seqno`,`pmtr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치파라미터설정값';
