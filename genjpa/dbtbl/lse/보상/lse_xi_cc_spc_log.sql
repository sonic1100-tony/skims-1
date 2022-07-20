--
-- Table structure for table `lse_xi_cc_spc_log`
--

DROP TABLE IF EXISTS `lse_xi_cc_spc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xi_cc_spc_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `cc_dthms` datetime NOT NULL COMMENT '산출일시',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `lsetm_stf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사직원구분코드',
  `remn_xi_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔여추산화폐코드',
  `remn_xi_amt` decimal(17,2) NOT NULL COMMENT '잔여추산금액',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `cvr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보상태코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담보코드',
  `self_chamt` decimal(15,0) NOT NULL COMMENT '자기부담금액',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `isamt_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입금액화폐코드',
  `woncr_cv_isamt` decimal(15,0) NOT NULL COMMENT '원화환산가입금액',
  `cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '담보순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_xi_cc_spc_log_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`cc_dthms`,`xi_py_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='추산산출내역로그';
