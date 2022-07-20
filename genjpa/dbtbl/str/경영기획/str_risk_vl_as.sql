--
-- Table structure for table `str_risk_vl_as`
--

DROP TABLE IF EXISTS `str_risk_vl_as`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_risk_vl_as` (
  `risk_pg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '리스크프로그램구분코드',
  `vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가항목코드',
  `as_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '배정기관코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`risk_pg_flgcd`,`vl_itcd`,`as_orgcd`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='리스크평가배정';
