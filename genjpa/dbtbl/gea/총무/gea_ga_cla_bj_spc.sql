--
-- Table structure for table `gea_ga_cla_bj_spc`
--

DROP TABLE IF EXISTS `gea_ga_cla_bj_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ga_cla_bj_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `cla_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '약관업무구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점기관코드',
  `aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지역단기관코드',
  `hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본부기관코드',
  `cect` decimal(9,0) DEFAULT NULL COMMENT '모집건수',
  `cm_cect` decimal(9,0) DEFAULT NULL COMMENT '당월모집건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ga_cla_bj_spc_00` (`st_yymm`,`orgcd`,`cla_bsns_flgcd`,`gdcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='GA약관대상내역';
