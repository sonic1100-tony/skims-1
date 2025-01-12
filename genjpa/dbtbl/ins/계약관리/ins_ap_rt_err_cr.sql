--
-- Table structure for table `ins_ap_rt_err_cr`
--

DROP TABLE IF EXISTS `ins_ap_rt_err_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ap_rt_err_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자코드',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `same_ply_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일증권여부',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `dh_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지역단기관코드',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자직원번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `rnw_dc_xc_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '갱신할인할증등급코드',
  `rnw_aprt` decimal(12,6) DEFAULT NULL COMMENT '갱신적용율',
  `is_crrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입경력코드',
  `thcp_is_crrrt` decimal(12,6) DEFAULT NULL COMMENT '당사가입경력율',
  `rglt_vltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반코드',
  `rglt_vltrt` decimal(12,6) DEFAULT NULL COMMENT '법규위반율',
  `spc_xccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별할증코드',
  `spc_xcrt` decimal(12,6) DEFAULT NULL COMMENT '특별할증율',
  `bfrnw_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '갱신전증권번호',
  `bfcr_ins_st` date DEFAULT NULL COMMENT '전계약보험시기',
  `bfcr_ins_clstr` date DEFAULT NULL COMMENT '전계약보험종기',
  `dvpns_dc_xc_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원할인할증등급코드',
  `dvpns_aprt` decimal(12,6) DEFAULT NULL COMMENT '개발원적용율',
  `dvpns_is_crrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원가입경력코드',
  `dvpns_is_crrrt` decimal(12,6) DEFAULT NULL COMMENT '개발원가입경력율',
  `dvpns_rglt_vltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원법규위반코드',
  `dvpns_rglt_vltrt` decimal(12,6) DEFAULT NULL COMMENT '개발원법규위반율',
  `dvpns_spc_xccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원특별할증코드',
  `dvpns_spc_xcrt` decimal(12,6) DEFAULT NULL COMMENT '개발원특별할증율',
  `aprt_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용율착오유무',
  `is_crr_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입경력착오유무',
  `rgvlt_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반착오유무',
  `spc_xc_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별할증착오유무',
  `aprt_vrf_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용율검증착오유무',
  `is_crr_vrf_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입경력검증착오유무',
  `rgvlt_vrf_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반검증착오유무',
  `spc_xc_vrf_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별할증검증착오유무',
  `aprt_crtn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용율시정여부',
  `is_crr_crtn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입경력시정여부',
  `rgvlt_crtn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반시정여부',
  `spc_xc_crtn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별할증시정여부',
  `aprt_vrf_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용율검증내용',
  `is_crr_vrf_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입경력검증내용',
  `rgvlt_vrf_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반검증내용',
  `spc_xc_vrf_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별할증검증내용',
  `aprt_crtn_rst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용율시정결과내용',
  `is_crr_crtn_rst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입경력시정결과내용',
  `rgvlt_crtn_rst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반시정결과내용',
  `spc_xc_crtn_rst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별할증시정결과내용',
  `ap_prm` decimal(17,2) DEFAULT NULL COMMENT '적용보험료',
  `err_apprm` decimal(17,2) DEFAULT NULL COMMENT '착오적용보험료',
  `wrkdt` date DEFAULT NULL COMMENT '작업일자',
  `annu1_clmct` decimal(3,0) DEFAULT NULL COMMENT '1년간사고건수',
  `annu3_clmct` decimal(3,0) DEFAULT NULL COMMENT '3년간사고건수',
  `dvpns_annu1_clmct` decimal(3,0) DEFAULT NULL COMMENT '개발원1년간사고건수',
  `dvpns_annu3_clmct` decimal(3,0) DEFAULT NULL COMMENT '개발원3년간사고건수',
  `annu1_clm_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1년간사고착오유무',
  `annu3_clm_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3년간사고착오유무',
  `annu1_clm_vrf_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1년간사고검증착오유무',
  `annu3_clm_vrf_err_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3년간사고검증착오유무',
  `annu1_clm_err_crtn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1년간사고착오시정여부',
  `annu3_clm_err_crtn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3년간사고착오시정여부',
  `annu1_clm_err_vrf_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1년간사고착오검증내용',
  `annu3_clm_err_vrf_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3년간사고착오검증내용',
  `annu1_clm_crtn_rst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1년간사고시정결과내용',
  `annu3_clm_crtn_rst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3년간사고시정결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_ap_rt_err_cr_00` (`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적용요율착오계약';
