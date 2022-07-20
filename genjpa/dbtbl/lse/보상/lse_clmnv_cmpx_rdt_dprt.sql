--
-- Table structure for table `lse_clmnv_cmpx_rdt_dprt`
--

DROP TABLE IF EXISTS `lse_clmnv_cmpx_rdt_dprt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_cmpx_rdt_dprt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `clm_nvgd_seqno` decimal(3,0) NOT NULL COMMENT '사고조사물순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `lsetm_bld_strcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사건물구조코드',
  `rofcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지붕코드',
  `rnd_yy_rdt_dprt` decimal(12,6) DEFAULT NULL COMMENT '경과년감가상각율',
  `nwcon_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신축년월',
  `are` decimal(17,2) DEFAULT NULL COMMENT '면적',
  `rnd_yyct` decimal(5,0) DEFAULT NULL COMMENT '경과년수',
  `rnd_mc` decimal(5,0) DEFAULT NULL COMMENT '경과월수',
  `t_rdt_dprt` decimal(12,6) DEFAULT NULL COMMENT '총감가상각율',
  `wgt_are` decimal(17,2) DEFAULT NULL COMMENT '가중치면적',
  `bld_ojccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물목적코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clmnv_cmpx_rdt_dprt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`clm_nvgd_seqno`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사복합감가상각율';
