--
-- Table structure for table `fin_tf_tot_tlm`
--

DROP TABLE IF EXISTS `fin_tf_tot_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_tf_tot_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `mthr_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모계좌번호',
  `tot_requ_tct` decimal(7,0) DEFAULT NULL COMMENT '집계의뢰총건수',
  `tot_requ_tamt` decimal(15,0) DEFAULT NULL COMMENT '집계의뢰총금액',
  `rvbk_tf_nmlct` decimal(7,0) DEFAULT NULL COMMENT '당행이체정상건수',
  `rvbk_tf_nmamt` decimal(15,0) DEFAULT NULL COMMENT '당행이체정상금액',
  `rvbk_tf_impct` decimal(7,0) DEFAULT NULL COMMENT '당행이체불능건수',
  `rvbk_tf_imp_amt` decimal(15,0) DEFAULT NULL COMMENT '당행이체불능금액',
  `otbk_tf_nmlct` decimal(7,0) DEFAULT NULL COMMENT '타행이체정상건수',
  `otbk_tf_nmamt` decimal(15,0) DEFAULT NULL COMMENT '타행이체정상금액',
  `otbk_tf_impct` decimal(7,0) DEFAULT NULL COMMENT '타행이체불능건수',
  `otbk_tf_imp_amt` decimal(15,0) DEFAULT NULL COMMENT '타행이체불능금액',
  `cm` decimal(15,0) DEFAULT NULL COMMENT '수수료',
  `rvbk_rv_nmlct` decimal(7,0) DEFAULT NULL COMMENT '당행수납정상건수',
  `rvbk_rv_nmamt` decimal(15,0) DEFAULT NULL COMMENT '당행수납정상금액',
  `rvbk_rv_impct` decimal(7,0) DEFAULT NULL COMMENT '당행수납불능건수',
  `rvbk_rv_imp_amt` decimal(15,0) DEFAULT NULL COMMENT '당행수납불능금액',
  `slc_domn_1_vl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택영역1값',
  `rv_domn_1_vl` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예비영역1값',
  `bk_tmmno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행전문번호',
  `cap_mrk_inr_law_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자본시장통합법적용구분코드',
  `cmnpt_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공통부은행코드',
  `rvbk_tf_part_rvct` decimal(7,0) DEFAULT NULL COMMENT '당행이체부분수납건수',
  `rvbk_tf_part_rvamt` decimal(15,0) DEFAULT NULL COMMENT '당행이체부분수납금액',
  `rvbk_tf_part_rv_ndamt` decimal(15,0) DEFAULT NULL COMMENT '당행이체부분수납미처리금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_tf_tot_tlm_00` (`upls_tlm_tsdt`,`upls_tlm_ts_hms`,`upls_tmmno`,`upls_tlmcd`,`upls_bsns_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='이체집계전문';
