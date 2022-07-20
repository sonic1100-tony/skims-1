--
-- Table structure for table `lse_laps_ctl_adm`
--

DROP TABLE IF EXISTS `lse_laps_ctl_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_laps_ctl_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lsetm_dv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사배당유형코드',
  `ctl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통제구분코드',
  `ctl_flg_seqno` decimal(5,0) NOT NULL COMMENT '통제구분순번',
  `ctl_cnd_csfnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통제조건분류명',
  `ctl_cnd_1_vl` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통제조건1값',
  `ctl_cnd_2_vl` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통제조건2값',
  `ctl_cnnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통제조건명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_laps_ctl_adm_00` (`lsetm_dv_tpcd`,`ctl_flgcd`,`ctl_flg_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='LAPS통제관리';
