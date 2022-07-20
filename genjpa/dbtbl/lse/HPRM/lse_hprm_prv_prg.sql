--
-- Table structure for table `lse_hprm_prv_prg`
--

DROP TABLE IF EXISTS `lse_hprm_prv_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_prv_prg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prv_prg_seqno` decimal(3,0) NOT NULL COMMENT '결재진행순번',
  `prv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재유형코드',
  `prvdt` date NOT NULL COMMENT '결재일자',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `prv_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재상태구분코드',
  `retn_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반려사유코드',
  `prv_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_prv_prg_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`prv_seqno`,`prv_prg_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM결재진행';
