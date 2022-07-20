--
-- Table structure for table `com_batch_wrk_psinf_crr`
--

DROP TABLE IF EXISTS `com_batch_wrk_psinf_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_wrk_psinf_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `batch_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치관리번호',
  `file_seqno` decimal(5,0) NOT NULL COMMENT '파일순번',
  `ch_dthms` datetime NOT NULL COMMENT '변경일시',
  `psinf_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보유형코드',
  `psinf_num` decimal(3,0) NOT NULL COMMENT '개인정보수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_batch_wrk_psinf_crr_00` (`batch_admno`,`file_seqno`,`ch_dthms`,`psinf_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치작업개인정보이력';
