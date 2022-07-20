--
-- Table structure for table `fin_dl_rq_bj`
--

DROP TABLE IF EXISTS `fin_dl_rq_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dl_rq_bj` (
  `ins_crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '보험계약번호',
  `lpnt_dl_rq_bjpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래요청대상코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `lpnt_admno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트관리번호',
  `lpnt_admno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트관리번호구분코드',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `ins_seq` decimal(5,0) DEFAULT NULL COMMENT '보험회차',
  `ctm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객성명',
  `pnt_ctmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포인트고객번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `lpnt_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트채널코드',
  `dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자직원번호',
  `lpnt_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트업무구분코드',
  `rq_pnt_num` decimal(15,0) DEFAULT NULL COMMENT '요청포인트수',
  `cash_slamt` decimal(17,2) DEFAULT NULL COMMENT '현금매출금액',
  `lott_crd_slamt` decimal(17,2) DEFAULT NULL COMMENT '롯데카드매출금액',
  `crdcr_slamt` decimal(17,2) DEFAULT NULL COMMENT '신용카드매출금액',
  `pnt_us_slamt` decimal(17,2) DEFAULT NULL COMMENT '포인트사용매출금액',
  `lpnt_dl_rq_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트거래요청처리구분코드',
  `lpnt_dl_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트거래요청구분코드',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ins_crano`,`lpnt_dl_rq_bjpcd`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래요청대상';
