--
-- Table structure for table `str_mgm_sts_cno_log`
--

DROP TABLE IF EXISTS `str_mgm_sts_cno_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_mgm_sts_cno_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mgm_sts_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경영통계구분코드',
  `lgin_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '로그인사용자ID',
  `cno_dthms` datetime NOT NULL COMMENT '접속일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_mgm_sts_cno_log_00` (`mgm_sts_flgcd`,`lgin_usr_id`,`cno_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='경영통계접속로그';
