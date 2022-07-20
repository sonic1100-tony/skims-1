--
-- Table structure for table `ccm_fdbck_vlr_adm`
--

DROP TABLE IF EXISTS `ccm_fdbck_vlr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fdbck_vlr_adm` (
  `vlr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '평가자직원번호',
  `chrct_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인물구분코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `vlr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가자유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`vlr_stfno`,`chrct_flgcd`,`ap_str_dthms`,`ap_nd_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피드백평가자관리';
