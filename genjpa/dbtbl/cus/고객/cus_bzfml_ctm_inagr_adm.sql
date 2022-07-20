--
-- Table structure for table `cus_bzfml_ctm_inagr_adm`
--

DROP TABLE IF EXISTS `cus_bzfml_ctm_inagr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bzfml_ctm_inagr_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `ctm_agre_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객동의방법코드',
  `ctm_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객동의여부',
  `ctm_agre_strdt` date DEFAULT NULL COMMENT '고객동의시작일자',
  `ctm_agre_nddt` date DEFAULT NULL COMMENT '고객동의종료일자',
  `ctm_agre_wddt` date DEFAULT NULL COMMENT '고객동의철회일자',
  `ctm_agre_admno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객동의관리번호',
  `ctm_agre_autno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객동의인증번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bzfml_ctm_inagr_adm_00` (`ctm_dscno`,`dh_stfno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족고객정보동의관리';
