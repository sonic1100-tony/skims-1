--
-- Table structure for table `igd_atvt_dc_pnt_cu_st`
--

DROP TABLE IF EXISTS `igd_atvt_dc_pnt_cu_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_atvt_dc_pnt_cu_st` (
  `atvt_dc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'Activity할인유형코드',
  `atvt_dc_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'Activity할인항목코드',
  `atvt_dc_dt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'Activity할인세부항목코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `pnt_pystd_mnvl` decimal(9,3) NOT NULL COMMENT '포인트지급기준최소값',
  `pnt_pystd_mxvl` decimal(9,3) NOT NULL COMMENT '포인트지급기준최대값',
  `py_pnt` decimal(9,3) NOT NULL COMMENT '지급포인트',
  `py_pnt_mult` decimal(3,0) NOT NULL COMMENT '지급포인트배수',
  `py_pnt_mult_xcpt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급포인트배수예외코드',
  `pnt_py_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포인트지급주기코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`atvt_dc_tpcd`,`atvt_dc_itcd`,`atvt_dc_dt_itcd`,`seqno`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Activity할인포인트적립기준';
