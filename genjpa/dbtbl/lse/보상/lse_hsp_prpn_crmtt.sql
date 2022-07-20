--
-- Table structure for table `lse_hsp_prpn_crmtt`
--

DROP TABLE IF EXISTS `lse_hsp_prpn_crmtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hsp_prpn_crmtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `ccmtd_seqno` decimal(3,0) NOT NULL COMMENT '산출식순번',
  `thcp_mdcs_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '당사의료비유형코드',
  `thcp_isamt` decimal(17,2) NOT NULL COMMENT '당사가입금액',
  `thcp_ward_diamt` decimal(17,2) NOT NULL COMMENT '당사병실차액',
  `thcp_appr_ward_diamt` decimal(17,2) NOT NULL COMMENT '당사인정병실차액',
  `otcm_inscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '타사보험사코드',
  `otcm_mdcs_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '타사의료비유형코드',
  `otcm_isamt` decimal(17,2) NOT NULL COMMENT '타사가입금액',
  `otcm_ward_diamt` decimal(17,2) NOT NULL COMMENT '타사병실차액',
  `otcm_appr_ward_diamt` decimal(17,2) NOT NULL COMMENT '타사인정병실차액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hsp_prpn_crmtt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`ccmtd_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입원비례계약사항';
