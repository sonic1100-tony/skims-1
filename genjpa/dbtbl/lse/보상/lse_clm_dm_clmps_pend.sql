--
-- Table structure for table `lse_clm_dm_clmps_pend`
--

DROP TABLE IF EXISTS `lse_clm_dm_clmps_pend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_dm_clmps_pend` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clmps_pend_seqno` decimal(3,0) NOT NULL COMMENT '사고자미결순번',
  `lsetm_pend_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사미결사유코드',
  `lsetm_pend_dt_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '손사미결세부내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_dm_clmps_pend_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clmps_pend_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고청구사고자미결';
