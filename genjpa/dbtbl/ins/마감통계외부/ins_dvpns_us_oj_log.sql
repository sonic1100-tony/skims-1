--
-- Table structure for table `ins_dvpns_us_oj_log`
--

DROP TABLE IF EXISTS `ins_dvpns_us_oj_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_us_oj_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dvpns_inqdt` date NOT NULL COMMENT '개발원조회일자',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `dvpns_cnf_no` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원확인번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `tlm_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전문ID',
  `dvpns_us_oj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원이용목적구분코드',
  `dvpns_us_vrf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원이용검증구분코드',
  `dvpns_us_vrf_info` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원이용검증정보',
  `dvpns_agre_info_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원동의정보구분코드',
  `dvpns_agre_info` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원동의정보',
  `dvpns_agre_save_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원동의저장시스템코드',
  `chn_sys_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채널시스템구분코드',
  `dvpns_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원응답코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `idx_ins_dvpns_us_oj_log_01` (`dvpns_inqdt`,`stfno`)
) ENGINE=InnoDB AUTO_INCREMENT=18505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원이용목적로그';
