--
-- Table structure for table `z_spcf_dsas`
--

DROP TABLE IF EXISTS `z_spcf_dsas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_spcf_dsas` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dsas_gp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질병그룹구분코드',
  `dsas_gpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병그룹코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) DEFAULT NULL COMMENT '진단코드일련번호',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_z_spcf_dsas_00` (`dsas_gp_flgcd`,`dsas_gpcd`,`dgncd`,`dgncd_sno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
