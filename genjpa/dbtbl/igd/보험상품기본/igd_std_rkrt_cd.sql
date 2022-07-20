--
-- Table structure for table `igd_std_rkrt_cd`
--

DROP TABLE IF EXISTS `igd_std_rkrt_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_std_rkrt_cd` (
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `cmpx_cvr_prs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '복합담보대표구분코드',
  `rkrt_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '위험율코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cvrcd`,`clm_cvrcd`),
  KEY `idx_igd_std_rkrt_cd_10` (`clm_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='표준위험률코드';
