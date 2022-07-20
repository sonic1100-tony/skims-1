--
-- Table structure for table `ccm_hira_dmur_dcsn`
--

DROP TABLE IF EXISTS `ccm_hira_dmur_dcsn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_dmur_dcsn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `dmur_dgre` decimal(3,0) NOT NULL COMMENT '이의제기차수',
  `cmp_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '보상직원번호',
  `ud_revs_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '심사역직원번호',
  `dmur_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이의제기상태코드',
  `ud_revs_dvdt` date NOT NULL COMMENT '심사역배당일자',
  `dmur_sno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이의제기일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_dmur_dcsn_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`dmur_dgre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원이의제기판단';
