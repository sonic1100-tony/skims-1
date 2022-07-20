--
-- Table structure for table `ccm_dm_rd_rptg_dmge_tp`
--

DROP TABLE IF EXISTS `ccm_dm_rd_rptg_dmge_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm_rd_rptg_dmge_tp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `dm_rd_rptg_seqno` decimal(3,0) NOT NULL COMMENT '손해감소보고서순번',
  `siu_dmge_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU피해유형코드',
  `owcr_dma_foma_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자차국산외산구분코드',
  `dmgit_dma_foma_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해물국산외산구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dm_rd_rptg_dmge_tp_00` (`rcp_yymm`,`rcp_nv_seqno`,`ins_imcd`,`dm_rd_rptg_seqno`,`siu_dmge_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해감소보고서피해유형';
