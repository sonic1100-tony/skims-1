--
-- Table structure for table `ccm_cr_ibnr_ba_gdprc_ndx`
--

DROP TABLE IF EXISTS `ccm_cr_ibnr_ba_gdprc_ndx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_ibnr_ba_gdprc_ndx` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `gdprc_ndx` decimal(10,5) DEFAULT NULL COMMENT '물가지수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_ibnr_ba_gdprc_ndx_00` (`cls_yymm`,`ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차IBNR기초물가지수';
