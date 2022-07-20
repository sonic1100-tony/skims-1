--
-- Table structure for table `lse_clmnv_nrdps_st_dgn_temp`
--

DROP TABLE IF EXISTS `lse_clmnv_nrdps_st_dgn_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_nrdps_st_dgn_temp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료구분코드',
  `trmt_spc_seqno` decimal(5,0) NOT NULL COMMENT '진료내역순번',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) NOT NULL COMMENT '진단코드일련번호',
  `dgncd_spc_seqno` decimal(5,0) DEFAULT NULL COMMENT '진단코드내역순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clmnv_nrdps_st_dgn_00` (`ctm_dscno`,`trmt_flgcd`,`trmt_spc_seqno`,`dgncd`,`dgncd_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사피보험자기준진단';
