--
-- Table structure for table `ccm_cr_ibnr_ba_mpp`
--

DROP TABLE IF EXISTS `ccm_cr_ibnr_ba_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_ibnr_ba_mpp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR자동차담보구분코드',
  `inj_rnk` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '부상급수',
  `sts_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계기간코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `ibnr_cc_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR산출주기코드',
  `ibnr_cls_rnd_yyct` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감경과년수',
  `ibnr_clm_rnd_yyct` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR사고경과년수',
  `ibnr_os_rnd_yyct` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNROS경과년수',
  `cls_dvlp_yyodr_num` decimal(3,0) DEFAULT NULL COMMENT '마감진전년차수',
  `clm_dvlp_yyodr_num` decimal(3,0) DEFAULT NULL COMMENT '사고진전년차수',
  `os_dvlp_yyodr_num` decimal(3,0) DEFAULT NULL COMMENT 'OS진전년차수',
  `dsamt_sm` decimal(15,0) DEFAULT NULL COMMENT '결정금액합계',
  `gdprc_ndx_ap_vlamt` decimal(15,0) DEFAULT NULL COMMENT '물가지수적용가액',
  `remn_xiamt_sm` decimal(17,2) DEFAULT NULL COMMENT '잔여추산보험금액합계',
  `dmamt` decimal(17,2) DEFAULT NULL COMMENT '손해액',
  `ibnr_rpt_imu_ct` decimal(9,0) DEFAULT NULL COMMENT 'IBNR보고면책건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_ibnr_ba_mpp_00` (`cls_yymm`,`ibnr_cr_cvr_flgcd`,`inj_rnk`,`sts_trmcd`,`ibnr_cls_flgcd`,`ibnr_cc_cyccd`,`ibnr_cls_rnd_yyct`,`ibnr_clm_rnd_yyct`,`ibnr_os_rnd_yyct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차IBNR기초매핑';
