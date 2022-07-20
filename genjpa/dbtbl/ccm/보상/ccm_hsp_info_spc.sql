--
-- Table structure for table `ccm_hsp_info_spc`
--

DROP TABLE IF EXISTS `ccm_hsp_info_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hsp_info_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vl_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '평가년도',
  `spc_seqno` decimal(5,0) NOT NULL COMMENT '내역순번',
  `hsp_rnk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원급수구분코드',
  `hsp_info_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원정보자료구분코드',
  `hsp_specd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원종별코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체순번',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `t_pt_num` decimal(9,0) DEFAULT NULL COMMENT '총환자수',
  `t_hsp_pt_num` decimal(9,0) DEFAULT NULL COMMENT '총입원환자수',
  `t_ct_mri_ct` decimal(9,0) DEFAULT NULL COMMENT '총CTMRI건수',
  `t_hsp_sm_days` decimal(10,0) DEFAULT NULL COMMENT '총입원합계일수',
  `hsp_dm_mdcf_smamt` decimal(15,0) DEFAULT '0' COMMENT '입원청구치료비합계금액',
  `hsp_mdcf_smamt` decimal(15,0) DEFAULT '0' COMMENT '입원치료비합계금액',
  `t_otp_sm_days` decimal(10,0) DEFAULT NULL COMMENT '총통원합계일수',
  `otp_dm_mdcf_smamt` decimal(15,0) DEFAULT '0' COMMENT '통원청구치료비합계금액',
  `otp_mdcf_smamt` decimal(15,0) DEFAULT '0' COMMENT '통원치료비합계금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hsp_info_spc_00` (`vl_yr`,`spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='병원정보내역';
