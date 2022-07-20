--
-- Table structure for table `lse_clm_nv_cs_tx_spc`
--

DROP TABLE IF EXISTS `lse_clm_nv_cs_tx_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_nv_cs_tx_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `cs_spc_seqno` decimal(3,0) NOT NULL COMMENT '비용내역순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비용구분코드',
  `cs_pcamt` decimal(15,0) NOT NULL COMMENT '비용원금',
  `cs_ixamt` decimal(15,0) NOT NULL COMMENT '비용소득세액',
  `cs_rxamt` decimal(15,0) NOT NULL COMMENT '비용주민세액',
  `cs_uramt` decimal(15,0) NOT NULL COMMENT '비용발생금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_nv_cs_tx_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`cs_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사비용세금내역';
