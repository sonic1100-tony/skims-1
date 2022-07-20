--
-- Table structure for table `str_bzcs_paff_slr`
--

DROP TABLE IF EXISTS `str_bzcs_paff_slr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcs_paff_slr` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `clpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직급코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `fnl_pycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '최종급여코드',
  `pydt` date NOT NULL COMMENT '지급일자',
  `pyamt` decimal(17,2) NOT NULL COMMENT '지급금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`stfno`,`orgcd`,`clpcd`,`ntacc_cd`,`fnl_pycd`,`pydt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비인사급여';
