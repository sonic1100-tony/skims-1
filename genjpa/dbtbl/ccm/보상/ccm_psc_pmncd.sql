--
-- Table structure for table `ccm_psc_pmncd`
--

DROP TABLE IF EXISTS `ccm_psc_pmncd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_psc_pmncd` (
  `psc_pmn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '검찰경찰구분코드',
  `lclt_psc_pmncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지방검찰경찰코드',
  `lclt_psc_pmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '지방검찰경찰명',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`psc_pmn_flgcd`,`lclt_psc_pmncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='검찰청경찰청코드';
