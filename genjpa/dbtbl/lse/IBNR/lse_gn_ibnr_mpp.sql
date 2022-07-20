--
-- Table structure for table `lse_gn_ibnr_mpp`
--

DROP TABLE IF EXISTS `lse_gn_ibnr_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_gn_ibnr_mpp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR담보구분코드',
  `ibnr_cc_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR산출주기코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `ibnr_cls_rnd_yyct` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감경과년수',
  `ibnr_clm_rnd_yyct` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR사고경과년수',
  `cls_dvlp_yyodr_num` decimal(3,0) DEFAULT NULL COMMENT '마감진전년차수',
  `clm_dvlp_yyodr_num` decimal(3,0) DEFAULT NULL COMMENT '사고진전년차수',
  `rn_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수결정전체보험금액',
  `rn_dmamt_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수손해액전체보험금액',
  `rn_xi_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수추산전체보험금액',
  `rtro_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '수재결정전체보험금액',
  `rtro_xi_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '수재추산전체보험금액',
  `rtro_dmamt_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '수재손해액전체보험금액',
  `re_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재결정전체보험금액',
  `rexi_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재추산전체보험금액',
  `re_dmamt_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재손해액전체보험금액',
  `lclmxcp_rn_ds_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외원수결정보험금액',
  `lclmxcp_rn_xi_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외원수추산전체보험금액',
  `lclmxcp_rn_dmamt_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외원수손해액전체보험금액',
  `lclmxcp_rtro_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외수재결정전체보험금액',
  `lclmxcp_rtro_xi_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외수재추산전체보험금액',
  `lclmxcp_rtro_dmamt_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외수재손해액전체보험금액',
  `lclmxcp_re_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외출재결정전체보험금액',
  `lclmxcp_rexi_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외출재추산전체보험금액',
  `lclmxcp_re_dmamt_ibamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외출재손해액보험금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_gn_ibnr_mpp_00` (`cls_yymm`,`ibnr_cvr_flgcd`,`ibnr_cc_cyccd`,`ibnr_cls_flgcd`,`ibnr_cls_rnd_yyct`,`ibnr_clm_rnd_yyct`)
) ENGINE=InnoDB AUTO_INCREMENT=1079 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반IBNR매핑';
