--
-- Table structure for table `ccm_rpair_netg`
--

DROP TABLE IF EXISTS `ccm_rpair_netg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rpair_netg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `rpair_netg_crr_seqno` decimal(5,0) NOT NULL COMMENT '수리미입고이력순번',
  `rpair_netg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리미입고여부',
  `dmgnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해물명',
  `inp_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력사유',
  `et_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타사유',
  `ctm_ntc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객안내여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_rpair_netg_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`rpair_netg_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수리미입고';
