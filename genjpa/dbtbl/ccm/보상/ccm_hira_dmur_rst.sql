--
-- Table structure for table `ccm_hira_dmur_rst`
--

DROP TABLE IF EXISTS `ccm_hira_dmur_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_dmur_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `dmbil_sno` decimal(3,0) NOT NULL COMMENT '청구서일련번호',
  `spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '명세서일련번호',
  `dmur_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이의제기일련번호',
  `hira_xc_ud_dgre` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원정산심사차수',
  `xc_rprdt` date NOT NULL COMMENT '정산통보일자',
  `hira_form_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원서식구분코드',
  `inscp_clm_rcpno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사사고접수번호',
  `py_gu_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급보증번호',
  `rqdc_rcp_org_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신청서접수기관구분코드',
  `hira_md_orgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원의료기관코드',
  `mdorg_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료기관명',
  `hira_ud_dgre` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원심사차수',
  `pt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자성명',
  `ds_cplt_dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결정완료문서번호',
  `dcu_cpldt` date DEFAULT NULL COMMENT '문서완료일자',
  `dmur_chr_depnm` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이의제기담당부서명',
  `dmur_chrps_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이의제기담당자성명',
  `dmur_chrps_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이의제기담당자전화번호',
  `trpa_tamt_ds_diamt` decimal(15,0) DEFAULT NULL COMMENT '진료비총액결정차액금액',
  `pt_pym_ds_diamt` decimal(15,0) DEFAULT NULL COMMENT '환자납부결정차액금액',
  `dm_tamt_ds_diamt` decimal(15,0) DEFAULT NULL COMMENT '청구총액결정차액금액',
  `ds_diamt` decimal(15,0) DEFAULT NULL COMMENT '결정차액금액',
  `ds_1_amt` decimal(15,0) DEFAULT NULL COMMENT '결정1금액',
  `ds_2_amt` decimal(15,0) DEFAULT NULL COMMENT '결정2금액',
  `ds_drfe_mx_diamt` decimal(15,0) DEFAULT NULL COMMENT '결정약제비상한차액금액',
  `dmur_ds_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이의제기결정내용',
  `dmur_thcp_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이의제기당사처리여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_dmur_rst_00` (`hira_rcp_yr`,`hira_rcpno`,`dmbil_sno`,`spcft_sno`,`dmur_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원이의제기결과';
