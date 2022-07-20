--
-- Table structure for table `fin_sms_ts_rq_tlm`
--

DROP TABLE IF EXISTS `fin_sms_ts_rq_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_sms_ts_rq_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `ts_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송번호',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `rcvpt_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신자전화번호',
  `dpcsr_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발신자전화번호',
  `tsdt` date DEFAULT NULL COMMENT '전송일자',
  `ts_msg_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송메시지내용',
  `cap_mrk_inr_law_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자본시장통합법적용구분코드',
  `cmnpt_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공통부은행코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_sms_ts_rq_tlm_00` (`upls_tlm_tsdt`,`upls_tlm_ts_hms`,`upls_tmmno`,`upls_tlmcd`,`upls_bsns_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SMS전송요구전문';
