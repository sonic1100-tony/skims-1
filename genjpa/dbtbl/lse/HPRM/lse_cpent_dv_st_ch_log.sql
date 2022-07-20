--
-- Table structure for table `lse_cpent_dv_st_ch_log`
--

DROP TABLE IF EXISTS `lse_cpent_dv_st_ch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cpent_dv_st_ch_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `clmnv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사유형코드',
  `ch_dthms` datetime NOT NULL COMMENT '변경일시',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `dv_st_ch_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배당기준변경사유코드',
  `dv_st_ch_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당기준변경사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cpent_dv_st_ch_log_00` (`ctmno`,`cprt_entp_seqno`,`clmnv_tpcd`,`ch_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체배당기준변경로그';
