--
-- Table structure for table `cus_icdc_adm`
--

DROP TABLE IF EXISTS `cus_icdc_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_icdc_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `icdc_rk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소득공제단계구분코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `log_no` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '로그번호',
  `rsm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민등록성명',
  `tot_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전체주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_icdc_adm_00` (`icdc_rk_flgcd`,`ctm_dscno`,`log_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소득공제관리';
