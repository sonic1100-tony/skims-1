--
-- Table structure for table `lse_xol_event_clm_dm_diamt_dt`
--

DROP TABLE IF EXISTS `lse_xol_event_clm_dm_diamt_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xol_event_clm_dm_diamt_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xol_event_clm_dmno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL이벤트사고청구번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `clm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '사고접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `nprp_lyrno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '비비례LAYER번호',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `ibnf_spls_amt` decimal(17,2) DEFAULT NULL COMMENT '보험금초과금액',
  `os_spls_amt` decimal(17,2) DEFAULT NULL COMMENT 'OS초과금액',
  `ibnf_spls_diamt` decimal(17,2) DEFAULT NULL COMMENT '보험금초과차액',
  `os_spls_diamt` decimal(17,2) DEFAULT NULL COMMENT 'OS초과차액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_xol_event_clm_dm_diamt_dt_00` (`xol_event_clm_dmno`,`plyno`,`clm_rcp_yymm`,`rcp_nv_seqno`,`nprp_lyrno`,`brk_rincd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='XOL이벤트사고청구차액상세';
