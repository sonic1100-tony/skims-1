--
-- Table structure for table `cus_edd_prv_crr`
--

DROP TABLE IF EXISTS `cus_edd_prv_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_edd_prv_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `edd_admno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT 'EDD관리번호',
  `edd_prv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'EDD결재구분코드',
  `prv_crr_seqno` decimal(5,0) NOT NULL COMMENT '결재이력순번',
  `edd_prv_prg_rkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'EDD결재진행단계코드',
  `strpt_ud_dthms` datetime NOT NULL COMMENT 'STR심사일시',
  `strpt_udwr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'STR심사자직원번호',
  `strpt_ud_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'STR심사의견',
  `strpt_ud_rstcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'STR심사결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_edd_prv_crr_00` (`edd_admno`,`edd_prv_flgcd`,`prv_crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='EDD결재이력';
