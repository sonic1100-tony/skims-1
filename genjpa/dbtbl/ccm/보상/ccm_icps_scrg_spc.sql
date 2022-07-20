--
-- Table structure for table `ccm_icps_scrg_spc`
--

DROP TABLE IF EXISTS `ccm_icps_scrg_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_icps_scrg_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `inqdt` date NOT NULL COMMENT '조회일자',
  `inq_st_mc` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '조회기준월수',
  `modl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모델구분코드',
  `modl_poct` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '모델점수',
  `modl_poct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모델점수구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_icps_scrg_spc_00` (`ctm_dscno`,`inqdt`,`inq_st_mc`,`modl_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ICPS스코어링내역';
