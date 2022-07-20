--
-- Table structure for table `ccm_pln_mvo_cplt_rpt_rst`
--

DROP TABLE IF EXISTS `ccm_pln_mvo_cplt_rpt_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_pln_mvo_cplt_rpt_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `pln_mvo_seqno` decimal(3,0) NOT NULL COMMENT '현장출동순번',
  `dl_rst_seqno` decimal(3,0) NOT NULL COMMENT '처리결과순번',
  `dl_rst_xpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '처리결과설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_pln_mvo_cplt_rpt_rst_00` (`rcp_yymm`,`rcp_nv_seqno`,`pln_mvo_seqno`,`dl_rst_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='현장출동완료보고결과';
