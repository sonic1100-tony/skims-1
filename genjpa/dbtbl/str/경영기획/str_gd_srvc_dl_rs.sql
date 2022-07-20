--
-- Table structure for table `str_gd_srvc_dl_rs`
--

DROP TABLE IF EXISTS `str_gd_srvc_dl_rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_gd_srvc_dl_rs` (
  `dl_crano` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래계약번호',
  `crmtt_dl_rule_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사항처리규정코드',
  `scr_idc_ordr` decimal(5,0) NOT NULL COMMENT '화면표시순서',
  `et_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dl_crano`,`crmtt_dl_rule_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품용역거래사유';
