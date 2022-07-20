--
-- Table structure for table `lse_clm_rcp_dm_ntc`
--

DROP TABLE IF EXISTS `lse_clm_rcp_dm_ntc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_rcp_dm_ntc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `rcp_crr_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '접수이력순번',
  `dm_ntc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손해안내구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_rcp_dm_ntc_00` (`rcp_yymm`,`rcp_nv_seqno`,`rcp_crr_seqno`,`dm_ntc_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고접수손해내용';
