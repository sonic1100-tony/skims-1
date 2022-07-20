--
-- Table structure for table `lse_cer_cnn_hspcl_dcrst`
--

DROP TABLE IF EXISTS `lse_cer_cnn_hspcl_dcrst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cer_cnn_hspcl_dcrst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cer_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '모집자주민번호',
  `hspcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업자번호',
  `rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '접수번호',
  `siu_clm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU사고유형코드',
  `clmdt` date NOT NULL COMMENT '사고일자',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `siu_dgnnm_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU진단명내용',
  `hsp_st` date NOT NULL COMMENT '입원시기',
  `hsp_clstr` date NOT NULL COMMENT '입원종기',
  `t_hsp_days` decimal(5,0) NOT NULL COMMENT '총입원일수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cer_cnn_hspcl_dcrst_00` (`cer_rsno`,`hspcd`,`bzmno`,`rcpno`,`siu_clm_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='모집자관련병원별세부현황';
