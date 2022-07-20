--
-- Table structure for table `lse_ibnf_mdf_ccbsc`
--

DROP TABLE IF EXISTS `lse_ibnf_mdf_ccbsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ibnf_mdf_ccbsc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `ccmtd_seqno` decimal(3,0) NOT NULL COMMENT '산출식순번',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `amt_mdf_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금액수정사유코드',
  `chbf_remn_xi_amt` decimal(17,2) NOT NULL COMMENT '변경전잔여추산금액',
  `chbf_pyamt` decimal(17,2) NOT NULL COMMENT '변경전지급금액',
  `chbf_ap_prm` decimal(15,0) NOT NULL COMMENT '변경전적용보험료',
  `chaf_apprm_rt` decimal(5,2) NOT NULL COMMENT '변경후적용보험료비율',
  `chaf_remn_xi_amt` decimal(17,2) NOT NULL COMMENT '변경후잔여추산금액',
  `chaf_pyamt` decimal(17,2) NOT NULL COMMENT '변경후지급금액',
  `chaf_ap_prm` decimal(15,0) NOT NULL COMMENT '변경후적용보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ibnf_mdf_ccbsc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`ccmtd_seqno`,`ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험금수정산출근거';
