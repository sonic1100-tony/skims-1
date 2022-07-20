--
-- Table structure for table `sec_psinf_aces_feld_log`
--

DROP TABLE IF EXISTS `sec_psinf_aces_feld_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_psinf_aces_feld_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lgsys_dl_ky` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '기간계거래키',
  `ctm_info_us_dthms` datetime NOT NULL COMMENT '고객정보사용일시',
  `fednm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '필드명',
  `ecpn_pol_vl` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '암호화정책값',
  `psinf_ecpn_vl` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보암호화값',
  `gp_seqno` decimal(7,0) NOT NULL COMMENT '그룹순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=98141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보접근필드로그';
