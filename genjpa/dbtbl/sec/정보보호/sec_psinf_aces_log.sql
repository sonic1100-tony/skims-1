--
-- Table structure for table `sec_psinf_aces_log`
--

DROP TABLE IF EXISTS `sec_psinf_aces_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_psinf_aces_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lgsys_dl_ky` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '기간계거래키',
  `ctm_info_us_dthms` datetime NOT NULL COMMENT '고객정보사용일시',
  `lgsys_dl_id` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간계거래ID',
  `lgsys_fnccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간계기능코드',
  `chn_id` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채널ID',
  `scr_id` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면ID',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `aces_ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접근IP주소',
  `psinf_inq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보조회여부',
  `elec_fndli_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자금융거래정보여부',
  `psinf_feld_gpct` decimal(7,0) DEFAULT NULL COMMENT '개인정보필드그룹건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_sec_psinf_aces_log_00` (`lgsys_dl_ky`,`ctm_info_us_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=13707 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보접근로그';
