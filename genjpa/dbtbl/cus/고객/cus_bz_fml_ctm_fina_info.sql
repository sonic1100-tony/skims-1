--
-- Table structure for table `cus_bz_fml_ctm_fina_info`
--

DROP TABLE IF EXISTS `cus_bz_fml_ctm_fina_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bz_fml_ctm_fina_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `bz_fml_ctm_seqno` decimal(10,0) NOT NULL COMMENT '영업가족고객순번',
  `anamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연간소득액',
  `are` decimal(17,2) DEFAULT '0.00' COMMENT '면적',
  `are_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면적단위코드',
  `prop_mvpr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재산동산',
  `prop_rstm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재산부동산',
  `hous_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주택형태코드',
  `dwel_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주거형태코드',
  `hous_own_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주택소유구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bz_fml_ctm_fina_info_00` (`stfno`,`bz_fml_ctm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족고객재무정보';
