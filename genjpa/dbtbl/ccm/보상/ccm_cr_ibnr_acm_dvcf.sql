--
-- Table structure for table `ccm_cr_ibnr_acm_dvcf`
--

DROP TABLE IF EXISTS `ccm_cr_ibnr_acm_dvcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_ibnr_acm_dvcf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR자동차담보구분코드',
  `ibnr_injr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR상해구분코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `ibnr_cc_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR산출주기코드',
  `sts_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계기간코드',
  `cls_dvlp_yyodr_num` decimal(3,0) NOT NULL COMMENT '마감진전년차수',
  `clm_dvlp_yyodr_num` decimal(3,0) NOT NULL COMMENT '사고진전년차수',
  `rn_acm_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수누적결정전체보험금액',
  `rn_acm_gdprc_ds_tot_ins_amt` decimal(17,2) DEFAULT NULL COMMENT '원수누적물가결정전체보험금액',
  `remn_xiamt_sm` decimal(17,2) DEFAULT NULL COMMENT '잔여추산보험금액합계',
  `dmamt` decimal(17,2) DEFAULT NULL COMMENT '손해액',
  `ibnr_rpt_imu_ct` decimal(9,0) DEFAULT NULL COMMENT 'IBNR보고면책건수',
  `rn_ds_dvcf` decimal(15,10) DEFAULT NULL COMMENT '원수결정진전계수',
  `rn_gdprc_ds_dvcf` decimal(15,10) DEFAULT NULL COMMENT '원수물가결정진전계수',
  `rn_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '원수손해액진전계수',
  `rpt_imu_dvcf` decimal(15,10) DEFAULT NULL COMMENT '보고면책진전계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_ibnr_acm_dvcf_00` (`cls_yymm`,`ibnr_cr_cvr_flgcd`,`ibnr_injr_flgcd`,`ibnr_cls_flgcd`,`ibnr_cc_cyccd`,`sts_trmcd`,`cls_dvlp_yyodr_num`,`clm_dvlp_yyodr_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차IBNR누적진전계수';
