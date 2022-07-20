--
-- Table structure for table `fin_spl_stm_navpay_rq_ap`
--

DROP TABLE IF EXISTS `fin_spl_stm_navpay_rq_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_spl_stm_navpay_rq_ap` (
  `spl_prv_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '간편결재회사코드',
  `rq_iptdt` date NOT NULL COMMENT '요청입력일자',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `spl_prv_crr_no` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재이력번호',
  `epay_stm_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이결제번호',
  `spl_prv_key` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재KEY',
  `spl_prv_usr_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재사용자KEY',
  `spl_prv_ap_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재승인유형코드',
  `ccl_cplyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소완료여부',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_smamt` decimal(15,0) DEFAULT NULL COMMENT '승인합계금액',
  `apamt` decimal(15,0) DEFAULT NULL COMMENT '승인금액',
  `dl_pnt_num` decimal(15,0) DEFAULT NULL COMMENT '거래포인트수',
  `spl_prv_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편결재수단코드',
  `crd_is_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드발급회사코드',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인번호',
  `at_mntct` decimal(3,0) DEFAULT NULL COMMENT '할부개월수',
  `prv_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `xc_pramt` decimal(15,0) DEFAULT NULL COMMENT '정산예정금액',
  `stm_feamt` decimal(15,0) DEFAULT NULL COMMENT '결제수수료금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`spl_prv_cmpcd`,`rq_iptdt`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='간편결제네이버페이요청승인';
