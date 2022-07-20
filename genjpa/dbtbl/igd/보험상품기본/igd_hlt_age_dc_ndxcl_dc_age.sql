--
-- Table structure for table `igd_hlt_age_dc_ndxcl_dc_age`
--

DROP TABLE IF EXISTS `igd_hlt_age_dc_ndxcl_dc_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_hlt_age_dc_ndxcl_dc_age` (
  `hlt_age_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '건강연령유형코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '성별코드',
  `age_st_mnvl` decimal(3,0) NOT NULL COMMENT '연령기준최소값',
  `age_st_mxvl` decimal(3,0) NOT NULL COMMENT '연령기준최대값',
  `dc_ndx_mnvl` decimal(9,3) NOT NULL COMMENT '할인지수최소값',
  `dc_ndx_mxvl` decimal(9,3) NOT NULL COMMENT '할인지수최대값',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `dc_age` decimal(3,0) NOT NULL COMMENT '할인연령',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`hlt_age_tpcd`,`sexcd`,`age_st_mnvl`,`age_st_mxvl`,`dc_ndx_mnvl`,`dc_ndx_mxvl`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='건강연령할인지수별할인연령';
