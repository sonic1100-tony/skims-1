--
-- Table structure for table `ccm_inssw_sprpt_relcc_insm`
--

DROP TABLE IF EXISTS `ccm_inssw_sprpt_relcc_insm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_inssw_sprpt_relcc_insm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `relcc_seqno` decimal(3,0) NOT NULL COMMENT '관련자순번',
  `sp_rpt_ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인지보고보험종목코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_inssw_sprpt_relcc_insm_00` (`rcp_yymm`,`rcp_nv_seqno`,`relcc_seqno`,`sp_rpt_ins_imcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험사기인지보고관련자보험종목';
