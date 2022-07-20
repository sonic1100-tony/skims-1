--
-- Table structure for table `com_lgin_xcpt_stf_dl`
--

DROP TABLE IF EXISTS `com_lgin_xcpt_stf_dl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_lgin_xcpt_stf_dl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `lgin_xcpt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '로그인예외구분코드',
  `ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IP주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_lgin_xcpt_stf_dl_00` (`stfno`,`lgin_xcpt_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='로그인예외직원처리';
