--
-- Table structure for table `str_risk_vl_rst`
--

DROP TABLE IF EXISTS `str_risk_vl_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_risk_vl_rst` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `risk_pg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '리스크프로그램구분코드',
  `vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가항목코드',
  `vl_t_poct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '평가총점수',
  `md_t_poct` decimal(7,0) DEFAULT NULL COMMENT '조정총점수',
  `vl_artm_avg` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '평가산술평균',
  `md_artm_avg` decimal(5,2) DEFAULT NULL COMMENT '조정산술평균',
  `vl_artm_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가산술등급코드',
  `md_artm_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정산술등급코드',
  `md_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정직원번호',
  `dcn_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정등급코드',
  `dcn_cplt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정완료여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`risk_pg_flgcd`,`vl_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='리스크평가결과';
