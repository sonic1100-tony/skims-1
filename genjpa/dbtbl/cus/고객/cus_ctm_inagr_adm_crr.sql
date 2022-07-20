--
-- Table structure for table `cus_ctm_inagr_adm_crr`
--

DROP TABLE IF EXISTS `cus_ctm_inagr_adm_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_inagr_adm_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_agre_admno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '고객동의관리번호',
  `ctm_agre_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객동의종류코드',
  `ap_nd_dthms` datetime DEFAULT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime DEFAULT NULL COMMENT '적용시작일시',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `ctm_agre_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객동의방법코드',
  `ctm_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객동의여부',
  `ctm_agre_strdt` date DEFAULT NULL COMMENT '고객동의시작일자',
  `ctm_agre_nddt` date DEFAULT NULL COMMENT '고객동의종료일자',
  `ctm_agre_wddt` date DEFAULT NULL COMMENT '고객동의철회일자',
  `chn_sys_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채널시스템구분코드',
  `tabf_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관전취급직원번호',
  `agre_inflw_plac_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의유입처명',
  `scan_cplt_dthms` datetime DEFAULT NULL COMMENT '스캔완료일시',
  `mnal_scan_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수동스캔여부',
  `dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서번호',
  `recno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '녹취번호',
  `ispl_agre_admno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입설계동의관리번호',
  `lms_autno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS인증번호',
  `auth_rq_dthms` datetime DEFAULT NULL COMMENT '인증요청일시',
  `auth_cplt_dthms` datetime DEFAULT NULL COMMENT '인증완료일시',
  `hndph_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화지역번호',
  `hndph_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화국번',
  `hndph_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화일련번호',
  `ts_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송직원번호',
  `asr_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신전화지역번호',
  `asr_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신전화국번',
  `asr_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신전화일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_inagr_adm_crr_00` (`ctm_agre_admno`,`ctm_agre_kndcd`)
) ENGINE=InnoDB AUTO_INCREMENT=5519 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객정보동의관리이력';
