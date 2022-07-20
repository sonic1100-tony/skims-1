--
-- Table structure for table `lse_hdmgt_fp_clm_rcp`
--

DROP TABLE IF EXISTS `lse_hdmgt_fp_clm_rcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hdmgt_fp_clm_rcp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hdmgt_fp_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '고손해율FP직원번호',
  `rcp_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수승인구분코드',
  `rcp_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수승인여부',
  `rcp_apdt` date DEFAULT NULL COMMENT '접수승인일자',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `cnf_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hdmgt_fp_clm_rcp_00` (`rcp_yymm`,`rcp_nv_seqno`,`hdmgt_fp_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고손해율FP사고접수';
