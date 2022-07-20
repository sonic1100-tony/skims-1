--
-- Table structure for table `ccm_hira_ud_trmt_md`
--

DROP TABLE IF EXISTS `ccm_hira_ud_trmt_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_ud_trmt_md` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `hira_ud_dgre` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원심사차수',
  `trmt_md_seqno` decimal(3,0) NOT NULL COMMENT '진료조정순번',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료기관청구번호',
  `hira_trmt_md_lvlcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원진료조정레벨코드',
  `hira_trmt_litcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료항코드',
  `hira_trmt_sitcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료목코드',
  `hira_ud_md_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원심사조정사유코드',
  `ud_mdamt` decimal(15,0) DEFAULT NULL COMMENT '심사조정금액',
  `hira_md_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원조정구분코드',
  `et1_mdamt` decimal(15,0) DEFAULT NULL COMMENT '기타1조정금액',
  `et2_mdamt` decimal(15,0) DEFAULT NULL COMMENT '기타2조정금액',
  `drfe_mx_diamt_mdamt` decimal(15,0) DEFAULT NULL COMMENT '약제비상한차액조정금액',
  `hira_ud_imp_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원심사불능사유코드',
  `ud_imp_trpa_amt` decimal(15,0) DEFAULT NULL COMMENT '심사불능진료비금액',
  `ud_imp_pt_pyamt` decimal(15,0) DEFAULT NULL COMMENT '심사불능환자납부금액',
  `ud_imp_emamt` decimal(15,0) DEFAULT NULL COMMENT '심사불능청구금액',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_ud_trmt_md_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`hira_ud_dgre`,`trmt_md_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원심사진료조정';
