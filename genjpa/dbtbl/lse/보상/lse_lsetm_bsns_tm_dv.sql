--
-- Table structure for table `lse_lsetm_bsns_tm_dv`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_tm_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_tm_dv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀기관코드',
  `lsetm_dv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사배당유형코드',
  `incld_cnd_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '포함조건여부',
  `dv_str_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배당시작금액',
  `dv_nd_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배당종료금액',
  `ad_dv_str_amt` decimal(17,2) DEFAULT NULL COMMENT '추가배당시작금액',
  `ad_dv_nd_amt` decimal(17,2) DEFAULT NULL COMMENT '추가배당종료금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_bsns_tm_dv_00` (`tm_orgcd`,`lsetm_dv_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무팀배당';
