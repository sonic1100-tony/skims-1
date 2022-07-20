--
-- Table structure for table `fin_upls_bsns_nd_tlm`
--

DROP TABLE IF EXISTS `fin_upls_bsns_nd_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_upls_bsns_nd_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `dp_list_ntct` decimal(6,0) DEFAULT NULL COMMENT '예금명세통지건수',
  `dp_list_nt_amt` decimal(15,0) DEFAULT NULL COMMENT '예금명세통지금액',
  `keep_bll_ntct` decimal(6,0) DEFAULT NULL COMMENT '보관어음통지건수',
  `keep_bll_nt_amt` decimal(15,0) DEFAULT NULL COMMENT '보관어음통지금액',
  `tf_tct` decimal(7,0) DEFAULT NULL COMMENT '이체총건수',
  `tf_tamt` decimal(15,0) DEFAULT NULL COMMENT '이체총금액',
  `rvbk_py_tfct` decimal(6,0) DEFAULT NULL COMMENT '당행지급이체건수',
  `rvbk_py_tfamt` decimal(15,0) DEFAULT NULL COMMENT '당행지급이체금액',
  `otbk_tfct` decimal(7,0) DEFAULT NULL COMMENT '타행이체건수',
  `otbk_tfamt` decimal(15,0) DEFAULT NULL COMMENT '타행이체금액',
  `otbk_tf_impct` decimal(7,0) DEFAULT NULL COMMENT '타행이체불능건수',
  `otbk_tf_imp_amt` decimal(15,0) DEFAULT NULL COMMENT '타행이체불능금액',
  `rvbk_rv_tfct` decimal(7,0) DEFAULT NULL COMMENT '당행수납이체건수',
  `rvbk_rv_tfamt` decimal(15,0) DEFAULT NULL COMMENT '당행수납이체금액',
  `upls_bk_tmmno` decimal(6,0) DEFAULT NULL COMMENT '유플러스은행전문번호',
  `cap_mrk_inr_law_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자본시장통합법적용구분코드',
  `cmnpt_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공통부은행코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_upls_bsns_nd_tlm_00` (`upls_tlm_tsdt`,`upls_tlm_ts_hms`,`upls_tmmno`,`upls_tlmcd`,`upls_bsns_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유플러스업무종료전문';
