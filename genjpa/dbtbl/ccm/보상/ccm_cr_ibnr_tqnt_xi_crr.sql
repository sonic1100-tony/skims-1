--
-- Table structure for table `ccm_cr_ibnr_tqnt_xi_crr`
--

DROP TABLE IF EXISTS `ccm_cr_ibnr_tqnt_xi_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_ibnr_tqnt_xi_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ibnr_stdt` date NOT NULL COMMENT 'IBNR기준일자',
  `ibnr_cr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR자동차담보구분코드',
  `ibnr_injr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR상해구분코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `ibnr_cc_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR산출주기코드',
  `sts_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계기간코드',
  `ibnr_avg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR평균구분코드',
  `ibnr_wgt_rt` decimal(3,0) NOT NULL COMMENT 'IBNR가중치율',
  `vl_bj_rfd` decimal(17,2) DEFAULT NULL COMMENT '평가대상준비금',
  `rn_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수개별추산금액',
  `rn_dtlr_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '원수세칙IBNR금액',
  `rn_dtlr_ibnr_cu_rate` decimal(13,10) DEFAULT NULL COMMENT '원수세칙IBNR적립률',
  `idm_bnd_rnamt` decimal(17,2) DEFAULT NULL COMMENT '구상채권원수금액',
  `cldm_amt` decimal(15,0) DEFAULT NULL COMMENT 'CLDM금액',
  `cldm_lack_amt` decimal(15,0) DEFAULT NULL COMMENT 'CLDM부족금액',
  `tqnt_xiamt` decimal(15,0) DEFAULT NULL COMMENT '총량추산금액',
  `tqnt_xi_lack_amt` decimal(15,0) DEFAULT NULL COMMENT '총량추산부족금액',
  `pldm_amt` decimal(15,0) DEFAULT NULL COMMENT 'PLDM금액',
  `ildm_amt` decimal(15,0) DEFAULT NULL COMMENT 'ILDM금액',
  `rn_ibnr_ad_cuamt` decimal(17,2) DEFAULT NULL COMMENT '원수IBNR추가적립금액',
  `cm_rn_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '당월원수IBNR금액',
  `bf1yr_rn_rnprm` decimal(17,2) DEFAULT NULL COMMENT '직전1년원수경과보험료',
  `bf1yr_re_rnprm` decimal(17,2) DEFAULT NULL COMMENT '직전1년출재경과보험료',
  `rn_py_rfamt` decimal(15,0) DEFAULT NULL COMMENT '원수지급준비금액',
  `cm_ibnr_cu_rate` decimal(13,10) DEFAULT NULL COMMENT '당월IBNR적립률',
  `re_py_rfamt` decimal(15,0) DEFAULT NULL COMMENT '출재지급준비금액',
  `re_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '출재개별추산금액',
  `cm_re_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '당월출재IBNR금액',
  `net_py_rfamt` decimal(17,2) DEFAULT NULL COMMENT '정미지급준비금액',
  `net_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '정미개별추산금액',
  `cm_net_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '당월정미IBNR금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_ibnr_tqnt_xi_crr_00` (`ibnr_stdt`,`ibnr_cr_cvr_flgcd`,`ibnr_injr_flgcd`,`ibnr_cls_flgcd`,`ibnr_cc_cyccd`,`sts_trmcd`,`ibnr_avg_flgcd`,`ibnr_wgt_rt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차IBNR총량추산이력';
