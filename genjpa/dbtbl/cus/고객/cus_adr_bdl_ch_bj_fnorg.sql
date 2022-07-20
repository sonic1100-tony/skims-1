--
-- Table structure for table `cus_adr_bdl_ch_bj_fnorg`
--

DROP TABLE IF EXISTS `cus_adr_bdl_ch_bj_fnorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_adr_bdl_ch_bj_fnorg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_fn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '접수금융기관코드',
  `rcp_yymd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월일',
  `rcp_hmms` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수시분밀리초',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `ch_bj_fn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '변경대상금융기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_adr_bdl_ch_bj_fnorg_00` (`rcp_fn_orgcd`,`rcp_yymd`,`rcp_hmms`,`rsno`,`ch_bj_fn_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주소일괄변경대상금융기관';
