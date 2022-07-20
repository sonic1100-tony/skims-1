--
-- Table structure for table `com_psinf_aces_log_temp`
--

DROP TABLE IF EXISTS `com_psinf_aces_log_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_psinf_aces_log_temp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lgsys_dl_ky` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간계거래키',
  `ctm_info_us_dthms` datetime DEFAULT NULL COMMENT '고객정보사용일시',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `lgsys_dl_id` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간계거래ID',
  `lgsys_fnccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간계기능코드',
  `aces_ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접근IP주소',
  `tot_seqno` decimal(5,0) DEFAULT NULL COMMENT '집계순번',
  `ctm_seqno` decimal(5,0) DEFAULT NULL COMMENT '고객순번',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보접근로그임시';
