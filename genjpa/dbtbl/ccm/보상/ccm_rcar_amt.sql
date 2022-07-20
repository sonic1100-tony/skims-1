--
-- Table structure for table `ccm_rcar_amt`
--

DROP TABLE IF EXISTS `ccm_rcar_amt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rcar_amt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcaam_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '휴차료항목코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `rcaam_catcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '휴차료차종코드',
  `rcar_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '휴차료',
  `rcaam_ap_st_xpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴차료적용기준설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_rcar_amt_00` (`rcaam_itcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='휴차료';
