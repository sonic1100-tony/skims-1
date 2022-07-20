--
-- Table structure for table `ins_gd_csf_ud_auth`
--

DROP TABLE IF EXISTS `ins_gd_csf_ud_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gd_csf_ud_auth` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ud_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '심사직원번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ud_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사업무구분코드',
  `ud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사구분코드',
  `ud_gd_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사상품분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_gd_csf_ud_auth_00` (`ud_stfno`,`ikd_grpcd`,`ud_bsns_flgcd`,`ud_flgcd`,`ud_gd_csfcd`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품분류심사권한';
