--
-- Table structure for table `fin_upls_cmnpt_tlm`
--

DROP TABLE IF EXISTS `fin_upls_cmnpt_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_upls_cmnpt_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `upls_tlm_bkcd` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문은행코드',
  `upls_tlm_dsccd` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문식별코드',
  `upls_tlm_srv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문서비스구분코드',
  `upls_tlm_trrv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문송수신구분코드',
  `upls_tlm_sndr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문송신자ID',
  `upls_tlm_rcvpt_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문수신자ID',
  `upls_tlm_msg_id` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문메시지ID',
  `upls_tlm_ctm_cd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문고객코드',
  `upls_tlm_anscd` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문응답코드',
  `vnccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'VAN사코드',
  `tlm_unt_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문단위업무구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_upls_cmnpt_tlm_00` (`upls_tlm_tsdt`,`upls_tlm_ts_hms`,`upls_tmmno`,`upls_tlmcd`,`upls_bsns_flgcd`,`upls_tlm_bkcd`),
  KEY `idx_fin_upls_cmnpt_tlm_01` (`upls_tlm_tsdt`,`upls_tmmno`),
  KEY `idx_fin_upls_cmnpt_tlm_10` (`upls_tlm_bkcd`,`tlm_unt_bsns_flgcd`,`upls_tlm_tsdt`)
) ENGINE=InnoDB AUTO_INCREMENT=242655 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유플러스공통부전문';
