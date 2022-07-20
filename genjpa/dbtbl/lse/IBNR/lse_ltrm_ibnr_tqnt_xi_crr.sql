--
-- Table structure for table `lse_ltrm_ibnr_tqnt_xi_crr`
--

DROP TABLE IF EXISTS `lse_ltrm_ibnr_tqnt_xi_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_ibnr_tqnt_xi_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymd` date NOT NULL COMMENT '마감년월일',
  `ibnr_cvr_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR담보종류코드',
  `sts_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계기간코드',
  `cc_cyc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출주기구분코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `ibnr_avg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR평균구분코드',
  `wgt_rt` decimal(5,2) NOT NULL COMMENT '가중치비율',
  `vl_bj_rfd` decimal(17,2) DEFAULT NULL COMMENT '평가대상준비금',
  `rn_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수개별추산금액',
  `ocamt_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '일시금액개별추산금액',
  `larg_clm_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '대사고개별추산금액',
  `rn_tqnt_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수총량추산금액',
  `rn_pldm_amt` decimal(17,2) DEFAULT NULL COMMENT '원수PLDM금액',
  `rn_ildm_amt` decimal(17,2) DEFAULT NULL COMMENT '원수ILDM금액',
  `cm_rn_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '당월원수IBNR금액',
  `lowt_lmamt` decimal(17,2) DEFAULT NULL COMMENT '최저한도금액',
  `lowt_lm_lack_amt` decimal(17,2) DEFAULT NULL COMMENT '최저한도부족금액',
  `bf1yr_rn_rnprm` decimal(17,2) DEFAULT NULL COMMENT '직전1년원수경과보험료',
  `bf1yr_re_rnprm` decimal(17,2) DEFAULT NULL COMMENT '직전1년출재경과보험료',
  `cm_ibnr_cu_rate` decimal(13,10) DEFAULT NULL COMMENT '당월IBNR적립률',
  `rn_py_rfamt` decimal(15,0) DEFAULT NULL COMMENT '원수지급준비금액',
  `re_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '출재IBNR금액',
  `ps_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '보유IBNR금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_ibnr_tqnt_xi_crr_00` (`cls_yymd`,`ibnr_cvr_kndcd`,`sts_trmcd`,`cc_cyc_flgcd`,`ibnr_cls_flgcd`,`ibnr_avg_flgcd`,`wgt_rt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기IBNR총량추산이력';
