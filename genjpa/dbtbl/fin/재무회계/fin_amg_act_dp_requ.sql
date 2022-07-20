--
-- Table structure for table `fin_amg_act_dp_requ`
--

DROP TABLE IF EXISTS `fin_amg_act_dp_requ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_amg_act_dp_requ` (
  `deldt` date NOT NULL COMMENT '거래일자',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스업무구분코드',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문전송시간',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `dp_rqcl_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금의뢰자성명',
  `dp_rqamt` decimal(15,0) DEFAULT NULL COMMENT '입금의뢰금액',
  `dp_impr_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금불가사유코드',
  `dp_avamt1` decimal(15,0) DEFAULT NULL COMMENT '입금가능금액1',
  `dp_avamt2` decimal(15,0) DEFAULT NULL COMMENT '입금가능금액2',
  `dp_avamt3` decimal(15,0) DEFAULT NULL COMMENT '입금가능금액3',
  `dp_avamt4` decimal(15,0) DEFAULT NULL COMMENT '입금가능금액4',
  `amg_act_ctl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌통제여부',
  `crtdd_dp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당일입금여부',
  `dh_usr_no` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급사용인번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`deldt`,`bkcd`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가상계좌입금의뢰';
