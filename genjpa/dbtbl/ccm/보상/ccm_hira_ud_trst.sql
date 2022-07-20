--
-- Table structure for table `ccm_hira_ud_trst`
--

DROP TABLE IF EXISTS `ccm_hira_ud_trst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_ud_trst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `hira_ud_dgre` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원심사차수',
  `line_no` decimal(4,0) NOT NULL COMMENT '라인번호',
  `hira_trst_orgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원수탁기관코드',
  `trst_org_pyamt` decimal(15,0) DEFAULT NULL COMMENT '수탁기관지급금액',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료기관청구번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_ud_trst_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`hira_ud_dgre`,`line_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원심사위탁';
