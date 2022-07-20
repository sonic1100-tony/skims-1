--
-- Table structure for table `fin_md_rq_bj`
--

DROP TABLE IF EXISTS `fin_md_rq_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_md_rq_bj` (
  `ins_crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '보험계약번호',
  `lpnt_dl_rq_bjpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래요청대상코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `pnt_ctmno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '포인트고객번호',
  `ctm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객성명',
  `ins_seq` decimal(5,0) DEFAULT NULL COMMENT '보험회차',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `lpnt_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트채널코드',
  `dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자직원번호',
  `lpnt_md_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트조정업무구분코드',
  `md_pnt_num` decimal(15,0) DEFAULT NULL COMMENT '조정포인트수',
  `rq_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청내용',
  `lpnt_prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트결재구분코드',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `prv_hms` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재시각',
  `lpnt_event_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트이벤트코드',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `lpnt_md_rq_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트조정요청처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ins_crano`,`lpnt_dl_rq_bjpcd`,`sno`,`pnt_ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조정요청대상';
