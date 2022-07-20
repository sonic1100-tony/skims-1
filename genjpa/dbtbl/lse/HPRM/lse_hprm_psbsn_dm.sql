--
-- Table structure for table `lse_hprm_psbsn_dm`
--

DROP TABLE IF EXISTS `lse_hprm_psbsn_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_psbsn_dm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `lb_dt_seqno` decimal(3,0) NOT NULL COMMENT '배상상세순번',
  `psbsn_dm_seqno` decimal(3,0) NOT NULL COMMENT '휴업손해순번',
  `psbsn_dm_yyct` decimal(5,0) DEFAULT NULL COMMENT '휴업손해년수',
  `psbsn_dm_mc` decimal(5,0) DEFAULT NULL COMMENT '휴업손해월수',
  `psbsn_dm_days` decimal(5,0) DEFAULT NULL COMMENT '휴업손해일수',
  `psbsn_dmamt` decimal(17,2) NOT NULL COMMENT '휴업손해금액',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_wag_amt` decimal(15,0) DEFAULT NULL COMMENT '적용공임금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_psbsn_dm_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`lb_dt_seqno`,`psbsn_dm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM휴업손해';
