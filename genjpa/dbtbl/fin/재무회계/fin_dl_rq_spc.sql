--
-- Table structure for table `fin_dl_rq_spc`
--

DROP TABLE IF EXISTS `fin_dl_rq_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dl_rq_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `deldt` date NOT NULL COMMENT '거래일자',
  `lpnt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래구분코드',
  `dlno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래번호',
  `ins_crano` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험계약번호',
  `lpnt_dl_rq_bjpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트거래요청대상코드',
  `lpnt_dl_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트거래형태코드',
  `sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일련번호',
  `lpnt_admno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트관리번호',
  `lpnt_admno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트관리번호구분코드',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `ins_seq` decimal(5,0) DEFAULT NULL COMMENT '보험회차',
  `ctm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객성명',
  `pnt_ctmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포인트고객번호',
  `dl_hms` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래시각',
  `coop_jnsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴가맹점번호',
  `lpnt_dl_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트거래사유코드',
  `slamt` decimal(15,0) DEFAULT NULL COMMENT '매출금액',
  `rq_pnt_num` decimal(15,0) DEFAULT NULL COMMENT '요청포인트수',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `lpnt_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트채널코드',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dh_offc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급점포기관코드',
  `dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자직원번호',
  `lpnt_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트업무구분코드',
  `ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소여부',
  `org_deldt` date DEFAULT NULL COMMENT '원거래일자',
  `org_dlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원거래번호',
  `rgtr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록자직원번호',
  `lpnt_event_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트이벤트코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dl_rq_spc_00` (`deldt`,`lpnt_dl_flgcd`,`dlno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래요청내역';
