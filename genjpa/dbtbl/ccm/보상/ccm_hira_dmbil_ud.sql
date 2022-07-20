--
-- Table structure for table `ccm_hira_dmbil_ud`
--

DROP TABLE IF EXISTS `ccm_hira_dmbil_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_dmbil_ud` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_ud_dgre` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원심사차수',
  `hira_form_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원서식구분코드',
  `rprdt` date NOT NULL COMMENT '통보일자',
  `hira_md_orgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원의료기관코드',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료기관청구번호',
  `trmt_trm_strdt` date DEFAULT NULL COMMENT '진료기간시작일자',
  `trmt_trm_nddt` date DEFAULT NULL COMMENT '진료기간종료일자',
  `ud_rst_rprnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사결과통보자명',
  `ud_chr_depnm` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사담당부서명',
  `ud_chrps_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사담당자성명',
  `ud_chrps_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사담당자전화번호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_dmbil_ud_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_ud_dgre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원청구서심사';
