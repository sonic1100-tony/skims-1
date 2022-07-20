--
-- Table structure for table `ccm_fdbck_extr_st_adm`
--

DROP TABLE IF EXISTS `ccm_fdbck_extr_st_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fdbck_extr_st_adm` (
  `fdbck_extr_stncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피드백추출기준코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `extr_st_ct` decimal(3,0) NOT NULL COMMENT '추출기준건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`fdbck_extr_stncd`,`ap_str_dthms`,`ap_nd_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피드백추출기준관리';
