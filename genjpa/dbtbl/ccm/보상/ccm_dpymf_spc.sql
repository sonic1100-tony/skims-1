--
-- Table structure for table `ccm_dpymf_spc`
--

DROP TABLE IF EXISTS `ccm_dpymf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dpymf_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `cc_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기준구분코드',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `hsp_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '병원고객번호',
  `hsp_cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '병원협력업체순번',
  `hsp_st` date DEFAULT NULL COMMENT '입원시기',
  `hsp_clstr` date DEFAULT NULL COMMENT '입원종기',
  `hsp_days` decimal(5,0) DEFAULT NULL COMMENT '입원일수',
  `otp_st` date DEFAULT NULL COMMENT '통원시기',
  `otp_clstr` date DEFAULT NULL COMMENT '통원종기',
  `otp_days` decimal(5,0) DEFAULT NULL COMMENT '통원일수',
  `emamt` decimal(15,0) NOT NULL COMMENT '청구금액',
  `appr_amt` decimal(15,0) NOT NULL COMMENT '인정금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dpymf_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`cc_st_flgcd`,`cc_seq`,`dm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직불치료비내역';
