--
-- Table structure for table `ccm_hira_spcft`
--

DROP TABLE IF EXISTS `ccm_hira_spcft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_spcft` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료기관청구번호',
  `hira_md_orgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원의료기관코드',
  `hira_form_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원서식구분코드',
  `hira_mdch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원수가구분코드',
  `hira_dm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원청구구분코드',
  `org_dm_rcpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원청구접수번호',
  `org_dm_spcft_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원청구명세서일련번호',
  `hira_ud_imp_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원심사불능사유코드',
  `fr_hsp_opndt` date DEFAULT NULL COMMENT '최초입원개시일자',
  `inscp_clm_rcpno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사사고접수번호',
  `py_gu_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급보증번호',
  `pt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자성명',
  `pt_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자주민번호',
  `trmt_days` decimal(3,0) DEFAULT NULL COMMENT '진료일수',
  `hsp_vshs_days` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입원내원일수',
  `hira_hsp_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원입원경로코드',
  `hira_trmt_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료결과코드',
  `drfe_mx_diamt` decimal(15,0) DEFAULT NULL COMMENT '약제비상한차액금액',
  `trpa_amt` decimal(15,0) DEFAULT NULL COMMENT '진료비금액',
  `pt_pyamt` decimal(15,0) DEFAULT NULL COMMENT '환자납부금액',
  `emamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액',
  `hsp_spe_adrt` decimal(12,2) DEFAULT NULL COMMENT '병원종별가산율',
  `img_finm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지파일명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_spcft_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원명세서';
