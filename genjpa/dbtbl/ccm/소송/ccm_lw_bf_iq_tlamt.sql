--
-- Table structure for table `ccm_lw_bf_iq_tlamt`
--

DROP TABLE IF EXISTS `ccm_lw_bf_iq_tlamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lw_bf_iq_tlamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `iq_rq_seqno` decimal(3,0) NOT NULL COMMENT '심의신청순번',
  `iq_cvr_seqno` decimal(3,0) NOT NULL COMMENT '심의담보순번',
  `trbl_cvrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁담보명',
  `trbl_vlamt` decimal(15,0) DEFAULT NULL COMMENT '분쟁가액',
  `dm_ibamt` decimal(15,0) DEFAULT NULL COMMENT '청구보험금액',
  `py_xp_ibamt` decimal(15,0) DEFAULT NULL COMMENT '지급예상보험금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lw_bf_iq_tlamt_00` (`rcp_yymm`,`rcp_nv_seqno`,`iq_rq_seqno`,`iq_cvr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송전심의분쟁금액';
