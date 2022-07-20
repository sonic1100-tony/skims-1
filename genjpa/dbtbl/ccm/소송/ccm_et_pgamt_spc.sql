--
-- Table structure for table `ccm_et_pgamt_spc`
--

DROP TABLE IF EXISTS `ccm_et_pgamt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_et_pgamt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `lw_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송업무구분코드',
  `pgamt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진행금액항목코드',
  `pgamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '진행금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_et_pgamt_spc_00` (`lw_prg_sno`,`lw_bsns_flgcd`,`pgamt_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기타진행금액내역';
