--
-- Table structure for table `ins_nrdps_befo_ud`
--

DROP TABLE IF EXISTS `ins_nrdps_befo_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nrdps_befo_ud` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자코드',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `nw_rnw_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신규갱신코드',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목소분류코드',
  `cr_ud_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자동차심사채널코드',
  `rgt_dthms` datetime DEFAULT NULL COMMENT '등록일시',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `y1_mm3_clmct` decimal(5,0) DEFAULT NULL COMMENT '1년3개월사고건수',
  `y3_mm3_clmct` decimal(5,0) DEFAULT NULL COMMENT '3년3개월사고건수',
  `age` decimal(3,0) DEFAULT NULL COMMENT '연령',
  `udrtk_atnd_1_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의1여부',
  `udrtk_atnd_2_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의2여부',
  `udrtk_atnd_4_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의4여부',
  `udrtk_atnd_5_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의5여부',
  `rglt_vltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반코드',
  `rgvlt_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반사고여부',
  `comp_rglt_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중대법규사고여부',
  `vlotr_clm_drv_clmct` decimal(5,0) DEFAULT NULL COMMENT '평가대상기간사고운전자사고건수',
  `annu3_clm_drv_clmct` decimal(5,0) DEFAULT NULL COMMENT '3년간사고운전자사고건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_nrdps_befo_ud_00` (`nrdcd`,`ins_st`,`nw_rnw_cd`,`ins_itm_smccd`,`cr_ud_chncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차계약피보험자사전심사';
