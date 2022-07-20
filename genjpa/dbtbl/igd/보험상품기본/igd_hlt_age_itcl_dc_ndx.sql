--
-- Table structure for table `igd_hlt_age_itcl_dc_ndx`
--

DROP TABLE IF EXISTS `igd_hlt_age_itcl_dc_ndx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_hlt_age_itcl_dc_ndx` (
  `hlt_age_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '건강연령유형코드',
  `hlt_mdc_itcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '건강검진항목코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '성별코드',
  `age_st_mnvl` decimal(3,0) NOT NULL COMMENT '연령기준최소값',
  `age_st_mxvl` decimal(3,0) NOT NULL COMMENT '연령기준최대값',
  `hlt_mdc_it_mnvl` decimal(9,3) NOT NULL COMMENT '건강검진항목최소값',
  `hlt_mdc_it_mxvl` decimal(9,3) NOT NULL COMMENT '건강검진항목최대값',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `rk_dc_ndx` decimal(7,4) NOT NULL COMMENT '위험할인지수',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`hlt_age_tpcd`,`hlt_mdc_itcd`,`sexcd`,`age_st_mnvl`,`age_st_mxvl`,`hlt_mdc_it_mnvl`,`hlt_mdc_it_mxvl`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='건강연령항목별할인지수';
