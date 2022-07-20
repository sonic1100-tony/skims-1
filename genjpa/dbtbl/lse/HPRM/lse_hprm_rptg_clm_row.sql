--
-- Table structure for table `lse_hprm_rptg_clm_row`
--

DROP TABLE IF EXISTS `lse_hprm_rptg_clm_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_rptg_clm_row` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `crdt` date NOT NULL COMMENT '발생일자',
  `cr_spc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생내역',
  `cr_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생기관명',
  `dmnst_dacd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입증자료코드',
  `nv_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_rptg_clm_row_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM보고서사고경위';
