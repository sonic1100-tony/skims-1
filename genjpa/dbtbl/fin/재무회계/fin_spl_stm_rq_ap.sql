--
-- Table structure for table `fin_spl_stm_rq_ap`
--

DROP TABLE IF EXISTS `fin_spl_stm_rq_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_spl_stm_rq_ap` (
  `spl_prv_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '간편결재회사코드',
  `rq_iptdt` date NOT NULL COMMENT '요청입력일자',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `spl_prv_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재결과코드',
  `spl_prv_rst_msg_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재결과메시지내용',
  `spl_prv_dlno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재거래번호',
  `jns_ord_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점주문번호',
  `spl_prv_jns_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재가맹점ID',
  `stm_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제수단코드',
  `spl_prv_gdamt` decimal(15,0) DEFAULT NULL COMMENT '간편결재상품금액',
  `spl_prv_event_dcamt` decimal(15,0) DEFAULT NULL COMMENT '간편결재이벤트할인금액',
  `spl_prv_cmn_apdt` date DEFAULT NULL COMMENT '간편결재공통승인일자',
  `spl_prv_cmn_apno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재공통승인번호',
  `crd_is_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드발급회사코드',
  `crd_byco_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드매입사코드',
  `crd_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드명',
  `at_mntct` decimal(3,0) DEFAULT NULL COMMENT '할부개월수',
  `nnt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무이자여부',
  `chek_crd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '체크카드여부',
  `crd_binno` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드BIN번호',
  `crdco_pnt_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드사포인트사용여부',
  `part_ccl_avyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부분취소가능여부',
  `event_part_ccl_avyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이벤트부분취소가능여부',
  `spl_prv_ccl_errcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재취소에러코드',
  `spl_prv_ccl_err_msg_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재취소에러메시지내용',
  `spl_prv_ccl_amt` decimal(15,0) DEFAULT NULL COMMENT '간편결재취소금액',
  `ccldt` date DEFAULT NULL COMMENT '취소일자',
  `ccl_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소시간',
  `spl_prv_ccl_prv_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재취소결재수단코드',
  `spl_prv_ccl_jns_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재취소가맹점ID',
  `spl_prv_ccl_dl_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재취소거래ID',
  `spl_prv_ccl_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재취소거래상태코드',
  `o2_part_ccl_avyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차부분취소가능여부',
  `spl_prv_ccl_no` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재취소번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`spl_prv_cmpcd`,`rq_iptdt`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='간편결제요청승인';
