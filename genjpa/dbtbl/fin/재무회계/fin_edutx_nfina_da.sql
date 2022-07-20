--
-- Table structure for table `fin_edutx_nfina_da`
--

DROP TABLE IF EXISTS `fin_edutx_nfina_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_edutx_nfina_da` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `edutx_nfina_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '교육세비재무자료구분코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `cm_osamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월OS금액',
  `cm_nelp_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월미경과보험료',
  `cm_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월계상금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`edutx_nfina_da_flgcd`,`ikd_grpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='교육세비재무자료';
