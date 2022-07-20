--
-- Table structure for table `ccm_lw_obs_it_spc`
--

DROP TABLE IF EXISTS `ccm_lw_obs_it_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lw_obs_it_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목코드',
  `pyrt` decimal(5,2) NOT NULL COMMENT '지급율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lw_obs_it_spc_00` (`lw_prg_sno`,`obs_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송장해항목내역';
