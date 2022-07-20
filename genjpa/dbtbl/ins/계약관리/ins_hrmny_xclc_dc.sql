--
-- Table structure for table `ins_hrmny_xclc_dc`
--

DROP TABLE IF EXISTS `ins_hrmny_xclc_dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_hrmny_xclc_dc` (
  `ap_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '적용년도',
  `objno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '물건번호',
  `xclc_objno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우량물건번호',
  `fctnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공장명',
  `xclc_dc_lctn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우량할인소재지',
  `spcl_bld_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특수건물여부',
  `bld_dscrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '건물할인율',
  `mvpr_dscrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '동산할인율',
  `chkdt` date DEFAULT NULL COMMENT '점검일자',
  `fct_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공장업종코드',
  `odbld_dscrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '구건물할인율',
  `odmpr_dscrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '구동산할인율',
  `nbj_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비대상사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ap_yr`,`objno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화협우량할인';
