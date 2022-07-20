--
-- Table structure for table `igd_gd_clm_cvr_temp`
--

DROP TABLE IF EXISTS `igd_gd_clm_cvr_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_clm_cvr_temp` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `otp_mdcs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통원의료비구분코드',
  `otp_clm_isamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통원사고가입금액구분코드',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `otp_mdcs_uiamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통원의료비공제금액구분코드',
  `clm_cvrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`cvrcd`,`clm_cvrcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품사고담보';
