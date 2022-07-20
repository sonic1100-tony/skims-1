--
-- Table structure for table `fin_l_pay_auth_rq`
--

DROP TABLE IF EXISTS `fin_l_pay_auth_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_l_pay_auth_rq` (
  `spl_prv_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '간편결재회사코드',
  `rq_iptdt` date NOT NULL COMMENT '요청입력일자',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `auth_rq_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증요청결과코드',
  `rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과구분코드',
  `auth_rq_rst_msg_cn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증요청결과메시지내용',
  `pay_prv_rq_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'PAY결재요청ID',
  `jns_dlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점거래번호',
  `mbrs_ctmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '멤버스고객번호',
  `spl_prv_adinf_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재추가정보값',
  `crd_is_jnscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드발급가맹점코드',
  `stm_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제수단코드',
  `fn_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융회사코드',
  `fn_cmpnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융회사명',
  `ctm_ps_crd_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객보유카드ID',
  `crd_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드명',
  `at_mntct` decimal(3,0) DEFAULT NULL COMMENT '할부개월수',
  `dl_auth_rqamt` decimal(15,0) DEFAULT NULL COMMENT '거래인증요청금액',
  `dl_auth_dthms` datetime DEFAULT NULL COMMENT '거래인증일시',
  `coop_crd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴카드구분코드',
  `fn_cmp_dl_auth_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융회사거래인증값',
  `o2_dl_auth_rst_cn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차거래인증결과내용',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `no1_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번항목명',
  `no2_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번항목명',
  `no3_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번항목명',
  `spl_prv_auth_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재인증값',
  `ap_autno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인인증번호',
  `vald_trm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유효기간',
  `apccl_ts_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인취소전송여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`spl_prv_cmpcd`,`rq_iptdt`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='LPAY인증요청';
