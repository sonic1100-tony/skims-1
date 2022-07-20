--
-- Table structure for table `lse_cer_cnn_hspcl_crst`
--

DROP TABLE IF EXISTS `lse_cer_cnn_hspcl_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cer_cnn_hspcl_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cer_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '모집자주민번호',
  `hspcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업자번호',
  `hsp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원구분코드',
  `hsp_ct` decimal(7,0) NOT NULL COMMENT '입원건수',
  `bj_psct` decimal(7,0) NOT NULL COMMENT '대상인원수',
  `vshs_ct` decimal(7,0) NOT NULL COMMENT '내원건수',
  `plan_detc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '기획수사여부',
  `t_py_ibnf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총지급보험금',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cer_cnn_hspcl_crst_00` (`cer_rsno`,`hspcd`,`bzmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='모집자관련병원별현황';
