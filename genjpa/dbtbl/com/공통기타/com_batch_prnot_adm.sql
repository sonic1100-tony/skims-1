--
-- Table structure for table `com_batch_prnot_adm`
--

DROP TABLE IF EXISTS `com_batch_prnot_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_prnot_adm` (
  `batch_wrk_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업ID',
  `batch_wrk_seqno` decimal(3,0) NOT NULL COMMENT '배치작업순번',
  `finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일명',
  `fornm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '양식명',
  `file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일경로',
  `sys_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시스템구분코드',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분코드',
  `cmpu_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산담당자직원번호',
  `bsns_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무담당자직원번호',
  `wst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '폐기여부',
  `wstdt` date DEFAULT NULL COMMENT '폐기일자',
  `prnot_itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물품목코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`batch_wrk_id`,`batch_wrk_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치출력물관리';
