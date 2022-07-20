--
-- Table structure for table `fin_rv_etdl_rq_spc`
--

DROP TABLE IF EXISTS `fin_rv_etdl_rq_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rv_etdl_rq_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rv_sbno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '수납대기번호',
  `rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요청구분코드',
  `apprs_seqno` decimal(3,0) NOT NULL COMMENT '승인자순번',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '승인직원번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_retn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인반려직원번호',
  `ap_retn_dt` date DEFAULT NULL COMMENT '승인반려일자',
  `rq_ap_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요청승인상태코드',
  `et_dl_reqno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '기타처리요청번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_rv_etdl_rq_spc_00` (`rv_sbno`,`rq_flgcd`,`apprs_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수납기타처리요청내역';
