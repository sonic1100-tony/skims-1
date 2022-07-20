--
-- Table structure for table `cus_rlnm_auth_chek`
--

DROP TABLE IF EXISTS `cus_rlnm_auth_chek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_rlnm_auth_chek` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객명',
  `rlnm_cnf_dthms` datetime NOT NULL COMMENT '실명확인일시',
  `rlnm_cnf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실명확인구분코드',
  `kcb_dl_sno` decimal(21,0) DEFAULT NULL COMMENT 'KCB거래일련번호',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `ans_msgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답메시지명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_rlnm_auth_chek_00` (`ctm_dscno`,`ctmnm`,`rlnm_cnf_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=3981 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실명인증체크';
