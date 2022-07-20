--
-- Table structure for table `lse_hprm_rlt_vsl`
--

DROP TABLE IF EXISTS `lse_hprm_rlt_vsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_rlt_vsl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `rlt_vsl_seqno` decimal(3,0) NOT NULL COMMENT '상대선박순번',
  `rlt_vsl_insnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상대선박보험사명',
  `dclnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '선명',
  `shpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '선주명',
  `vscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선종코드',
  `vsmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선질코드',
  `ttnct` decimal(13,2) DEFAULT NULL COMMENT '총톤수',
  `ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가코드',
  `vsgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선급코드',
  `csrdt` date DEFAULT NULL COMMENT '건조일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_rlt_vsl_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`rlt_vsl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM상대선박';
