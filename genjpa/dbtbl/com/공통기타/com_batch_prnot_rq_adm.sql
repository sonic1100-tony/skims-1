--
-- Table structure for table `com_batch_prnot_rq_adm`
--

DROP TABLE IF EXISTS `com_batch_prnot_rq_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_prnot_rq_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `batch_wrk_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업ID',
  `batch_wrk_seqno` decimal(3,0) NOT NULL COMMENT '배치작업순번',
  `ts_reqno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '전송요청번호',
  `finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일명',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `ts_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송상태코드',
  `ts_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송직원번호',
  `ts_dthms` datetime DEFAULT NULL COMMENT '전송일시',
  `prnot_ss_ct` decimal(5,0) DEFAULT NULL COMMENT '출력물발행건수',
  `rq_finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청파일명',
  `rq_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청파일경로',
  `crtdt` date DEFAULT NULL COMMENT '생성일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_batch_prnot_rq_adm_00` (`batch_wrk_id`,`batch_wrk_seqno`,`ts_reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치출력물요청관리';
