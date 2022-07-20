--
-- Table structure for table `lse_clm_cvr_nv_cs_spc`
--

DROP TABLE IF EXISTS `lse_clm_cvr_nv_cs_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_cvr_nv_cs_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `cs_spc_seqno` decimal(3,0) NOT NULL COMMENT '비용내역순번',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `xcrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '환율',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `cs_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '비용금액',
  `woncr_cv_csamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원화환산비용금액',
  `remn_xi_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔여추산화폐코드',
  `remn_xi_csamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '잔여추산비용금액',
  `ltrm_rert` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '장기출재율',
  `ltrm_re_nv_cs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기출재조사비용',
  `ltrm_re_remn_xiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기출재잔여추산금액',
  `ltins_pstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기보험경유처코드',
  `ltins_rins_ps` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기보험재보험자',
  `re_trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재특약구분코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담보코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_cvr_nv_cs_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`cs_spc_seqno`,`xi_py_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고담보조사비용내역';
