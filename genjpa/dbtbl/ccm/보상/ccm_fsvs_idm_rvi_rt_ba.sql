--
-- Table structure for table `ccm_fsvs_idm_rvi_rt_ba`
--

DROP TABLE IF EXISTS `ccm_fsvs_idm_rvi_rt_ba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fsvs_idm_rvi_rt_ba` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `clm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '사고년월',
  `fsvs_clmcv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금감원사고담보구분코드',
  `end_bf_pibam_smamt` decimal(15,0) DEFAULT NULL COMMENT '종결전지급보험금합계금액',
  `end_af_plus_pibam_smamt` decimal(15,0) DEFAULT NULL COMMENT '종결후플러스지급보험금합계금액',
  `mnus_pibam` decimal(15,0) DEFAULT NULL COMMENT '마이너스지급보험금',
  `plus_pibam` decimal(15,0) DEFAULT NULL COMMENT '플러스지급보험금',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_fsvs_idm_rvi_rt_ba_00` (`st_yymm`,`clm_yymm`,`fsvs_clmcv_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금감원구상부활비율기초';
