--
-- Table structure for table `ccm_ltrm_gn_dt_spc`
--

DROP TABLE IF EXISTS `ccm_ltrm_gn_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ltrm_gn_dt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `dm_rd_rptg_seqno` decimal(3,0) NOT NULL COMMENT '손해감소보고서순번',
  `ltrm_gn_dtspc_seqno` decimal(3,0) NOT NULL COMMENT '장기일반상세내역순번',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험회사코드',
  `siu_dmge_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU피해유형코드',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `gn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보장내용',
  `dm_rdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손해감소금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ltrm_gn_dt_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`ins_imcd`,`dm_rd_rptg_seqno`,`ltrm_gn_dtspc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기일반상세내역';
