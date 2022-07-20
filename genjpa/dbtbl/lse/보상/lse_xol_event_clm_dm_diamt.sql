--
-- Table structure for table `lse_xol_event_clm_dm_diamt`
--

DROP TABLE IF EXISTS `lse_xol_event_clm_dm_diamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xol_event_clm_dm_diamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xol_event_clm_dmno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL이벤트사고청구번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `clm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '사고접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_reno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고출재번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `ps_pyamt` decimal(17,2) DEFAULT NULL COMMENT '보유지급금액',
  `ps_remn_xiamt` decimal(17,2) DEFAULT NULL COMMENT '보유잔여추산금액',
  `ps_dmamt` decimal(17,2) DEFAULT NULL COMMENT '보유손해금액',
  `ibnf_spls_amt` decimal(17,2) DEFAULT NULL COMMENT '보험금초과금액',
  `os_spls_amt` decimal(17,2) DEFAULT NULL COMMENT 'OS초과금액',
  `ibnf_spls_diamt` decimal(17,2) DEFAULT NULL COMMENT '보험금초과차액',
  `os_spls_diamt` decimal(17,2) DEFAULT NULL COMMENT 'OS초과차액',
  `evnt_uiamt` decimal(17,2) DEFAULT NULL COMMENT 'EVENT공제금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_xol_event_clm_dm_diamt_00` (`xol_event_clm_dmno`,`plyno`,`clm_rcp_yymm`,`rcp_nv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='XOL이벤트사고청구차액';
