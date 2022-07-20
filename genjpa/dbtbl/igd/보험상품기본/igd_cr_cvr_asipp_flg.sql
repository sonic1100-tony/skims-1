--
-- Table structure for table `igd_cr_cvr_asipp_flg`
--

DROP TABLE IF EXISTS `igd_cr_cvr_asipp_flg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_cr_cvr_asipp_flg` (
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `trt_ibnf_py_stncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특약보험금지급기준코드',
  `cmn_cdvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공통코드값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cr_cvrcd`,`as_it_flgcd`,`trt_ibnf_py_stncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약담보사정항목보험금지급구분';
