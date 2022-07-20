--
-- Table structure for table `fin_epay_stm_rq`
--

DROP TABLE IF EXISTS `fin_epay_stm_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_epay_stm_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `epay_rq_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '페이요청일련번호',
  `epay_rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '페이요청구분코드',
  `epay_stm_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이결제번호',
  `epay_peri_stm_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이정기결제번호',
  `epay_rq_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이요청번호',
  `jns_ord_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점주문번호',
  `jns_ctmno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점고객번호',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `gd_qant` decimal(7,0) DEFAULT NULL COMMENT '상품수량',
  `gdamt` decimal(15,0) DEFAULT NULL COMMENT '상품금액',
  `gd_frtx_amt` decimal(15,0) DEFAULT NULL COMMENT '상품비과세금액',
  `gd_adtx_amt` decimal(15,0) DEFAULT NULL COMMENT '상품부가세금액',
  `epay_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이구분코드',
  `at_mnt` decimal(3,0) DEFAULT NULL COMMENT '할부개월',
  `ccl_amt` decimal(15,0) DEFAULT NULL COMMENT '취소금액',
  `ccl_frtx_amt` decimal(15,0) DEFAULT NULL COMMENT '취소비과세금액',
  `ccl_adtx_amt` decimal(15,0) DEFAULT NULL COMMENT '취소부가세금액',
  `epay_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이오류코드',
  `nml_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_fin_epay_stm_rq_00` (`reqdt`,`epay_rq_sno`),
  KEY `idx_fin_epay_stm_rq_11` (`epay_stm_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7016 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='페이결제요청';
