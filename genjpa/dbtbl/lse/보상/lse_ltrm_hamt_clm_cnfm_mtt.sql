--
-- Table structure for table `lse_ltrm_hamt_clm_cnfm_mtt`
--

DROP TABLE IF EXISTS `lse_ltrm_hamt_clm_cnfm_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_hamt_clm_cnfm_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `lsetm_notcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사적요코드',
  `nots_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_hamt_clm_cnfm_mtt_00` (`rcp_yymm`,`rcp_nv_seqno`,`ch_seqno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기고액사고확인자사항';
