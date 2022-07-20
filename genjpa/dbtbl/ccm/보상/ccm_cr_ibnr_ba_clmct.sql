--
-- Table structure for table `ccm_cr_ibnr_ba_clmct`
--

DROP TABLE IF EXISTS `ccm_cr_ibnr_ba_clmct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_ibnr_ba_clmct` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `clm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '사고년월',
  `ibnr_cr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR자동차담보구분코드',
  `inj_rnk` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '부상급수',
  `pndct` decimal(9,0) DEFAULT NULL COMMENT '미결건수',
  `endct` decimal(7,0) DEFAULT NULL COMMENT '종결건수',
  `imu_ct` decimal(9,0) DEFAULT NULL COMMENT '면책건수',
  `end_af_xict` decimal(7,0) DEFAULT NULL COMMENT '종결후추산건수',
  `re_end_ct` decimal(5,0) DEFAULT NULL COMMENT '재종결건수',
  `rpt_ct` decimal(5,0) DEFAULT NULL COMMENT '보고건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_ibnr_ba_clmct_00` (`cls_yymm`,`clm_yymm`,`ibnr_cr_cvr_flgcd`,`inj_rnk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차IBNR기초사고건수';
