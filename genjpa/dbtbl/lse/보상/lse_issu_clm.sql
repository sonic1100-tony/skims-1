--
-- Table structure for table `lse_issu_clm`
--

DROP TABLE IF EXISTS `lse_issu_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_issu_clm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `chrps_cnf_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자확인여부',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `chrps_cnf_dthms` datetime DEFAULT NULL COMMENT '담당자확인일시',
  `prvmn_cnfyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자확인여부',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `prvmn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자기관코드',
  `prvmn_cnf_dthms` datetime DEFAULT NULL COMMENT '결재자확인일시',
  `md_udwr_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사자확인여부',
  `md_udwr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사자직원번호',
  `md_udwr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사자기관코드',
  `md_udwr_cnf_dthms` datetime DEFAULT NULL COMMENT '의료심사자확인일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_issu_clm_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='문제사고';
