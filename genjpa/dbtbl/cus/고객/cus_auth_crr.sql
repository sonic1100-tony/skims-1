--
-- Table structure for table `cus_auth_crr`
--

DROP TABLE IF EXISTS `cus_auth_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_auth_crr` (
  `auth_admno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '인증관리번호',
  `auth_dl_dthms` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증처리일시',
  `auth_bj_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증대상식별번호구분코드',
  `auth_bj_dscno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증대상식별번호',
  `auth_bjnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증대상명',
  `auth_us_vl` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증사용값',
  `auth_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증방법코드',
  `auth_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증채널코드',
  `auth_orgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증기관코드',
  `auth_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증직원번호',
  `auth_bzpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증사업자코드',
  `auth_bzps_dlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증사업자거래번호',
  `auth_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증결과코드',
  `auth_cnf_no` decimal(32,0) DEFAULT NULL COMMENT '인증확인번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`auth_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객인증이력';
