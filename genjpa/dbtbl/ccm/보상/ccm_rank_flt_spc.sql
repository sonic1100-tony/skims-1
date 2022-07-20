--
-- Table structure for table `ccm_rank_flt_spc`
--

DROP TABLE IF EXISTS `ccm_rank_flt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rank_flt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `flt_seqno` decimal(3,0) NOT NULL COMMENT '과실순번',
  `flt_spc_seqno` decimal(3,0) NOT NULL COMMENT '과실내역순번',
  `flt_ap_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '과실적용방법코드',
  `rancl_mdf_elmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서열별수정요소코드',
  `ba_flt_strvl` decimal(3,0) NOT NULL COMMENT '기본과실시작값',
  `ba_flt_ndvl` decimal(3,0) NOT NULL COMMENT '기본과실종료값',
  `ap_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '적용과실율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_rank_flt_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`flt_seqno`,`flt_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='서열별과실내역';
