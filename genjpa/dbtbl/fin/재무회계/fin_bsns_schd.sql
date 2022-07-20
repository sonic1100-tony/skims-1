--
-- Table structure for table `fin_bsns_schd`
--

DROP TABLE IF EXISTS `fin_bsns_schd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bsns_schd` (
  `bzdy_adm_dt` date NOT NULL COMMENT '영업일관리일자',
  `bll_py_prdy_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계산서지급예정일여부',
  `awrtx_py_prdy_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시상영수증지급예정일여부',
  `et_py_prdy_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타지급예정일여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bzdy_adm_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업무일정';
