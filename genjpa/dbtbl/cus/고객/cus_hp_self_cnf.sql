--
-- Table structure for table `cus_hp_self_cnf`
--

DROP TABLE IF EXISTS `cus_hp_self_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_hp_self_cnf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `auth_rq_dthms` datetime NOT NULL COMMENT '인증요청일시',
  `auth_cplt_dthms` datetime NOT NULL COMMENT '인증완료일시',
  `agre_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의종류코드',
  `lms_autno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS인증번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `ts_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송직원번호',
  `chn_sys_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채널시스템구분코드',
  `ts_url_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송URL명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_hp_self_cnf_00` (`ctmno`,`auth_rq_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='휴대폰본인확인';
