--
-- Table structure for table `lse_clm_relcc`
--

DROP TABLE IF EXISTS `lse_clm_relcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_relcc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `lsetm_clm_relcc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사사고관련자유형코드',
  `relcc_seqno` decimal(3,0) NOT NULL COMMENT '관련자순번',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_relcc_00` (`rcp_yymm`,`rcp_nv_seqno`,`lsetm_clm_relcc_tpcd`,`relcc_seqno`),
  KEY `idx_lse_clm_relcc_10` (`ctm_dscno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고관련자';
