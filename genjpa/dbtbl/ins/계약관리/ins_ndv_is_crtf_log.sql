--
-- Table structure for table `ins_ndv_is_crtf_log`
--

DROP TABLE IF EXISTS `ins_ndv_is_crtf_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ndv_is_crtf_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `is_crtf_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '가입증명서관리번호',
  `ss_dthms` datetime NOT NULL COMMENT '발행일시',
  `dn_ct` decimal(10,0) DEFAULT NULL COMMENT '다운횟수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ndv_is_crtf_log_00` (`plyno`,`is_crtf_admno`,`ss_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개별가입증명서로그';
