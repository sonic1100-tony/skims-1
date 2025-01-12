--
-- Table structure for table `lse_otp_prpn_cmp`
--

DROP TABLE IF EXISTS `lse_otp_prpn_cmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_otp_prpn_cmp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `ccmtd_seqno` decimal(3,0) NOT NULL COMMENT '산출식순번',
  `otprt_seqno` decimal(7,0) NOT NULL COMMENT '통원비순번',
  `otp_dt` date NOT NULL COMMENT '통원일자',
  `dmamt` decimal(15,0) DEFAULT NULL COMMENT '손해금액',
  `indpd_rpamt_sm` decimal(17,2) DEFAULT NULL COMMENT '독립책임금액합계',
  `thcp_otp_indpd_rpamt` decimal(17,2) NOT NULL COMMENT '당사통원독립책임금액',
  `thcp_prtn_indpd_rpamt` decimal(17,2) NOT NULL COMMENT '당사처방독립책임금액',
  `thcp_indpd_rpamt` decimal(17,2) NOT NULL COMMENT '당사독립책임금액',
  `otcm_otp_indpd_rpamt` decimal(17,2) NOT NULL COMMENT '타사통원독립책임금액',
  `otcm_prtn_indpd_rpamt` decimal(17,2) NOT NULL COMMENT '타사처방독립책임금액',
  `otcm_indpd_rpamt` decimal(17,2) NOT NULL COMMENT '타사독립책임금액',
  `prpn_cmp_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '비례보상여부',
  `thcp_otp_pyamt` decimal(17,2) NOT NULL COMMENT '당사통원지급금액',
  `thcp_prtn_pyamt` decimal(17,2) NOT NULL COMMENT '당사처방지급금액',
  `thcp_otp_prtn_pyamt` decimal(17,2) NOT NULL COMMENT '당사통원처방지급금액',
  `otcm_otp_pyamt` decimal(17,2) NOT NULL COMMENT '타사통원지급금액',
  `otcm_prtn_pyamt` decimal(17,2) NOT NULL COMMENT '타사처방지급금액',
  `otcm_otp_prtn_pyamt` decimal(17,2) NOT NULL COMMENT '타사통원처방지급금액',
  `dmamt_mdf_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '손해금액수정여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_otp_prpn_cmp_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`ccmtd_seqno`,`otprt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통원비례보상';
