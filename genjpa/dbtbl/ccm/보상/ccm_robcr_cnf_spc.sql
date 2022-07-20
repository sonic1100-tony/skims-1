--
-- Table structure for table `ccm_robcr_cnf_spc`
--

DROP TABLE IF EXISTS `ccm_robcr_cnf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_robcr_cnf_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `robcr_cnf_spc_ordr` decimal(3,0) NOT NULL COMMENT '도난차량확인내역순차',
  `cr_ry_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '차량회수여부',
  `cnf_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인대상구분코드',
  `cnfdt` date DEFAULT NULL COMMENT '확인일자',
  `cnf_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_robcr_cnf_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`robcr_cnf_spc_ordr`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='도난차량확인내역';
