--
-- Table structure for table `lse_rtro_xi_py_spc`
--

DROP TABLE IF EXISTS `lse_rtro_xi_py_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_rtro_xi_py_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `ibnf_cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험금비용구분코드',
  `cvr_tpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보유형명',
  `rtro_pstrp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수재경유처구분코드',
  `lq_dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청산상대처코드',
  `py_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급방법코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `ovse_py_bknm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외지급은행명',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `paym_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취은행코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `xcrt` decimal(12,6) DEFAULT NULL COMMENT '환율',
  `pyamt` decimal(17,2) NOT NULL COMMENT '지급금액',
  `woncr_cv_pyamt` decimal(17,2) NOT NULL COMMENT '원화환산지급금액',
  `remn_xi_amt` decimal(17,2) NOT NULL COMMENT '잔여추산금액',
  `rtro_pyamt` decimal(17,2) NOT NULL COMMENT '수재지급금액',
  `rtro_woncr_cv_pyamt` decimal(17,2) NOT NULL COMMENT '수재원화환산지급금액',
  `remn_xi_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔여추산화폐코드',
  `xi_xcrt` decimal(12,6) DEFAULT NULL COMMENT '추산환율',
  `rtro_remn_xi_amt` decimal(17,2) NOT NULL COMMENT '수재잔여추산금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_rtro_xi_py_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`cc_seq`,`xi_py_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수재추산지급상세';
