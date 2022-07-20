--
-- Table structure for table `lse_xi_py_spc_mdcs_dtal`
--

DROP TABLE IF EXISTS `lse_xi_py_spc_mdcs_dtal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xi_py_spc_mdcs_dtal` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `slr_pyamt` decimal(15,0) NOT NULL COMMENT '급여지급금액',
  `nsly_pyamt` decimal(17,2) NOT NULL COMMENT '비급여지급금액',
  `woncv_slr_pyamt` decimal(15,0) NOT NULL COMMENT '원화환산급여지급금액',
  `woncv_nsly_pyamt` decimal(15,0) NOT NULL COMMENT '원화환산비급여지급금액',
  `slr_remn_xiamt` decimal(17,2) NOT NULL COMMENT '급여잔여추산금액',
  `nsly_remn_xiamt` decimal(17,2) NOT NULL COMMENT '비급여잔여추산금액',
  `dm_rdamt` decimal(15,0) NOT NULL COMMENT '손해감소금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_xi_py_spc_mdcs_dtal_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='추산지급내역의료비세분화';
