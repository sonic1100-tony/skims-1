--
-- Table structure for table `fin_act_nm_inq`
--

DROP TABLE IF EXISTS `fin_act_nm_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_act_nm_inq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `mthr_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모계좌번호',
  `scrno` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비밀번호',
  `dbl_pwd` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이중암호',
  `tfamt` decimal(15,0) DEFAULT NULL COMMENT '이체금액',
  `inq_act_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회계좌은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `cm` decimal(15,0) DEFAULT NULL COMMENT '수수료',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `dpsr_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주주민번호',
  `bk_tmmno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행전문번호',
  `cap_mrk_inr_law_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자본시장통합법적용구분코드',
  `cmnpt_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공통부은행코드',
  `ndvdp_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개별부은행코드',
  `rsno_chek_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호체크구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_act_nm_inq_00` (`upls_tlm_tsdt`,`upls_tlm_ts_hms`,`upls_tmmno`,`upls_tlmcd`,`upls_bsns_flgcd`),
  KEY `idx_fin_act_nm_inq_01` (`actno`,`ndvdp_bkcd`,`dpsr_rsno`)
) ENGINE=InnoDB AUTO_INCREMENT=26038 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계좌성명조회';
