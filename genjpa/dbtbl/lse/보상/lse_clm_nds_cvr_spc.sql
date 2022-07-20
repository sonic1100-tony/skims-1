--
-- Table structure for table `lse_clm_nds_cvr_spc`
--

DROP TABLE IF EXISTS `lse_clm_nds_cvr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_nds_cvr_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `bacvg_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '기본담보여부',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `pyaf_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급후상태코드',
  `clm_nds_seqno` decimal(5,0) DEFAULT NULL COMMENT '사고배서순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_nds_cvr_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`plyno`,`clmps_seqno`,`cc_seq`,`xi_py_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고배서담보내역';
