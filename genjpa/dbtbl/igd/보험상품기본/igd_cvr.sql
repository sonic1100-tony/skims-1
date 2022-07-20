--
-- Table structure for table `igd_cvr`
--

DROP TABLE IF EXISTS `igd_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_cvr` (
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_prsnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '담보대표명',
  `cvr_kornm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보한글명',
  `cvr_hngl_shtnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보한글단축명',
  `cvr_ennm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보영문명',
  `cvr_eng_shtnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보영문단축명',
  `indpd_trt_cvr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '독립특약담보여부',
  `cvr_perdt` date DEFAULT NULL COMMENT '담보인가일자',
  `cvr_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보설명',
  `fr_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최초상품코드',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `prst_lclcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '급부대분류코드',
  `prst_mdccd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '급부중분류코드',
  `prst_smccd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '급부소분류코드',
  `rlpmi_fxamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실손정액구분코드',
  `gn_cncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보장내용코드',
  `cvr_spcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보특성코드',
  `cpyt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'COPAYMENT구분코드',
  `uiamt_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공제금액기준코드',
  `cmp_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상기간코드',
  `ward_diamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병실차액구분코드',
  `npp_hlprm_napc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국민건강보험미적용구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보';
