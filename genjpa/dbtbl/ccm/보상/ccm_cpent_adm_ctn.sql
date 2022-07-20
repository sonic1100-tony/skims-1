--
-- Table structure for table `ccm_cpent_adm_ctn`
--

DROP TABLE IF EXISTS `ccm_cpent_adm_ctn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cpent_adm_ctn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `adm_ctn_seqno` decimal(3,0) NOT NULL COMMENT '관리의견순번',
  `cpent_ctn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체의견구분코드',
  `thcp_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '당사직원번호',
  `thcp_ctn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '당사의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cpent_adm_ctn_00` (`ctmno`,`cprt_entp_seqno`,`adm_ctn_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체관리의견';
