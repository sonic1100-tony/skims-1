--
-- Table structure for table `cus_bz_fml_ctm_cr`
--

DROP TABLE IF EXISTS `cus_bz_fml_ctm_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bz_fml_ctm_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `bz_fml_ctm_seqno` decimal(10,0) NOT NULL COMMENT '영업가족고객순번',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `dspl` decimal(4,0) DEFAULT NULL COMMENT '배기량',
  `endt` date DEFAULT NULL COMMENT '만기일자',
  `yytp` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연식',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드',
  `owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자명',
  `is_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입회사코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bz_fml_ctm_cr_00` (`stfno`,`bz_fml_ctm_seqno`,`carno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족고객차량';
