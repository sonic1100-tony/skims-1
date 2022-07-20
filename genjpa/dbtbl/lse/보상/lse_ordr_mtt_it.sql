--
-- Table structure for table `lse_ordr_mtt_it`
--

DROP TABLE IF EXISTS `lse_ordr_mtt_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ordr_mtt_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ordr_mtt_seqno` decimal(5,0) NOT NULL COMMENT '지시사항순번',
  `lsetm_ordr_mttcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사지시사항코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ordr_mtt_it_00` (`rcp_yymm`,`rcp_nv_seqno`,`ordr_mtt_seqno`,`lsetm_ordr_mttcd`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지시사항항목';
