--
-- Table structure for table `fin_br_fd_dot`
--

DROP TABLE IF EXISTS `fin_br_fd_dot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_br_fd_dot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `cash_ap_smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '현금승인합계금액',
  `tf_lm_ap_smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체한도승인합계금액',
  `cash_py_smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '현금지급합계금액',
  `tf_lm_py_smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체한도지급합계금액',
  `tf_sbamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체대기금액',
  `hdof_rramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '본사귀속금액',
  `ps_csamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보유현금금액',
  `ps_tf_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보유이체한도금액',
  `org_dfp_cls_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기관예금상대처마감잔액',
  `cash_rdmny_cls_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '현금시재마감여부',
  `orgdp_dltfp_cls_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '기관예금상대처마감여부',
  `cls_rq_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감요청기관코드',
  `cls_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감요청직원번호',
  `cls_ap_dthms` datetime DEFAULT NULL COMMENT '마감승인일시',
  `cls_ap_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감승인기관코드',
  `cls_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감승인직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_br_fd_dot_00` (`stdt`,`orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=1877 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지점자금일계';
