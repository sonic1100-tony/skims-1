--
-- Table structure for table `igd_gd_ap_dc_xc`
--

DROP TABLE IF EXISTS `igd_gd_ap_dc_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_ap_dc_xc` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `dc_xc_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '할인할증종류코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '위험유형코드',
  `obj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '물건구분코드',
  `dc_xc_atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '할인할증속성코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `us_av_strdt` date DEFAULT NULL COMMENT '사용가능시작일자',
  `us_av_nddt` date DEFAULT NULL COMMENT '사용가능종료일자',
  `srp_lowt_lmrt` decimal(12,6) DEFAULT '0.000000' COMMENT 'SRP최저한도율',
  `srp_mx_lmrt` decimal(12,6) DEFAULT '0.000000' COMMENT 'SRP최대한도율',
  `srp_ap_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SRP적용단위코드',
  `pypre_prm_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입예정보험료적용여부',
  `dc_xc_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인할증대상구분코드',
  `dc_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인적용구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`dc_xc_kndcd`,`rk_tpcd`,`obj_flgcd`,`dc_xc_atrcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품적용할인할증';
