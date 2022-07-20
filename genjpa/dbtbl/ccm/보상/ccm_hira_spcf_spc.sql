--
-- Table structure for table `ccm_hira_spcf_spc`
--

DROP TABLE IF EXISTS `ccm_hira_spcf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_spcf_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `spcf_spc_seqno` decimal(10,0) NOT NULL COMMENT '특정내역순번',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료기관청구번호',
  `spcf_spc_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정내역대상구분코드',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `dlnbf_isno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처방전발급번호',
  `dlnbf_sno` decimal(3,0) DEFAULT NULL COMMENT '처방전일련번호',
  `line_no` decimal(4,0) DEFAULT NULL COMMENT '라인번호',
  `hira_grt_seqno` decimal(2,0) DEFAULT NULL COMMENT '심평원부여순번',
  `hira_spcf_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원특정내역구분코드',
  `spcf_spc` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특정내역',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원특정내역';
