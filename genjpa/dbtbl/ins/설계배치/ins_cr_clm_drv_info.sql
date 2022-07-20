--
-- Table structure for table `ins_cr_clm_drv_info`
--

DROP TABLE IF EXISTS `ins_cr_clm_drv_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_clm_drv_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `relpc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자유형코드',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `y1_clm_ct` decimal(3,0) DEFAULT NULL COMMENT '1년사고횟수',
  `befo_y1_clmct` decimal(5,0) DEFAULT NULL COMMENT '직전1년사고건수',
  `y3_clm_ct` decimal(3,0) DEFAULT NULL COMMENT '3년사고횟수',
  `annu3_prclm_ct` decimal(5,0) DEFAULT NULL COMMENT '3년간물사고건수',
  `annu3_psclm_ct` decimal(5,0) DEFAULT NULL COMMENT '3년간인사고건수',
  `y1_mm3_clmct` decimal(5,0) DEFAULT NULL COMMENT '1년3개월사고건수',
  `y3_mm3_clmct` decimal(5,0) DEFAULT NULL COMMENT '3년3개월사고건수',
  `vlotr_iramt_ct` decimal(5,0) DEFAULT NULL COMMENT '평가대상기간부보대수',
  `annu3_iramt_ct` decimal(5,0) DEFAULT NULL COMMENT '3년간부보대수',
  `vlotr_clm_drv_clmct` decimal(5,0) DEFAULT NULL COMMENT '평가대상기간사고운전자사고건수',
  `annu3_clm_drv_clmct` decimal(5,0) DEFAULT NULL COMMENT '3년간사고운전자사고건수',
  `cr_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약채널코드',
  `y1_mm3_owcr_clmct` decimal(5,0) DEFAULT NULL COMMENT '1년3개월자차사고건수',
  `y3_mm3_owcr_clmct` decimal(5,0) DEFAULT NULL COMMENT '3년3개월자차사고건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_clm_drv_info_00` (`relpc_tpcd`,`rsno`,`ap_strdt`,`carno`)
) ENGINE=InnoDB AUTO_INCREMENT=3325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차사고운전자정보';
