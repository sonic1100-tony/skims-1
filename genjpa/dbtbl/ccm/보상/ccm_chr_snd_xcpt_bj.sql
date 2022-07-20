--
-- Table structure for table `ccm_chr_snd_xcpt_bj`
--

DROP TABLE IF EXISTS `ccm_chr_snd_xcpt_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_chr_snd_xcpt_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `xcpt_bj_seqno` decimal(3,0) NOT NULL COMMENT '제외대상순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `chr_snd_xcpt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '문자발송제외여부',
  `chr_snd_xcpt_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자발송제외사유',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_chr_snd_xcpt_bj_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`xcpt_bj_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='문자발송제외대상';
