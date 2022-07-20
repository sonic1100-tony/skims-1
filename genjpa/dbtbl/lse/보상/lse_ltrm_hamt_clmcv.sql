--
-- Table structure for table `lse_ltrm_hamt_clmcv`
--

DROP TABLE IF EXISTS `lse_ltrm_hamt_clmcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_hamt_clmcv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `emamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액',
  `xp_py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '예상지급보험금액',
  `dm_rde_amt` decimal(17,2) DEFAULT NULL COMMENT '손해절감금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_hamt_clmcv_00` (`rcp_yymm`,`rcp_nv_seqno`,`ch_seqno`,`plyno`,`cr_cvrcd`,`clm_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기고액사고담보';
