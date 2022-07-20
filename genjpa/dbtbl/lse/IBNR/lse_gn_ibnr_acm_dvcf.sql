--
-- Table structure for table `lse_gn_ibnr_acm_dvcf`
--

DROP TABLE IF EXISTS `lse_gn_ibnr_acm_dvcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_gn_ibnr_acm_dvcf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR담보구분코드',
  `ibnr_cc_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR산출주기코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `cls_dvlp_yyodr_num` decimal(3,0) NOT NULL COMMENT '마감진전년차수',
  `clm_dvlp_yyodr_num` decimal(3,0) NOT NULL COMMENT '사고진전년차수',
  `rn_acm_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수누적결정전체보험금액',
  `rn_xi_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수추산전체보험금액',
  `rn_dmamt_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수손해액보험금액',
  `rtro_acm_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '수재누적결정전체보험금액',
  `rtro_xi_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '수재추산전체보험금액',
  `rtro_dmamt_ibamt` decimal(17,2) DEFAULT NULL COMMENT '수재손해액보험금액',
  `re_acm_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재누적결정전체보험금액',
  `rexi_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재추산전체보험금액',
  `re_dmamt_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재손해액보험금액',
  `lclmxcp_acm_ds_tot_rn_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외누적결정전체원수보험금액',
  `lclmxcp_xi_tot_rn_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외추산전체원수보험금액',
  `lclmxcp_dmamt_rn_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외손해액원수보험금액',
  `lclmxcp_acm_ds_tot_rtro_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외누적결정전체수재보험금액',
  `lclmxcp_xi_tot_rtro_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외추산전체수재보험금액',
  `lclmxcp_dmamt_rtro_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외손해액수재보험금액',
  `lclmxcp_acm_ds_tot_re_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외누적결정전체출재보험금액',
  `lclmxcp_xi_tot_re_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외추산전체출재보험금액',
  `lclmxcp_dmamt_re_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외손해액출재보험금액',
  `rn_ds_dvcf` decimal(15,10) DEFAULT NULL COMMENT '원수결정진전계수',
  `rtro_ds_dvcf` decimal(15,10) DEFAULT NULL COMMENT '수재결정진전계수',
  `rn_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '원수손해액진전계수',
  `rtro_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '수재손해액진전계수',
  `re_ds_dvcf` decimal(15,10) DEFAULT NULL COMMENT '출재결정진전계수',
  `re_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '출재손해액진전계수',
  `lclmxcp_rn_ds_dvcf` decimal(15,10) DEFAULT NULL COMMENT '대사고제외원수결정진전계수',
  `lclmxcp_rn_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '대사고제외원수손해액진전계수',
  `lclmxcp_rtro_ds_dvcf` decimal(15,10) DEFAULT NULL COMMENT '대사고제외수재결정진전계수',
  `lclmxcp_rtro_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '대사고제외수재손해액진전계수',
  `lclmxcp_re_ds_dvcf` decimal(15,10) DEFAULT NULL COMMENT '대사고제외출재결정진전계수',
  `lclmxcp_re_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '대사고제외출재손해액진전계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_gn_ibnr_acm_dvcf_00` (`cls_yymm`,`ibnr_cvr_flgcd`,`ibnr_cc_cyccd`,`ibnr_cls_flgcd`,`cls_dvlp_yyodr_num`,`clm_dvlp_yyodr_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반IBNR누적진전계수';
