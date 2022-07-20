--
-- Table structure for table `ccm_cidps_prop_nv`
--

DROP TABLE IF EXISTS `ccm_cidps_prop_nv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cidps_prop_nv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `prop_nv_seqno` decimal(3,0) NOT NULL COMMENT '재산조사순번',
  `nvdt` date NOT NULL COMMENT '조사일자',
  `prop_nv_cn` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '재산조사내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cidps_prop_nv_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`cidps_rank`,`prop_nv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피구상자재산조사';
