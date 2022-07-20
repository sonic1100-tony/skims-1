--
-- Table structure for table `ccm_robcr_rv_spc`
--

DROP TABLE IF EXISTS `ccm_robcr_rv_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_robcr_rv_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dscv_rowcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발견경위코드',
  `ry_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '회수상태코드',
  `rydt` date NOT NULL COMMENT '회수일자',
  `ry_plc` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '회수장소',
  `keep_plcnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '보관장소명',
  `ry_cramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '회수차량가액',
  `ry_usdcr_mprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '회수중고차시세',
  `xp_rpcrg` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예상수리비',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_robcr_rv_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='도난차량회수내역';
