--
-- Table structure for table `ccm_hira_spcft_ud`
--

DROP TABLE IF EXISTS `ccm_hira_spcft_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_spcft_ud` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `hira_ud_dgre` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원심사차수',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료기관청구번호',
  `inscp_clm_rcpno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사사고접수번호',
  `pt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자성명',
  `hira_trmt_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료형태코드',
  `fr_trpa` decimal(12,0) DEFAULT NULL COMMENT '최초진료비',
  `re_trpa` decimal(12,0) DEFAULT NULL COMMENT '재진료비',
  `dm_drfe_mx_diamt` decimal(15,0) DEFAULT NULL COMMENT '청구약제비상한차액금액',
  `dm_trpa_amt` decimal(15,0) DEFAULT NULL COMMENT '청구진료비금액',
  `dm_pt_pyamt` decimal(15,0) DEFAULT NULL COMMENT '청구환자납부금액',
  `emamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액',
  `ds_hira_mdch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결정심평원수가구분코드',
  `ds_trst_org_pyamt` decimal(15,0) DEFAULT NULL COMMENT '결정수탁기관지급금액',
  `ds_drfe_mx_diamt` decimal(15,0) DEFAULT NULL COMMENT '결정약제비상한차액금액',
  `ds_trpa_amt` decimal(15,0) DEFAULT NULL COMMENT '결정진료비금액',
  `ds_pt_pyamt` decimal(15,0) DEFAULT NULL COMMENT '결정환자납부금액',
  `ud_dsamt` decimal(15,0) DEFAULT NULL COMMENT '심사결정금액',
  `fsmde_ct` decimal(2,0) DEFAULT NULL COMMENT '초진횟수',
  `fsmde_ad_ct` decimal(2,0) DEFAULT NULL COMMENT '초진가산횟수',
  `mdrxm_ct` decimal(2,0) DEFAULT NULL COMMENT '재진횟수',
  `mdrxm_ad_ct` decimal(2,0) DEFAULT NULL COMMENT '재진가산횟수',
  `hsp_days` decimal(5,0) DEFAULT NULL COMMENT '입원일수',
  `trmt_days` decimal(3,0) DEFAULT NULL COMMENT '진료일수',
  `prtn_ct` decimal(3,0) DEFAULT NULL COMMENT '처방횟수',
  `trmt_opndt` date DEFAULT NULL COMMENT '진료개시일자',
  `hira_ud_chrps_tmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원심사담당자팀코드',
  `scwnd_csf_symb` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상병분류기호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_spcft_ud_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`hira_ud_dgre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원명세서심사';
