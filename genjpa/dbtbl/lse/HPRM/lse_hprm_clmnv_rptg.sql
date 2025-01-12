--
-- Table structure for table `lse_hprm_clmnv_rptg`
--

DROP TABLE IF EXISTS `lse_hprm_clmnv_rptg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_clmnv_rptg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `clm_nv_rptg_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고조사보고서유형코드',
  `nrdps_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자직업코드',
  `nrdps_jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자직업명',
  `nrdps_injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자상해급수코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) NOT NULL COMMENT '진단코드일련번호',
  `dgnnm` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '진단명',
  `dgndt` date NOT NULL COMMENT '진단일자',
  `otp_strdt` date DEFAULT NULL COMMENT '통원시작일자',
  `otp_nddt` date DEFAULT NULL COMMENT '통원종료일자',
  `otp_ct` decimal(7,0) DEFAULT NULL COMMENT '통원건수',
  `rmdy_hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치료병원코드',
  `rmdy_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치료병원명',
  `hsp_strdt` date DEFAULT NULL COMMENT '입원시작일자',
  `hsp_nddt` date DEFAULT NULL COMMENT '입원종료일자',
  `hsp_days` decimal(5,0) DEFAULT NULL COMMENT '입원일수',
  `hsp_hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입원병원코드',
  `hsp_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입원병원명',
  `slobs_pyrt` decimal(5,2) DEFAULT NULL COMMENT '후유장해지급율',
  `slobs_dgndt` date DEFAULT NULL COMMENT '후유장해진단일자',
  `dedt` date DEFAULT NULL COMMENT '사망일자',
  `drct_ders_de_cas` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직접사인사망원인',
  `dm_et_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구기타사항',
  `cris_row_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약가입경위내용',
  `holo_sign_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자필서명여부',
  `ntc_dty_vlt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고지의무위반여부',
  `nrdps_inv_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자면담내용',
  `nrdps_rq_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자요청내용',
  `ce_row_clrq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집경위징구여부',
  `cer_inv_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집자면담내용',
  `clm_cnf_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고확인내용',
  `pt_st_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자상태내용',
  `ibnf_py_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금지급내용',
  `ntc_dty_vlt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고지의무위반내용',
  `hprm_nvr_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM조사자의견',
  `crnt_nrdps_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재피보험자직업코드',
  `crnt_nrdps_jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재피보험자직업명',
  `crnt_nrdps_injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재피보험자상해급수코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_clmnv_rptg_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM사고조사보고서';
