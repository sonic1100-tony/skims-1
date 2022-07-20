--
-- Table structure for table `ins_carg_ntn_cty`
--

DROP TABLE IF EXISTS `ins_carg_ntn_cty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_carg_ntn_cty` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `carg_ntncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '적하국가코드',
  `carg_ctycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '적하도시코드',
  `slng_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운항지역코드',
  `carg_ctynm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적하도시명',
  `dvpns_carg_ctycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원적하도시코드',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_carg_ntn_cty_00` (`carg_ntncd`,`carg_ctycd`)
) ENGINE=InnoDB AUTO_INCREMENT=3629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적하국가도시';
