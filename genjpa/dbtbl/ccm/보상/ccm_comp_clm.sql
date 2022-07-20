--
-- Table structure for table `ccm_comp_clm`
--

DROP TABLE IF EXISTS `ccm_comp_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_comp_clm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `rcp_nv_crr_seqno` decimal(3,0) NOT NULL COMMENT '접수조사이력순번',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `comp_clmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '중대사고코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `self_chamt_dpst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자기부담금액예치여부',
  `comp_clm_nus_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중대사고미사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_comp_clm_00` (`rcp_yymm`,`rcp_nv_seqno`,`rcp_nv_crr_seqno`,`ap_nd_dthms`,`comp_clmcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='중대사고';
