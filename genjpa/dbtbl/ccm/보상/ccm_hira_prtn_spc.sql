--
-- Table structure for table `ccm_hira_prtn_spc`
--

DROP TABLE IF EXISTS `ccm_hira_prtn_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_prtn_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `dlnbf_isno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '처방전발급번호',
  `dlnbf_sno` decimal(3,0) NOT NULL COMMENT '처방전일련번호',
  `line_no` decimal(4,0) NOT NULL COMMENT '라인번호',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료기관청구번호',
  `prtn_days` decimal(3,0) NOT NULL COMMENT '처방일수',
  `prtn_drgcd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '처방약품코드구분코드',
  `hira_prtn_drgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원처방약품코드',
  `hira_prtn_drgcd_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원처방약품코드명',
  `t1_mdct_qant` decimal(10,5) DEFAULT NULL COMMENT '1회투약수량',
  `dy1_dosa_ct` decimal(7,2) DEFAULT NULL COMMENT '1일투여횟수',
  `t_dosa_days` decimal(3,0) DEFAULT NULL COMMENT '총투여일수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_prtn_spc_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`dlnbf_isno`,`dlnbf_sno`,`line_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원처방내역';
