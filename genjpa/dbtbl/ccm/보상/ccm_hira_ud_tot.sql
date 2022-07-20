--
-- Table structure for table `ccm_hira_ud_tot`
--

DROP TABLE IF EXISTS `ccm_hira_ud_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_ud_tot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_ud_dgre` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원심사차수',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료기관청구번호',
  `dmct` decimal(7,0) DEFAULT NULL COMMENT '청구건수',
  `dm_drfe_mx_diamt` decimal(15,0) DEFAULT NULL COMMENT '청구약제비상한차액금액',
  `dm_trpa_amt` decimal(15,0) DEFAULT NULL COMMENT '청구진료비금액',
  `dm_pt_pyamt` decimal(15,0) DEFAULT NULL COMMENT '청구환자납부금액',
  `emamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액',
  `dsct` decimal(7,0) DEFAULT NULL COMMENT '결정건수',
  `ds_trst_org_pyamt` decimal(15,0) DEFAULT NULL COMMENT '결정수탁기관지급금액',
  `ds_drfe_mx_diamt` decimal(15,0) DEFAULT NULL COMMENT '결정약제비상한차액금액',
  `ds_trpa_amt` decimal(15,0) DEFAULT NULL COMMENT '결정진료비금액',
  `ds_pt_pyamt` decimal(15,0) DEFAULT NULL COMMENT '결정환자납부금액',
  `ud_dsamt` decimal(15,0) DEFAULT NULL COMMENT '심사결정금액',
  `ds_drfe_mxdam_mdamt` decimal(15,0) DEFAULT NULL COMMENT '결정약제비상한차액조정금액',
  `ud_impct` decimal(7,0) DEFAULT NULL COMMENT '심사불능건수',
  `ud_imp_trpa_amt` decimal(15,0) DEFAULT NULL COMMENT '심사불능진료비금액',
  `ud_imp_pt_pyamt` decimal(15,0) DEFAULT NULL COMMENT '심사불능환자납부금액',
  `ud_imp_emamt` decimal(15,0) DEFAULT NULL COMMENT '심사불능청구금액',
  `ud_md_ct` decimal(7,0) DEFAULT NULL COMMENT '심사조정건수',
  `ud_md_trpa_amt` decimal(15,0) DEFAULT NULL COMMENT '심사조정진료비금액',
  `ud_md_pt_pyamt` decimal(15,0) DEFAULT NULL COMMENT '심사조정환자납부금액',
  `ud_mdamt` decimal(15,0) DEFAULT NULL COMMENT '심사조정금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_ud_tot_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_ud_dgre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원심사집계';
