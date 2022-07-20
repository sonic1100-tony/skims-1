--
-- Table structure for table `sec_thrps_psinf_of_drut`
--

DROP TABLE IF EXISTS `sec_thrps_psinf_of_drut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_thrps_psinf_of_drut` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `psinf_of_ojccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보제공목적코드',
  `drtdt` date NOT NULL COMMENT '파기일자',
  `drtno` decimal(3,0) NOT NULL COMMENT '파기순번',
  `drut_bj_strdt` date NOT NULL COMMENT '파기대상시작일자',
  `drut_bj_nddt` date NOT NULL COMMENT '파기대상종료일자',
  `drtct` decimal(10,0) NOT NULL COMMENT '파기건수',
  `hdof_cnf_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '본사확인직원번호',
  `hdof_cnfdt` date NOT NULL COMMENT '본사확인일자',
  `adx_file_kyvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일키값',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sec_thrps_psinf_of_drut_00` (`ctmno`,`cprt_entp_seqno`,`bsns_flgcd`,`psinf_of_ojccd`,`drtdt`,`drtno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='제3자개인정보제공파기';
