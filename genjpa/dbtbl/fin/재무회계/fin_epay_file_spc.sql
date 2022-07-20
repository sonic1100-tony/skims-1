--
-- Table structure for table `fin_epay_file_spc`
--

DROP TABLE IF EXISTS `fin_epay_file_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_epay_file_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `file_typ_nm` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '파일타입명',
  `dat_typ_nm` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '데이터타입명',
  `strdt` date DEFAULT NULL COMMENT '시작일자',
  `nddt` date DEFAULT NULL COMMENT '종료일자',
  `tct` decimal(10,0) DEFAULT NULL COMMENT '총건수',
  `epay_stm_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이결제번호',
  `epay_rq_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이요청번호',
  `jns_ord_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점주문번호',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `amt` decimal(17,2) DEFAULT NULL COMMENT '금액',
  `pnt_amt` decimal(15,0) DEFAULT NULL COMMENT '포인트금액',
  `dcamt` decimal(15,0) DEFAULT NULL COMMENT '할인금액',
  `feamt` decimal(15,0) DEFAULT NULL COMMENT '수수료금액',
  `cm_ad_txamt` decimal(15,0) DEFAULT NULL COMMENT '수수료부가세금액',
  `stm_mn_nm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제수단명',
  `stm_typ_nm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제타입명',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `crd_is_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드발급회사코드',
  `crd_byco_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드매입사코드',
  `kko_epay_is_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오페이발급회사코드',
  `kko_epay_byco_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오페이매입사코드',
  `crd_apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드승인번호',
  `at_mnt` decimal(3,0) DEFAULT NULL COMMENT '할부개월',
  `dp_pramt` decimal(15,0) DEFAULT NULL COMMENT '입금예정금액',
  `dp_prdt` date DEFAULT NULL COMMENT '입금예정일자',
  `dpamt` decimal(15,0) DEFAULT NULL COMMENT '입금금액',
  `dp_ct` decimal(10,0) DEFAULT NULL COMMENT '입금건수',
  `dt_st` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세상태',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='페이파일내역';
