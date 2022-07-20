--
-- Table structure for table `fin_amg_act_tot_tlm`
--

DROP TABLE IF EXISTS `fin_amg_act_tot_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_amg_act_tot_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `deldt` date DEFAULT NULL COMMENT '거래일자',
  `inorg_ctm_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관고객코드',
  `dp_tct` decimal(15,0) DEFAULT NULL COMMENT '입금총건수',
  `dp_tamt` decimal(15,0) DEFAULT NULL COMMENT '입금총금액',
  `dp_cclct` decimal(15,0) DEFAULT NULL COMMENT '입금취소건수',
  `dp_ccl_amt` decimal(15,0) DEFAULT NULL COMMENT '입금취소금액',
  `wdrc_tct` decimal(15,0) DEFAULT NULL COMMENT '출금총건수',
  `wdrc_tamt` decimal(15,0) DEFAULT NULL COMMENT '출금총금액',
  `wdrc_cclct` decimal(15,0) DEFAULT NULL COMMENT '출금취소건수',
  `wdrc_ccl_amt` decimal(15,0) DEFAULT NULL COMMENT '출금취소금액',
  `cm_ct` decimal(15,0) DEFAULT NULL COMMENT '수수료건수',
  `feamt` decimal(15,0) DEFAULT NULL COMMENT '수수료금액',
  `amg_act_tot_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌집계구분코드',
  `org_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관지점코드',
  `bk_tmmno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행전문번호',
  `cmnpt_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공통부은행코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_amg_act_tot_tlm_00` (`upls_tlm_tsdt`,`upls_tlm_ts_hms`,`upls_tmmno`,`upls_tlmcd`,`upls_bsns_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가상계좌집계전문';
