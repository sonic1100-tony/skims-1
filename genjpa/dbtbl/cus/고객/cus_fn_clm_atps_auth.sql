--
-- Table structure for table `cus_fn_clm_atps_auth`
--

DROP TABLE IF EXISTS `cus_fn_clm_atps_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fn_clm_atps_auth` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_auth_admno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '고객인증관리번호',
  `ctm_auth_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객인증방법코드',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `auth_vald_strdt` date DEFAULT NULL COMMENT '인증유효시작일자',
  `auth_vald_nddt` date DEFAULT NULL COMMENT '인증유효종료일자',
  `scan_cplt_dthms` datetime DEFAULT NULL COMMENT '스캔완료일시',
  `scan_dcuno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔문서번호',
  `lms_autno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS인증번호',
  `auth_cplt_dthms` datetime DEFAULT NULL COMMENT '인증완료일시',
  `hndph_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화지역번호',
  `hndph_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화국번',
  `hndph_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화일련번호',
  `lms_ts_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS전송직원번호',
  `asr_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신전화지역번호',
  `asr_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신전화국번',
  `asr_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신전화일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fn_clm_atps_auth_00` (`ctm_auth_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금융사고유의자인증';
