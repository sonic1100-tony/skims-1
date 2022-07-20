--
-- Table structure for table `ins_vlamt_vl_gdprc_ndx`
--

DROP TABLE IF EXISTS `ins_vlamt_vl_gdprc_ndx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_vlamt_vl_gdprc_ndx` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ap_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '적용년도',
  `bld_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '건물물가지수율',
  `stru_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '구축물물가지수율',
  `eqmt_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '시설물가지수율',
  `mcheq_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '기계장치물가지수율',
  `trf_mn_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '교통수단물가지수율',
  `tls_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '공구물가지수율',
  `nvase_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '재고자산물가지수율',
  `vl_1_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '평가1물가지수율',
  `vl_2_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '평가2물가지수율',
  `vl_3_gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '평가3물가지수율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_vlamt_vl_gdprc_ndx_00` (`st_yymm`,`ap_yr`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가액평가물가지수';
